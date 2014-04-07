<?php

namespace Blog\AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Blog\ComponentBundle\Entity\Article;
use Blog\ComponentBundle\Entity\ArticleRepository;

class DefaultController extends Controller
{
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('BlogComponentBundle:Article')->getLastTen();

        if(!$articles){
            //exceptions
        }

        return $this->render('BlogAppBundle:Default:index.html.twig', array('articles' => $articles));
    }

    public function asideAction(){
        
        $em = $this->getDoctrine()->getManager();
        $entities = $em->getRepository('BlogComponentBundle:Categorie')->findAll();

        return $this->render('BlogAppBundle:Default:aside.html.twig', array('entities' => $entities));
    }

    public function myArticleAction(){
        $user = $this->get('security.context')->getToken()->getUser();
        $articles = $user->getArticles();
        return $this->render('BlogAppBundle:Default:My.html.twig', array('articles' => $articles));
    }
}
