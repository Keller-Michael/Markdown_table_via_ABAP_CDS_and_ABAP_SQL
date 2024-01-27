# ⚗️ Markdown table via ABAP CDS

Just a small, non-serious free time project along the lines of: “Is that actually possible?” The answer is: "Yes it is!". You can use ABAP CDS and ABAP SQL statment SELECT to get data from the database directly as a Markdown table. I can't think of a business case for this scenario, but it's nice that it's possible 😂

### Design

You find details about Markdown [here](https://en.wikipedia.org/wiki/Markdown). This is how Wikipedia describes it: _"Markdown is a lightweight markup language for creating formatted text using a plain-text editor."_ It's easy to learn and it plays an important role in a lot of platforms like GitHub. One of it features is that you can easy create a nice formatted table output with it. 

### Example

|         **Airport ID**    |         Name                                     |         City                                 |         Country    |     
|         :---              |         :---                                     |         :---                                 |         :---       |     
|         ACA               |         General Juan N. Álvarez Int. Airport     |         Acapulco, Guerrero                   |         MX         |     
|         ACE               |         Lanzarote Airport                        |         Lanzarote, Canary Islands            |         ES         |     
|         ASP               |         Alice Springs Airport                    |         Alice Springs, Northern Territory    |         AU         |     
|         BKK               |         Suvarnabhumi Airport                     |         Bangkok                              |         TH         |     
|         BNA               |         Nashville International Airport          |         Nashville, Tennessee                 |         US         |     
|         BOS               |         Logan International Airport              |         Boston, Massachusetts                |         US         |     
|         CDG               |         Charles de Gaulle Airport                |         Paris                                |         FR         |     
