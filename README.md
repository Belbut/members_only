https://www.theodinproject.com/lessons/ruby-on-rails-members-only

User:
    -name [string]{presence}
    -email [string]{presence}
    -password [string] {length:5-20}

    *has_many :posts

Post: -> new create index
    -text [text] {length :max450}

    *belongs_to :user
