<?php

namespace App\Controller;

use App\Entity\Events;
use App\Form\EventsType;
use App\Repository\EventsRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/')]
class EventsController extends AbstractController
{
    #[Route('/', name: 'app_events_index', methods: ['GET'])]
    public function index(EventsRepository $eventsRepository): Response
    {
        return $this->render('events/index.html.twig', [
            'events' => $eventsRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_events_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $event = new Events();
        $form = $this->createForm(EventsType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($event);
            $entityManager->flush();

            return $this->redirectToRoute('app_events_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('events/new.html.twig', [
            'event' => $event,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_events_show', methods: ['GET'])]
    public function show(Events $events): Response
    {
        return $this->render('events/show.html.twig', [
            'events' => $events,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_events_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Events $events, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(EventsType::class, $events);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_events_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('events/edit.html.twig', [
            'events' => $events,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_events_delete', methods: ['POST'])]
    public function delete(Request $request, Events $events, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $events->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($events);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_events_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/filter/{category}', name: 'app_events_filter', methods: ['GET'])]
    public function filterByCategory(EventsRepository $eventsRepository, $category): Response
    {
        $category = strtolower($category);
        $events = $eventsRepository->findByCategory($category);

        return $this->render('events/filter.html.twig', [
            'events' => $events,
        ]);
    }
}
