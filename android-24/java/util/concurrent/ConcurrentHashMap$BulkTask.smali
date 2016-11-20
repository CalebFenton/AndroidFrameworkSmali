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
        "Ljava/util/concurrent/CountedCompleter",
        "<TR;>;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field batch:I

.field index:I

.field next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 1
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BulkTask<TK;TV;TR;>;"
    .local p1, "par":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 4857
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@4
    .line 4858
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@6
    .line 4859
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@8
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@a
    .line 4860
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    if-nez p5, :cond_0

    #@e
    .line 4861
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@10
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@12
    .line 4856
    :goto_0
    return-void

    #@13
    .line 4862
    :cond_0
    if-nez p1, :cond_1

    #@15
    .line 4863
    array-length v0, p5

    #@16
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@18
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@1a
    goto :goto_0

    #@1b
    .line 4865
    :cond_1
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@1d
    .line 4866
    iget v0, p1, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@1f
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@21
    goto :goto_0
.end method

.method private pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V
    .locals 2
    .param p2, "i"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4904
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BulkTask<TK;TV;TR;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@2
    .line 4905
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .line 4906
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@6
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@8
    .line 4909
    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .line 4910
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@c
    .line 4911
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@e
    .line 4912
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@10
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@12
    .line 4913
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@14
    .line 4903
    return-void

    #@15
    .line 4908
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@17
    .end local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    #@1a
    .restart local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_0
.end method

.method private recoverState(I)V
    .locals 5
    .param p1, "n"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BulkTask<TK;TV;TR;>;"
    const/4 v4, 0x0

    #@1
    .line 4918
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@3
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v2, :cond_0

    #@5
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@7
    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@9
    .local v0, "len":I
    add-int/2addr v3, v0

    #@a
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@c
    if-lt v3, p1, :cond_0

    #@e
    .line 4919
    move p1, v0

    #@f
    .line 4920
    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@11
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@13
    .line 4921
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@15
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    .line 4922
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    .line 4923
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1b
    .line 4924
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1d
    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1f
    .line 4925
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@21
    .line 4926
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@23
    goto :goto_0

    #@24
    .line 4928
    .end local v0    # "len":I
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    :cond_0
    if-nez v2, :cond_1

    #@26
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@28
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@2a
    add-int/2addr v3, v4

    #@2b
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@2d
    if-lt v3, p1, :cond_1

    #@2f
    .line 4929
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@35
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@37
    .line 4916
    :cond_1
    return-void
.end method


# virtual methods
.method final advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.BulkTask<TK;TV;TR;>;"
    const/4 v6, 0x0

    #@1
    .line 4875
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@5
    .line 4876
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@7
    .line 4879
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@9
    .line 4880
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    return-object v0

    #@c
    .line 4881
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@e
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@10
    if-ge v4, v5, :cond_2

    #@12
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_3

    #@16
    .line 4883
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    return-object v6

    #@19
    .line 4882
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    array-length v2, v3

    #@1a
    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@1c
    .local v1, "i":I
    if-le v2, v1, :cond_2

    #@1e
    if-ltz v1, :cond_2

    #@20
    .line 4884
    invoke-static {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    #@26
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@28
    if-gez v4, :cond_5

    #@2a
    .line 4885
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 4886
    nop

    #@2f
    nop

    #@30
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@32
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@34
    .line 4887
    const/4 v0, 0x0

    #@35
    .line 4888
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    #@38
    goto :goto_0

    #@39
    .line 4891
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3b
    if-eqz v4, :cond_6

    #@3d
    .line 4892
    nop

    #@3e
    nop

    #@3f
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@41
    .line 4896
    :cond_5
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@43
    if-eqz v4, :cond_7

    #@45
    .line 4897
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->recoverState(I)V

    #@48
    goto :goto_0

    #@49
    .line 4894
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    const/4 v0, 0x0

    #@4a
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1

    #@4b
    .line 4898
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    #@4d
    add-int/2addr v4, v1

    #@4e
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@50
    if-lt v4, v2, :cond_0

    #@52
    .line 4899
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@54
    add-int/lit8 v4, v4, 0x1

    #@56
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@58
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    #@5a
    goto :goto_0
.end method
