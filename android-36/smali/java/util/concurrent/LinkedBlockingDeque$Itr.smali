.class Ljava/util/concurrent/LinkedBlockingDeque$Itr;
.super Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingDeque<",
        "TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1164
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method greylist-max-o firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1165
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method greylist-max-o nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1166
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    .local p1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method
