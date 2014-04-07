<?php

namespace Blog\ComponentBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Blog\ComponentBundle\Entity\Categorie;
use Blog\ComponentBundle\Form\CategorieType;

/**
 * Categorie controller.
 *
 */
class CategorieController extends Controller
{

    /**
     * Lists all Categorie entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('BlogComponentBundle:Categorie')->findAll();

        return $this->render('BlogComponentBundle:Categorie:index.html.twig', array(
            'entities' => $entities,
        ));
    }

    /**
     * Creates a new Categorie entity.
     *
     */
    public function createAction(Request $request)
    {
        $entity = new Categorie();
        $form = $this->createForm(new CategorieType(), $entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('categorie_show', array('name' => $entity->getName())));
        }

        return $this->render('BlogComponentBundle:Categorie:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }

    /**
     * Displays a form to create a new Categorie entity.
     *
     */
    public function newAction()
    {
        $entity = new Categorie();
        $form   = $this->createForm(new CategorieType(), $entity);

        return $this->render('BlogComponentBundle:Categorie:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Categorie entity.
     *
     */
    public function showAction($name)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Categorie')->findOneByName($name);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Categorie entity.');
        }

        return $this->render('BlogComponentBundle:Categorie:show.html.twig', array(
            'entity'      => $entity,
                  ));
    }

    /**
     * Displays a form to edit an existing Categorie entity.
     *
     */
    public function editAction($name)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Categorie')->findOneByName($name);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Categorie entity.');
        }

        $editForm = $this->createForm(new CategorieType(), $entity);

        return $this->render('BlogComponentBundle:Categorie:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

   
    /**
     * Edits an existing Categorie entity.
     *
     */
    public function updateAction(Request $request, $name)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Categorie')->findOneByName($name);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Categorie entity.');
        }

        $editForm = $this->createForm(new CategorieType(), $entity);
        $editForm->handleRequest($request);

        if ($editForm->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('categorie_edit', array('name' => $name)));
        }

        return $this->render('BlogComponentBundle:Categorie:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }
    /**
     * Deletes a Categorie entity.
     *
     */
    public function deleteAction($name)
    {
        $em = $this->getDoctrine()->getManager();
        $entity = $em->getRepository('BlogComponentBundle:Categorie')->findOneByName($name);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Categorie entity.');
        }

        $em->remove($entity);
        $em->flush();

        return $this->redirect($this->generateUrl('categorie'));
    }
}
