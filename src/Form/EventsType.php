<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, ["attr" => ["placeholder" => "Please type the event name", "class" => "form-control"]])
            ->add('date_and_start_time', null, ["attr" => ["placeholder" => " Event description", "class" => "form-control"]])
            ->add('description', null, ["attr" => ["placeholder" => " Event description", "class" => "form-control"]])
            ->add('image', null, ["attr" => ["placeholder" => "Event image", "class" => "form-control"]])
            ->add('capacity', null, ["attr" => ["placeholder" => "Please type the event capacity", "class" => "form-control"]])
            ->add('email', null, ["attr" => ["placeholder" => "Please type the event contact e-mail", "class" => "form-control"]])
            ->add('phone_number', null, ["attr" => ["placeholder" => "Please type the event contact phone number", "class" => "form-control"]])
            ->add('address', null, ["attr" => ["placeholder" => "Please type the event address", "class" => "form-control"]])
            ->add('url', null, ["attr" => ["placeholder" => "Please type the event URL", "class" => "form-control"]])
            ->add('category', ChoiceType::class, [
                'choices' => [
                    'Theater' => 'Theater',
                    'Sports' => 'Sports',
                    'Festival' => 'Festival',
                    'Concert' => 'Concert',
                ],
                'attr' => ["style" => "margin: 10px;"]
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
