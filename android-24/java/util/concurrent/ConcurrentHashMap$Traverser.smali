.class Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

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
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3330
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3331
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@5
    .line 3332
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@7
    .line 3333
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@9
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@b
    .line 3334
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@d
    .line 3335
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    .line 3330
    return-void
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
    .line 3375
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@2
    .line 3376
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .line 3377
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@6
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@8
    .line 3380
    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .line 3381
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@c
    .line 3382
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@e
    .line 3383
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@10
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@12
    .line 3384
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@14
    .line 3374
    return-void

    #@15
    .line 3379
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 3394
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@3
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v2, :cond_0

    #@5
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@7
    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    #@9
    .local v0, "len":I
    add-int/2addr v3, v0

    #@a
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@c
    if-lt v3, p1, :cond_0

    #@e
    .line 3395
    move p1, v0

    #@f
    .line 3396
    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    #@11
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@13
    .line 3397
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@15
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    .line 3398
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    .line 3399
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1b
    .line 3400
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1d
    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@1f
    .line 3401
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@21
    .line 3402
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@23
    goto :goto_0

    #@24
    .line 3404
    .end local v0    # "len":I
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    :cond_0
    if-nez v2, :cond_1

    #@26
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@28
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@2a
    add-int/2addr v3, v4

    #@2b
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@2d
    if-lt v3, p1, :cond_1

    #@2f
    .line 3405
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@35
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@37
    .line 3392
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Traverser<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 3343
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@5
    .line 3344
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@7
    .line 3347
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@9
    .line 3348
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    return-object v0

    #@c
    .line 3349
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@e
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@10
    if-ge v4, v5, :cond_2

    #@12
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_3

    #@16
    .line 3351
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    return-object v6

    #@19
    .line 3350
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    array-length v2, v3

    #@1a
    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@1c
    .local v1, "i":I
    if-le v2, v1, :cond_2

    #@1e
    if-ltz v1, :cond_2

    #@20
    .line 3352
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
    .line 3353
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 3354
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@30
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@32
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@34
    .line 3355
    const/4 v0, 0x0

    #@35
    .line 3356
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    #@38
    goto :goto_0

    #@39
    .line 3359
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3b
    if-eqz v4, :cond_6

    #@3d
    .line 3360
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3f
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@41
    .line 3364
    :cond_5
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    #@43
    if-eqz v4, :cond_7

    #@45
    .line 3365
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    #@48
    goto :goto_0

    #@49
    .line 3362
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    const/4 v0, 0x0

    #@4a
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1

    #@4b
    .line 3366
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@4d
    add-int/2addr v4, v1

    #@4e
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@50
    if-lt v4, v2, :cond_0

    #@52
    .line 3367
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@54
    add-int/lit8 v4, v4, 0x1

    #@56
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@58
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    #@5a
    goto :goto_0
.end method
