.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
        "TK;TV;>.SubMapIter<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


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

    .line 3018
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapKeyIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3025
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapKeyIterator;"
    const/16 v0, 0x15

    return v0
.end method

.method public final whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3029
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3020
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3021
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->advance()V

    .line 3022
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method
