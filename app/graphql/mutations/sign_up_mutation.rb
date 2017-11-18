Mutations::SignUpMutation = GraphQL::Relay::Mutation.define do
  name "SignUp"

  input_field :firstName, !types.String
  input_field :lastName, !types.String
  input_field :email, !types.String
  input_field :password, !types.String

  return_field :athlete, Types::AthleteType

  resolve ->(obj, args, ctx) {
    athlete = Athlete.create(
      first_name: args[:firstName],
      last_name: args[:lastName],
      email: args[:email],
      password: args[:password]
    )

    { athlete: athlete }
  }
end
