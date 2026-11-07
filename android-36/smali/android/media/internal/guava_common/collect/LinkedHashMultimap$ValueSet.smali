.class final Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;
.super Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;
.source "LinkedHashMultimap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet<",
        "TV;>;",
        "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private blacklist firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private blacklist lastEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist modCount:I

.field private blacklist size:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;-><init>()V

    const/4 p1, 0x0

    .line 362
    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 363
    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 371
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    .line 372
    iput-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    .line 373
    iput-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 375
    invoke-static {p3, p1, p2}, Landroid/media/internal/guava_common/collect/Hashing;->closedTableSize(ID)I

    move-result p1

    .line 379
    new-array p1, p1, [Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 380
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1

    .line 354
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)I
    .registers 1

    .line 354
    iget p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return p0
.end method

.method private blacklist mask()I
    .registers 1

    .line 384
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private blacklist rehashIfNecessary()V
    .registers 7

    .line 492
    iget v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Landroid/media/internal/guava_common/collect/Hashing;->needsResizing(IID)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 494
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 496
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    add-int/lit8 v0, v0, -0x1

    .line 498
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_1a
    if-eq v2, p0, :cond_2d

    .line 501
    move-object v3, v2

    check-cast v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 502
    iget v4, v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    and-int/2addr v4, v0

    .line 503
    aget-object v5, v1, v4

    iput-object v5, v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 504
    aput-object v3, v1, v4

    .line 500
    invoke-interface {v2}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    goto :goto_1a

    :cond_2d
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 470
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 471
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 472
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_e
    if-eqz v3, :cond_1b

    .line 474
    invoke-virtual {v3, p1, v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p0, 0x0

    return p0

    .line 473
    :cond_18
    iget-object v3, v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_e

    .line 479
    :cond_1b
    new-instance v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v4, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 480
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {p1, v3}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$200(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 481
    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v3, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$200(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 482
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$300(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {p1, v3}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$400(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 483
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$300(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v3, p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$400(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 484
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v3, p1, v1

    .line 485
    iget p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 486
    iget p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 487
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->rehashIfNecessary()V

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 537
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 538
    iput v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 539
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_b
    if-eq v0, p0, :cond_18

    .line 542
    move-object v1, v0

    check-cast v1, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 543
    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->deleteFromMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$600(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 541
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_b

    .line 545
    :cond_18
    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {p0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$200(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 546
    iget v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 457
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 458
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result p0

    and-int/2addr p0, v0

    aget-object p0, v1, p0

    :goto_d
    if-eqz p0, :cond_1a

    .line 461
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 460
    :cond_17
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_d

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getPredecessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 389
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method public blacklist getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 394
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;-><init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 512
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 513
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 515
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_3b

    .line 518
    invoke-virtual {v2, p1, v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v3, :cond_1f

    .line 521
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v0, v2, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v0, p1, v1

    goto :goto_23

    .line 523
    :cond_1f
    iget-object p1, v2, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, v3, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 525
    :goto_23
    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->deleteFromValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v2}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$500(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 526
    # invokes: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->deleteFromMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v2}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$600(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 527
    iget p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 528
    iget p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return v0

    .line 517
    :cond_35
    iget-object v3, v2, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setPredecessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public blacklist setSuccessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 452
    iget p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->size:I

    return p0
.end method
