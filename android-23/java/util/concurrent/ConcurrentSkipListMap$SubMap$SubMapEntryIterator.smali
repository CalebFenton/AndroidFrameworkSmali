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
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0

    #@0
    .prologue
    .line 3076
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapEntryIterator;"
    .local p1, "this$1":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3077
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3078
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapEntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    .line 3079
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->nextValue:Ljava/lang/Object;

    #@4
    .line 3080
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->advance()V

    #@7
    .line 3081
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@e
    return-object v2
.end method
