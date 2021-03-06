<?php

namespace Blog\ComponentBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * ArticleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ArticleRepository extends EntityRepository
{
    public function getLastTen($max = 10)
    {
        $query = $this->getEntityManager()
            ->createQuery(
                'SELECT a FROM BlogComponentBundle:Article a
                ORDER BY
                a.dateModif'
            )->setMaxResults($max);

        try {
            return $query->getResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return null;
        }
    }
}
