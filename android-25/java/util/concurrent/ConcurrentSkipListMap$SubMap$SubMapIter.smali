.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Spliterator;


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
        "<TT;>;",
        "Ljava/util/Spliterator",
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
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "this$1":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 3058
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3059
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@8
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@a
    .line 3061
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    iget-boolean v3, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    move-result-object v3

    #@12
    :goto_0
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    .line 3062
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    if-nez v3, :cond_2

    #@18
    .line 3058
    :goto_1
    return-void

    #@19
    .line 3061
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1c
    move-result-object v3

    #@1d
    goto :goto_0

    #@1e
    .line 3064
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@22
    .line 3065
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@24
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@26
    if-eq v2, v3, :cond_0

    #@28
    .line 3066
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2a
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2c
    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_3

    #@32
    .line 3067
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@34
    goto :goto_1

    #@35
    .line 3069
    :cond_3
    move-object v1, v2

    #@36
    .line 3070
    .local v1, "vv":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@38
    goto :goto_1
.end method

.method private ascend()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 3092
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@7
    .line 3094
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@d
    .line 3095
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    if-nez v3, :cond_1

    #@11
    .line 3091
    :goto_0
    return-void

    #@12
    .line 3097
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@16
    .line 3098
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@18
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1a
    if-eq v2, v3, :cond_0

    #@1c
    .line 3099
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@1e
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@22
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 3100
    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2a
    goto :goto_0

    #@2b
    .line 3102
    :cond_2
    move-object v1, v2

    #@2c
    .line 3103
    .local v1, "vv":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@2e
    goto :goto_0
.end method

.method private descend()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v6, 0x0

    #@1
    .line 3111
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@7
    .line 3113
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@9
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@b
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@d
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@f
    const/4 v5, 0x2

    #@10
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@13
    move-result-object v3

    #@14
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 3114
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-nez v3, :cond_1

    #@1a
    .line 3110
    :goto_0
    return-void

    #@1b
    .line 3116
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1d
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1f
    .line 3117
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@21
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@23
    if-eq v2, v3, :cond_0

    #@25
    .line 3118
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@27
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@29
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2b
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 3119
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@33
    goto :goto_0

    #@34
    .line 3121
    :cond_2
    move-object v1, v2

    #@35
    .line 3122
    .local v1, "vv":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    #@37
    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 1

    #@0
    .prologue
    .line 3082
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3083
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3084
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    .line 3085
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@10
    iget-boolean v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3086
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    #@17
    .line 3081
    :goto_0
    return-void

    #@18
    .line 3088
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    #@1b
    goto :goto_0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 3155
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3150
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3151
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    goto :goto_0

    #@e
    .line 3149
    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 3078
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
    .line 3130
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    .line 3131
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 3132
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 3133
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@d
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@f
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 3134
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 3129
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3142
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3143
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    .line 3144
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 3146
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3138
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
