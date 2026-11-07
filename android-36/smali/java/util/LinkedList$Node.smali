.class Ljava/util/LinkedList$Node;
.super Ljava/lang/Object;
.source "LinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field greylist item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field greylist next:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o prev:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node<",
            "TE;>;TE;",
            "Ljava/util/LinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 986
    .local p0, "this":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .local p1, "prev":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    .local p3, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p2, p0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 988
    iput-object p3, p0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 989
    iput-object p1, p0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 990
    return-void
.end method
