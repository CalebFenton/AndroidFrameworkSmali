.class final Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;",
        "Ljava/util/Enumeration<",
        "TV;>;"
    }
.end annotation


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

    .line 3480
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    .line 3481
    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3485
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 3487
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 3488
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3489
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3490
    return-object v0

    .line 3486
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3493
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
