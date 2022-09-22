<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FactController extends AbstractController
{
    #[Route('/fact', name: 'app_fact')]
    public function index(): Response
    {
        return $this->render('fact/index.html.twig', [
            'controller_name' => 'FactController',
        ]);
    }
}
