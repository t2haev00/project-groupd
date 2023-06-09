class Review {
  id: number
  title: string
  body: string
  stars: number
  restaurant_id: number
  user_id: number
  date: string

  constructor( id:number, title:string, body:string, stars:number, restaurant_id:number, user_id:number, date:string) {
    this.id = id
    this.title = title
    this.body = body
    this.stars = stars
    this.restaurant_id = restaurant_id
    this.user_id = user_id
    this.date = date
  }
}

export { Review }