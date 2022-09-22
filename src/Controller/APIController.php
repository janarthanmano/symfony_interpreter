<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
#use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Entity\Attribute;
use App\Entity\Security;
use App\Entity\Fact;

class APIController extends AbstractController
{
    #[Route('/api/data', name: 'api_data')]
    public function index(Request $request, ManagerRegistry $doctrine): Response
    {
        //get the request payload
        $payload = json_decode($request->getContent(), false);

        //get the security ID from the symbol value.
        $security = $doctrine->getRepository(Security::class)->findOneBy(['symbol' => $payload->security]);

        //compute the expression, it will iterate the expression if an argument is nested.
        $data = $this->computeExpression($security->getId(), $payload->expression->fn, $payload->expression->a, $payload->expression->b, $doctrine);

        //output computed data on a view.
        return $this->render('api/data.html.twig', [
            'data' => $data,

        ]);
    }

    /*
     * Function to compute the expression.
     */
    public function computeExpression($security, $fn, $arg1, $arg2, ManagerRegistry $doctrine):float
    {
        //check if the argument a is object, incase if an iteration is needed.
        switch (gettype($arg1)){
            case 'object':
                $a = $this->computeExpression($security, $arg1->fn, $arg1->a, $arg1->b, $doctrine);
                break;
            case 'string':
                //get attribute ID using attribute name
                $attr_a = $doctrine->getRepository(Attribute::class)->findOneBy(['name' => $arg1])->getId();
                //get fact value by securityId and attributeId
                $a = $doctrine->getRepository(Fact::class)->findOneBy(['securityId' => $security, 'attributeId' => $attr_a ])->getValue();
                break;
            case 'integer':
                //get fact value by securityId and attributeId
                $a = $doctrine->getRepository(Fact::class)->findOneBy(['securityId' => $security, 'attributeId' => $arg1 ])->getValue();
                break;
        }


        //check if the argument b is object, incase if an iteration is needed.
        switch (gettype($arg2)){
            case 'object':
                $b = $this->computeExpression($security, $arg2->fn, $arg2->a, $arg2->b, $doctrine);
                break;
            case 'string':
                //get attribute ID using attribute name
                $attr_b = $doctrine->getRepository(Attribute::class)->findOneBy(['name' => $arg2])->getId();
                //get fact value by securityId and attributeId
                $b = $doctrine->getRepository(Fact::class)->findOneBy(['securityId' => $security, 'attributeId' => $attr_b ])->getValue();
                break;
            case 'integer':
                //get fact value by securityId and attributeId
                $b = $doctrine->getRepository(Fact::class)->findOneBy(['securityId' => $security, 'attributeId' => $arg2 ])->getValue();
                break;
        }

        switch ($fn) {
            case '+':
                return $a + $b;
            case '-':
                return $a - $b;
            case '*':
                return $a * $b;
            case '/':
                return $a / $b;
            default:
                return null;
        }

    }
}
