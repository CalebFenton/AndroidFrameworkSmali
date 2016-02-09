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
        "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;",
        "Ljava/util/Enumeration",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "size"    # I
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
    .line 2694
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@3
    .line 2693
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2699
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@4
    .line 2700
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v2

    #@a
    .line 2701
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@c
    .line 2702
    .local v1, "v":Ljava/lang/Object;, "TV;"
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e
    .line 2703
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11
    .line 2704
    return-object v1
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2707
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
