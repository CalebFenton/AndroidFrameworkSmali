.class final Ljava/util/ImmutableCollections$SubList;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist offset:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist root:Ljava/util/ImmutableCollections$AbstractImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$AbstractImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 441
    const-class v0, Ljava/util/ImmutableCollections;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ImmutableCollections$AbstractImmutableList;II)V
    .registers 4
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ImmutableCollections$AbstractImmutableList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    .local p1, "root":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 454
    nop

    .line 455
    iput-object p1, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/ImmutableCollections$AbstractImmutableList;

    .line 456
    iput p2, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    .line 457
    iput p3, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    .line 458
    return-void
.end method

.method private blacklist allowNulls()Z
    .registers 2

    .line 505
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/ImmutableCollections$AbstractImmutableList;

    instance-of v0, v0, Ljava/util/ImmutableCollections$ListN;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/ImmutableCollections$AbstractImmutableList;

    check-cast v0, Ljava/util/ImmutableCollections$ListN;

    invoke-static {v0}, Ljava/util/ImmutableCollections$ListN;->-$$Nest$fgetallowNulls(Ljava/util/ImmutableCollections$ListN;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static blacklist fromList(Ljava/util/ImmutableCollections$AbstractImmutableList;II)Ljava/util/ImmutableCollections$SubList;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ImmutableCollections$AbstractImmutableList<",
            "TE;>;II)",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 472
    .local p0, "list":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SubList;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/ImmutableCollections$SubList;-><init>(Ljava/util/ImmutableCollections$AbstractImmutableList;II)V

    return-object v0
.end method

.method static blacklist fromSubList(Ljava/util/ImmutableCollections$SubList;II)Ljava/util/ImmutableCollections$SubList;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;II)",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 464
    .local p0, "parent":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SubList;

    iget-object v1, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/ImmutableCollections$AbstractImmutableList;

    iget v2, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/ImmutableCollections$SubList;-><init>(Ljava/util/ImmutableCollections$AbstractImmutableList;II)V

    return-object v0
.end method

.method private blacklist rangeCheck(I)V
    .registers 3
    .param p1, "index"    # I

    .line 499
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-gt p1, v0, :cond_7

    .line 502
    return-void

    .line 500
    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$SubList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 476
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 477
    iget-object v0, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/ImmutableCollections$AbstractImmutableList;

    iget v1, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 510
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$SubList;->allowNulls()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_9

    goto :goto_f

    .line 511
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 513
    :cond_f
    :goto_f
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_14
    if-ge v0, v1, :cond_24

    .line 514
    invoke-virtual {p0, v0}, Ljava/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 515
    return v0

    .line 513
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 518
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 523
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$SubList;->allowNulls()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_9

    goto :goto_f

    .line 524
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 526
    :cond_f
    :goto_f
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_25

    .line 527
    invoke-virtual {p0, v0}, Ljava/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 528
    return v0

    .line 526
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 531
    .end local v0    # "i":I
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$SubList;->rangeCheck(I)V

    .line 490
    new-instance v0, Ljava/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 481
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 494
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ImmutableCollections$SubList;->subListRangeCheck(III)V

    .line 495
    invoke-static {p0, p1, p2}, Ljava/util/ImmutableCollections$SubList;->fromSubList(Ljava/util/ImmutableCollections$SubList;II)Ljava/util/ImmutableCollections$SubList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 536
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 537
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-ge v1, v2, :cond_12

    .line 538
    invoke-virtual {p0, v1}, Ljava/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 540
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 546
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-lt v0, v1, :cond_7

    move-object v0, p1

    goto :goto_18

    .line 547
    :cond_7
    nop

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_18
    nop

    .line 549
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget v2, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-ge v1, v2, :cond_27

    .line 550
    invoke-virtual {p0, v1}, Ljava/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 552
    .end local v1    # "i":I
    :cond_27
    array-length v1, v0

    iget v2, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-le v1, v2, :cond_31

    .line 553
    iget v1, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 555
    :cond_31
    return-object v0
.end method
