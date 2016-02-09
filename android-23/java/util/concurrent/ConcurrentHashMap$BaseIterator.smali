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
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2653
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BaseIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@3
    .line 2654
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    .line 2655
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8
    .line 2652
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 2659
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2658
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public final remove()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BaseIterator<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 2663
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 2664
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 2665
    :cond_0
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d
    .line 2666
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@11
    invoke-virtual {v1, v2, v3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2661
    return-void
.end method
