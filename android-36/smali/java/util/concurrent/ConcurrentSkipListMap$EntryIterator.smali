.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap<",
        "TK;TV;>.Iter<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2165
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 2165
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2168
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_12

    .line 2170
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2171
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 2172
    .local v2, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->advance(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 2173
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 2169
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
