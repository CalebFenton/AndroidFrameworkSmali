.class public Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;
.super Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist hashCode:I

.field blacklist hashTable:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 469
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    return-void
.end method

.method private blacklist addDeduping(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 527
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result v2

    :goto_12
    and-int/2addr v2, v0

    .line 529
    iget-object v3, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_24

    .line 531
    aput-object p1, v3, v2

    .line 532
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashCode:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashCode:I

    .line 533
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;

    return-void

    .line 535
    :cond_24
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-void

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 491
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_16

    .line 493
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->addDeduping(Ljava/lang/Object;)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 497
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;

    return-object p0
.end method

.method public varargs blacklist add([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 514
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 515
    invoke-virtual {p0, v2}, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-object p0

    .line 518
    :cond_11
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableCollection$Builder;

    return-object p0
.end method
