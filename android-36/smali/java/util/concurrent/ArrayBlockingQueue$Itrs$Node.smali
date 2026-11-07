.class Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
.super Ljava/lang/ref/WeakReference;
.source "ArrayBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/util/concurrent/ArrayBlockingQueue<",
        "TE;>.Itr;>;"
    }
.end annotation


# instance fields
.field greylist-max-o next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs.Node;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itr;",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs.Node;)V"
        }
    .end annotation

    .line 824
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .local p2, "iterator":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .local p3, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 825
    iput-object p3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 826
    return-void
.end method
