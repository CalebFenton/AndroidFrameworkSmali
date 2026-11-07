.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
        "TK;TV;>.SubMapIter<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3033
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3041
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 3033
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next()Ljava/util/Map$Entry;

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

    .line 3035
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3036
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->nextValue:Ljava/lang/Object;

    .line 3037
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->advance()V

    .line 3038
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
