.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 3

    #@0
    .prologue
    .line 2247
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2248
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2249
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@11
    .line 2250
    .local v1, "x":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@13
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 2251
    move-object v0, v1

    #@18
    .line 2252
    .local v0, "vv":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    #@1a
    .line 2247
    .end local v0    # "vv":Ljava/lang/Object;, "TV;"
    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    #@0
    .prologue
    .line 2264
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2265
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v2

    #@a
    .line 2266
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    .line 2267
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 2268
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1a
    .line 2269
    .local v1, "x":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@1c
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    if-eq v1, v2, :cond_1

    #@20
    .line 2270
    move-object v0, v1

    #@21
    .line 2271
    .local v0, "vv":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    #@23
    .line 2263
    .end local v0    # "vv":Ljava/lang/Object;, "TV;"
    .end local v1    # "x":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2259
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 2278
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    .line 2279
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 2280
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 2283
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@d
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 2284
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    .line 2277
    return-void
.end method
