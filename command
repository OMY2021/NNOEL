private static void command(String string) throws IOException {
   //Если это первый запуск, то мы должны создать игрока, именем будет служить первая введенная строка из консоли
   if (player == null) {
       player = new Hero(
               string,
               100,
               20,
               20,
               0,
               0
       );
       System.out.println(String.format("Спасти наш мир от драконов вызвался %s! Да будет его броня крепка и бицепс кругл!", player.getName()));
       //Метод для вывода меню
       printNavigation();
   }
   //Варианты для команд
   switch (string) {
       case "1": {
           System.out.println("Торговец еще не приехал");
           command(br.readLine());
       }
       break;
       case "2": {
           commitFight();
       }
       break;
       case "3":
           System.exit(1);
           break;
       case "да":
           command("2");
           break;
       case "нет": {
           printNavigation();
           command(br.readLine());
       }
   }
   //Снова ждем команды от пользователя
   command(br.readLine());
}
