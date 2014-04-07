<?php

namespace Blog\ComponentBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Blog\ComponentBundle\Entity\Article;
use Blog\ComponentBundle\Entity\Thread;
use Blog\ComponentBundle\Form\ArticleType;

/**
 * Article controller.
 *
 */
class ArticleController extends Controller
{

    /**
     * Lists all Article entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('BlogComponentBundle:Article')->findAll();

        return $this->render('BlogComponentBundle:Article:index.html.twig', array(
            'entities' => $entities,
        ));
    }

    /**
     * Creates a new Article entity.
     *
     */
    public function createAction(Request $request)
    {
        $entity = new Article();
        $form = $this->createForm(new ArticleType(), $entity);
        $form->handleRequest($request);

        $entity->setUrlAlias(str_replace(' ', '',$entity->getTitre()));
        $thread = new Thread();
        $thread->setId(str_replace(' ', '',$entity->getTitre()));
        $thread->setPermalink($thread->getId());
        $entity->setThread($thread);
        $user = $this->get('security.context')->getToken()->getUser();
        $entity->setUser($user);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('article_show', array('urlAlias' => $entity->getUrlAlias())));
        }

        return $this->render('BlogComponentBundle:Article:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }

    /**
     * Displays a form to create a new Article entity.
     *
     */
    public function newAction()
    {
        $entity = new Article();
        $form   = $this->createForm(new ArticleType(),$entity);

        return $this->render('BlogComponentBundle:Article:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Article entity.
     *
     */
    public function showAction($urlAlias)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Article')->findOneByUrlAlias($urlAlias);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        return $this->render('BlogComponentBundle:Article:show.html.twig', array(
            'entity'      => $entity,
           ));
    }

    /**
     * Displays a form to edit an existing Article entity.
     *
     */
    public function editAction($urlAlias)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Article')->findOneByUrlAlias($urlAlias);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $editForm = $this->createForm(new ArticleType, $entity);

        return $this->render('BlogComponentBundle:Article:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }

    /**
     * Edits an existing Article entity.
     *
     */
    public function updateAction(Request $request, $urlAlias)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('BlogComponentBundle:Article')->findOneByUrlAlias($urlAlias);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $editForm = $this->createForm(new ArticleType(),$entity);
        $editForm->handleRequest($request);

        if ($editForm->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('article', array()));
        }

        return $this->render('BlogComponentBundle:Article:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
        ));
    }
    /**
     * Deletes a Article entity.
     *
     */
    public function deleteAction($urlAlias)
    {
        $em = $this->getDoctrine()->getManager();
        $entity = $em->getRepository('BlogComponentBundle:Article')->findOneByUrlAlias($urlAlias);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $em->remove($entity);
        $em->flush();
        
        return $this->redirect($this->generateUrl('article'));
    }
}
