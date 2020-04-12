<?php

namespace App\Repository\Admin;

use App\Entity\Admin\Reservation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Reservation|null find($id, $lockMode = null, $lockVersion = null)
 * @method Reservation|null findOneBy(array $criteria, array $orderBy = null)
 * @method Reservation[]    findAll()
 * @method Reservation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ReservationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Reservation::class);
    }

    // /**
    //  * @return Reservation[] Returns an array of Reservation objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Reservation
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    // *** lEFT JOIN WITH SQL ******************
    public function getUserReservation($id): array
    {
        $conn = $this->getEntityManager()->getConnection();
        $sql = '
            SELECT r.*,h.title as hname,u.title as rname FROM reservation r
            JOIN hotel h ON h.id = r.hotelid
            JOIN room u ON u.id = r.roomid
            WHERE r.userid = :userid
            ORDER BY r.id DESC
        ';
        $stmt = $conn->prepare($sql);
        $stmt->execute(['userid' => $id]);

        // returns an array of arrays (i.e. a raw data set)
        return $stmt->fetchAll();
    }

    // *** lEFT JOIN WITH SQL ******************
    public function getReservation($id): array
    {
        $conn = $this->getEntityManager()->getConnection();
        $sql = '
            SELECT r.*,h.title as hname,u.title as rname, usr.name as username FROM reservation r
            JOIN hotel h ON h.id = r.hotelid
            JOIN room u ON u.id = r.roomid
            JOIN user usr ON usr.id = r.userid
            WHERE r.id = :id
         ';
        $stmt = $conn->prepare($sql);
        $stmt->execute(['id' => $id]);

        // returns an array of arrays (i.e. a raw data set)
        return $stmt->fetchAll();
    }

    // *** lEFT JOIN WITH SQL ******************
    public function getReservations($status): array
    {
        $conn = $this->getEntityManager()->getConnection();
        $sql = '
            SELECT r.*,h.title as hname,u.title as rname, usr.name as username FROM reservation r
            JOIN hotel h ON h.id = r.hotelid
            JOIN room u ON u.id = r.roomid
            JOIN user usr ON usr.id = r.userid
            WHERE r.status =:status
         ';
        $stmt = $conn->prepare($sql);
        $stmt->execute(['status' => $status]);

        // returns an array of arrays (i.e. a raw data set)
        return $stmt->fetchAll();
    }
}
