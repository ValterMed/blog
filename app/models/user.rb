class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include PersonalInfo

  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String
  field :work_place, type: String
  field :age, type: Integer
  field :is_active, type: Boolean, default: true

  has_many :scores
  embeds_many :parents

  accepts_nested_attributes_for :scores

  scope :adults, -> { where(:age => {'$gte' => 18} ) }
  scope :recently_adults, -> { where(age: 18) }

  #validates :email, presence: true
  #validates :name, presence: true
  validates_presence_of :email, :name
  validates :email, uniqueness: true

  def full_name
    "#{name} #{last_name}"
  end

  def is_active?
    is_active
  end

  def desactivate
    update(is_active: false)
  end

  def reactivate
    update(is_active: true)
  end
  
=begin
  metodo para actualizar el atributo is_active
  def inactive!
    update(is_active: false)
  end
=end

end

#Ejemplo de uso para las rutas
=begin


resources :photos do
 member do
    get 'preview'
  end
end

esto reconocera /photos/1/preview con GET, and route to the preview action of
PhotosController, with the resource id value passed in params[:id]. It will also create



=end