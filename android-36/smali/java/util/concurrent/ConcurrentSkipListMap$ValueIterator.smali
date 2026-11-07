.class final Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap<",
        "TK;TV;>.Iter<TV;>;"
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

    .line 2144
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2147
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->nextValue:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_b

    .line 2149
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->advance(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 2150
    return-object v1

    .line 2148
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
