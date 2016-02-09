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
    .locals 2

    #@0
    .prologue
    .line 2184
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2186
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    .line 2187
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 2184
    :goto_0
    return-void

    #@10
    .line 2189
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@14
    .line 2190
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@16
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-eq v0, v1, :cond_0

    #@1a
    .line 2191
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    #@1c
    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 2

    #@0
    .prologue
    .line 2203
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2204
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 2205
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    .line 2207
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    .line 2208
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 2202
    :goto_0
    return-void

    #@19
    .line 2210
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1d
    .line 2211
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@1f
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@21
    if-eq v0, v1, :cond_1

    #@23
    .line 2212
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    #@25
    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2198
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
    .line 2219
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    .line 2220
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 2221
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 2224
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@d
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 2225
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    .line 2218
    return-void
.end method
