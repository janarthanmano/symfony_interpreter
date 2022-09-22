<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AttributeController extends AbstractController
{
    #[Route('/attribute', name: 'app_attribute')]
    public function index(): Response
    {
        return $this->render('attribute/index.html.twig', [
            'controller_name' => 'AttributeController',
        ]);
    }
}
