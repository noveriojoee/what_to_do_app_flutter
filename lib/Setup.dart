import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Setup.config.dart';


final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: r'$initGetIt', // default  
  preferRelativeImports: true, // default  
  asExtension: false, // default  
)  

@InjectableInit(generateForDir: ['test'])  
void configureDependencies() => $initGetIt(getIt);  