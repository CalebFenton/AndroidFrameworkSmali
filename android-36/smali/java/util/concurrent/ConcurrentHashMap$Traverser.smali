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
.field greylist-max-o baseIndex:I

.field greylist-max-o baseLimit:I

.field final greylist-max-o baseSize:I

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
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 3351
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3352
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3353
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    .line 3354
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    .line 3355
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    .line 3356
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3357
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

    .line 3396
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3397
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 3398
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_f

    .line 3400
    :cond_9
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    move-object v0, v1

    .line 3401
    :goto_f
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3402
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 3403
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 3404
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3405
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3406
    return-void
.end method

.method private greylist-max-o recoverState(I)V
    .registers 6
    .param p1, "n"    # I

    .line 3415
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_27

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    move v3, v2

    .local v3, "len":I
    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, p1, :cond_27

    .line 3416
    move p1, v3

    .line 3417
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3418
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3419
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3420
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3421
    .local v0, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3422
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3423
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3424
    .end local v0    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_1

    .line 3425
    .end local v3    # "len":I
    :cond_27
    if-nez v1, :cond_3a

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, p1, :cond_3a

    .line 3426
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3427
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

    .line 3364
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 3365
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3368
    :cond_7
    :goto_7
    if-eqz v1, :cond_c

    .line 3369
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v1

    .line 3370
    :cond_c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    if-ge v0, v2, :cond_61

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_61

    array-length v0, v2

    move v3, v0

    .local v3, "n":I
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    move v5, v4

    .local v5, "i":I
    if-le v0, v4, :cond_61

    if-gez v5, :cond_21

    goto :goto_61

    .line 3373
    :cond_21
    invoke-static {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v0, :cond_49

    .line 3374
    instance-of v0, v1, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3c

    .line 3375
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3376
    const/4 v1, 0x0

    .line 3377
    invoke-direct {p0, v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    .line 3378
    goto :goto_7

    .line 3380
    :cond_3c
    instance-of v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_47

    .line 3381
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_49

    .line 3383
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_47
    const/4 v0, 0x0

    move-object v1, v0

    .line 3385
    :cond_49
    :goto_49
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_51

    .line 3386
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    goto :goto_60

    .line 3387
    :cond_51
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v0, v5

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, v3, :cond_60

    .line 3388
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3389
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "n":I
    .end local v5    # "i":I
    :cond_60
    :goto_60
    goto :goto_7

    .line 3372
    :cond_61
    :goto_61
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method
