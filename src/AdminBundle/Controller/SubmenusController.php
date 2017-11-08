<?php

namespace AdminBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use CoreBundle\Entity\Submenus;
use CoreBundle\Form\SubmenusType;

/**
 * Submenus controller.
 *
 * @Route("/submenus")
 */
class SubmenusController extends Controller
{
    /** index test
     * Lists all Submenus entities.
     *
     * @Route("/", name="submenus_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $submenuses = $em->getRepository('CoreBundle:Submenus')->findAll();

        return $this->render('submenus/index.html.twig', array(
            'submenuses' => $submenuses,
        ));
    }

    /**
     * Creates a new Submenus entity.
     *
     * @Route("/new", name="submenus_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $submenu = new Submenus();
        $form = $this->createForm('CoreBundle\Form\SubmenusType', $submenu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($submenu);
            $em->flush();

            return $this->redirectToRoute('submenus_show', array('id' => $submenu->getId()));
        }

        return $this->render('submenus/new.html.twig', array(
            'submenu' => $submenu,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Submenus entity.
     *
     * @Route("/{id}", name="submenus_show")
     * @Method("GET")
     */
    public function showAction(Submenus $submenu)
    {
        $deleteForm = $this->createDeleteForm($submenu);

        return $this->render('submenus/show.html.twig', array(
            'submenu' => $submenu,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Submenus entity.
     *
     * @Route("/{id}/edit", name="submenus_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Submenus $submenu)
    {
        $deleteForm = $this->createDeleteForm($submenu);
        $editForm = $this->createForm('CoreBundle\Form\SubmenusType', $submenu);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($submenu);
            $em->flush();

            //return $this->redirectToRoute('submenus_edit', array('id' => $submenu->getId()));
            return $this->redirectToRoute('submenus_index');

        }

        return $this->render('submenus/edit.html.twig', array(
            'submenu' => $submenu,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Submenus entity.
     *
     * @Route("/{id}", name="submenus_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Submenus $submenu)
    {
        $form = $this->createDeleteForm($submenu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($submenu);
            $em->flush();
        }

        return $this->redirectToRoute('submenus_index');
    }

    /**
     * Creates a form to delete a Submenus entity.
     *
     * @param Submenus $submenu The Submenus entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Submenus $submenu)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('submenus_delete', array('id' => $submenu->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
