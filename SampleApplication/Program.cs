using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Package1;

namespace SampleApplication {
    class Program {
        static void Main(string[] args) {
            using (EntitiesModel context = new EntitiesModel()) {
                context.UpdateSchema();
                var head = new Header();
                head.Status = HeaderStates.Created;
                head.Title = @"Header";
                head.DateCreated = DateTime.Now;
                context.Add(head);
                head.Positions.Add(new Position { DateCreated = DateTime.Now, Description = "Position text", SequenceNumber = 1 });
                context.SaveChanges();
                Console.WriteLine("Positions: " + head.Positions.Count);
                Console.ReadKey(intercept: true);
                context.Delete(head);
                context.SaveChanges();
                Console.WriteLine("Heads: " + context.Headers.Count());
                Console.ReadKey(intercept: true);
            }
        }
    }
}
