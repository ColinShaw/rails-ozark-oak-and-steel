# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

image_path="#{Rails.root}/seed_images/"

# Atom feed posts

Feed.create(  title:    'Welcome to Ozark Oak and Steel',
              content:  'Welcome to Ozark Oak and Steel!  We will post updates about products and other infomative goodies on this channel...')



# Categories
###########################################################################

Category.create(  name:         'Tables', 
                  class_name:   'table')
                  
Category.create(  name:         'Bookshelves', 
                  class_name:   'bookshelf')
                  
Category.create(  name:         'Desks', 
                  class_name:   'desk')
                  
#Category.create(  name:         'Ornamental', 
#                  class_name:   'ornament')
                  
Category.create(  name:         'Custom', 
                  class_name:   'custom')



# Products and hooks to categories and images
###########################################################################

p=Product.create(   name:         'Medium Oak Coffee Table', 
                    description:  'This table is so fun because it gives the illusion that the
                                  surface is floating.  It is the first thing that we ever made at Ozark Oak and Steel
                                  and remains one of the most sought after.  A very sturdy
                                  table, the top is beautiful quartersawn white oak sitting atop
                                  a tig welded steel frame. Tabletop size is 18x30 inches, height is 16 inches.',
                    price:        1150.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Tables').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'FloatingTable_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'FloatingTable_1_3.jpg') 
                    i.save
                  


p=Product.create(   name:         'Recycled Wood Table', 
                    description:  'No reason to let good wood go to waste; it is not even responsible to 
                                  simply make things with new materials. This lovely table is crafted from 
                                  former tables that once lost their luster and found themselves destined
                                  for the dump.  However, with a little love, these relics deliver an 
                                  elegance no newly minted wood surface can quite match. Tabletop size is 24x30 inches.',
                    price:        850.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Tables').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'RecycledTable_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'RecycledTable_1_2.jpg') 
                    i.save
                    
                    
                    
p=Product.create(   name:         'Oak Book Shelf', 
                    description:  'This lovely little bookshelf is function and form at its finest.  It 
                                  makes no pretense of its structural steel, using simple pieces for 
                                  the basic functions.  The simplicity of the structural form allows the 
                                  beauty of the wood grain to radiate.  24 inches high with 24 inch red oak 
                                  shelves.',
                    price:        850.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Bookshelves').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'Bookshelf_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'Bookshelf_1_2.jpg') 
                    i.save
                    
                    

p=Product.create(   name:         'Small Oak Coffee Table', 
                    description:  'This is the small version of our most popular floating top oak table.  This little guy is beautifully 
                                  adorned with a single-piece quartersawn white oak top.  Sporting a slightly more petit tig tig welded 
                                  steel frame, this elegant but modern masterpiece has a tabletop that is 14x22 inches and stands 16 inches
                                  high.',
                    price:        1050.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Tables').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'FloatingTable_2_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'FloatingTable_2_2.jpg') 
                    i.save
                    
                    
                  
p=Product.create(   name:         'Glass Computer Desk', 
                    description:  'In a word, wow!  When we finished this desk we were speechless.  Contemporary
                                  form in steel with thick tempered glass fit for a bank door.  And the obligatory 
                                  shelf for a Mac Mini.  This desk is workspace elegance at its very finest. The work
                                  surface is 22x37 inches.',
                    price:        1800.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Desks').id)
                  
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'Desk_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'Desk_1_2.jpg') 
                    i.save
      

                  
p=Product.create(   name:         'Hall Table With Shelf', 
                    description:  'This beautiful table is a hallway classic.  The right height for
                                  putting things on as you pass, and with an integrated leaning bookshelf
                                  underneath, this is one of the most useful hall tables you may 
                                  ever find. Tabletop is 12x36 inches.',
                    price:        900.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Tables').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'MaghanTable_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'MaghanTable_1_2.jpg') 
                    i.save
                  


p=Product.create(   name:         'Personal Reading Lamp', 
                    description:  'At a stunning seven feet high, this lamp is perfect for placing 
                                  behind your favorite reading chair or over your favorite 
                                  desk.  Focused downward, the lighting effect is quite intimate.  You 
                                  read it right, it is seven feet high.',
                    price:        1050.0, 
                    visible:      true,
                    category_ids: Category.find_by_name('Custom').id)

                    i=p.images.new
                    p.save 
                    i.name=p.name+" View One"
                    i.alt_tag=p.name
                    i.display_order=1
                    i.main_image=true
                    i.image=File.open(image_path+'StandingLamp_1_1.jpg') 
                    i.save
                    
                    i=p.images.new
                    p.save 
                    i.name=p.name+" View Two"
                    i.alt_tag=p.name
                    i.display_order=2
                    i.main_image=false
                    i.image=File.open(image_path+'StandingLamp_1_2.jpg') 
                    i.save