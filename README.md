# ⚗️ Markdown table via ABAP CDS

Just a small, non-serious free time project along the lines of: “Is that actually possible?” The answer is: "Yes it is!". You can use ABAP CDS and ABAP SQL statment SELECT to get data from the database directly as a Markdown table. I can't think of a business case for this scenario, but it's nice that it's possible 😂

## Design

There are 4 different ABAP CDS to create a Markdown table output for entries in database table /DMO/AIRPORT:

1) [ZI_MD_HEADER](/src/zi_md_header.ddls.asddls): Headline with needed columns
2) [ZI_MD_ALIGNMENT](/src/zi_md_alignment.ddls.asddls): Alignment of columns
3) [ZI_MD_LINES](/src/zi_md_lines.ddls.asddls): Lines from database table /DMO/AIRPORT
4) [ZC_MD_TABLE](/src/zc_md_table.ddls.asddls): Combines the other 3 ABAP CDS from 1) to 3) by UNION

As UNION has no given sort order I solved this problem via ABAP SQL SELECT ... ORDER BY ...:
```abap
METHOD if_oo_adt_classrun~main.
  SELECT * FROM zc_md_table ORDER BY AirportID INTO TABLE @DATA(markdown_table).
  out->write( markdown_table ).
ENDMETHOD.
```

## Output example

|         **Airport ID**    |         Name                                     |         City                                 |         Country    |     
|         :---              |         :---                                     |         :---                                 |         :---       |     
|         ACA               |         General Juan N. Álvarez Int. Airport     |         Acapulco, Guerrero                   |         MX         |     
|         ACE               |         Lanzarote Airport                        |         Lanzarote, Canary Islands            |         ES         |     
|         ASP               |         Alice Springs Airport                    |         Alice Springs, Northern Territory    |         AU         |     
|         BKK               |         Suvarnabhumi Airport                     |         Bangkok                              |         TH         |     
|         BNA               |         Nashville International Airport          |         Nashville, Tennessee                 |         US         |     
|         BOS               |         Logan International Airport              |         Boston, Massachusetts                |         US         |     
|         CDG               |         Charles de Gaulle Airport                |         Paris                                |         FR         |     
