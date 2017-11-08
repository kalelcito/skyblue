<?php

namespace CoreBundle\Form;

use Ivory\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PaginasType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre',TextType::class,array('required'=>true))
            ->add('contenido',CKEditorType::class)
            ->add('slug',TextType::class,array('disabled'=>true))
            ->add('activo')
            ->add('metakeys',TextareaType::class,array('label'=>'Metakeys separado por coma(,)','attr'=>array('rows'=>'5')))
            ->add('metadesc',TextareaType::class,array('attr'=>array('rows'=>'5')))
            //->add('created_at')
            //->add('updated_at')
        ;
}

/**
* {@inheritdoc}
*/
public function configureOptions(OptionsResolver $resolver)
{
$resolver->setDefaults(array(
'data_class' => 'CoreBundle\Entity\Paginas'
));
}

/**
* {@inheritdoc}
*/
public function getBlockPrefix()
{
return 'corebundle_paginas';
}


}
