.class final Landroid/media/internal/guava_common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method static blacklist closedTableSize(ID)I
    .registers 6

    const/4 v0, 0x2

    .line 63
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v1, v0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    if-le p0, p1, :cond_16

    shl-int/lit8 p0, v0, 0x1

    if-lez p0, :cond_13

    return p0

    :cond_13
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_16
    return v0
.end method

.method static blacklist needsResizing(IID)Z
    .registers 8

    .line 0
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_d

    const/high16 p0, 0x40000000    # 2.0f

    if-ge p1, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist smear(I)I
    .registers 5

    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    .line 51
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method static blacklist smearedHash(Ljava/lang/Object;)I
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 55
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result p0

    return p0
.end method
