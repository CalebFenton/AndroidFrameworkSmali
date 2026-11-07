.class public Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;
    }
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
.field blacklist alternatingKeysAndValues:[Ljava/lang/Object;

.field blacklist duplicateKey:Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

.field blacklist entriesUsed:Z

.field blacklist size:I

.field blacklist valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 451
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 456
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 457
    iput p1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    .line 458
    iput-boolean p1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->entriesUsed:Z

    return-void
.end method

.method private blacklist build(Z)Landroid/media/internal/guava_common/collect/ImmutableMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 562
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->duplicateKey:Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v0, :cond_7

    goto :goto_c

    .line 563
    :cond_7
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 575
    :cond_c
    :goto_c
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    .line 576
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 577
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    goto :goto_3b

    .line 579
    :cond_16
    iget-boolean v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v1, :cond_24

    .line 580
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 582
    :cond_24
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    if-nez p1, :cond_36

    .line 586
    iget v3, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    invoke-direct {p0, v1, v3}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->lastEntryForEachKey([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 587
    array-length v3, v1

    iget-object v4, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_36

    .line 588
    array-length v0, v1

    ushr-int/2addr v0, v2

    .line 591
    :cond_36
    iget-object v3, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v1, v0, v3}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->sortEntries([Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 593
    :goto_3b
    iput-boolean v2, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 595
    invoke-static {v0, v1, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;)Landroid/media/internal/guava_common/collect/RegularImmutableMap;

    move-result-object v0

    if-eqz p1, :cond_4d

    .line 596
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->duplicateKey:Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez p0, :cond_48

    goto :goto_4d

    .line 597
    :cond_48
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method private blacklist ensureCapacity(I)V
    .registers 4

    mul-int/lit8 p1, p1, 0x2

    .line 462
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_15

    .line 463
    array-length v1, v0

    .line 466
    invoke-static {v1, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 464
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 468
    iput-boolean p1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->entriesUsed:Z

    :cond_15
    return-void
.end method

.method private blacklist lastEntryForEachKey([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 9

    .line 672
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 673
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    add-int/lit8 v1, p2, -0x1

    :goto_c
    if-ltz v1, :cond_21

    mul-int/lit8 v2, v1, 0x2

    .line 675
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 677
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 680
    :cond_21
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_28

    return-object p1

    .line 683
    :cond_28
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    sub-int p0, p2, p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_34
    mul-int/lit8 v3, p2, 0x2

    if-ge v1, v3, :cond_5a

    ushr-int/lit8 v3, v1, 0x1

    .line 685
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v1, v1, 0x2

    goto :goto_34

    :cond_43
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 688
    aget-object v5, p1, v1

    .line 689
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v5, p0, v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 690
    aget-object v4, p1, v4

    .line 691
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v4, p0, v3

    goto :goto_34

    :cond_5a
    return-object p0
.end method

.method static blacklist sortEntries([Ljava/lang/Object;ILjava/util/Comparator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 654
    new-array v0, p1, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_1e

    mul-int/lit8 v3, v2, 0x2

    .line 657
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    .line 659
    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 663
    :cond_1e
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/Ordering;->from(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p2

    invoke-static {}, Landroid/media/internal/guava_common/collect/Maps;->valueFunction()Landroid/media/internal/guava_common/base/Function;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/media/internal/guava_common/collect/Ordering;->onResultOf(Landroid/media/internal/guava_common/base/Function;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p2

    .line 662
    invoke-static {v0, v1, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_2d
    if-ge v1, p1, :cond_46

    mul-int/lit8 p2, v1, 0x2

    .line 665
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    .line 666
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_46
    return-void
.end method


# virtual methods
.method public blacklist buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->build(Z)Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/media/internal/guava_common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 479
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 480
    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 482
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 483
    iput v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    return-object p0
.end method
