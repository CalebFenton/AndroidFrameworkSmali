.class final Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field volatile greylist-max-o item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile greylist-max-o next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 197
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/lang/Object;)V

    .line 194
    return-void
.end method


# virtual methods
.method blacklist appendRelaxed(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 203
    return-void
.end method

.method blacklist casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    .line 209
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, "cmp":Ljava/lang/Object;, "TE;"
    .local p2, "val":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
