{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "markdown",
            "source": [
                "Listázzuk azon vendégek nevét, email-címét és felhasználói nevét, akik egynél többször foglaltak!\n",
                "\n",
                "- Hagyjuk ki azokat a vendégeket, akik május hónapban születtek!"
            ],
            "metadata": {
                "azdata_cell_guid": "78de5c16-b4e1-4cda-9261-3e58f774185d"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT V.NEV,\r\n",
                "    V.EMAIL,\r\n",
                "    V.USERNEV\r\n",
                "FROM Vendeg V\r\n",
                "JOIN Foglalas F ON V.USERNEV = F.UGYFEL_FK\r\n",
                "WHERE MONTH(V.SZUL_DAT) <> 5\r\n",
                "GROUP BY V.NEV, V.EMAIL, V.USERNEV\r\n",
                "HAVING COUNT(F.FOGLALAS_PK) > 1;"
            ],
            "metadata": {
                "azdata_cell_guid": "05a7878c-7099-4832-9232-4cbc46d281ec",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(169 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.034"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 13,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "NEV"
                                    },
                                    {
                                        "name": "EMAIL"
                                    },
                                    {
                                        "name": "USERNEV"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "NEV": "Kiss Ádám",
                                    "EMAIL": "ádám.kiss@mail.hu",
                                    "USERNEV": "adam1"
                                },
                                {
                                    "NEV": "Barkóci Ádám",
                                    "EMAIL": "adam3@gmail.com",
                                    "USERNEV": "adam3"
                                },
                                {
                                    "NEV": "Bieniek Ádám",
                                    "EMAIL": "ádám.bieniek@mail.hu",
                                    "USERNEV": "adam4"
                                },
                                {
                                    "NEV": "Lengyel Ágnes",
                                    "EMAIL": "agnes@gmail.com",
                                    "USERNEV": "agnes"
                                },
                                {
                                    "NEV": "Hartyánszky Ágnes",
                                    "EMAIL": "agnes3@gmail.com",
                                    "USERNEV": "agnes3"
                                },
                                {
                                    "NEV": "Horváth Ágnes",
                                    "EMAIL": "AGNESH@gmail.com",
                                    "USERNEV": "AGNESH"
                                },
                                {
                                    "NEV": "Kovács Ágnes",
                                    "EMAIL": "AGNESK@gmail.com",
                                    "USERNEV": "AGNESK"
                                },
                                {
                                    "NEV": "Bíró Ákos",
                                    "EMAIL": "ákos.bíró@mail.hu",
                                    "USERNEV": "akos"
                                },
                                {
                                    "NEV": "Dunai Aladár",
                                    "EMAIL": "aladár.dunai@mail.hu",
                                    "USERNEV": "aladar"
                                },
                                {
                                    "NEV": "Bagóczki Alexandra",
                                    "EMAIL": "alexandra.bagóczki@mail.hu",
                                    "USERNEV": "alexandra"
                                },
                                {
                                    "NEV": "Tóth András",
                                    "EMAIL": "andrás.tóth@mail.hu",
                                    "USERNEV": "andras2"
                                },
                                {
                                    "NEV": "Molnár András",
                                    "EMAIL": "andrás.molnár@mail.hu",
                                    "USERNEV": "andras21"
                                },
                                {
                                    "NEV": "Vígh András",
                                    "EMAIL": "andrás.vígh@mail.hu",
                                    "USERNEV": "andras3"
                                },
                                {
                                    "NEV": "Back András",
                                    "EMAIL": "andras4@gmail.com",
                                    "USERNEV": "andras4"
                                },
                                {
                                    "NEV": "Komjáti András",
                                    "EMAIL": "andras41@gmail.com",
                                    "USERNEV": "andras41"
                                },
                                {
                                    "NEV": "Kiss Andrea",
                                    "EMAIL": "andrea.kiss@mail.hu",
                                    "USERNEV": "andrea"
                                },
                                {
                                    "NEV": "Tornyos Andrea",
                                    "EMAIL": "ANDREAT@gmail.com",
                                    "USERNEV": "ANDREAT"
                                },
                                {
                                    "NEV": "Pivarcsi Anett",
                                    "EMAIL": "anett.pivarcsi@mail.hu",
                                    "USERNEV": "anett3"
                                },
                                {
                                    "NEV": "Tóth Anikó",
                                    "EMAIL": "aniko@gmail.com",
                                    "USERNEV": "aniko"
                                },
                                {
                                    "NEV": "Böröcz Anikó",
                                    "EMAIL": "aniko4@gmail.com",
                                    "USERNEV": "aniko4"
                                },
                                {
                                    "NEV": "Simon Anikó",
                                    "EMAIL": "ANIKOS@gmail.com",
                                    "USERNEV": "ANIKOS"
                                },
                                {
                                    "NEV": "Hamvay-Kovács Anita",
                                    "EMAIL": "anita.hamvay-kovács@mail.hu",
                                    "USERNEV": "anita"
                                },
                                {
                                    "NEV": "Szűcs Annamária",
                                    "EMAIL": "annamária.szűcs@mail.hu",
                                    "USERNEV": "annamaria1"
                                },
                                {
                                    "NEV": "Regős Annamária",
                                    "EMAIL": "ANNAMARIAR@gmail.com",
                                    "USERNEV": "ANNAMARIAR"
                                },
                                {
                                    "NEV": "Jakab Áron",
                                    "EMAIL": "aron2@gmail.com",
                                    "USERNEV": "aron2"
                                },
                                {
                                    "NEV": "Kelemen Áron",
                                    "EMAIL": "áron.kelemen@mail.hu",
                                    "USERNEV": "ARONK"
                                },
                                {
                                    "NEV": "Ötvös Árpád",
                                    "EMAIL": "árpád.ötvös@mail.hu",
                                    "USERNEV": "arpad2"
                                },
                                {
                                    "NEV": "Móricz Árpád",
                                    "EMAIL": "árpád.móricz@mail.hu",
                                    "USERNEV": "ARPADM"
                                },
                                {
                                    "NEV": "Csóti Attila",
                                    "EMAIL": "attila@gmail.com",
                                    "USERNEV": "attila"
                                },
                                {
                                    "NEV": "Gulyás Attila",
                                    "EMAIL": "attila.gulyás@mail.hu",
                                    "USERNEV": "attila1"
                                },
                                {
                                    "NEV": "Baróti Attila",
                                    "EMAIL": "attila.baróti@mail.hu",
                                    "USERNEV": "attila4"
                                },
                                {
                                    "NEV": "Bozsik Balázs",
                                    "EMAIL": "balázs.bozsik@mail.hu",
                                    "USERNEV": "balazs1"
                                },
                                {
                                    "NEV": "Szűcs Balázs",
                                    "EMAIL": "balázs.szűcs@mail.hu",
                                    "USERNEV": "balazs2"
                                },
                                {
                                    "NEV": "Bakódy Balázs",
                                    "EMAIL": "balazs3@gmail.com",
                                    "USERNEV": "balazs3"
                                },
                                {
                                    "NEV": "Horváth Bálint",
                                    "EMAIL": "balint@gmail.com",
                                    "USERNEV": "balint"
                                },
                                {
                                    "NEV": "Molnár Bálint",
                                    "EMAIL": "balint1@gmail.com",
                                    "USERNEV": "balint1"
                                },
                                {
                                    "NEV": "Vukasinovity Bálint",
                                    "EMAIL": "balint2@gmail.com",
                                    "USERNEV": "balint2"
                                },
                                {
                                    "NEV": "Endresz Bálint",
                                    "EMAIL": "bálint.endresz@mail.hu",
                                    "USERNEV": "balu"
                                },
                                {
                                    "NEV": "Bagi Beáta",
                                    "EMAIL": "beáta.bagi@mail.hu",
                                    "USERNEV": "beata4"
                                },
                                {
                                    "NEV": "Kerényi Beatrix",
                                    "EMAIL": "beatrix.kerényi@mail.hu",
                                    "USERNEV": "BEATRIXK"
                                },
                                {
                                    "NEV": "Szekendi Beatrix",
                                    "EMAIL": "beatrix.szekendi@mail.hu",
                                    "USERNEV": "BEATRIXS"
                                },
                                {
                                    "NEV": "Farkas Béla",
                                    "EMAIL": "BELAF@gmail.com",
                                    "USERNEV": "BELAF"
                                },
                                {
                                    "NEV": "Győrffy Bence",
                                    "EMAIL": "bence@gmail.com",
                                    "USERNEV": "bence"
                                },
                                {
                                    "NEV": "Bajusz Bence",
                                    "EMAIL": "bence.bajusz@mail.hu",
                                    "USERNEV": "BENCEB"
                                },
                                {
                                    "NEV": "Simon Bernadett",
                                    "EMAIL": "bernadett1@gmail.com",
                                    "USERNEV": "bernadett1"
                                },
                                {
                                    "NEV": "Kovács Bernadett",
                                    "EMAIL": "bernadett.kovács@mail.hu",
                                    "USERNEV": "bernadett2"
                                },
                                {
                                    "NEV": "Orbán Bernadett",
                                    "EMAIL": "bernadett.orbán@mail.hu",
                                    "USERNEV": "BERNADETTO"
                                },
                                {
                                    "NEV": "Csiger Bertalan",
                                    "EMAIL": "bertalan@gmail.com",
                                    "USERNEV": "bertalan"
                                },
                                {
                                    "NEV": "Székely Brigitta",
                                    "EMAIL": "brigitta.székely@mail.hu",
                                    "USERNEV": "brigitta"
                                },
                                {
                                    "NEV": "Nagymihály Csongor",
                                    "EMAIL": "csongor.nagymihály@mail.hu",
                                    "USERNEV": "csongor3"
                                },
                                {
                                    "NEV": "Vörös Dániel",
                                    "EMAIL": "daniel@gmail.com",
                                    "USERNEV": "dani"
                                },
                                {
                                    "NEV": "Rácz Dániel",
                                    "EMAIL": "dániel.rácz@mail.hu",
                                    "USERNEV": "daniel"
                                },
                                {
                                    "NEV": "Keszler Dániel",
                                    "EMAIL": "dániel.keszler@mail.hu",
                                    "USERNEV": "daniel1"
                                },
                                {
                                    "NEV": "Ambrus Dávid",
                                    "EMAIL": "david@gmail.com",
                                    "USERNEV": "david"
                                },
                                {
                                    "NEV": "Sobják Dávid",
                                    "EMAIL": "david1@gmail.com",
                                    "USERNEV": "david1"
                                },
                                {
                                    "NEV": "Barna Debóra",
                                    "EMAIL": "debóra.barna@mail.hu",
                                    "USERNEV": "debora"
                                },
                                {
                                    "NEV": "Tömböly Dénes",
                                    "EMAIL": "denes@gmail.com",
                                    "USERNEV": "denes"
                                },
                                {
                                    "NEV": "Bittmann Edit",
                                    "EMAIL": "edit.bittmann@mail.hu",
                                    "USERNEV": "edit"
                                },
                                {
                                    "NEV": "Kuruc Emese",
                                    "EMAIL": "emese.kuruc@mail.hu",
                                    "USERNEV": "emese"
                                },
                                {
                                    "NEV": "Balogh Eszter",
                                    "EMAIL": "eszter.balogh@mail.hu",
                                    "USERNEV": "eszter2"
                                },
                                {
                                    "NEV": "Fülöp Eszter",
                                    "EMAIL": "eszter.fülöp@mail.hu",
                                    "USERNEV": "eszter4"
                                },
                                {
                                    "NEV": "Érsek Eszter",
                                    "EMAIL": "eszter.érsek@mail.hu",
                                    "USERNEV": "ESZTERE"
                                },
                                {
                                    "NEV": "Enyedi Éva",
                                    "EMAIL": "eva@gmail.com",
                                    "USERNEV": "eva"
                                },
                                {
                                    "NEV": "Perlinger Éva",
                                    "EMAIL": "eva2@gmail.com",
                                    "USERNEV": "eva2"
                                },
                                {
                                    "NEV": "Viktor Éva",
                                    "EMAIL": "EVAV@gmail.com",
                                    "USERNEV": "EVAV"
                                },
                                {
                                    "NEV": "Orosz Ferenc",
                                    "EMAIL": "ferenc.orosz@mail.hu",
                                    "USERNEV": "ferenc1"
                                },
                                {
                                    "NEV": "Frank Fruzsina",
                                    "EMAIL": "fruzsina4@gmail.com",
                                    "USERNEV": "fruzsina4"
                                },
                                {
                                    "NEV": "Köves Gábor",
                                    "EMAIL": "gabor1@gmail.com",
                                    "USERNEV": "gabor1"
                                },
                                {
                                    "NEV": "Telek Gábor",
                                    "EMAIL": "gábor.telek@mail.hu",
                                    "USERNEV": "gabor4"
                                },
                                {
                                    "NEV": "Nagy Gabriella",
                                    "EMAIL": "gabriella1@gmail.com",
                                    "USERNEV": "gabriella1"
                                },
                                {
                                    "NEV": "Nyíri Georgij",
                                    "EMAIL": "georgij.nyíri@mail.hu",
                                    "USERNEV": "georgij"
                                },
                                {
                                    "NEV": "Bárci Gusztáv",
                                    "EMAIL": "gusztav@gmail.com",
                                    "USERNEV": "gusztav"
                                },
                                {
                                    "NEV": "Kornseé Gyöngyi",
                                    "EMAIL": "gyöngyi.kornseé@mail.hu",
                                    "USERNEV": "GYONGYIK"
                                },
                                {
                                    "NEV": "Oroszi György",
                                    "EMAIL": "GYORGYO@gmail.com",
                                    "USERNEV": "GYORGYO"
                                },
                                {
                                    "NEV": "Nádudvari Henrik",
                                    "EMAIL": "henrik.nádudvari@mail.hu",
                                    "USERNEV": "henrik3"
                                },
                                {
                                    "NEV": "Andor Ibolya",
                                    "EMAIL": "ibolya.andor@mail.hu",
                                    "USERNEV": "IBOLYAA"
                                },
                                {
                                    "NEV": "Bosnyák Ilona",
                                    "EMAIL": "ilona3@gmail.com",
                                    "USERNEV": "ilona3"
                                },
                                {
                                    "NEV": "Búza Imre",
                                    "EMAIL": "imre.búza@mail.hu",
                                    "USERNEV": "imre"
                                },
                                {
                                    "NEV": "Papp Imre",
                                    "EMAIL": "imre.papp@mail.hu",
                                    "USERNEV": "imre1"
                                },
                                {
                                    "NEV": "Soós István",
                                    "EMAIL": "istvan@gmail.com",
                                    "USERNEV": "istvan"
                                },
                                {
                                    "NEV": "Vizi István",
                                    "EMAIL": "istván.vizi@mail.hu",
                                    "USERNEV": "istvan1"
                                },
                                {
                                    "NEV": "Varga István",
                                    "EMAIL": "ISTVANV@gmail.com",
                                    "USERNEV": "ISTVANV"
                                },
                                {
                                    "NEV": "Harangozó János",
                                    "EMAIL": "janos3@gmail.com",
                                    "USERNEV": "janos3"
                                },
                                {
                                    "NEV": "Giliga János",
                                    "EMAIL": "JANOSG@gmail.com",
                                    "USERNEV": "JANOSG"
                                },
                                {
                                    "NEV": "Pálinkás János",
                                    "EMAIL": "JANOSP@gmail.com",
                                    "USERNEV": "JANOSP"
                                },
                                {
                                    "NEV": "Gergely József",
                                    "EMAIL": "jozsef@gmail.com",
                                    "USERNEV": "jozsef"
                                },
                                {
                                    "NEV": "Vajda József",
                                    "EMAIL": "józsef.vajda@mail.hu",
                                    "USERNEV": "jozsef2"
                                },
                                {
                                    "NEV": "Hídasi Judit",
                                    "EMAIL": "JUDITH@gmail.com",
                                    "USERNEV": "JUDITH"
                                },
                                {
                                    "NEV": "Tóth Júlia",
                                    "EMAIL": "julia@gmail.com",
                                    "USERNEV": "julia"
                                },
                                {
                                    "NEV": "Nagy Júlia",
                                    "EMAIL": "julia4@gmail.com",
                                    "USERNEV": "julia4"
                                },
                                {
                                    "NEV": "Szabó Julianna",
                                    "EMAIL": "julianna4@gmail.com",
                                    "USERNEV": "julianna4"
                                },
                                {
                                    "NEV": "Gondos Katalin",
                                    "EMAIL": "katalin.gondos@mail.hu",
                                    "USERNEV": "kata"
                                },
                                {
                                    "NEV": "Horváth Katalin",
                                    "EMAIL": "katalin.horváth@mail.hu",
                                    "USERNEV": "katalin"
                                },
                                {
                                    "NEV": "Kertész Katalin",
                                    "EMAIL": "katalin4@gmail.com",
                                    "USERNEV": "katalin4"
                                },
                                {
                                    "NEV": "Kovács Katalin",
                                    "EMAIL": "katalin.kovács@mail.hu",
                                    "USERNEV": "katka"
                                },
                                {
                                    "NEV": "Bakó Klaudia",
                                    "EMAIL": "klaudia.bakó@mail.hu",
                                    "USERNEV": "klaudia2"
                                },
                                {
                                    "NEV": "Lukács Kornél",
                                    "EMAIL": "kornél.lukács@mail.hu",
                                    "USERNEV": "kornel4"
                                },
                                {
                                    "NEV": "Poprádi Kristóf",
                                    "EMAIL": "kristof4@gmail.com",
                                    "USERNEV": "kristof4"
                                },
                                {
                                    "NEV": "Horváth Krisztina",
                                    "EMAIL": "kriszti@gmail.com",
                                    "USERNEV": "kriszti"
                                },
                                {
                                    "NEV": "Czérna Krisztián",
                                    "EMAIL": "krisztián.czérna@mail.hu",
                                    "USERNEV": "krisztian4"
                                },
                                {
                                    "NEV": "Bori Krisztina",
                                    "EMAIL": "krisztina.bori@mail.hu",
                                    "USERNEV": "krisztina1"
                                },
                                {
                                    "NEV": "Gyárfás Krisztina",
                                    "EMAIL": "KRISZTINAG@gmail.com",
                                    "USERNEV": "KRISZTINAG"
                                },
                                {
                                    "NEV": "Kiss Lajos",
                                    "EMAIL": "lajos.kiss@mail.hu",
                                    "USERNEV": "lajos"
                                },
                                {
                                    "NEV": "Nagymihály Lajos",
                                    "EMAIL": "lajos.nagymihály@mail.hu",
                                    "USERNEV": "lala"
                                },
                                {
                                    "NEV": "Móra László",
                                    "EMAIL": "lászló.móra@mail.hu",
                                    "USERNEV": "laszlo2"
                                },
                                {
                                    "NEV": "Antal László",
                                    "EMAIL": "lászló.antal@mail.hu",
                                    "USERNEV": "LASZLOA"
                                },
                                {
                                    "NEV": "Nagy László",
                                    "EMAIL": "lászló.nagy@mail.hu",
                                    "USERNEV": "LASZLON"
                                },
                                {
                                    "NEV": "Baráth Mária",
                                    "EMAIL": "mária.baráth@mail.hu",
                                    "USERNEV": "maria1"
                                },
                                {
                                    "NEV": "Kispál Márk",
                                    "EMAIL": "márk.kispál@mail.hu",
                                    "USERNEV": "mark"
                                },
                                {
                                    "NEV": "Horváth Márk",
                                    "EMAIL": "márk.horváth@mail.hu",
                                    "USERNEV": "MARKH"
                                },
                                {
                                    "NEV": "Kalacsi Márton",
                                    "EMAIL": "marton@gmail.com",
                                    "USERNEV": "marton"
                                },
                                {
                                    "NEV": "Koza Máté",
                                    "EMAIL": "máté.koza@mail.hu",
                                    "USERNEV": "MATEK"
                                },
                                {
                                    "NEV": "Botka Mátyás",
                                    "EMAIL": "matyas2@gmail.com",
                                    "USERNEV": "matyas2"
                                },
                                {
                                    "NEV": "Szilágyi Mátyás",
                                    "EMAIL": "mátyás.szilágyi@mail.hu",
                                    "USERNEV": "MATYASS"
                                },
                                {
                                    "NEV": "Juhász Mihály",
                                    "EMAIL": "mihály.juhász@mail.hu",
                                    "USERNEV": "MIHALYJ"
                                },
                                {
                                    "NEV": "Gondos Miklós",
                                    "EMAIL": "miklos2@gmail.com",
                                    "USERNEV": "miklos2"
                                },
                                {
                                    "NEV": "Balla Miklós",
                                    "EMAIL": "miklós.balla@mail.hu",
                                    "USERNEV": "MIKLOSB"
                                },
                                {
                                    "NEV": "Mohos Mónika",
                                    "EMAIL": "mónika.mohos@mail.hu",
                                    "USERNEV": "MONIKAM"
                                },
                                {
                                    "NEV": "Fő Nándor",
                                    "EMAIL": "nándor.fő@mail.hu",
                                    "USERNEV": "NANDORF"
                                },
                                {
                                    "NEV": "Horváth Nikolett",
                                    "EMAIL": "nikolett3@gmail.com",
                                    "USERNEV": "nikolett3"
                                },
                                {
                                    "NEV": "Kő Nikoletta",
                                    "EMAIL": "nikoletta4@gmail.com",
                                    "USERNEV": "nikoletta4"
                                },
                                {
                                    "NEV": "Tatár Nikoletta",
                                    "EMAIL": "nikoletta.tatár@mail.hu",
                                    "USERNEV": "NIKOLETTAT"
                                },
                                {
                                    "NEV": "Szűcs Norbert",
                                    "EMAIL": "norbert@gmail.com",
                                    "USERNEV": "norbert"
                                },
                                {
                                    "NEV": "Hegedűs Norbert",
                                    "EMAIL": "norbert.hegedűs@mail.hu",
                                    "USERNEV": "norbert2"
                                },
                                {
                                    "NEV": "Mile Norbert",
                                    "EMAIL": "norbert4@gmail.com",
                                    "USERNEV": "norbert4"
                                },
                                {
                                    "NEV": "Béres Norbert",
                                    "EMAIL": "norbert5@gmail.com",
                                    "USERNEV": "norbert5"
                                },
                                {
                                    "NEV": "Barabás Pál",
                                    "EMAIL": "pál.barabás@mail.hu",
                                    "USERNEV": "pal"
                                },
                                {
                                    "NEV": "Kozma Péter",
                                    "EMAIL": "peter1@gmail.com",
                                    "USERNEV": "peter1"
                                },
                                {
                                    "NEV": "Bozsó Péter",
                                    "EMAIL": "peter2@gmail.com",
                                    "USERNEV": "peter2"
                                },
                                {
                                    "NEV": "Szalai Péter",
                                    "EMAIL": "peter3@gmail.com",
                                    "USERNEV": "peter3"
                                },
                                {
                                    "NEV": "Bíró Péter",
                                    "EMAIL": "péter.bíró@mail.hu",
                                    "USERNEV": "peter4"
                                },
                                {
                                    "NEV": "Berendi Péter",
                                    "EMAIL": "péter.berendi@mail.hu",
                                    "USERNEV": "PETERB"
                                },
                                {
                                    "NEV": "Palágyi Polla",
                                    "EMAIL": "polla@gmail.com",
                                    "USERNEV": "polla"
                                },
                                {
                                    "NEV": "Rácz Rajmond",
                                    "EMAIL": "rajmond.rácz@mail.hu",
                                    "USERNEV": "rajmond4"
                                },
                                {
                                    "NEV": "Szikszai Réka",
                                    "EMAIL": "réka.szikszai@mail.hu",
                                    "USERNEV": "reka4"
                                },
                                {
                                    "NEV": "Szirmai Renáta",
                                    "EMAIL": "RENATAS@gmail.com",
                                    "USERNEV": "RENATAS"
                                },
                                {
                                    "NEV": "Patay Róbert",
                                    "EMAIL": "robert2@gmail.com",
                                    "USERNEV": "robert2"
                                },
                                {
                                    "NEV": "Iván Róbert",
                                    "EMAIL": "róbert.iván@mail.hu",
                                    "USERNEV": "ROBERTI"
                                },
                                {
                                    "NEV": "Tóth Roland",
                                    "EMAIL": "roland@gmail.com",
                                    "USERNEV": "roland"
                                },
                                {
                                    "NEV": "Ferencz Roland",
                                    "EMAIL": "roland.ferencz@mail.hu",
                                    "USERNEV": "roland1"
                                },
                                {
                                    "NEV": "Bucskó Róza",
                                    "EMAIL": "roza2@gmail.com",
                                    "USERNEV": "roza2"
                                },
                                {
                                    "NEV": "Karasz Sándor",
                                    "EMAIL": "sandor@gmail.com",
                                    "USERNEV": "sandor"
                                },
                                {
                                    "NEV": "Farkas Sándor",
                                    "EMAIL": "sándor.farkas@mail.hu",
                                    "USERNEV": "sandor3"
                                },
                                {
                                    "NEV": "Nagy Sándor",
                                    "EMAIL": "sandor4@gmail.com",
                                    "USERNEV": "sandor4"
                                },
                                {
                                    "NEV": "Farkas Sára",
                                    "EMAIL": "sára.farkas@mail.hu",
                                    "USERNEV": "sara"
                                },
                                {
                                    "NEV": "Foltényi Sebastián",
                                    "EMAIL": "SEBASTIANF@gmail.com",
                                    "USERNEV": "SEBASTIANF"
                                },
                                {
                                    "NEV": "Rab Sebestyén",
                                    "EMAIL": "sebestyen@gmail.com",
                                    "USERNEV": "sebestyen"
                                },
                                {
                                    "NEV": "Miklós Szabolcs",
                                    "EMAIL": "szabolcs.miklós@mail.hu",
                                    "USERNEV": "SZABOLCSM"
                                },
                                {
                                    "NEV": "Szalai Szilárd",
                                    "EMAIL": "szilárd.szalai@mail.hu",
                                    "USERNEV": "SZILARDS"
                                },
                                {
                                    "NEV": "Tari Szilvia",
                                    "EMAIL": "szilvia.tari@mail.hu",
                                    "USERNEV": "szilvia1"
                                },
                                {
                                    "NEV": "Miklós Tamara",
                                    "EMAIL": "tamara.miklós@mail.hu",
                                    "USERNEV": "tamara2"
                                },
                                {
                                    "NEV": "Antal Tamás",
                                    "EMAIL": "tamás.antal@mail.hu",
                                    "USERNEV": "tamas"
                                },
                                {
                                    "NEV": "Fényes Tamás",
                                    "EMAIL": "TAMASF@gmail.com",
                                    "USERNEV": "TAMASF"
                                },
                                {
                                    "NEV": "Gombos Tibor",
                                    "EMAIL": "tibor.gombos@mail.hu",
                                    "USERNEV": "tibor"
                                },
                                {
                                    "NEV": "Kazy Tihamér",
                                    "EMAIL": "tihamér.kazy@mail.hu",
                                    "USERNEV": "tihamer"
                                },
                                {
                                    "NEV": "Dusha Tímea",
                                    "EMAIL": "tímea.dusha@mail.hu",
                                    "USERNEV": "timea2"
                                },
                                {
                                    "NEV": "Turcsik Tünde",
                                    "EMAIL": "tunde@gmail.com",
                                    "USERNEV": "tunde"
                                },
                                {
                                    "NEV": "Feró Valentin",
                                    "EMAIL": "valentin.feró@mail.hu",
                                    "USERNEV": "valentin"
                                },
                                {
                                    "NEV": "Tankó Veronika",
                                    "EMAIL": "veronika4@gmail.com",
                                    "USERNEV": "veronika4"
                                },
                                {
                                    "NEV": "Boros Vivien",
                                    "EMAIL": "vivien3@gmail.com",
                                    "USERNEV": "vivien3"
                                },
                                {
                                    "NEV": "Fodor Zoltán",
                                    "EMAIL": "zoltán.fodor@mail.hu",
                                    "USERNEV": "zoltan"
                                },
                                {
                                    "NEV": "Pintér Zoltán",
                                    "EMAIL": "zoltán.pintér@mail.hu",
                                    "USERNEV": "ZOLTANP"
                                },
                                {
                                    "NEV": "Tóth Zoltán",
                                    "EMAIL": "zoltán.tóth@mail.hu",
                                    "USERNEV": "ZOLTANT"
                                },
                                {
                                    "NEV": "Molnár Zsófi",
                                    "EMAIL": "zsofi1@gmail.com",
                                    "USERNEV": "zsofi1"
                                },
                                {
                                    "NEV": "Józsa Zsolt",
                                    "EMAIL": "ZSOLTJ@gmail.com",
                                    "USERNEV": "ZSOLTJ"
                                },
                                {
                                    "NEV": "Pusztai Zsuzsanna",
                                    "EMAIL": "zsuzsanna@gmail.com",
                                    "USERNEV": "zsuzsa"
                                },
                                {
                                    "NEV": "Varsányi Zsuzsa",
                                    "EMAIL": "zsuzsa.varsányi@mail.hu",
                                    "USERNEV": "zsuzsa3"
                                },
                                {
                                    "NEV": "Barta Zsuzsanna",
                                    "EMAIL": "zsuzsanna.barta@mail.hu",
                                    "USERNEV": "zsuzsanna"
                                },
                                {
                                    "NEV": "Vajda Zsuzsa",
                                    "EMAIL": "zsuzsa.vajda@mail.hu",
                                    "USERNEV": "ZSUZSAV"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>NEV</th><th>EMAIL</th><th>USERNEV</th></tr><tr><td>Kiss Ádám</td><td>ádám.kiss@mail.hu</td><td>adam1</td></tr><tr><td>Barkóci Ádám</td><td>adam3@gmail.com</td><td>adam3</td></tr><tr><td>Bieniek Ádám</td><td>ádám.bieniek@mail.hu</td><td>adam4</td></tr><tr><td>Lengyel Ágnes</td><td>agnes@gmail.com</td><td>agnes</td></tr><tr><td>Hartyánszky Ágnes</td><td>agnes3@gmail.com</td><td>agnes3</td></tr><tr><td>Horváth Ágnes</td><td>AGNESH@gmail.com</td><td>AGNESH</td></tr><tr><td>Kovács Ágnes</td><td>AGNESK@gmail.com</td><td>AGNESK</td></tr><tr><td>Bíró Ákos</td><td>ákos.bíró@mail.hu</td><td>akos</td></tr><tr><td>Dunai Aladár</td><td>aladár.dunai@mail.hu</td><td>aladar</td></tr><tr><td>Bagóczki Alexandra</td><td>alexandra.bagóczki@mail.hu</td><td>alexandra</td></tr><tr><td>Tóth András</td><td>andrás.tóth@mail.hu</td><td>andras2</td></tr><tr><td>Molnár András</td><td>andrás.molnár@mail.hu</td><td>andras21</td></tr><tr><td>Vígh András</td><td>andrás.vígh@mail.hu</td><td>andras3</td></tr><tr><td>Back András</td><td>andras4@gmail.com</td><td>andras4</td></tr><tr><td>Komjáti András</td><td>andras41@gmail.com</td><td>andras41</td></tr><tr><td>Kiss Andrea</td><td>andrea.kiss@mail.hu</td><td>andrea</td></tr><tr><td>Tornyos Andrea</td><td>ANDREAT@gmail.com</td><td>ANDREAT</td></tr><tr><td>Pivarcsi Anett</td><td>anett.pivarcsi@mail.hu</td><td>anett3</td></tr><tr><td>Tóth Anikó</td><td>aniko@gmail.com</td><td>aniko</td></tr><tr><td>Böröcz Anikó</td><td>aniko4@gmail.com</td><td>aniko4</td></tr><tr><td>Simon Anikó</td><td>ANIKOS@gmail.com</td><td>ANIKOS</td></tr><tr><td>Hamvay-Kovács Anita</td><td>anita.hamvay-kovács@mail.hu</td><td>anita</td></tr><tr><td>Szűcs Annamária</td><td>annamária.szűcs@mail.hu</td><td>annamaria1</td></tr><tr><td>Regős Annamária</td><td>ANNAMARIAR@gmail.com</td><td>ANNAMARIAR</td></tr><tr><td>Jakab Áron</td><td>aron2@gmail.com</td><td>aron2</td></tr><tr><td>Kelemen Áron</td><td>áron.kelemen@mail.hu</td><td>ARONK</td></tr><tr><td>Ötvös Árpád</td><td>árpád.ötvös@mail.hu</td><td>arpad2</td></tr><tr><td>Móricz Árpád</td><td>árpád.móricz@mail.hu</td><td>ARPADM</td></tr><tr><td>Csóti Attila</td><td>attila@gmail.com</td><td>attila</td></tr><tr><td>Gulyás Attila</td><td>attila.gulyás@mail.hu</td><td>attila1</td></tr><tr><td>Baróti Attila</td><td>attila.baróti@mail.hu</td><td>attila4</td></tr><tr><td>Bozsik Balázs</td><td>balázs.bozsik@mail.hu</td><td>balazs1</td></tr><tr><td>Szűcs Balázs</td><td>balázs.szűcs@mail.hu</td><td>balazs2</td></tr><tr><td>Bakódy Balázs</td><td>balazs3@gmail.com</td><td>balazs3</td></tr><tr><td>Horváth Bálint</td><td>balint@gmail.com</td><td>balint</td></tr><tr><td>Molnár Bálint</td><td>balint1@gmail.com</td><td>balint1</td></tr><tr><td>Vukasinovity Bálint</td><td>balint2@gmail.com</td><td>balint2</td></tr><tr><td>Endresz Bálint</td><td>bálint.endresz@mail.hu</td><td>balu</td></tr><tr><td>Bagi Beáta</td><td>beáta.bagi@mail.hu</td><td>beata4</td></tr><tr><td>Kerényi Beatrix</td><td>beatrix.kerényi@mail.hu</td><td>BEATRIXK</td></tr><tr><td>Szekendi Beatrix</td><td>beatrix.szekendi@mail.hu</td><td>BEATRIXS</td></tr><tr><td>Farkas Béla</td><td>BELAF@gmail.com</td><td>BELAF</td></tr><tr><td>Győrffy Bence</td><td>bence@gmail.com</td><td>bence</td></tr><tr><td>Bajusz Bence</td><td>bence.bajusz@mail.hu</td><td>BENCEB</td></tr><tr><td>Simon Bernadett</td><td>bernadett1@gmail.com</td><td>bernadett1</td></tr><tr><td>Kovács Bernadett</td><td>bernadett.kovács@mail.hu</td><td>bernadett2</td></tr><tr><td>Orbán Bernadett</td><td>bernadett.orbán@mail.hu</td><td>BERNADETTO</td></tr><tr><td>Csiger Bertalan</td><td>bertalan@gmail.com</td><td>bertalan</td></tr><tr><td>Székely Brigitta</td><td>brigitta.székely@mail.hu</td><td>brigitta</td></tr><tr><td>Nagymihály Csongor</td><td>csongor.nagymihály@mail.hu</td><td>csongor3</td></tr><tr><td>Vörös Dániel</td><td>daniel@gmail.com</td><td>dani</td></tr><tr><td>Rácz Dániel</td><td>dániel.rácz@mail.hu</td><td>daniel</td></tr><tr><td>Keszler Dániel</td><td>dániel.keszler@mail.hu</td><td>daniel1</td></tr><tr><td>Ambrus Dávid</td><td>david@gmail.com</td><td>david</td></tr><tr><td>Sobják Dávid</td><td>david1@gmail.com</td><td>david1</td></tr><tr><td>Barna Debóra</td><td>debóra.barna@mail.hu</td><td>debora</td></tr><tr><td>Tömböly Dénes</td><td>denes@gmail.com</td><td>denes</td></tr><tr><td>Bittmann Edit</td><td>edit.bittmann@mail.hu</td><td>edit</td></tr><tr><td>Kuruc Emese</td><td>emese.kuruc@mail.hu</td><td>emese</td></tr><tr><td>Balogh Eszter</td><td>eszter.balogh@mail.hu</td><td>eszter2</td></tr><tr><td>Fülöp Eszter</td><td>eszter.fülöp@mail.hu</td><td>eszter4</td></tr><tr><td>Érsek Eszter</td><td>eszter.érsek@mail.hu</td><td>ESZTERE</td></tr><tr><td>Enyedi Éva</td><td>eva@gmail.com</td><td>eva</td></tr><tr><td>Perlinger Éva</td><td>eva2@gmail.com</td><td>eva2</td></tr><tr><td>Viktor Éva</td><td>EVAV@gmail.com</td><td>EVAV</td></tr><tr><td>Orosz Ferenc</td><td>ferenc.orosz@mail.hu</td><td>ferenc1</td></tr><tr><td>Frank Fruzsina</td><td>fruzsina4@gmail.com</td><td>fruzsina4</td></tr><tr><td>Köves Gábor</td><td>gabor1@gmail.com</td><td>gabor1</td></tr><tr><td>Telek Gábor</td><td>gábor.telek@mail.hu</td><td>gabor4</td></tr><tr><td>Nagy Gabriella</td><td>gabriella1@gmail.com</td><td>gabriella1</td></tr><tr><td>Nyíri Georgij</td><td>georgij.nyíri@mail.hu</td><td>georgij</td></tr><tr><td>Bárci Gusztáv</td><td>gusztav@gmail.com</td><td>gusztav</td></tr><tr><td>Kornseé Gyöngyi</td><td>gyöngyi.kornseé@mail.hu</td><td>GYONGYIK</td></tr><tr><td>Oroszi György</td><td>GYORGYO@gmail.com</td><td>GYORGYO</td></tr><tr><td>Nádudvari Henrik</td><td>henrik.nádudvari@mail.hu</td><td>henrik3</td></tr><tr><td>Andor Ibolya</td><td>ibolya.andor@mail.hu</td><td>IBOLYAA</td></tr><tr><td>Bosnyák Ilona</td><td>ilona3@gmail.com</td><td>ilona3</td></tr><tr><td>Búza Imre</td><td>imre.búza@mail.hu</td><td>imre</td></tr><tr><td>Papp Imre</td><td>imre.papp@mail.hu</td><td>imre1</td></tr><tr><td>Soós István</td><td>istvan@gmail.com</td><td>istvan</td></tr><tr><td>Vizi István</td><td>istván.vizi@mail.hu</td><td>istvan1</td></tr><tr><td>Varga István</td><td>ISTVANV@gmail.com</td><td>ISTVANV</td></tr><tr><td>Harangozó János</td><td>janos3@gmail.com</td><td>janos3</td></tr><tr><td>Giliga János</td><td>JANOSG@gmail.com</td><td>JANOSG</td></tr><tr><td>Pálinkás János</td><td>JANOSP@gmail.com</td><td>JANOSP</td></tr><tr><td>Gergely József</td><td>jozsef@gmail.com</td><td>jozsef</td></tr><tr><td>Vajda József</td><td>józsef.vajda@mail.hu</td><td>jozsef2</td></tr><tr><td>Hídasi Judit</td><td>JUDITH@gmail.com</td><td>JUDITH</td></tr><tr><td>Tóth Júlia</td><td>julia@gmail.com</td><td>julia</td></tr><tr><td>Nagy Júlia</td><td>julia4@gmail.com</td><td>julia4</td></tr><tr><td>Szabó Julianna</td><td>julianna4@gmail.com</td><td>julianna4</td></tr><tr><td>Gondos Katalin</td><td>katalin.gondos@mail.hu</td><td>kata</td></tr><tr><td>Horváth Katalin</td><td>katalin.horváth@mail.hu</td><td>katalin</td></tr><tr><td>Kertész Katalin</td><td>katalin4@gmail.com</td><td>katalin4</td></tr><tr><td>Kovács Katalin</td><td>katalin.kovács@mail.hu</td><td>katka</td></tr><tr><td>Bakó Klaudia</td><td>klaudia.bakó@mail.hu</td><td>klaudia2</td></tr><tr><td>Lukács Kornél</td><td>kornél.lukács@mail.hu</td><td>kornel4</td></tr><tr><td>Poprádi Kristóf</td><td>kristof4@gmail.com</td><td>kristof4</td></tr><tr><td>Horváth Krisztina</td><td>kriszti@gmail.com</td><td>kriszti</td></tr><tr><td>Czérna Krisztián</td><td>krisztián.czérna@mail.hu</td><td>krisztian4</td></tr><tr><td>Bori Krisztina</td><td>krisztina.bori@mail.hu</td><td>krisztina1</td></tr><tr><td>Gyárfás Krisztina</td><td>KRISZTINAG@gmail.com</td><td>KRISZTINAG</td></tr><tr><td>Kiss Lajos</td><td>lajos.kiss@mail.hu</td><td>lajos</td></tr><tr><td>Nagymihály Lajos</td><td>lajos.nagymihály@mail.hu</td><td>lala</td></tr><tr><td>Móra László</td><td>lászló.móra@mail.hu</td><td>laszlo2</td></tr><tr><td>Antal László</td><td>lászló.antal@mail.hu</td><td>LASZLOA</td></tr><tr><td>Nagy László</td><td>lászló.nagy@mail.hu</td><td>LASZLON</td></tr><tr><td>Baráth Mária</td><td>mária.baráth@mail.hu</td><td>maria1</td></tr><tr><td>Kispál Márk</td><td>márk.kispál@mail.hu</td><td>mark</td></tr><tr><td>Horváth Márk</td><td>márk.horváth@mail.hu</td><td>MARKH</td></tr><tr><td>Kalacsi Márton</td><td>marton@gmail.com</td><td>marton</td></tr><tr><td>Koza Máté</td><td>máté.koza@mail.hu</td><td>MATEK</td></tr><tr><td>Botka Mátyás</td><td>matyas2@gmail.com</td><td>matyas2</td></tr><tr><td>Szilágyi Mátyás</td><td>mátyás.szilágyi@mail.hu</td><td>MATYASS</td></tr><tr><td>Juhász Mihály</td><td>mihály.juhász@mail.hu</td><td>MIHALYJ</td></tr><tr><td>Gondos Miklós</td><td>miklos2@gmail.com</td><td>miklos2</td></tr><tr><td>Balla Miklós</td><td>miklós.balla@mail.hu</td><td>MIKLOSB</td></tr><tr><td>Mohos Mónika</td><td>mónika.mohos@mail.hu</td><td>MONIKAM</td></tr><tr><td>Fő Nándor</td><td>nándor.fő@mail.hu</td><td>NANDORF</td></tr><tr><td>Horváth Nikolett</td><td>nikolett3@gmail.com</td><td>nikolett3</td></tr><tr><td>Kő Nikoletta</td><td>nikoletta4@gmail.com</td><td>nikoletta4</td></tr><tr><td>Tatár Nikoletta</td><td>nikoletta.tatár@mail.hu</td><td>NIKOLETTAT</td></tr><tr><td>Szűcs Norbert</td><td>norbert@gmail.com</td><td>norbert</td></tr><tr><td>Hegedűs Norbert</td><td>norbert.hegedűs@mail.hu</td><td>norbert2</td></tr><tr><td>Mile Norbert</td><td>norbert4@gmail.com</td><td>norbert4</td></tr><tr><td>Béres Norbert</td><td>norbert5@gmail.com</td><td>norbert5</td></tr><tr><td>Barabás Pál</td><td>pál.barabás@mail.hu</td><td>pal</td></tr><tr><td>Kozma Péter</td><td>peter1@gmail.com</td><td>peter1</td></tr><tr><td>Bozsó Péter</td><td>peter2@gmail.com</td><td>peter2</td></tr><tr><td>Szalai Péter</td><td>peter3@gmail.com</td><td>peter3</td></tr><tr><td>Bíró Péter</td><td>péter.bíró@mail.hu</td><td>peter4</td></tr><tr><td>Berendi Péter</td><td>péter.berendi@mail.hu</td><td>PETERB</td></tr><tr><td>Palágyi Polla</td><td>polla@gmail.com</td><td>polla</td></tr><tr><td>Rácz Rajmond</td><td>rajmond.rácz@mail.hu</td><td>rajmond4</td></tr><tr><td>Szikszai Réka</td><td>réka.szikszai@mail.hu</td><td>reka4</td></tr><tr><td>Szirmai Renáta</td><td>RENATAS@gmail.com</td><td>RENATAS</td></tr><tr><td>Patay Róbert</td><td>robert2@gmail.com</td><td>robert2</td></tr><tr><td>Iván Róbert</td><td>róbert.iván@mail.hu</td><td>ROBERTI</td></tr><tr><td>Tóth Roland</td><td>roland@gmail.com</td><td>roland</td></tr><tr><td>Ferencz Roland</td><td>roland.ferencz@mail.hu</td><td>roland1</td></tr><tr><td>Bucskó Róza</td><td>roza2@gmail.com</td><td>roza2</td></tr><tr><td>Karasz Sándor</td><td>sandor@gmail.com</td><td>sandor</td></tr><tr><td>Farkas Sándor</td><td>sándor.farkas@mail.hu</td><td>sandor3</td></tr><tr><td>Nagy Sándor</td><td>sandor4@gmail.com</td><td>sandor4</td></tr><tr><td>Farkas Sára</td><td>sára.farkas@mail.hu</td><td>sara</td></tr><tr><td>Foltényi Sebastián</td><td>SEBASTIANF@gmail.com</td><td>SEBASTIANF</td></tr><tr><td>Rab Sebestyén</td><td>sebestyen@gmail.com</td><td>sebestyen</td></tr><tr><td>Miklós Szabolcs</td><td>szabolcs.miklós@mail.hu</td><td>SZABOLCSM</td></tr><tr><td>Szalai Szilárd</td><td>szilárd.szalai@mail.hu</td><td>SZILARDS</td></tr><tr><td>Tari Szilvia</td><td>szilvia.tari@mail.hu</td><td>szilvia1</td></tr><tr><td>Miklós Tamara</td><td>tamara.miklós@mail.hu</td><td>tamara2</td></tr><tr><td>Antal Tamás</td><td>tamás.antal@mail.hu</td><td>tamas</td></tr><tr><td>Fényes Tamás</td><td>TAMASF@gmail.com</td><td>TAMASF</td></tr><tr><td>Gombos Tibor</td><td>tibor.gombos@mail.hu</td><td>tibor</td></tr><tr><td>Kazy Tihamér</td><td>tihamér.kazy@mail.hu</td><td>tihamer</td></tr><tr><td>Dusha Tímea</td><td>tímea.dusha@mail.hu</td><td>timea2</td></tr><tr><td>Turcsik Tünde</td><td>tunde@gmail.com</td><td>tunde</td></tr><tr><td>Feró Valentin</td><td>valentin.feró@mail.hu</td><td>valentin</td></tr><tr><td>Tankó Veronika</td><td>veronika4@gmail.com</td><td>veronika4</td></tr><tr><td>Boros Vivien</td><td>vivien3@gmail.com</td><td>vivien3</td></tr><tr><td>Fodor Zoltán</td><td>zoltán.fodor@mail.hu</td><td>zoltan</td></tr><tr><td>Pintér Zoltán</td><td>zoltán.pintér@mail.hu</td><td>ZOLTANP</td></tr><tr><td>Tóth Zoltán</td><td>zoltán.tóth@mail.hu</td><td>ZOLTANT</td></tr><tr><td>Molnár Zsófi</td><td>zsofi1@gmail.com</td><td>zsofi1</td></tr><tr><td>Józsa Zsolt</td><td>ZSOLTJ@gmail.com</td><td>ZSOLTJ</td></tr><tr><td>Pusztai Zsuzsanna</td><td>zsuzsanna@gmail.com</td><td>zsuzsa</td></tr><tr><td>Varsányi Zsuzsa</td><td>zsuzsa.varsányi@mail.hu</td><td>zsuzsa3</td></tr><tr><td>Barta Zsuzsanna</td><td>zsuzsanna.barta@mail.hu</td><td>zsuzsanna</td></tr><tr><td>Vajda Zsuzsa</td><td>zsuzsa.vajda@mail.hu</td><td>ZSUZSAV</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 13
        },
        {
            "cell_type": "markdown",
            "source": [
                "Készítsen lekérdezést, amely sorszámozza a vendégeket a foglalások száma alapján\n",
                "\n",
                "- A sorszám mellett jelenjen meg a vendég azonosítója, neve és a foglalások száma is\n",
                "- A legtöbbet foglaló vendég kapja az egyes sorszámot\n",
                "- Holtverseny esetén a számozás annyit ugorjon, ahány egyforma érték van"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "aa22b8cf-b3ce-4bf6-bbf2-0bb85c7501a4"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "WITH VendegFoglalasSzam AS (\r\n",
                "    SELECT V.USERNEV,\r\n",
                "        V.NEV,\r\n",
                "        COUNT(F.FOGLALAS_PK) AS FoglalasokSzama\r\n",
                "    FROM Vendeg V\r\n",
                "    LEFT JOIN Foglalas F ON V.USERNEV = F.UGYFEL_FK\r\n",
                "    GROUP BY V.USERNEV, V.NEV\r\n",
                "),\r\n",
                "RankedVendeg AS (\r\n",
                "    SELECT USERNEV,\r\n",
                "        NEV,\r\n",
                "        FoglalasokSzama,\r\n",
                "        DENSE_RANK() OVER (ORDER BY FoglalasokSzama DESC) AS Sorszam\r\n",
                "    FROM VendegFoglalasSzam\r\n",
                ")\r\n",
                "SELECT Sorszam,\r\n",
                "    USERNEV,\r\n",
                "    NEV,\r\n",
                "    FoglalasokSzama\r\n",
                "FROM RankedVendeg\r\n",
                "ORDER BY Sorszam;\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "5a73a8df-ba4e-424b-85f9-6d98a8ef19f6",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(196 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.033"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 17,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "Sorszam"
                                    },
                                    {
                                        "name": "USERNEV"
                                    },
                                    {
                                        "name": "NEV"
                                    },
                                    {
                                        "name": "FoglalasokSzama"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "Sorszam": "1",
                                    "USERNEV": "andras41",
                                    "NEV": "Komjáti András",
                                    "FoglalasokSzama": "13"
                                },
                                {
                                    "Sorszam": "1",
                                    "USERNEV": "ARONK",
                                    "NEV": "Kelemen Áron",
                                    "FoglalasokSzama": "13"
                                },
                                {
                                    "Sorszam": "2",
                                    "USERNEV": "krisztian4",
                                    "NEV": "Czérna Krisztián",
                                    "FoglalasokSzama": "12"
                                },
                                {
                                    "Sorszam": "2",
                                    "USERNEV": "peter4",
                                    "NEV": "Bíró Péter",
                                    "FoglalasokSzama": "12"
                                },
                                {
                                    "Sorszam": "2",
                                    "USERNEV": "sara",
                                    "NEV": "Farkas Sára",
                                    "FoglalasokSzama": "12"
                                },
                                {
                                    "Sorszam": "2",
                                    "USERNEV": "zoltan4",
                                    "NEV": "Barna Zoltán",
                                    "FoglalasokSzama": "12"
                                },
                                {
                                    "Sorszam": "3",
                                    "USERNEV": "kata",
                                    "NEV": "Gondos Katalin",
                                    "FoglalasokSzama": "10"
                                },
                                {
                                    "Sorszam": "3",
                                    "USERNEV": "akos",
                                    "NEV": "Bíró Ákos",
                                    "FoglalasokSzama": "10"
                                },
                                {
                                    "Sorszam": "3",
                                    "USERNEV": "balazs2",
                                    "NEV": "Szűcs Balázs",
                                    "FoglalasokSzama": "10"
                                },
                                {
                                    "Sorszam": "3",
                                    "USERNEV": "balint1",
                                    "NEV": "Molnár Bálint",
                                    "FoglalasokSzama": "10"
                                },
                                {
                                    "Sorszam": "3",
                                    "USERNEV": "eszter2",
                                    "NEV": "Balogh Eszter",
                                    "FoglalasokSzama": "10"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "dani",
                                    "NEV": "Vörös Dániel",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "daniel",
                                    "NEV": "Rácz Dániel",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "david",
                                    "NEV": "Ambrus Dávid",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "BEATRIXK",
                                    "NEV": "Kerényi Beatrix",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "bence",
                                    "NEV": "Győrffy Bence",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "ANIKOS",
                                    "NEV": "Simon Anikó",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "katalin",
                                    "NEV": "Horváth Katalin",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "katka",
                                    "NEV": "Kovács Katalin",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "norbert4",
                                    "NEV": "Mile Norbert",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "szilvia1",
                                    "NEV": "Tari Szilvia",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "4",
                                    "USERNEV": "TAMASF",
                                    "NEV": "Fényes Tamás",
                                    "FoglalasokSzama": "9"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "tunde",
                                    "NEV": "Turcsik Tünde",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "ROBERTI",
                                    "NEV": "Iván Róbert",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "MATYASS",
                                    "NEV": "Szilágyi Mátyás",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "krisztina",
                                    "NEV": "Szedlár Krisztina",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "maria1",
                                    "NEV": "Baráth Mária",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "fruzsina4",
                                    "NEV": "Frank Fruzsina",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "GYORGYO",
                                    "NEV": "Oroszi György",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "anett3",
                                    "NEV": "Pivarcsi Anett",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "andras3",
                                    "NEV": "Vígh András",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "bernadett2",
                                    "NEV": "Kovács Bernadett",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "5",
                                    "USERNEV": "csongor3",
                                    "NEV": "Nagymihály Csongor",
                                    "FoglalasokSzama": "8"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "daniel1",
                                    "NEV": "Keszler Dániel",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "edit",
                                    "NEV": "Bittmann Edit",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "emese",
                                    "NEV": "Kuruc Emese",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "BERNADETTO",
                                    "NEV": "Orbán Bernadett",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "bernadett1",
                                    "NEV": "Simon Bernadett",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "alexandra",
                                    "NEV": "Bagóczki Alexandra",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "andras21",
                                    "NEV": "Molnár András",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "arpad2",
                                    "NEV": "Ötvös Árpád",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "ARPADH",
                                    "NEV": "Horváth Árpád",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "GYONGYIK",
                                    "NEV": "Kornseé Gyöngyi",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "imre1",
                                    "NEV": "Papp Imre",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "JANOSG",
                                    "NEV": "Giliga János",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "JOZSEFG",
                                    "NEV": "Gyuris József",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "kati",
                                    "NEV": "Zatykó Katalin",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "marton",
                                    "NEV": "Kalacsi Márton",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "nikoletta4",
                                    "NEV": "Kő Nikoletta",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "norbert2",
                                    "NEV": "Hegedűs Norbert",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "SZABOLCSM",
                                    "NEV": "Miklós Szabolcs",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "SZILARDS",
                                    "NEV": "Szalai Szilárd",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "6",
                                    "USERNEV": "vivien3",
                                    "NEV": "Boros Vivien",
                                    "FoglalasokSzama": "7"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "veronika4",
                                    "NEV": "Tankó Veronika",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "ZOLTANP",
                                    "NEV": "Pintér Zoltán",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "ZSOLTJ",
                                    "NEV": "Józsa Zsolt",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "ZSUZSAV",
                                    "NEV": "Vajda Zsuzsa",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "tihamer",
                                    "NEV": "Kazy Tihamér",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "peter3",
                                    "NEV": "Szalai Péter",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "polla",
                                    "NEV": "Palágyi Polla",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "RENATAK",
                                    "NEV": "Kardos Renáta",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "MONIKAM",
                                    "NEV": "Mohos Mónika",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "KRISZTIANM",
                                    "NEV": "Mogyródi Krisztián",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "krisztina1",
                                    "NEV": "Bori Krisztina",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "kriszti",
                                    "NEV": "Horváth Krisztina",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "LASZLON",
                                    "NEV": "Nagy László",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "lala",
                                    "NEV": "Nagymihály Lajos",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "katalin4",
                                    "NEV": "Kertész Katalin",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "gabor1",
                                    "NEV": "Köves Gábor",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "gabriella1",
                                    "NEV": "Nagy Gabriella",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "ARPADM",
                                    "NEV": "Móricz Árpád",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "ANNAMARIAR",
                                    "NEV": "Regős Annamária",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "aron2",
                                    "NEV": "Jakab Áron",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "attila1",
                                    "NEV": "Gulyás Attila",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "andrea",
                                    "NEV": "Kiss Andrea",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "AGNESH",
                                    "NEV": "Horváth Ágnes",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "adam4",
                                    "NEV": "Bieniek Ádám",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "beata4",
                                    "NEV": "Bagi Beáta",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "BENCEB",
                                    "NEV": "Bajusz Bence",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "bertalan",
                                    "NEV": "Csiger Bertalan",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "BEATRIXS",
                                    "NEV": "Szekendi Beatrix",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "BELAF",
                                    "NEV": "Farkas Béla",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "balazs3",
                                    "NEV": "Bakódy Balázs",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "balazs1",
                                    "NEV": "Bozsik Balázs",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "david1",
                                    "NEV": "Sobják Dávid",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "7",
                                    "USERNEV": "denes",
                                    "NEV": "Tömböly Dénes",
                                    "FoglalasokSzama": "6"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "dora3",
                                    "NEV": "Sarodi Dóra",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "EVAV",
                                    "NEV": "Viktor Éva",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "brigitta",
                                    "NEV": "Székely Brigitta",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "brigitta3",
                                    "NEV": "Pataki Brigitta",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "agnes",
                                    "NEV": "Lengyel Ágnes",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "ANDRASE",
                                    "NEV": "Erdei András",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "andi",
                                    "NEV": "Maródi Andrea",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "andras2",
                                    "NEV": "Tóth András",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "gusztav",
                                    "NEV": "Bárci Gusztáv",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "julia",
                                    "NEV": "Tóth Júlia",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "janos3",
                                    "NEV": "Harangozó János",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "jozsef2",
                                    "NEV": "Vajda József",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "laszlo2",
                                    "NEV": "Móra László",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "mark",
                                    "NEV": "Kispál Márk",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "KRISZTINAG",
                                    "NEV": "Gyárfás Krisztina",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "MIHALYJ",
                                    "NEV": "Juhász Mihály",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "norbert",
                                    "NEV": "Szűcs Norbert",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "pal",
                                    "NEV": "Barabás Pál",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "RENATAS",
                                    "NEV": "Szirmai Renáta",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "PETERB",
                                    "NEV": "Berendi Péter",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "reka4",
                                    "NEV": "Szikszai Réka",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "sandor3",
                                    "NEV": "Farkas Sándor",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "valentin",
                                    "NEV": "Feró Valentin",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "timea2",
                                    "NEV": "Dusha Tímea",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "8",
                                    "USERNEV": "SEBASTIANF",
                                    "NEV": "Foltényi Sebastián",
                                    "FoglalasokSzama": "5"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "sebestyen",
                                    "NEV": "Rab Sebestyén",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "tamas",
                                    "NEV": "Antal Tamás",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "sandor4",
                                    "NEV": "Nagy Sándor",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "sandor",
                                    "NEV": "Karasz Sándor",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "roland",
                                    "NEV": "Tóth Roland",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "roland1",
                                    "NEV": "Ferencz Roland",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "robert2",
                                    "NEV": "Patay Róbert",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "rajmond4",
                                    "NEV": "Rácz Rajmond",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "zsolt1",
                                    "NEV": "Pulai Zsolt",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "zsuzsa3",
                                    "NEV": "Varsányi Zsuzsa",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "zsuzsanna",
                                    "NEV": "Barta Zsuzsanna",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "VIKTORIAU",
                                    "NEV": "Urbán Viktoria",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "peter1",
                                    "NEV": "Kozma Péter",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "peter2",
                                    "NEV": "Bozsó Péter",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "nikolett3",
                                    "NEV": "Horváth Nikolett",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "NIKOLETTAT",
                                    "NEV": "Tatár Nikoletta",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "julianna4",
                                    "NEV": "Szabó Julianna",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "MARKH",
                                    "NEV": "Horváth Márk",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "LASZLOA",
                                    "NEV": "Antal László",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "JANOSP",
                                    "NEV": "Pálinkás János",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "istvan1",
                                    "NEV": "Vizi István",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "ilona3",
                                    "NEV": "Bosnyák Ilona",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "eva2",
                                    "NEV": "Perlinger Éva",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "georgij",
                                    "NEV": "Nyíri Georgij",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "gabor4",
                                    "NEV": "Telek Gábor",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "aniko4",
                                    "NEV": "Böröcz Anikó",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "anita",
                                    "NEV": "Hamvay-Kovács Anita",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "andrea4",
                                    "NEV": "Neizer Andrea",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "ATTILAO",
                                    "NEV": "Opra Attila",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "ferenc1",
                                    "NEV": "Orosz Ferenc",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "ESZTERE",
                                    "NEV": "Érsek Eszter",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "eszter",
                                    "NEV": "Molnár Eszter",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "9",
                                    "USERNEV": "debora",
                                    "NEV": "Barna Debóra",
                                    "FoglalasokSzama": "4"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "eszter4",
                                    "NEV": "Fülöp Eszter",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "balint",
                                    "NEV": "Horváth Bálint",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "ANDREAT",
                                    "NEV": "Tornyos Andrea",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "aniko",
                                    "NEV": "Tóth Anikó",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "attila4",
                                    "NEV": "Baróti Attila",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "attila",
                                    "NEV": "Csóti Attila",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "andras4",
                                    "NEV": "Back András",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "agnes3",
                                    "NEV": "Hartyánszky Ágnes",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "adam1",
                                    "NEV": "Kiss Ádám",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "AGNESK",
                                    "NEV": "Kovács Ágnes",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "aladar",
                                    "NEV": "Dunai Aladár",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "istvan",
                                    "NEV": "Soós István",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "henrik3",
                                    "NEV": "Nádudvari Henrik",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "IBOLYAA",
                                    "NEV": "Andor Ibolya",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "jozsef",
                                    "NEV": "Gergely József",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "JUDITH",
                                    "NEV": "Hídasi Judit",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "klaudia2",
                                    "NEV": "Bakó Klaudia",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "kornel4",
                                    "NEV": "Lukács Kornél",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "lajos",
                                    "NEV": "Kiss Lajos",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "norbert5",
                                    "NEV": "Béres Norbert",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "miklos2",
                                    "NEV": "Gondos Miklós",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "MIKLOSB",
                                    "NEV": "Balla Miklós",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "NANDORF",
                                    "NEV": "Fő Nándor",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "MATEK",
                                    "NEV": "Koza Máté",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "ZOLTANT",
                                    "NEV": "Tóth Zoltán",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "zsuzsa",
                                    "NEV": "Pusztai Zsuzsanna",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "10",
                                    "USERNEV": "roza2",
                                    "NEV": "Bucskó Róza",
                                    "FoglalasokSzama": "3"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "ROBERTP",
                                    "NEV": "Pásztor Róbert",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "tibor",
                                    "NEV": "Gombos Tibor",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "tamara2",
                                    "NEV": "Miklós Tamara",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "zsofi1",
                                    "NEV": "Molnár Zsófi",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "VIKTORK",
                                    "NEV": "Keresztúri Viktor",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "zoltan",
                                    "NEV": "Fodor Zoltán",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "matyas2",
                                    "NEV": "Botka Mátyás",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "kristof4",
                                    "NEV": "Poprádi Kristóf",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "julia4",
                                    "NEV": "Nagy Júlia",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "ISTVANV",
                                    "NEV": "Varga István",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "imre",
                                    "NEV": "Búza Imre",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "adam3",
                                    "NEV": "Barkóci Ádám",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "annamaria1",
                                    "NEV": "Szűcs Annamária",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "balint2",
                                    "NEV": "Vukasinovity Bálint",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "balu",
                                    "NEV": "Endresz Bálint",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "11",
                                    "USERNEV": "eva",
                                    "NEV": "Enyedi Éva",
                                    "FoglalasokSzama": "2"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "david4",
                                    "NEV": "Berta Dávid",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "ANDRASN",
                                    "NEV": "Nagy András",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "andrea3",
                                    "NEV": "Szomor Andrea",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "gabriella10",
                                    "NEV": "Vida Gabriella",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "laszlo1",
                                    "NEV": "Farkas László",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "szabolcs",
                                    "NEV": "Bodor Szabolcs",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "tibor2",
                                    "NEV": "Dániel Tibor",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "12",
                                    "USERNEV": "timea",
                                    "NEV": "Papós Tímea",
                                    "FoglalasokSzama": "1"
                                },
                                {
                                    "Sorszam": "13",
                                    "USERNEV": "GABORS",
                                    "NEV": "Szöllősi Gábor",
                                    "FoglalasokSzama": "0"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>Sorszam</th><th>USERNEV</th><th>NEV</th><th>FoglalasokSzama</th></tr><tr><td>1</td><td>andras41</td><td>Komjáti András</td><td>13</td></tr><tr><td>1</td><td>ARONK</td><td>Kelemen Áron</td><td>13</td></tr><tr><td>2</td><td>krisztian4</td><td>Czérna Krisztián</td><td>12</td></tr><tr><td>2</td><td>peter4</td><td>Bíró Péter</td><td>12</td></tr><tr><td>2</td><td>sara</td><td>Farkas Sára</td><td>12</td></tr><tr><td>2</td><td>zoltan4</td><td>Barna Zoltán</td><td>12</td></tr><tr><td>3</td><td>kata</td><td>Gondos Katalin</td><td>10</td></tr><tr><td>3</td><td>akos</td><td>Bíró Ákos</td><td>10</td></tr><tr><td>3</td><td>balazs2</td><td>Szűcs Balázs</td><td>10</td></tr><tr><td>3</td><td>balint1</td><td>Molnár Bálint</td><td>10</td></tr><tr><td>3</td><td>eszter2</td><td>Balogh Eszter</td><td>10</td></tr><tr><td>4</td><td>dani</td><td>Vörös Dániel</td><td>9</td></tr><tr><td>4</td><td>daniel</td><td>Rácz Dániel</td><td>9</td></tr><tr><td>4</td><td>david</td><td>Ambrus Dávid</td><td>9</td></tr><tr><td>4</td><td>BEATRIXK</td><td>Kerényi Beatrix</td><td>9</td></tr><tr><td>4</td><td>bence</td><td>Győrffy Bence</td><td>9</td></tr><tr><td>4</td><td>ANIKOS</td><td>Simon Anikó</td><td>9</td></tr><tr><td>4</td><td>katalin</td><td>Horváth Katalin</td><td>9</td></tr><tr><td>4</td><td>katka</td><td>Kovács Katalin</td><td>9</td></tr><tr><td>4</td><td>norbert4</td><td>Mile Norbert</td><td>9</td></tr><tr><td>4</td><td>szilvia1</td><td>Tari Szilvia</td><td>9</td></tr><tr><td>4</td><td>TAMASF</td><td>Fényes Tamás</td><td>9</td></tr><tr><td>5</td><td>tunde</td><td>Turcsik Tünde</td><td>8</td></tr><tr><td>5</td><td>ROBERTI</td><td>Iván Róbert</td><td>8</td></tr><tr><td>5</td><td>MATYASS</td><td>Szilágyi Mátyás</td><td>8</td></tr><tr><td>5</td><td>krisztina</td><td>Szedlár Krisztina</td><td>8</td></tr><tr><td>5</td><td>maria1</td><td>Baráth Mária</td><td>8</td></tr><tr><td>5</td><td>fruzsina4</td><td>Frank Fruzsina</td><td>8</td></tr><tr><td>5</td><td>GYORGYO</td><td>Oroszi György</td><td>8</td></tr><tr><td>5</td><td>anett3</td><td>Pivarcsi Anett</td><td>8</td></tr><tr><td>5</td><td>andras3</td><td>Vígh András</td><td>8</td></tr><tr><td>5</td><td>bernadett2</td><td>Kovács Bernadett</td><td>8</td></tr><tr><td>5</td><td>csongor3</td><td>Nagymihály Csongor</td><td>8</td></tr><tr><td>6</td><td>daniel1</td><td>Keszler Dániel</td><td>7</td></tr><tr><td>6</td><td>edit</td><td>Bittmann Edit</td><td>7</td></tr><tr><td>6</td><td>emese</td><td>Kuruc Emese</td><td>7</td></tr><tr><td>6</td><td>BERNADETTO</td><td>Orbán Bernadett</td><td>7</td></tr><tr><td>6</td><td>bernadett1</td><td>Simon Bernadett</td><td>7</td></tr><tr><td>6</td><td>alexandra</td><td>Bagóczki Alexandra</td><td>7</td></tr><tr><td>6</td><td>andras21</td><td>Molnár András</td><td>7</td></tr><tr><td>6</td><td>arpad2</td><td>Ötvös Árpád</td><td>7</td></tr><tr><td>6</td><td>ARPADH</td><td>Horváth Árpád</td><td>7</td></tr><tr><td>6</td><td>GYONGYIK</td><td>Kornseé Gyöngyi</td><td>7</td></tr><tr><td>6</td><td>imre1</td><td>Papp Imre</td><td>7</td></tr><tr><td>6</td><td>JANOSG</td><td>Giliga János</td><td>7</td></tr><tr><td>6</td><td>JOZSEFG</td><td>Gyuris József</td><td>7</td></tr><tr><td>6</td><td>kati</td><td>Zatykó Katalin</td><td>7</td></tr><tr><td>6</td><td>marton</td><td>Kalacsi Márton</td><td>7</td></tr><tr><td>6</td><td>nikoletta4</td><td>Kő Nikoletta</td><td>7</td></tr><tr><td>6</td><td>norbert2</td><td>Hegedűs Norbert</td><td>7</td></tr><tr><td>6</td><td>SZABOLCSM</td><td>Miklós Szabolcs</td><td>7</td></tr><tr><td>6</td><td>SZILARDS</td><td>Szalai Szilárd</td><td>7</td></tr><tr><td>6</td><td>vivien3</td><td>Boros Vivien</td><td>7</td></tr><tr><td>7</td><td>veronika4</td><td>Tankó Veronika</td><td>6</td></tr><tr><td>7</td><td>ZOLTANP</td><td>Pintér Zoltán</td><td>6</td></tr><tr><td>7</td><td>ZSOLTJ</td><td>Józsa Zsolt</td><td>6</td></tr><tr><td>7</td><td>ZSUZSAV</td><td>Vajda Zsuzsa</td><td>6</td></tr><tr><td>7</td><td>tihamer</td><td>Kazy Tihamér</td><td>6</td></tr><tr><td>7</td><td>peter3</td><td>Szalai Péter</td><td>6</td></tr><tr><td>7</td><td>polla</td><td>Palágyi Polla</td><td>6</td></tr><tr><td>7</td><td>RENATAK</td><td>Kardos Renáta</td><td>6</td></tr><tr><td>7</td><td>MONIKAM</td><td>Mohos Mónika</td><td>6</td></tr><tr><td>7</td><td>KRISZTIANM</td><td>Mogyródi Krisztián</td><td>6</td></tr><tr><td>7</td><td>krisztina1</td><td>Bori Krisztina</td><td>6</td></tr><tr><td>7</td><td>kriszti</td><td>Horváth Krisztina</td><td>6</td></tr><tr><td>7</td><td>LASZLON</td><td>Nagy László</td><td>6</td></tr><tr><td>7</td><td>lala</td><td>Nagymihály Lajos</td><td>6</td></tr><tr><td>7</td><td>katalin4</td><td>Kertész Katalin</td><td>6</td></tr><tr><td>7</td><td>gabor1</td><td>Köves Gábor</td><td>6</td></tr><tr><td>7</td><td>gabriella1</td><td>Nagy Gabriella</td><td>6</td></tr><tr><td>7</td><td>ARPADM</td><td>Móricz Árpád</td><td>6</td></tr><tr><td>7</td><td>ANNAMARIAR</td><td>Regős Annamária</td><td>6</td></tr><tr><td>7</td><td>aron2</td><td>Jakab Áron</td><td>6</td></tr><tr><td>7</td><td>attila1</td><td>Gulyás Attila</td><td>6</td></tr><tr><td>7</td><td>andrea</td><td>Kiss Andrea</td><td>6</td></tr><tr><td>7</td><td>AGNESH</td><td>Horváth Ágnes</td><td>6</td></tr><tr><td>7</td><td>adam4</td><td>Bieniek Ádám</td><td>6</td></tr><tr><td>7</td><td>beata4</td><td>Bagi Beáta</td><td>6</td></tr><tr><td>7</td><td>BENCEB</td><td>Bajusz Bence</td><td>6</td></tr><tr><td>7</td><td>bertalan</td><td>Csiger Bertalan</td><td>6</td></tr><tr><td>7</td><td>BEATRIXS</td><td>Szekendi Beatrix</td><td>6</td></tr><tr><td>7</td><td>BELAF</td><td>Farkas Béla</td><td>6</td></tr><tr><td>7</td><td>balazs3</td><td>Bakódy Balázs</td><td>6</td></tr><tr><td>7</td><td>balazs1</td><td>Bozsik Balázs</td><td>6</td></tr><tr><td>7</td><td>david1</td><td>Sobják Dávid</td><td>6</td></tr><tr><td>7</td><td>denes</td><td>Tömböly Dénes</td><td>6</td></tr><tr><td>8</td><td>dora3</td><td>Sarodi Dóra</td><td>5</td></tr><tr><td>8</td><td>EVAV</td><td>Viktor Éva</td><td>5</td></tr><tr><td>8</td><td>brigitta</td><td>Székely Brigitta</td><td>5</td></tr><tr><td>8</td><td>brigitta3</td><td>Pataki Brigitta</td><td>5</td></tr><tr><td>8</td><td>agnes</td><td>Lengyel Ágnes</td><td>5</td></tr><tr><td>8</td><td>ANDRASE</td><td>Erdei András</td><td>5</td></tr><tr><td>8</td><td>andi</td><td>Maródi Andrea</td><td>5</td></tr><tr><td>8</td><td>andras2</td><td>Tóth András</td><td>5</td></tr><tr><td>8</td><td>gusztav</td><td>Bárci Gusztáv</td><td>5</td></tr><tr><td>8</td><td>julia</td><td>Tóth Júlia</td><td>5</td></tr><tr><td>8</td><td>janos3</td><td>Harangozó János</td><td>5</td></tr><tr><td>8</td><td>jozsef2</td><td>Vajda József</td><td>5</td></tr><tr><td>8</td><td>laszlo2</td><td>Móra László</td><td>5</td></tr><tr><td>8</td><td>mark</td><td>Kispál Márk</td><td>5</td></tr><tr><td>8</td><td>KRISZTINAG</td><td>Gyárfás Krisztina</td><td>5</td></tr><tr><td>8</td><td>MIHALYJ</td><td>Juhász Mihály</td><td>5</td></tr><tr><td>8</td><td>norbert</td><td>Szűcs Norbert</td><td>5</td></tr><tr><td>8</td><td>pal</td><td>Barabás Pál</td><td>5</td></tr><tr><td>8</td><td>RENATAS</td><td>Szirmai Renáta</td><td>5</td></tr><tr><td>8</td><td>PETERB</td><td>Berendi Péter</td><td>5</td></tr><tr><td>8</td><td>reka4</td><td>Szikszai Réka</td><td>5</td></tr><tr><td>8</td><td>sandor3</td><td>Farkas Sándor</td><td>5</td></tr><tr><td>8</td><td>valentin</td><td>Feró Valentin</td><td>5</td></tr><tr><td>8</td><td>timea2</td><td>Dusha Tímea</td><td>5</td></tr><tr><td>8</td><td>SEBASTIANF</td><td>Foltényi Sebastián</td><td>5</td></tr><tr><td>9</td><td>sebestyen</td><td>Rab Sebestyén</td><td>4</td></tr><tr><td>9</td><td>tamas</td><td>Antal Tamás</td><td>4</td></tr><tr><td>9</td><td>sandor4</td><td>Nagy Sándor</td><td>4</td></tr><tr><td>9</td><td>sandor</td><td>Karasz Sándor</td><td>4</td></tr><tr><td>9</td><td>roland</td><td>Tóth Roland</td><td>4</td></tr><tr><td>9</td><td>roland1</td><td>Ferencz Roland</td><td>4</td></tr><tr><td>9</td><td>robert2</td><td>Patay Róbert</td><td>4</td></tr><tr><td>9</td><td>rajmond4</td><td>Rácz Rajmond</td><td>4</td></tr><tr><td>9</td><td>zsolt1</td><td>Pulai Zsolt</td><td>4</td></tr><tr><td>9</td><td>zsuzsa3</td><td>Varsányi Zsuzsa</td><td>4</td></tr><tr><td>9</td><td>zsuzsanna</td><td>Barta Zsuzsanna</td><td>4</td></tr><tr><td>9</td><td>VIKTORIAU</td><td>Urbán Viktoria</td><td>4</td></tr><tr><td>9</td><td>peter1</td><td>Kozma Péter</td><td>4</td></tr><tr><td>9</td><td>peter2</td><td>Bozsó Péter</td><td>4</td></tr><tr><td>9</td><td>nikolett3</td><td>Horváth Nikolett</td><td>4</td></tr><tr><td>9</td><td>NIKOLETTAT</td><td>Tatár Nikoletta</td><td>4</td></tr><tr><td>9</td><td>julianna4</td><td>Szabó Julianna</td><td>4</td></tr><tr><td>9</td><td>MARKH</td><td>Horváth Márk</td><td>4</td></tr><tr><td>9</td><td>LASZLOA</td><td>Antal László</td><td>4</td></tr><tr><td>9</td><td>JANOSP</td><td>Pálinkás János</td><td>4</td></tr><tr><td>9</td><td>istvan1</td><td>Vizi István</td><td>4</td></tr><tr><td>9</td><td>ilona3</td><td>Bosnyák Ilona</td><td>4</td></tr><tr><td>9</td><td>eva2</td><td>Perlinger Éva</td><td>4</td></tr><tr><td>9</td><td>georgij</td><td>Nyíri Georgij</td><td>4</td></tr><tr><td>9</td><td>gabor4</td><td>Telek Gábor</td><td>4</td></tr><tr><td>9</td><td>aniko4</td><td>Böröcz Anikó</td><td>4</td></tr><tr><td>9</td><td>anita</td><td>Hamvay-Kovács Anita</td><td>4</td></tr><tr><td>9</td><td>andrea4</td><td>Neizer Andrea</td><td>4</td></tr><tr><td>9</td><td>ATTILAO</td><td>Opra Attila</td><td>4</td></tr><tr><td>9</td><td>ferenc1</td><td>Orosz Ferenc</td><td>4</td></tr><tr><td>9</td><td>ESZTERE</td><td>Érsek Eszter</td><td>4</td></tr><tr><td>9</td><td>eszter</td><td>Molnár Eszter</td><td>4</td></tr><tr><td>9</td><td>debora</td><td>Barna Debóra</td><td>4</td></tr><tr><td>10</td><td>eszter4</td><td>Fülöp Eszter</td><td>3</td></tr><tr><td>10</td><td>balint</td><td>Horváth Bálint</td><td>3</td></tr><tr><td>10</td><td>ANDREAT</td><td>Tornyos Andrea</td><td>3</td></tr><tr><td>10</td><td>aniko</td><td>Tóth Anikó</td><td>3</td></tr><tr><td>10</td><td>attila4</td><td>Baróti Attila</td><td>3</td></tr><tr><td>10</td><td>attila</td><td>Csóti Attila</td><td>3</td></tr><tr><td>10</td><td>andras4</td><td>Back András</td><td>3</td></tr><tr><td>10</td><td>agnes3</td><td>Hartyánszky Ágnes</td><td>3</td></tr><tr><td>10</td><td>adam1</td><td>Kiss Ádám</td><td>3</td></tr><tr><td>10</td><td>AGNESK</td><td>Kovács Ágnes</td><td>3</td></tr><tr><td>10</td><td>aladar</td><td>Dunai Aladár</td><td>3</td></tr><tr><td>10</td><td>istvan</td><td>Soós István</td><td>3</td></tr><tr><td>10</td><td>henrik3</td><td>Nádudvari Henrik</td><td>3</td></tr><tr><td>10</td><td>IBOLYAA</td><td>Andor Ibolya</td><td>3</td></tr><tr><td>10</td><td>jozsef</td><td>Gergely József</td><td>3</td></tr><tr><td>10</td><td>JUDITH</td><td>Hídasi Judit</td><td>3</td></tr><tr><td>10</td><td>klaudia2</td><td>Bakó Klaudia</td><td>3</td></tr><tr><td>10</td><td>kornel4</td><td>Lukács Kornél</td><td>3</td></tr><tr><td>10</td><td>lajos</td><td>Kiss Lajos</td><td>3</td></tr><tr><td>10</td><td>norbert5</td><td>Béres Norbert</td><td>3</td></tr><tr><td>10</td><td>miklos2</td><td>Gondos Miklós</td><td>3</td></tr><tr><td>10</td><td>MIKLOSB</td><td>Balla Miklós</td><td>3</td></tr><tr><td>10</td><td>NANDORF</td><td>Fő Nándor</td><td>3</td></tr><tr><td>10</td><td>MATEK</td><td>Koza Máté</td><td>3</td></tr><tr><td>10</td><td>ZOLTANT</td><td>Tóth Zoltán</td><td>3</td></tr><tr><td>10</td><td>zsuzsa</td><td>Pusztai Zsuzsanna</td><td>3</td></tr><tr><td>10</td><td>roza2</td><td>Bucskó Róza</td><td>3</td></tr><tr><td>11</td><td>ROBERTP</td><td>Pásztor Róbert</td><td>2</td></tr><tr><td>11</td><td>tibor</td><td>Gombos Tibor</td><td>2</td></tr><tr><td>11</td><td>tamara2</td><td>Miklós Tamara</td><td>2</td></tr><tr><td>11</td><td>zsofi1</td><td>Molnár Zsófi</td><td>2</td></tr><tr><td>11</td><td>VIKTORK</td><td>Keresztúri Viktor</td><td>2</td></tr><tr><td>11</td><td>zoltan</td><td>Fodor Zoltán</td><td>2</td></tr><tr><td>11</td><td>matyas2</td><td>Botka Mátyás</td><td>2</td></tr><tr><td>11</td><td>kristof4</td><td>Poprádi Kristóf</td><td>2</td></tr><tr><td>11</td><td>julia4</td><td>Nagy Júlia</td><td>2</td></tr><tr><td>11</td><td>ISTVANV</td><td>Varga István</td><td>2</td></tr><tr><td>11</td><td>imre</td><td>Búza Imre</td><td>2</td></tr><tr><td>11</td><td>adam3</td><td>Barkóci Ádám</td><td>2</td></tr><tr><td>11</td><td>annamaria1</td><td>Szűcs Annamária</td><td>2</td></tr><tr><td>11</td><td>balint2</td><td>Vukasinovity Bálint</td><td>2</td></tr><tr><td>11</td><td>balu</td><td>Endresz Bálint</td><td>2</td></tr><tr><td>11</td><td>eva</td><td>Enyedi Éva</td><td>2</td></tr><tr><td>12</td><td>david4</td><td>Berta Dávid</td><td>1</td></tr><tr><td>12</td><td>ANDRASN</td><td>Nagy András</td><td>1</td></tr><tr><td>12</td><td>andrea3</td><td>Szomor Andrea</td><td>1</td></tr><tr><td>12</td><td>gabriella10</td><td>Vida Gabriella</td><td>1</td></tr><tr><td>12</td><td>laszlo1</td><td>Farkas László</td><td>1</td></tr><tr><td>12</td><td>szabolcs</td><td>Bodor Szabolcs</td><td>1</td></tr><tr><td>12</td><td>tibor2</td><td>Dániel Tibor</td><td>1</td></tr><tr><td>12</td><td>timea</td><td>Papós Tímea</td><td>1</td></tr><tr><td>13</td><td>GABORS</td><td>Szöllősi Gábor</td><td>0</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 17
        },
        {
            "cell_type": "markdown",
            "source": [
                "Készítsen lekérdezést, amely megjeleníti, hogy szálláshelyenként, azon belül a pótágyak száma szerint hány főre foglaltak összesen (felnőtt + gyermek)!\n",
                "\n",
                "- Jelenjenek meg a részösszegek és a végösszeg is!"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "fad36e0e-51ac-4fb8-aaed-0072a86c23b1"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "WITH FoglalasokSzamai AS (\r\n",
                "    SELECT SH.SZALLAS_NEV AS SzallashelyNeve,\r\n",
                "        SZ.POTAGY AS PotagySzama,\r\n",
                "        SUM(F.FELNOTT_SZAM + F.GYERMEK_SZAM) AS OsszesFoglalt\r\n",
                "    FROM Foglalas F\r\n",
                "    JOIN Szoba SZ ON F.SZOBA_FK = SZ.SZOBA_ID\r\n",
                "    JOIN  Szallashely SH ON SZ.SZALLAS_FK = SH.SZALLAS_ID\r\n",
                "    GROUP BY SH.SZALLAS_NEV, SZ.POTAGY\r\n",
                ")\r\n",
                "SELECT SzallashelyNeve,\r\n",
                "    PotagySzama,\r\n",
                "    OsszesFoglalt\r\n",
                "FROM FoglalasokSzamai\r\n",
                "ORDER BY SzallashelyNeve, PotagySzama;\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "30fb4d13-6143-48c5-9076-aee4027c19ea",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(29 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.024"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 33,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "SzallashelyNeve"
                                    },
                                    {
                                        "name": "PotagySzama"
                                    },
                                    {
                                        "name": "OsszesFoglalt"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "SzallashelyNeve": "Családi Ház",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "10"
                                },
                                {
                                    "SzallashelyNeve": "Családi Ház",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "31"
                                },
                                {
                                    "SzallashelyNeve": "Családi Ház",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "11"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna Apartman",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "18"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna Apartman",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "52"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna Apartman",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "36"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna Panzió",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "158"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna panzió",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "113"
                                },
                                {
                                    "SzallashelyNeve": "Fortuna panzió",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "40"
                                },
                                {
                                    "SzallashelyNeve": "Gold Hotel",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "216"
                                },
                                {
                                    "SzallashelyNeve": "Gold Hotel",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "93"
                                },
                                {
                                    "SzallashelyNeve": "Gold Hotel",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "119"
                                },
                                {
                                    "SzallashelyNeve": "Hotel Három Hattyú",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "183"
                                },
                                {
                                    "SzallashelyNeve": "Hotel Három Hattyú",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "258"
                                },
                                {
                                    "SzallashelyNeve": "Hotel Három Hattyú",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "63"
                                },
                                {
                                    "SzallashelyNeve": "Jáde panzió",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "66"
                                },
                                {
                                    "SzallashelyNeve": "Kentaur Hotel",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "168"
                                },
                                {
                                    "SzallashelyNeve": "Kentaur Hotel",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "224"
                                },
                                {
                                    "SzallashelyNeve": "Kentaur Hotel",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "28"
                                },
                                {
                                    "SzallashelyNeve": "Lagúna Hotel",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "105"
                                },
                                {
                                    "SzallashelyNeve": "Lagúna Hotel",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "150"
                                },
                                {
                                    "SzallashelyNeve": "Lagúna Hotel",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "36"
                                },
                                {
                                    "SzallashelyNeve": "Partiszél Vendégház",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "31"
                                },
                                {
                                    "SzallashelyNeve": "Partiszél Vendégház",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "17"
                                },
                                {
                                    "SzallashelyNeve": "Partiszél Vendégház",
                                    "PotagySzama": "2",
                                    "OsszesFoglalt": "15"
                                },
                                {
                                    "SzallashelyNeve": "Sába-Ház",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "67"
                                },
                                {
                                    "SzallashelyNeve": "Sába-Ház",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "99"
                                },
                                {
                                    "SzallashelyNeve": "Szieszta Apartmanház",
                                    "PotagySzama": "0",
                                    "OsszesFoglalt": "64"
                                },
                                {
                                    "SzallashelyNeve": "Szieszta Apartmanház",
                                    "PotagySzama": "1",
                                    "OsszesFoglalt": "19"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>SzallashelyNeve</th><th>PotagySzama</th><th>OsszesFoglalt</th></tr><tr><td>Családi Ház</td><td>0</td><td>10</td></tr><tr><td>Családi Ház</td><td>1</td><td>31</td></tr><tr><td>Családi Ház</td><td>2</td><td>11</td></tr><tr><td>Fortuna Apartman</td><td>0</td><td>18</td></tr><tr><td>Fortuna Apartman</td><td>1</td><td>52</td></tr><tr><td>Fortuna Apartman</td><td>2</td><td>36</td></tr><tr><td>Fortuna Panzió</td><td>0</td><td>158</td></tr><tr><td>Fortuna panzió</td><td>1</td><td>113</td></tr><tr><td>Fortuna panzió</td><td>2</td><td>40</td></tr><tr><td>Gold Hotel</td><td>0</td><td>216</td></tr><tr><td>Gold Hotel</td><td>1</td><td>93</td></tr><tr><td>Gold Hotel</td><td>2</td><td>119</td></tr><tr><td>Hotel Három Hattyú</td><td>0</td><td>183</td></tr><tr><td>Hotel Három Hattyú</td><td>1</td><td>258</td></tr><tr><td>Hotel Három Hattyú</td><td>2</td><td>63</td></tr><tr><td>Jáde panzió</td><td>0</td><td>66</td></tr><tr><td>Kentaur Hotel</td><td>0</td><td>168</td></tr><tr><td>Kentaur Hotel</td><td>1</td><td>224</td></tr><tr><td>Kentaur Hotel</td><td>2</td><td>28</td></tr><tr><td>Lagúna Hotel</td><td>0</td><td>105</td></tr><tr><td>Lagúna Hotel</td><td>1</td><td>150</td></tr><tr><td>Lagúna Hotel</td><td>2</td><td>36</td></tr><tr><td>Partiszél Vendégház</td><td>0</td><td>31</td></tr><tr><td>Partiszél Vendégház</td><td>1</td><td>17</td></tr><tr><td>Partiszél Vendégház</td><td>2</td><td>15</td></tr><tr><td>Sába-Ház</td><td>0</td><td>67</td></tr><tr><td>Sába-Ház</td><td>1</td><td>99</td></tr><tr><td>Szieszta Apartmanház</td><td>0</td><td>64</td></tr><tr><td>Szieszta Apartmanház</td><td>1</td><td>19</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 33
        },
        {
            "cell_type": "markdown",
            "source": [
                "Készítsünk ideiglenes táblát #MASKED\\_GUEST néven, ahol \n",
                "\n",
                "- a tábla felépítése megegyezik a vendég tábláéval, DE\n",
                "- a vendégek nevének csak az első 2, és az utolsó 3 karaktere jelenjen meg, közötte X-ek legyenek!"
            ],
            "metadata": {
                "azdata_cell_guid": "6dc6a980-d6cb-4ef3-9c12-7a416f9b182c"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE #MASKED_GUEST (\r\n",
                "    USERNEV NVARCHAR(20),\r\n",
                "    NEV NVARCHAR(50),\r\n",
                "    EMAIL NVARCHAR(60),\r\n",
                "    SZAML_CIM NVARCHAR(100),\r\n",
                "    SZUL_DAT DATE\r\n",
                ");\r\n",
                "\r\n",
                "INSERT INTO #MASKED_GUEST (USERNEV, NEV, EMAIL, SZAML_CIM, SZUL_DAT)\r\n",
                "SELECT \r\n",
                "    USERNEV,\r\n",
                "    CONCAT(\r\n",
                "        LEFT(NEV, 2), \r\n",
                "        REPLICATE('X', LEN(NEV) - 5), \r\n",
                "        RIGHT(NEV, 3)\r\n",
                "    ) AS NEV,\r\n",
                "    EMAIL,\r\n",
                "    SZAML_CIM,\r\n",
                "    SZUL_DAT\r\n",
                "FROM Vendeg;\r\n",
                "\r\n",
                "SELECT * FROM #MASKED_GUEST;\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "8caf071c-7165-48d5-8578-74b86f112f33",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 207, Level 16, State 1, Line 9\r\nInvalid column name 'SZUL_DAT'.",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.002"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 29
        }
    ]
}