<?php

namespace AdminBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use CoreBundle\Entity\Archivos;
use CoreBundle\Form\ArchivosType;

/**
 * Archivos controller.
 *
 * @Route("/archivos")
 */
class ArchivosController extends Controller
{
    /** index test
     * Lists all Archivos entities.
     *
     * @Route("/", name="archivos_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $archivos = $em->getRepository('CoreBundle:Archivos')->findBy(array(),array('created_at'=>'DESC'));

        return $this->render('archivos/index.html.twig', array(
            'archivos' => $archivos,
        ));
    }

    /**
     * Creates a new Archivos entity.
     *
     * @Route("/new", name="archivos_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $archivo = new Archivos();
        $form = $this->createForm('CoreBundle\Form\ArchivosType', $archivo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            if($archivo->getUrl()){
                $file = $archivo->getUrl();

                $fileName = md5(uniqid()).'.'.$file->guessExtension();

                if($file->guessExtension()=='png' || $file->guessExtension()=='jpg' || $file->guessExtension()=='jpeg' || $file->guessExtension()=='gif'){
                    $file->move(
                        $this->getParameter('img_directory'),
                        $fileName
                    );
                    $archivo->setTipo(1);
                }elseif($file->guessExtension()=='pdf'){
                    $file->move(
                        $this->getParameter('docs_directory'),
                        $fileName
                    );
                    $archivo->setTipo(2);
                }

                $archivo->setUrl($fileName);
            }

            $em->persist($archivo);
            $em->flush();

            return $this->redirectToRoute('archivos_show', array('id' => $archivo->getId()));
        }

        return $this->render('archivos/new.html.twig', array(
            'archivo' => $archivo,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Archivos entity.
     *
     * @Route("/{id}", name="archivos_show")
     * @Method("GET")
     */
    public function showAction(Archivos $archivo)
    {
        $deleteForm = $this->createDeleteForm($archivo);

        return $this->render('archivos/show.html.twig', array(
            'archivo' => $archivo,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Archivos entity.
     *
     * @Route("/{id}/edit", name="archivos_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Archivos $archivo)
    {
        $deleteForm = $this->createDeleteForm($archivo);
        $editForm = $this->createForm('CoreBundle\Form\ArchivosType', $archivo);
        $tmp = $archivo->getUrl();
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();

            if($archivo->getUrl()){
                $file = $archivo->getUrl();

                $fileName = md5(uniqid()).'.'.$file->guessExtension();

                if($file->guessExtension()=='png' || $file->guessExtension()=='jpg' || $file->guessExtension()=='jpeg' || $file->guessExtension()=='gif'){
                    $file->move(
                        $this->getParameter('img_directory'),
                        $fileName
                    );
                    $archivo->setTipo(1);
                }elseif($file->guessExtension()=='pdf'){
                    $file->move(
                        $this->getParameter('docs_directory'),
                        $fileName
                    );
                    $archivo->setTipo(2);
                }

                $archivo->setUrl($fileName);
            }else{
                $archivo->setUrl($tmp);
            }

            $em->persist($archivo);
            $em->flush();

            //return $this->redirectToRoute('archivos_edit', array('id' => $archivo->getId()));
            return $this->redirectToRoute('archivos_index');

        }

        return $this->render('archivos/edit.html.twig', array(
            'archivo' => $archivo,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Archivos entity.
     *
     * @Route("/{id}", name="archivos_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Archivos $archivo)
    {
        $form = $this->createDeleteForm($archivo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            if($archivo->getTipo()==1){
                unlink($this->getParameter('img_directory').'/'.$archivo->getUrl());
            }elseif($archivo->getTipo()==2){
                unlink($this->getParameter('docs_directory').'/'.$archivo->getUrl());
            }

            $em->remove($archivo);
            $em->flush();
        }

        return $this->redirectToRoute('archivos_index');
    }

    /**
     * Creates a form to delete a Archivos entity.
     *
     * @param Archivos $archivo The Archivos entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Archivos $archivo)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('archivos_delete', array('id' => $archivo->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
