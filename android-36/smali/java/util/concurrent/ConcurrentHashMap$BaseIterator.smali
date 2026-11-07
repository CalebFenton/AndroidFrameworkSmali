.class Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;III",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3439
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3440
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3441
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3442
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasMoreElements()Z
    .registers 2

    .line 3445
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 3444
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api remove()V
    .registers 5

    .line 3449
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 3451
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3452
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    return-void

    .line 3450
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
