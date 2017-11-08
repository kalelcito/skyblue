<?php

namespace AdminBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use CoreBundle\Entity\Paginas;
use CoreBundle\Form\PaginasType;

/**
 * Paginas controller.
 *
 * @Route("/paginas")
 */
class PaginasController extends Controller
{
    /** index test
     * Lists all Paginas entities.
     *
     * @Route("/", name="paginas_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $paginas = $em->getRepository('CoreBundle:Paginas')->findAll();

        return $this->render('paginas/index.html.twig', array(
            'paginas' => $paginas,
        ));
    }

    /**
     * Creates a new Paginas entity.
     *
     * @Route("/new", name="paginas_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $pagina = new Paginas();
        $form = $this->createForm('CoreBundle\Form\PaginasType', $pagina);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($pagina);
            $em->flush();

            return $this->redirectToRoute('paginas_show', array('id' => $pagina->getId()));
        }

        return $this->render('paginas/new.html.twig', array(
            'pagina' => $pagina,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Paginas entity.
     *
     * @Route("/{id}", name="paginas_show")
     * @Method("GET")
     */
    public function showAction(Paginas $pagina)
    {
        $deleteForm = $this->createDeleteForm($pagina);
        $em = $this->getDoctrine()->getManager();
        $menus = $em->getRepository('CoreBundle:Submenus')->findBy(array('activo'=>1));
        $slug = null;
        $t = 0 ;
        foreach ($menus as $menu):
            if($menu->getPaginas()==$pagina){
                $slug = $menu->getMenus()->getSlug();
                $t = 1;
            }
            if($t==0){
                $slug = 'skyblue';
            }
        endforeach;

        return $this->render('paginas/show.html.twig', array(
            'pagina' => $pagina,
            'slug' => $slug,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Paginas entity.
     *
     * @Route("/{id}/edit", name="paginas_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Paginas $pagina)
    {
        $deleteForm = $this->createDeleteForm($pagina);
        $editForm = $this->createForm('CoreBundle\Form\PaginasType', $pagina);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($pagina);
            $em->flush();

            //return $this->redirectToRoute('paginas_edit', array('id' => $pagina->getId()));
            return $this->redirectToRoute('paginas_index');

        }

        return $this->render('paginas/edit.html.twig', array(
            'pagina' => $pagina,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Paginas entity.
     *
     * @Route("/{id}", name="paginas_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Paginas $pagina)
    {
        $form = $this->createDeleteForm($pagina);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($pagina);
            $em->flush();
        }

        return $this->redirectToRoute('paginas_index');
    }

    /**
     * Creates a form to delete a Paginas entity.
     *
     * @param Paginas $pagina The Paginas entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Paginas $pagina)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('paginas_delete', array('id' => $pagina->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
