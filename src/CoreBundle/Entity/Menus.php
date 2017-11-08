<?php

namespace CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * CoreBundle\Entity\Menus
 *
 * @ORM\Entity()
 * @ORM\Table(name="menus")
 */
class Menus
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $nombre;

    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $subtitulo;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $imagen;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    protected $orden;

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
     * @ORM\OneToMany(targetEntity="Submenus", mappedBy="menus")
     * @ORM\JoinColumn(name="id", referencedColumnName="id_menus", nullable=false)
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
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
     * Set the value of subtitulo.
     *
     * @param string $subtitulo
     * @return \CoreBundle\Entity\Menus
     */
    public function setSubtitulo($subtitulo)
    {
        $this->subtitulo = $subtitulo;

        return $this;
    }

    /**
     * Get the value of subtitulo.
     *
     * @return string
     */
    public function getSubtitulo()
    {
        return $this->subtitulo;
    }

    /**
     * Set the value of imagen.
     *
     * @param string $imagen
     * @return \CoreBundle\Entity\Menus
     */
    public function setImagen($imagen)
    {
        $this->imagen = $imagen;

        return $this;
    }

    /**
     * Get the value of imagen.
     *
     * @return string
     */
    public function getImagen()
    {
        return $this->imagen;
    }

    /**
     * Set the value of orden.
     *
     * @param integer $orden
     * @return \CoreBundle\Entity\Menus
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
     * Set the value of slug.
     *
     * @param string $slug
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
     * @return \CoreBundle\Entity\Menus
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
        return array('id', 'nombre', 'subtitulo', 'imagen', 'orden', 'activo', 'created_at', 'updated_at');
    }
}