<?php

namespace CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * CoreBundle\Entity\Submenus
 *
 * @ORM\Entity()
 * @ORM\Table(name="submenus", indexes={@ORM\Index(name="fk_submenus_menus1_idx", columns={"id_menus"}), @ORM\Index(name="fk_submenus_paginas1_idx", columns={"id_paginas"})})
 */
class Submenus
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=75, nullable=true)
     */
    protected $nombre;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    protected $orden;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    protected $activo;

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

    /**
     * @ORM\ManyToOne(targetEntity="Menus", inversedBy="submenuses")
     * @ORM\JoinColumn(name="id_menus", referencedColumnName="id", nullable=false)
     */
    protected $menus;

    /**
     * @ORM\ManyToOne(targetEntity="Paginas", inversedBy="submenuses")
     * @ORM\JoinColumn(name="id_paginas", referencedColumnName="id", nullable=false)
     */
    protected $paginas;

    public function __construct()
    {
    }

    /**
     * Set the value of id.
     *
     * @param integer $id
     * @return \CoreBundle\Entity\Submenus
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
     * Set the value of nombre.
     *
     * @param string $nombre
     * @return \CoreBundle\Entity\Submenus
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
     * Set the value of orden.
     *
     * @param integer $orden
     * @return \CoreBundle\Entity\Submenus
     */
    public function setOrden($orden)
    {
        $this->orden = $orden;

        return $this;
    }

    /**
     * Get the value of orden.
     *
     * @return integer
     */
    public function getOrden()
    {
        return $this->orden;
    }

    /**
     * Set the value of activo.
     *
     * @param boolean $activo
     * @return \CoreBundle\Entity\Submenus
     */
    public function setActivo($activo)
    {
        $this->activo = $activo;

        return $this;
    }

    /**
     * Get the value of activo.
     *
     * @return boolean
     */
    public function getActivo()
    {
        return $this->activo;
    }

    /**
     * Set the value of created_at.
     *
     * @param \DateTime $created_at
     * @return \CoreBundle\Entity\Submenus
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
     * @return \CoreBundle\Entity\Submenus
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

    /**
     * Set Menus entity (many to one).
     *
     * @param \CoreBundle\Entity\Menus $menus
     * @return \CoreBundle\Entity\Submenus
     */
    public function setMenus(Menus $menus = null)
    {
        $this->menus = $menus;

        return $this;
    }

    /**
     * Get Menus entity (many to one).
     *
     * @return \CoreBundle\Entity\Menus
     */
    public function getMenus()
    {
        return $this->menus;
    }

    /**
     * Set Paginas entity (many to one).
     *
     * @param \CoreBundle\Entity\Paginas $paginas
     * @return \CoreBundle\Entity\Submenus
     */
    public function setPaginas(Paginas $paginas = null)
    {
        $this->paginas = $paginas;

        return $this;
    }

    /**
     * Get Paginas entity (many to one).
     *
     * @return \CoreBundle\Entity\Paginas
     */
    public function getPaginas()
    {
        return $this->paginas;
    }

    public function __sleep()
    {
        return array('id', 'id_menus', 'id_paginas', 'nombre', 'orden', 'activo', 'created_at', 'updated_at');
    }
}