import { useForm } from "react-hook-form";
import { z } from "zod";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import { zodResolver } from "@hookform/resolvers/zod";

const schema = z.object({
  email: z.string().email({ message: "Invalid email format" }),
  password: z.string().min(8, { message: "Password must be at least 8 characters" }).max(20),
});

type FormData = z.infer<typeof schema>;

const Login = () => {
  const navigate = useNavigate();

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<FormData>({
    resolver: zodResolver(schema),
  });

  const onSubmit = async (data: FormData) => {
    try {
      const user = await axios.post("http://localhost:3000/CreateUser", data);
      console.log(user);
      navigate("/home");
    } catch (error) {
      console.error("Login failed:", error);
    }
  };

  return (
    <div className="flex flex-col justify-center items-center h-screen">
      <h1 className="text-2xl font-bold mb-4">Welcome Back!</h1>

      <form onSubmit={handleSubmit(onSubmit)} className="flex flex-col items-center">
        <input
          type="text"
          placeholder="Email"
          {...register("email")}
          className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-md my-2 py-2 px-4 w-72"
        />
        {errors.email && <p className="text-red-600 text-sm">{errors.email.message}</p>}

        <input
          type="password"
          placeholder="Password"
          {...register("password")}
          className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-md my-4 py-2 px-4 w-72"
        />
        {errors.password && <p className="text-red-600 text-sm">{errors.password.message}</p>}

        <button
          type="submit"
          className="bg-blue-900 hover:bg-blue-700 hover:h-8 text-white font-bold rounded w-72 h-9"
        >
          Login
        </button>
      </form>
    </div>
  );
};

export default Login;
