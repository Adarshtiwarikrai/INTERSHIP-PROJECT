import { useQuery } from "@tanstack/react-query";
import axios from "axios";

const fetchUsers = async () => {
  const { data } = await axios.get("http://localhost:3000/GetAllUser");
  return data.user; 
};

const Home = () => {
  const { data: users, isLoading, error } = useQuery({
    queryKey: ["users"],
    queryFn: fetchUsers,
  });

  const keys = users?.[0] ? Object.keys(users[0]) : [];

  return (
    <div className="p-6 flex flex-col items-center">
      {isLoading && <h1 className="text-xl font-bold text-blue-600">Loading...</h1>}
      {error && <p className="text-red-600 font-semibold">Error loading data</p>}

      {!isLoading && users?.length > 0 && (
        <div className="overflow-x-auto w-full max-w-4xl">
          <table className="w-full border-collapse border border-gray-300 shadow-lg rounded-md">
          
            <thead className="bg-blue-900 text-white">
              <tr>
                {keys.map((key, index) => (
                  <th key={index} className="px-4 py-2 border border-gray-300 text-left">
                    {key.toUpperCase()}
                  </th>
                ))}
              </tr>
            </thead>

          
            <tbody>
              {users.map((user, rowIndex) => (
                <tr key={rowIndex} className="odd:bg-gray-100 even:bg-gray-200 hover:bg-gray-300">
                  {keys.map((key, colIndex) => (
                    <td key={colIndex} className="px-4 py-2 border border-gray-300">
                      {user[key]}
                    </td>
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {!isLoading && users?.length === 0 && (
        <p className="text-red-600 font-semibold">No data found</p>
      )}
    </div>
  );
};

export default Home;
