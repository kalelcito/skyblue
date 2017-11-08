<?php

namespace CoreBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BannersType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre',TextType::class,array('required'=>true))
            ->add('descripcion')
            ->add('imagen',FileType::class,array('required'=>false,'data_class'=>null,'attr'=>array('ruta'=>'images')))
            ->add('link',TextType::class,array('label'=>'Link','required'=>false))
            ->add('activo');
}

/**
* {@inheritdoc}
*/
public function configureOptions(OptionsResolver $resolver)
{
$resolver->setDefaults(array(
'data_class' => 'CoreBundle\Entity\Banners'
));
}

/**
* {@inheritdoc}
*/
public function getBlockPrefix()
{
return 'corebundle_banners';
}


}
