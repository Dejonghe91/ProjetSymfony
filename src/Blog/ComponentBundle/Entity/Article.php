<?php

namespace Blog\ComponentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Article
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Blog\ComponentBundle\Entity\ArticleRepository")
 */
class Article
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=50)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="content", type="text")
     */
    private $content;

    /**
     * @var string
     *
     * @ORM\Column(name="urlAlias", unique=true, type="string", length=50)
     */
    private $urlAlias;

    /**
     * @ORM\ManyToOne(targetEntity="Categorie", inversedBy="articles", cascade={"persist", "merge"})
     * @ORM\JoinColumn(name="categorie_id", referencedColumnName="id")
     */
    private $category;

    /**
     * @ORM\OneToOne(targetEntity="Thread", inversedBy="article", cascade={"persist","remove", "merge"})
     * @ORM\JoinColumn(name="thread_id", referencedColumnName="id")
     */
    private $thread;

    /**
     * @ORM\ManyToOne(targetEntity="Blog\UserBundle\Entity\User", inversedBy="articles", cascade={"persist", "merge"})
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    private $user;

    /**
     * @var date
     *
     * @ORM\Column(name="dateModif", type="date")
     */
    private $dateModif;

    public function __construct(){
        $this->dateModif = new \Datetime();
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set titre
     *
     * @param string $titre
     * @return Article
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set content
     *
     * @param string $content
     * @return Article
     */
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Get content
     *
     * @return string 
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Set urlAlias
     *
     * @param string $urlAlias
     * @return Article
     */
    public function setUrlAlias($urlAlias)
    {
        $this->urlAlias = $urlAlias;

        return $this;
    }

    /**
     * Get urlAlias
     *
     * @return string 
     */
    public function getUrlAlias()
    {
        return $this->urlAlias;
    }

    /**
     * Set category
     *
     * @param \Blog\ComponentBundle\Entity\Categorie $category
     * @return Article
     */
    public function setCategory(\Blog\ComponentBundle\Entity\Categorie $category = null)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return \Blog\ComponentBundle\Entity\Categorie 
     */
    public function getCategory()
    {
        return $this->category;
    }

    /**
     * Set thread
     *
     * @param \Blog\ComponentBundle\Entity\Thread $thread
     * @return Article
     */
    public function setThread(\Blog\ComponentBundle\Entity\Thread $thread = null)
    {
        $this->thread = $thread;

        return $this;
    }

    /**
     * Get thread
     *
     * @return \Blog\ComponentBundle\Entity\Thread 
     */
    public function getThread()
    {
        return $this->thread;
    }

    /**
     * Set dateModif
     *
     * @param \DateTime $dateModif
     * @return Article
     */
    public function setDateModif($dateModif)
    {
        $this->dateModif = $dateModif;

        return $this;
    }

    /**
     * Get dateModif
     *
     * @return \DateTime 
     */
    public function getDateModif()
    {
        return $this->dateModif;
    }

    /**
     * Set user
     *
     * @param \Blog\UserBundle\Entity\User $user
     * @return Article
     */
    public function setUser(\Blog\UserBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \Blog\UserBundle\Entity\User 
     */
    public function getUser()
    {
        return $this->user;
    }
}
