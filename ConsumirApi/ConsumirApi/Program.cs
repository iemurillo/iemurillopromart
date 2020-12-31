using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;

namespace ConsumirApiPost
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var url = "http://dummy.restapiexample.com/api/v1/employees";

            using (var http = new HttpClient())
            {
                var response = await http.GetStringAsync(url);

                var posts = JsonConvert.DeserializeObject<modelospos>(response);

                foreach (var post in posts.data)
                {
                    Console.WriteLine($"id: {post.id}");
                    Console.WriteLine($"employee_name: {post.employee_name}");
                    Console.WriteLine($"employee_salary: {post.employee_salary}");
                    Console.WriteLine($"employee_age: {post.employee_age}");
                    Console.WriteLine($"profile_image: {post.profile_image}");
                    Console.WriteLine($"-------------------------------------------------------");
                }

                Console.ReadLine();
            }
        }
    }
}
