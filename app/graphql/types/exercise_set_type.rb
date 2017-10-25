Types::ExerciseSetType = GraphQL::ObjectType.define do
  name "Set"
  description "A Set"

  field :id, !types.ID
  field :number, !types.Int
  field :weight, !types.Int
  field :unit, !types.String
  field :rep, !types.Int
end
