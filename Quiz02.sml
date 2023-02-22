use "./../../../mysmlib/mysmlib-cls.sml";
val strlen = (*length*)
foreach_to_length(string_foreach)
val strsub = (*subscripting*)
foreach_to_get_at(string_foreach)


fun getsubs(s:string,x:int): string= 
    if x > (String.size(s) - 1)
        then "" 
    else 
        String.str(String.sub(s,x)) ^ getsubs(s,x+1);


fun helper(word:string,c:char):int=
    if String.size(word) = 0 then 0 else 
        if String.sub(word,0) = c 
            then 1 + helper(getsubs(word,1),c) 
            else 0 +  helper(getsubs(word,1),c);



fun quiz02_02(word:string):char->int=
    

val work = fn(w:string,c:char)=> if String.sub(word,0)>= c then 1 else 0;



val abs = fn(x:int)=> if x >= 0 then x else ~x
val quiz02_02: (int list * int list) :bool = 