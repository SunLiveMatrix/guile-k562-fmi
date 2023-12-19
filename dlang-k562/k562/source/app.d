
import std.stdio;




version (GNU) {
    const int MAX_VIEW_DISTANCE = 60;
} else {
    const int MAX_VIEW_DISTANCE = 250;
}


   
    
private:

    int maxVisibleRange = MAX_VIEW_DISTANCE;


struct VisitorCell {
    ulong[6] accessible;
    bool visited;
    int dirFlags;
}

void main(string[] args)
{
    writeln("Hello World!");    
}    
