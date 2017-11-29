def shuffle(arr)
    for n in 0...arr.size
        targ = n + rand(arr.size - n)
        arr[n], arr[targ] = arr[targ], arr[n] if n != targ
    end
end

def pairs(a, b)
    a << 'Insane'
    shuffle(b)
    b.each { |x| shuffle(a); a.each { |y| print y, " ", x, ".\n" } }
end

first = ['Strange', 'Fresh', 'Wonderful']
pairs(first, ['lemonade', 'procedure', 'sounds', 'throughway'])
print "\n", first.join(" "), "\n"