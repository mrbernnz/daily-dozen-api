Types::AthleteType = GraphQL::ObjectType.define do
  name "Athlete"
  description "An athlete"

  field :id, !types.ID
  field :firstName, !types.String, property: :first_name
  field :lastName, !types.String, property: :last_name
  field :email, !types.String
  field :workouts, types[Types::WorkoutType]
end
