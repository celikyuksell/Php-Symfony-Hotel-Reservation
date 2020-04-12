<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Hotel;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class HotelType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('category', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'title',
            ])
            ->add('title')
            ->add('keywords')
            ->add('description')
            ->add('image', FileType::class, [
                'label' => 'Hotel Main Image',
                // unmapped means that this field is not associated to any entity property
                'mapped' => false,
                // make it optional so you don't have to re-upload the PDF file
                // everytime you edit the Product details
                'required' => false,
                // unmapped fields can't define their validation using annotations
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/*', // All image types
                         ],
                        'mimeTypesMessage' => 'Please upload a valid Image File',
                    ])
                ],
            ])

            ->add('star', ChoiceType::class, [
                'choices' => [
                    '1 Star' => '1',
                    '2 Star' => '2',
                    '3 Star' => '3',
                    '4 Star'   => '4',
                    '5 Star' => '5',
                ],
            ])

            ->add('address')
            ->add('phone')
            ->add('email')
            ->add('fax')
            ->add('country', ChoiceType::class, [
                'choices' => [
                    'Turkiye' => 'Turkiye',
                    'Spain' => 'Spain',
                    'Greece' => 'Greece',
                    'Russia' => 'Russia',
                    'France' => 'Frans'],
            ])

            ->add('city', ChoiceType::class, [
                'choices' => [
                    'Ankara' => 'Ankara',
                    'Istanbul' => 'Istanbul',
                    'Antalya' => 'Antalya',
                    'Paris' => 'Paris',
                    'Moscow' => 'Moscow',
                    'Barcelona' => 'Barcelona'],
            ])

            ->add('location')
            ->add('detail', CKEditorType::class, array(
                'config' => array(
                    'uiColor' => '#ffffff',
                    //...
                ),
            ))

            ->add('status', ChoiceType::class, [
                'choices' => [
                    'True' => 'True',
                    'False' => 'False'],
            ])
            ;
       }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Hotel::class,
        ]);
    }
}
