#########Array#####################
#Declaring an array
$colors=@('blue','white','green','blue')
$colors
#Array-Indexing
write-host $colors[0]
write-host $colors[0..2]
#Changing the element at a certain index
$colors[0]='white'
write-host $colors
#Adding the element to the array
$colors=$colors+'orange'
write-host $colors
#Adding selection of elements in the array
$colors+=@('pink','cyan')
write-host $colors
#Creating an ArrayList
$colorP=[System.Collections.ArrayList]@('blue','white','yellow')
$colorP
$colorP.Add('gray')
$colorP
$colorP.Remove('gray')
#Creating a HashTable
$users=@{
abertram='Adam'
radone='Sakshi'
striver='Suraj'
mage='Akanksha'
}
$users['radone']
$users.Keys
$users.Values

