.class final Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 2714
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@3
    .line 2713
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2717
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2719
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    .line 2720
    new-instance v3, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v3

    #@a
    .line 2721
    :cond_0
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@c
    .line 2722
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@e
    .line 2723
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    .line 2724
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@13
    .line 2725
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    #@15
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    invoke-direct {v3, v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@1a
    return-object v3
.end method
