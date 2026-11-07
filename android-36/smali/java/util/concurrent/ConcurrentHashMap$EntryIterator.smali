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
        "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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

    .line 3500
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    .line 3501
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 3496
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist next()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3505
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_16

    .line 3507
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 3508
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 3509
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3510
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3511
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v3

    .line 3506
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
