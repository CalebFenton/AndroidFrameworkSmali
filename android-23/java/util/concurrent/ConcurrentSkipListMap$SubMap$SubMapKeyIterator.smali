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
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0

    #@0
    .prologue
    .line 3068
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "this$1":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 3070
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    .line 3071
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->advance()V

    #@5
    .line 3072
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@7
    return-object v1
.end method
