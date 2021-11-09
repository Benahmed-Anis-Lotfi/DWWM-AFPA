<?php

namespace App\Controller;

use App\Entity\Client;
use App\Repository\ClientRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EssaiController extends AbstractController
{
    /**
     * @Route("/essai", name="essai")
     */
    public function index(EntityManagerInterface $em): Response
    {
        $cli = new Client();

        $cli->setNom("Abaleo");
        $cli->setPrenom("Richard");
        $cli->setAge(2);

        $em->persist($cli); 
        $em->flush();

        return $this->render('essai/index.html.twig', []);
    }
    /**
     * @Route("/page1", name="page1")
     */
    public function page1(CLientRepository $repo): Response
    {
        $tab = $repo->findAll();

        return $this->render('essai/page1.html.twig', ['clients' => $tab]);
    }
}
