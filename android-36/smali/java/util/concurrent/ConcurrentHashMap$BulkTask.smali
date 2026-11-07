.class abstract Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BulkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# instance fields
.field greylist-max-o baseIndex:I

.field greylist-max-o baseLimit:I

.field final greylist-max-o baseSize:I

.field greylist-max-o batch:I

.field greylist-max-o index:I

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 7
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4907
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "par":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 4908
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    .line 4909
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4910
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez p5, :cond_13

    .line 4911
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_21

    .line 4912
    :cond_13
    if-nez p1, :cond_1b

    .line 4913
    array-length v0, p5

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_21

    .line 4915
    :cond_1b
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    .line 4916
    iget v0, p1, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    .line 4918
    :goto_21
    return-void
.end method

.method private greylist-max-o pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V
    .registers 6
    .param p2, "i"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 4954
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4955
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 4956
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_f

    .line 4958
    :cond_9
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    move-object v0, v1

    .line 4959
    :goto_f
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4960
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 4961
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 4962
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4963
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4964
    return-void
.end method

.method private greylist-max-o recoverState(I)V
    .registers 6
    .param p1, "n"    # I

    .line 4968
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_27

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    move v3, v2

    .local v3, "len":I
    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_27

    .line 4969
    move p1, v3

    .line 4970
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4971
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4972
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4973
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4974
    .local v0, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4975
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4976
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4977
    .end local v0    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_1

    .line 4978
    .end local v3    # "len":I
    :cond_27
    if-nez v1, :cond_3a

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_3a

    .line 4979
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4980
    :cond_3a
    return-void
.end method


# virtual methods
.method final greylist-max-o advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4925
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 4926
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4929
    :cond_7
    :goto_7
    if-eqz v1, :cond_c

    .line 4930
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v1

    .line 4931
    :cond_c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    if-ge v0, v2, :cond_61

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_61

    array-length v0, v2

    move v3, v0

    .local v3, "n":I
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    move v5, v4

    .local v5, "i":I
    if-le v0, v4, :cond_61

    if-gez v5, :cond_21

    goto :goto_61

    .line 4934
    :cond_21
    invoke-static {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v0, :cond_49

    .line 4935
    instance-of v0, v1, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3c

    .line 4936
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4937
    const/4 v1, 0x0

    .line 4938
    invoke-direct {p0, v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    .line 4939
    goto :goto_7

    .line 4941
    :cond_3c
    instance-of v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_47

    .line 4942
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_49

    .line 4944
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_47
    const/4 v0, 0x0

    move-object v1, v0

    .line 4946
    :cond_49
    :goto_49
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_51

    .line 4947
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->recoverState(I)V

    goto :goto_60

    .line 4948
    :cond_51
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v5

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, v3, :cond_60

    .line 4949
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4950
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "n":I
    .end local v5    # "i":I
    :cond_60
    :goto_60
    goto :goto_7

    .line 4933
    :cond_61
    :goto_61
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method
