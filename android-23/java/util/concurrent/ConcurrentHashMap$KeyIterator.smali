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
        "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TK;>;",
        "Ljava/util/Enumeration",
        "<TK;>;"
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
    .line 2674
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@3
    .line 2673
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2679
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    .line 2680
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v2

    #@a
    .line 2681
    :cond_0
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@c
    .line 2682
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e
    .line 2683
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11
    .line 2684
    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2687
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->next()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
