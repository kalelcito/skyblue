<?php

namespace FrontendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MenuController extends Controller
{
    public function nacionalAction()
    {
        $nacionales=null;
        $repository = $this->getDoctrine()->getRepository('CoreBundle:MapsDistribuidor');
        $query = $repository->createQueryBuilder('n')
            ->where('n.activo = :act')
            ->andwhere('n.zona != :zon')
            ->orderby('n.nombre','ASC')
            ->setParameter('act', '1')
            ->setParameter('zon', 'Internacional')
            ->getQuery();
        $nacionales = $query->getResult();
        return $this->render('@Frontend/partials/nacional.html.twig', array('nacionales' => $nacionales));
    }

    public function menusAction(){
        $em = $this->getDoctrine()->getManager();
        $menus = $em->getRepository('CoreBundle:Menus')->findBy(array('activo'=>1),array('orden'=>'ASC'));
        $subs = $em->getRepository('CoreBundle:Submenus')->findBy(array('activo'=>1),array('orden'=>'ASC'));
        return $this->render('@Frontend/partials/menu.html.twig', array('menus' => $menus,'subs'=>$subs));
    }
}
