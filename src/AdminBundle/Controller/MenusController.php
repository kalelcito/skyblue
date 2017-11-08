<?php

namespace AdminBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use CoreBundle\Entity\Menus;
use CoreBundle\Form\MenusType;

/**
 * Menus controller.
 *
 * @Route("/menus")
 */
class MenusController extends Controller
{
    /** index test
     * Lists all Menus entities.
     *
     * @Route("/", name="menus_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $menuses = $em->getRepository('CoreBundle:Menus')->findAll();

        return $this->render('menus/index.html.twig', array(
            'menuses' => $menuses,
        ));
    }

    /**
     * Creates a new Menus entity.
     *
     * @Route("/new", name="menus_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $menu = new Menus();
        $form = $this->createForm('CoreBundle\Form\MenusType', $menu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            if($menu->getImagen()){
                $file = $menu->getImagen();

                $fileName = md5(uniqid()).'.'.$file->guessExtension();

                $file->move(
                    $this->getParameter('img_directory'),
                    $fileName
                );

                $menu->setImagen($fileName);
            }

            $em->persist($menu);
            $em->flush();

            return $this->redirectToRoute('menus_show', array('id' => $menu->getId()));
        }

        return $this->render('menus/new.html.twig', array(
            'menu' => $menu,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Menus entity.
     *
     * @Route("/{id}", name="menus_show")
     * @Method("GET")
     */
    public function showAction(Menus $menu)
    {
        $deleteForm = $this->createDeleteForm($menu);

        return $this->render('menus/show.html.twig', array(
            'menu' => $menu,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Menus entity.
     *
     * @Route("/{id}/edit", name="menus_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Menus $menu)
    {
        $deleteForm = $this->createDeleteForm($menu);
        $editForm = $this->createForm('CoreBundle\Form\MenusType', $menu);
        $tmp = $menu->getImagen();
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();

            if($menu->getImagen()){
                $file = $menu->getImagen();

                $fileName = md5(uniqid()).'.'.$file->guessExtension();

                $file->move(
                    $this->getParameter('img_directory'),
                    $fileName
                );

                $menu->setImagen($fileName);
            }else{
                $menu->setImagen($tmp);
            }

            $em->persist($menu);
            $em->flush();

            //return $this->redirectToRoute('menus_edit', array('id' => $menu->getId()));
            return $this->redirectToRoute('menus_index');

        }

        return $this->render('menus/edit.html.twig', array(
            'menu' => $menu,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Menus entity.
     *
     * @Route("/{id}", name="menus_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Menus $menu)
    {
        $form = $this->createDeleteForm($menu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            unlink($this->getParameter('img_directory').'/'.$menu->getImagen());
            $em->remove($menu);
            $em->flush();
        }

        return $this->redirectToRoute('menus_index');
    }

    /**
     * Creates a form to delete a Menus entity.
     *
     * @param Menus $menu The Menus entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Menus $menu)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('menus_delete', array('id' => $menu->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
