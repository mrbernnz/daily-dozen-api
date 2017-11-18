Mutations::SignInMutation = GraphQL::Relay::Mutation.define do
  name "SignIn"

  input_field :email, !types.String
  input_field :password, !types.String

  return_field :data, Types::SignInType

  resolve ->(obj, args, ctx) {
    athlete = Athlete.find_by(email: args[:email])

    raise 'Bad credentials' unless athlete.sign_in(args[:password])

    {
      data: {
        token: athlete.token,
        athlete: athlete
      }
    }
  }
end
