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
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2910
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2911
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 2912
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2914
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_c
    iget-boolean v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    :goto_19
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2915
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_20

    .line 2916
    goto :goto_37

    .line 2917
    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    .line 2918
    .local v1, "x":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_38

    .line 2919
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2920
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_37

    .line 2922
    :cond_34
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    .line 2923
    nop

    .line 2926
    .end local v1    # "x":Ljava/lang/Object;, "TV;"
    :goto_37
    return-void

    .line 2925
    :cond_38
    goto :goto_c
.end method

.method private greylist-max-o ascend()V
    .registers 5

    .line 2943
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2945
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_6
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2946
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_11

    .line 2947
    goto :goto_2a

    .line 2948
    :cond_11
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    .line 2949
    .local v1, "x":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2b

    .line 2950
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2951
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_2a

    .line 2953
    :cond_27
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    .line 2954
    nop

    .line 2957
    .end local v1    # "x":Ljava/lang/Object;, "TV;"
    :goto_2a
    return-void

    .line 2956
    :cond_2b
    goto :goto_6
.end method

.method private greylist-max-o descend()V
    .registers 5

    .line 2960
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2962
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_6
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2963
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1a

    .line 2964
    goto :goto_33

    .line 2965
    :cond_1a
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    .line 2966
    .local v1, "x":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_34

    .line 2967
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2968
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_33

    .line 2970
    :cond_30
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    .line 2971
    nop

    .line 2974
    .end local v1    # "x":Ljava/lang/Object;, "TV;"
    :goto_33
    return-void

    .line 2973
    :cond_34
    goto :goto_6
.end method


# virtual methods
.method final greylist-max-o advance()V
    .registers 2

    .line 2933
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_16

    .line 2935
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2936
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-boolean v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_12

    .line 2937
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    goto :goto_15

    .line 2939
    :cond_12
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    .line 2940
    :goto_15
    return-void

    .line 2934
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 3002
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2997
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2998
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 2999
    :cond_f
    return-void
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 2929
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 2977
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2978
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_11

    .line 2980
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2982
    return-void

    .line 2979
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 2989
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2990
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2991
    const/4 v0, 0x1

    return v0

    .line 2993
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2985
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
