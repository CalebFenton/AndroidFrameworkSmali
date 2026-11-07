.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
        "TK;TV;>.SubMapIter<TV;>;"
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

    .line 3007
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3014
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapValueIterator;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3009
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapValueIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->nextValue:Ljava/lang/Object;

    .line 3010
    .local v0, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->advance()V

    .line 3011
    return-object v0
.end method
