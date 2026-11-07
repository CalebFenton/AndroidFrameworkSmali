.class final Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;
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
    name = "KeyIterator"
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
        "TK;>;",
        "Ljava/util/Enumeration<",
        "TK;>;"
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

    .line 3460
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    .line 3461
    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3465
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 3467
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 3468
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3469
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3470
    return-object v0

    .line 3466
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3473
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
