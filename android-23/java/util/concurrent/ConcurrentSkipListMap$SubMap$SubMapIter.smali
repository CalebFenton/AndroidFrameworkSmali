.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIter"
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

.field final synthetic this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "this$1":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2988
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2990
    :cond_0
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-get0(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-wrap3(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    move-result-object v1

    #@10
    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    .line 2991
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-nez v1, :cond_2

    #@16
    .line 2988
    :goto_1
    return-void

    #@17
    .line 2990
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-wrap4(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_0

    #@1c
    .line 2993
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@20
    .line 2994
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@22
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@24
    if-eq v0, v1, :cond_0

    #@26
    .line 2995
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@28
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2a
    invoke-static {p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-wrap0(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_3

    #@30
    .line 2996
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@32
    goto :goto_1

    #@33
    .line 2998
    :cond_3
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@35
    goto :goto_1
.end method

.method private ascend()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 3020
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 3021
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 3018
    :goto_0
    return-void

    #@c
    .line 3023
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@10
    .line 3024
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 3025
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@18
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1a
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@1c
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-wrap1(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 3026
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@24
    goto :goto_0

    #@25
    .line 3028
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@27
    goto :goto_0
.end method

.method private descend()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 3036
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-get1(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    const/4 v3, 0x2

    #@c
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    .line 3037
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 3034
    :goto_0
    return-void

    #@17
    .line 3039
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@19
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1b
    .line 3040
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@1d
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1f
    if-eq v0, v1, :cond_0

    #@21
    .line 3041
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@23
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@25
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@27
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-wrap2(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 3042
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2f
    goto :goto_0

    #@30
    .line 3044
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@32
    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 1

    #@0
    .prologue
    .line 3009
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3010
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3011
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    .line 3012
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@10
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-get0(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 3013
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    #@19
    .line 3008
    :goto_0
    return-void

    #@1a
    .line 3015
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    #@1d
    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 3005
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 3051
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    .line 3052
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 3053
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 3054
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@d
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->-get1(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;

    #@10
    move-result-object v1

    #@11
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@13
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 3055
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    .line 3050
    return-void
.end method
