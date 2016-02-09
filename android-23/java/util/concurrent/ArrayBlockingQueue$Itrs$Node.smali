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
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/concurrent/ArrayBlockingQueue",
        "<TE;>.Itr;>;"
    }
.end annotation


# instance fields
.field next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 770
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .local p1, "this$1":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p2, "iterator":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .local p3, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->this$1:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@2
    .line 771
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    .line 772
    iput-object p3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@7
    .line 770
    return-void
.end method
