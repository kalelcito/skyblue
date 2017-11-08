<?php

namespace CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * CoreBundle\Entity\Contacto
 *
 * @ORM\Entity()
 * @ORM\Table(name="contacto")
 */
class Contacto
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $pais;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $tema;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $email;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    protected $cliente;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    protected $descripcion;

    /**
     * @ORM\Column(type="string", length=75, nullable=true)
     */
    protected $nombre;

    /**
     * @ORM\Column(type="string", length=75, nullable=true)
     */
    protected $apellidos;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $empresa;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $giro;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $ciudad;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $estado;

    /**
     * @ORM\Column(type="string", length=10, nullable=true)
     */
    protected $cp;

    /**
     * @ORM\Column(type="string", length=15, nullable=true)
     */
    protected $telefono;

    /**
     * @ORM\Column(type="string", length=15, nullable=true)
     */
    protected $ip;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $plataforma;

    /**
     * @Gedmo\Timestampable(on="create", field="creado")
     *
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $created_at;

    /**
     * @Gedmo\Timestampable(on="update", field="actualizado")
     *
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $updated_at;

    public function __construct()
    {
    }

    /**
     * Set the value of id.
     *
     * @param integer $id
     * @return \CoreBundle\Entity\Contacto
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of id.
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of pais.
     *
     * @param string $pais
     * @return \CoreBundle\Entity\Contacto
     */
    public function setPais($pais)
    {
        $this->pais = $pais;

        return $this;
    }

    /**
     * Get the value of pais.
     *
     * @return string
     */
    public function getPais()
    {
        return $this->pais;
    }

    /**
     * Set the value of tema.
     *
     * @param string $tema
     * @return \CoreBundle\Entity\Contacto
     */
    public function setTema($tema)
    {
        $this->tema = $tema;

        return $this;
    }

    /**
     * Get the value of tema.
     *
     * @return string
     */
    public function getTema()
    {
        return $this->tema;
    }

    /**
     * Set the value of email.
     *
     * @param string $email
     * @return \CoreBundle\Entity\Contacto
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get the value of email.
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set the value of cliente.
     *
     * @param boolean $cliente
     * @return \CoreBundle\Entity\Contacto
     */
    public function setCliente($cliente)
    {
        $this->cliente = $cliente;

        return $this;
    }

    /**
     * Get the value of cliente.
     *
     * @return boolean
     */
    public function getCliente()
    {
        return $this->cliente;
    }

    /**
     * Set the value of descripcion.
     *
     * @param string $descripcion
     * @return \CoreBundle\Entity\Contacto
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get the value of descripcion.
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set the value of nombre.
     *
     * @param string $nombre
     * @return \CoreBundle\Entity\Contacto
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get the value of nombre.
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set the value of apellidos.
     *
     * @param string $apellidos
     * @return \CoreBundle\Entity\Contacto
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Get the value of apellidos.
     *
     * @return string
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Set the value of empresa.
     *
     * @param string $empresa
     * @return \CoreBundle\Entity\Contacto
     */
    public function setEmpresa($empresa)
    {
        $this->empresa = $empresa;

        return $this;
    }

    /**
     * Get the value of empresa.
     *
     * @return string
     */
    public function getEmpresa()
    {
        return $this->empresa;
    }

    /**
     * Set the value of giro.
     *
     * @param string $giro
     * @return \CoreBundle\Entity\Contacto
     */
    public function setGiro($giro)
    {
        $this->giro = $giro;

        return $this;
    }

    /**
     * Get the value of giro.
     *
     * @return string
     */
    public function getGiro()
    {
        return $this->giro;
    }

    /**
     * Set the value of ciudad.
     *
     * @param string $ciudad
     * @return \CoreBundle\Entity\Contacto
     */
    public function setCiudad($ciudad)
    {
        $this->ciudad = $ciudad;

        return $this;
    }

    /**
     * Get the value of ciudad.
     *
     * @return string
     */
    public function getCiudad()
    {
        return $this->ciudad;
    }

    /**
     * Set the value of estado.
     *
     * @param string $estado
     * @return \CoreBundle\Entity\Contacto
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get the value of estado.
     *
     * @return string
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set the value of cp.
     *
     * @param string $cp
     * @return \CoreBundle\Entity\Contacto
     */
    public function setCp($cp)
    {
        $this->cp = $cp;

        return $this;
    }

    /**
     * Get the value of cp.
     *
     * @return string
     */
    public function getCp()
    {
        return $this->cp;
    }

    /**
     * Set the value of telefono.
     *
     * @param string $telefono
     * @return \CoreBundle\Entity\Contacto
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get the value of telefono.
     *
     * @return string
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set the value of ip.
     *
     * @param string $ip
     * @return \CoreBundle\Entity\Contacto
     */
    public function setIp($ip)
    {
        $this->ip = $ip;

        return $this;
    }

    /**
     * Get the value of ip.
     *
     * @return string
     */
    public function getIp()
    {
        return $this->ip;
    }

    /**
     * Set the value of plataforma.
     *
     * @param string $plataforma
     * @return \CoreBundle\Entity\Contacto
     */
    public function setPlataforma($plataforma)
    {
        $this->plataforma = $plataforma;

        return $this;
    }

    /**
     * Get the value of plataforma.
     *
     * @return string
     */
    public function getPlataforma()
    {
        return $this->plataforma;
    }

    /**
     * Set the value of created_at.
     *
     * @param \DateTime $created_at
     * @return \CoreBundle\Entity\Contacto
     */
    public function setCreatedAt($created_at)
    {
        $this->created_at = $created_at;

        return $this;
    }

    /**
     * Get the value of created_at.
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    /**
     * Set the value of updated_at.
     *
     * @param \DateTime $updated_at
     * @return \CoreBundle\Entity\Contacto
     */
    public function setUpdatedAt($updated_at)
    {
        $this->updated_at = $updated_at;

        return $this;
    }

    /**
     * Get the value of updated_at.
     *
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    public function __sleep()
    {
        return array('id', 'pais', 'tema', 'email', 'cliente', 'descripcion', 'nombre', 'apellidos', 'empresa', 'giro', 'ciudad', 'estado', 'cp', 'telefono', 'ip', 'plataforma', 'created_at', 'updated_at');
    }
}