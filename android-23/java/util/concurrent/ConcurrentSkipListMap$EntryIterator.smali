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
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    #@0
    .prologue
    .line 2246
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2247
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next()Ljava/util/Map$Entry;

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
    .line 2248
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    .line 2249
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->nextValue:Ljava/lang/Object;

    #@4
    .line 2250
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->advance()V

    #@7
    .line 2251
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@e
    return-object v2
.end method
