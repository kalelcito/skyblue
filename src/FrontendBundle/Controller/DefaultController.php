<?php

namespace FrontendBundle\Controller;

use CoreBundle\Entity\Contacto;
use FrontendBundle\Form\ContactoType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $banners = $em->getRepository('CoreBundle:Banners')->findBy(array('activo'=>1));
        $home = $em->getRepository('CoreBundle:Home')->findBy(array('activo'=>1),array('orden'=>'ASC'));
        return $this->render('FrontendBundle:Default:index.html.twig',array('banners'=>$banners,'home'=>$home));
    }

    /**
     * @Route("/{menu}/{slug}.{_format}", defaults={"_format": "html"}, requirements={"_format": "html"}, name="paginas")
     */
    public function paginasAction($menu, $slug){
        $em = $this->getDoctrine()->getManager();
        $menus = $em->getRepository('CoreBundle:Menus')->findOneBy(array('slug'=>$menu,'activo'=>1));
        if(count($menus)>0){
            $pagina = $em->getRepository('CoreBundle:Paginas')->findOneBy(array('slug'=>$slug,'activo'=>1));
            return $this->render('FrontendBundle:Default:pages.html.twig',array('paginas'=>$pagina));
        }
        if($menu=='skyblue'){
            $pagina = $em->getRepository('CoreBundle:Paginas')->findOneBy(array('slug'=>$slug,'activo'=>1));
            return $this->render('FrontendBundle:Default:pages.html.twig',array('paginas'=>$pagina,'sky'=>1));
        }
        if($menu=='mapa'){
            $mapa = $em->getRepository('CoreBundle:MapsDistribuidor')->findOneBy(array('slug'=>$slug,'activo'=>1));
            $distribuidores = $em->getRepository('CoreBundle:MapsDistribuidorDirectorio')->findBy(array('mapsDistribuidor'=>$mapa->getId(),'activo'=>1));
            return $this->render('FrontendBundle:Default:maps.html.twig',array('mapa'=>$mapa,'distribuidores'=>$distribuidores));
        }
    }

    /**
     * @Route("/contacto", name="contacto")
     */
    public function contactAction(Request $request)
    {
        $form = $this->createForm(ContactoType::class,null,array(
            'method' => 'POST',
            'attr'=>array('id'=>'contacto-form')
        ));
        $enviado=0;
        $form->handleRequest($request);
        if ($form->isSubmitted()) {
            if($form->isValid()){
                $data = $form->getData();

                $user =  $_SERVER['HTTP_USER_AGENT'];
                $result = '';
                $os_array       =   array(
                    '/windows nt 6.2/i'     =>  'Windows 8',
                    '/windows nt 6.1/i'     =>  'Windows 7',
                    '/windows nt 6.0/i'     =>  'Windows Vista',
                    '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
                    '/windows nt 5.1/i'     =>  'Windows XP',
                    '/windows xp/i'         =>  'Windows XP',
                    '/windows nt 5.0/i'     =>  'Windows 2000',
                    '/windows me/i'         =>  'Windows ME',
                    '/win98/i'              =>  'Windows 98',
                    '/win95/i'              =>  'Windows 95',
                    '/win16/i'              =>  'Windows 3.11',
                    '/macintosh|mac os x/i' =>  'Mac OS X',
                    '/mac_powerpc/i'        =>  'Mac OS 9',
                    '/linux/i'              =>  'Linux',
                    '/ubuntu/i'             =>  'Ubuntu',
                    '/iphone/i'             =>  'iPhone',
                    '/ipod/i'               =>  'iPod',
                    '/ipad/i'               =>  'iPad',
                    '/android/i'            =>  'Android',
                    '/blackberry/i'         =>  'BlackBerry',
                    '/webos/i'              =>  'Mobile'
                );

                foreach ($os_array as $regex => $value) {
                    if (preg_match($regex, $user)) {
                        $result = $value;
                    }
                }

                /*Guardar Contacto en DB*/
                $contacto = new Contacto();
                $contacto->setPais($data['pais']);
                $contacto->setTema($data['tema']);
                $contacto->setEmail($data['email']);
                $contacto->setCliente($data['cliente']);
                $contacto->setDescripcion($data['descripcion']);
                $contacto->setNombre($data['nombre']);
                $contacto->setApellidos($data['apellidos']);
                $contacto->setEmpresa($data['empresa']);
                $contacto->setGiro($data['giro']);
                $contacto->setCiudad($data['ciudad']);
                $contacto->setEstado($data['estado']);
                $contacto->setCp($data['cp']);
                $contacto->setTelefono($data['telefono']);
                $contacto->setIp($_SERVER['REMOTE_ADDR']);
                $contacto->setPlataforma($result);
                $em = $this->getDoctrine()->getManager();
                $em->persist($contacto);
                $em->flush();

                unset($form);
                $form = $this->createForm(ContactoType::class,null,array(
                    'method' => 'POST',
                    'attr'=>array('id'=>'contacto-form')
                ));
                $country = array(
                    'AF'=>'Afganistán',
                    'AL'=>'Albania',
                    'DE'=>'Alemania',
                    'AD'=>'Andorra',
                    'AO'=>'Angola',
                    'AI'=>'Anguila',
                    'AQ'=>'Antártica',
                    'AG'=>'Antigua y Barbuda',
                    'AN'=>'Antillas Holandesas',
                    'SA'=>'Arabia Saudá',
                    'DZ'=>'Argelia',
                    'AR'=>'Argentina',
                    'AM'=>'Armenia',
                    'AW'=>'Aruba',
                    'AU'=>'Australia',
                    'AT'=>'Austria',
                    'AZ'=>'Azerbaiján',
                    'BE'=>'Bélgica',
                    'BS'=>'Bahamas',
                    'BH'=>'Bahrain',
                    'BD'=>'Bangladesh',
                    'BB'=>'Barbados',
                    'BY'=>'Belarus',
                    'BZ'=>'Belice',
                    'BJ'=>'Benin',
                    'BM'=>'Bermuda',
                    'BO'=>'Bolivia',
                    'BA'=>'Bosnia-Hercegovina',
                    'BW'=>'Botswana',
                    'BR'=>'Brasil',
                    'BN'=>'Brunei Darussalam',
                    'BG'=>'Bulgaria',
                    'BF'=>'Burkina Faso',
                    'BI'=>'Burundi',
                    'BT'=>'Bután',
                    'CV'=>'Cabo Verde',
                    'KH'=>'Camboya',
                    'CM'=>'Camerún',
                    'CA'=>'Canadá',
                    'TD'=>'Chad',
                    'CL'=>'Chile',
                    'CN'=>'China',
                    'CY'=>'Chipre',
                    'VA'=>'Ciudad del Vaticano',
                    'CO'=>'Colombia',
                    'KM'=>'Comoras',
                    'CG'=>'Congo',
                    'KP'=>'Corea del Norte',
                    'KR'=>'Corea del Sur',
                    'CI'=>'Costa de Marfil',
                    'CR'=>'Costa Rica',
                    'HR'=>'Croacia',
                    'CU'=>'Cuba',
                    'DK'=>'Dinamarca',
                    'DJ'=>'Djibuti',
                    'DM'=>'Dominica',
                    'EC'=>'Ecuador',
                    'EG'=>'Egipto',
                    'SV'=>'El Salvador',
                    'AE'=>'Emiratos Árabes Unidos',
                    'ER'=>'Eritrea',
                    'SK'=>'Eslovaquia',
                    'SI'=>'Eslovenia',
                    'SP'=>'España',
                    'EE'=>'Estonia',
                    'ET'=>'Etiopía',
                    'RU'=>'Federación Rusa',
                    'FJ'=>'Fiji',
                    'PH'=>'Filipinas',
                    'FI'=>'Finlandia',
                    'FR'=>'Francia',
                    'FX'=>'Francia Metropolitana',
                    'GA'=>'Gabón',
                    'GM'=>'Gambia',
                    'GE'=>'Georgia',
                    'GS'=>'Georgia del Sur e Islas Sandwich del Sur',
                    'GH'=>'Ghana',
                    'GI'=>'Gibraltar',
                    'GR'=>'Grecia',
                    'GL'=>'Groenlandia',
                    'GP'=>'Guadalupe',
                    'GU'=>'Guam',
                    'GT'=>'Guatemala',
                    'GF'=>'Guayana Francesa',
                    'GN'=>'Guinea',
                    'GQ'=>'Guinea Ecuatorial',
                    'GW'=>'Guinea-Bissau',
                    'GY'=>'Guyana',
                    'HT'=>'Haití',
                    'HN'=>'Honduras',
                    'HK'=>'Hong Kong',
                    'HU'=>'Hungría',
                    'IN'=>'India',
                    'ID'=>'Indonesia',
                    'IR'=>'Irán',
                    'IQ'=>'Irak',
                    'IE'=>'Irlanda',
                    'BV'=>'Isla Bouvet',
                    'CX'=>'Isla Christmas',
                    'NF'=>'Isla Norfolk',
                    'IS'=>'Islandia',
                    'KY'=>'Islas Caimanes',
                    'CC'=>'Islas Cocos (Keeling)',
                    'CK'=>'Islas Cook',
                    'FO'=>'Islas Faroe',
                    'HM'=>'Islas Heard y Mc Donald',
                    'FK'=>'Islas Malvinas',
                    'MP'=>'Islas Marianas Septentrionales',
                    'MH'=>'Islas Marshall',
                    'SB'=>'Islas Salomón',
                    'SJ'=>'Islas Svalbard y Jan Mayen',
                    'TC'=>'Islas Turks y Caicos',
                    'VG'=>'Islas Vírgenes (Británicas)',
                    'VI'=>'Islas Vírgenes (EEUU)',
                    'WF'=>'Islas Wallis y Futuna',
                    'IL'=>'Israel',
                    'IT'=>'Italia',
                    'JM'=>'Jamaica',
                    'JP'=>'Japón',
                    'JO'=>'Jordania',
                    'QA'=>'Katar',
                    'KZ'=>'Kazajistán',
                    'KE'=>'Kenia',
                    'KG'=>'Kirguizistán',
                    'KI'=>'Kiribati',
                    'KW'=>'Kuwait',
                    'LB'=>'Líbano',
                    'LA'=>'Laos, República Popular',
                    'LS'=>'Lesoto',
                    'LV'=>'Letonia',
                    'LR'=>'Liberia',
                    'LY'=>'Libia',
                    'LI'=>'Liechtenstein',
                    'LT'=>'Lituania',
                    'LU'=>'Luxemburgo',
                    'MX'=>'México',
                    'MC'=>'Mónaco',
                    'MO'=>'Macao',
                    'MK'=>'Macedonia',
                    'MG'=>'Madagascar',
                    'MY'=>'Malasia',
                    'MW'=>'Malaui',
                    'MV'=>'Maldivas',
                    'ML'=>'Mali',
                    'MT'=>'Malta',
                    'MA'=>'Marruecos',
                    'MQ'=>'Martinica',
                    'MU'=>'Mauricio',
                    'MR'=>'Mauritania',
                    'YT'=>'Mayotte',
                    'FM'=>'Micronesia',
                    'MD'=>'Moldova',
                    'MN'=>'Mongolia',
                    'MS'=>'Montserrat',
                    'MZ'=>'Mozambique',
                    'MM'=>'Myanmar',
                    'NE'=>'Níger',
                    'NA'=>'Namibia',
                    'NR'=>'Nauru',
                    'NP'=>'Nepal',
                    'NI'=>'Nicaragua',
                    'NG'=>'Nigeria',
                    'NU'=>'Niue',
                    'NO'=>'Noruega',
                    'NC'=>'Nueva Caledonia',
                    'NZ'=>'Nueva Zelanda',
                    'OM'=>'Omán',
                    'NL'=>'Países Bajos',
                    'PK'=>'Pakistán',
                    'PW'=>'Palau',
                    'PA'=>'Panamá',
                    'PG'=>'Papua Nueva Guinea',
                    'PY'=>'Paraguay',
                    'PE'=>'Perú',
                    'PN'=>'Pitcairn',
                    'PF'=>'Polinesia Francesa',
                    'PL'=>'Polonia',
                    'PT'=>'Portugal',
                    'PR'=>'Puerto Rico',
                    'GB'=>'Reino Unido',
                    'SY'=>'República Árabe de Siria',
                    'CF'=>'República Centroafricana',
                    'CZ'=>'República Checa',
                    'DO'=>'República Dominicana',
                    'RE'=>'Reunión',
                    'RW'=>'Ruanda',
                    'RO'=>'Rumanía',
                    'EH'=>'Sahara Occidental',
                    'WS'=>'Samoa',
                    'AS'=>'Samoa Americana',
                    'KN'=>'San Cristóbal y Nevis',
                    'SM'=>'San Marino',
                    'VC'=>'San Vicente y las Granadinas',
                    'SH'=>'Santa Elena',
                    'LC'=>'Santa Lucía',
                    'ST'=>'Santo Tomé y Príncipe',
                    'SN'=>'Senegal',
                    'YU'=>'Serbia y Montenegro',
                    'SC'=>'Seychelles',
                    'SL'=>'Sierra Leona',
                    'SG'=>'Singapur',
                    'SO'=>'Somalía',
                    'LK'=>'Sri Lanka',
                    'PM'=>'St Pierre y Miquelon',
                    'SZ'=>'Suazilandia',
                    'ZA'=>'Sudáfrica',
                    'SD'=>'Sudán',
                    'SE'=>'Suecia',
                    'CH'=>'Suiza',
                    'SR'=>'Surinam',
                    'TN'=>'Túnez',
                    'TH'=>'Tailandia',
                    'TW'=>'Taiwan',
                    'TZ'=>'Tanzanía',
                    'TJ'=>'Tayiquistán',
                    'TF'=>'Territorios australes y antárticos franceses',
                    'IO'=>'Territorios Británicos del Océano Índico',
                    'TP'=>'Timor Oriental',
                    'TG'=>'Togo',
                    'TK'=>'Tokelau',
                    'TO'=>'Tonga',
                    'TT'=>'Trinidad y Tobago',
                    'TM'=>'Turkmenistán',
                    'TR'=>'Turquía',
                    'TV'=>'Tuvalu',
                    'UA'=>'Ucrania',
                    'UG'=>'Uganda',
                    'UY'=>'Uruguay',
                    'US'=>'USA',
                    'UZ'=>'Uzbekistán',
                    'VU'=>'Vanuatu',
                    'VE'=>'Venezuela',
                    'VN'=>'Vietnam',
                    'YE'=>'Yemen',
                    'ZR'=>'Zaire',
                    'ZM'=>'Zambia',
                    'ZW'=>'Zimbabue',
                );
                $message = \Swift_Message::newInstance()
                    ->setSubject('SkyBlue® WebPage - Contacto')
                    ->setFrom($data['email'])
                    //->setTo(array('informacion@raloy.com.mx'))
                    ->setTo(array('cesar@innology.mx'))
                    ->setBody(
                        $this->renderView('@Frontend/mail/contact.html.twig',array('contacto'=>$data,'paises'=>$country)),
                        'text/html'
                    )
                ;
                $this->get('mailer')->send($message);
                $enviado=1;
            }else{
                $enviado=0;
            }
        }else{
            $enviado=0;
        }

        return $this->render('@Frontend/Default/contact.html.twig', array(
            'form' => $form->createView(),
            'enviado' => $enviado,
        ));
    }

    /**
     * @Route("/privacidad", name="privacidad")
     */
    public function privacyAction()
    {
        return $this->render('FrontendBundle:Default:privacy.html.twig');
    }

    /**
     * @Route("/Error404", name="error404")
     */
    public function error404Action(){
        return $this->render('@Twig/Exception/error404.html.twig');
    }
}
