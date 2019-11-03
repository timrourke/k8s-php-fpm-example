<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class HealthzController
{
    /**
     * @Route("/healthz", methods={"GET"})
     * @return \Symfony\Component\HttpFoundation\JsonResponse
     */
    public function healthz(): JsonResponse
    {
        return new JsonResponse([
            'status' => 'ok',
        ], Response::HTTP_OK);
    }
}
