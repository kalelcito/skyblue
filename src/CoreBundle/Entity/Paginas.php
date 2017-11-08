<?php

namespace CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * CoreBundle\Entity\Paginas
 *
 * @ORM\Entity()
 * @ORM\Table(name="paginas")
 */
class Paginas
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $nombre;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    protected $contenido;

    /**
     * @Gedmo\Slug(separator="-", updatable=true, fields={"nombre"})
     *
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $slug;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    protected $activo;

    /**
     * @ORM\Column(type="string", length=250, nullable=true)
     */
    protected $metakeys;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     */
    protected $metadesc;

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
     * @ORM\OneToMany(targetEntity="Submenus", mappedBy="paginas")
     * @ORM\JoinColumn(name="id", referencedColumnName="id_paginas", nullable=false)
     */
    protected $submenuses;

    public function __construct()
    {
        $this->submenuses = new ArrayCollection();
    }

    public function __toString() {
        return $this->nombre;
    }

    /**
     * Set the value of id.
     *
     * @param integer $id
     * @return \CoreBundle\Entity\Paginas
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
     * @return \CoreBundle\Entity\Paginas
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
     * Set the value of contenido.
     *
     * @param string $contenido
     * @return \CoreBundle\Entity\Paginas
     */
    public function setContenido($contenido)
    {
        $this->contenido = $contenido;

        return $this;
    }

    /**
     * Get the value of contenido.
     *
     * @return string
     */
    public function getContenido()
    {
        return $this->contenido;
    }

    /**
     * Set the value of slug.
     *
     * @param string $slug
     * @return \CoreBundle\Entity\Paginas
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * Get the value of slug.
     *
     * @return string
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set the value of activo.
     *
     * @param boolean $activo
     * @return \CoreBundle\Entity\Paginas
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
     * Set the value of metakeys.
     *
     * @param string $metakeys
     * @return \CoreBundle\Entity\Paginas
     */
    public function setMetakeys($metakeys)
    {
        $this->metakeys = $metakeys;

        return $this;
    }

    /**
     * Get the value of metakeys.
     *
     * @return string
     */
    public function getMetakeys()
    {
        return $this->metakeys;
    }

    /**
     * Set the value of metadesc.
     *
     * @param string $metadesc
     * @return \CoreBundle\Entity\Paginas
     */
    public function setMetadesc($metadesc)
    {
        $this->metadesc = $metadesc;

        return $this;
    }

    /**
     * Get the value of metadesc.
     *
     * @return string
     */
    public function getMetadesc()
    {
        return $this->metadesc;
    }

    /**
     * Set the value of created_at.
     *
     * @param \DateTime $created_at
     * @return \CoreBundle\Entity\Paginas
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
     * @return \CoreBundle\Entity\Paginas
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
     * Add Submenus entity to collection (one to many).
     *
     * @param \CoreBundle\Entity\Submenus $submenus
     * @return \CoreBundle\Entity\Paginas
     */
    public function addSubmenus(Submenus $submenus)
    {
        $this->submenuses[] = $submenus;

        return $this;
    }

    /**
     * Remove Submenus entity from collection (one to many).
     *
     * @param \CoreBundle\Entity\Submenus $submenus
     * @return \CoreBundle\Entity\Paginas
     */
    public function removeSubmenus(Submenus $submenus)
    {
        $this->submenuses->removeElement($submenus);

        return $this;
    }

    /**
     * Get Submenus entity collection (one to many).
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSubmenuses()
    {
        return $this->submenuses;
    }

    public function __sleep()
    {
        return array('id', 'nombre', 'contenido', 'slug', 'activo', 'metakeys', 'metadesc', 'created_at', 'updated_at');
    }
}