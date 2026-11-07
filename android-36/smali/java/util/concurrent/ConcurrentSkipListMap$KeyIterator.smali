.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap<",
        "TK;TV;>.Iter<TK;>;"
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

    .line 2154
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2157
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeyIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2159
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2160
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->advance(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 2161
    return-object v0

    .line 2158
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
