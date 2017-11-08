<?php

namespace CoreBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MenusType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre',TextType::class,array('required'=>true))
            ->add('subtitulo')
            ->add('imagen',FileType::class,array('required'=>false,'data_class'=>null,'attr'=>array('ruta'=>'images')))
            ->add('orden',IntegerType::class,array('attr'=>array('min'=>1,'step'=>1)))
            ->add('slug',TextType::class,array('disabled'=>true))
            ->add('activo')
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
'data_class' => 'CoreBundle\Entity\Menus'
));
}

/**
* {@inheritdoc}
*/
public function getBlockPrefix()
{
return 'corebundle_menus';
}


}
