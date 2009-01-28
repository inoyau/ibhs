
data Message = CallOption Double Double Double |
               PutOption Double Double Double |
               StartMessage Int

parseInt:: String -> Maybe (Int,String)
parseInt str = 
    let (bs,'\0':os) = span (/='\0') str 
        a = read bs::Int in
    Just (a,os)

parseDouble:: String -> Maybe (Double, String)
parseDouble str = 
    let (bs,'\0':os) = span (/='\0') str in
    if bs=="" then Nothing else Just (read bs::Double,os)

parseStr::String->Maybe (String, String)
parseStr str=
         let (bs,'\0':os) = span (/='0') str
         in
           if bs == "" then
               Nothing
           else 
               Just (bs,os)
         

main:: IO () 
main = do 
  putStrLn "Hello world";

