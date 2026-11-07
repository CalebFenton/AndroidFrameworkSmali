.class final Landroid/media/internal/guava_common/collect/CompactHashing;
.super Ljava/lang/Object;
.source "CompactHashing.java"


# direct methods
.method static blacklist createTable(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1e

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1e

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_1e

    const/16 v0, 0x100

    if-gt p0, v0, :cond_14

    .line 83
    new-array p0, p0, [B

    return-object p0

    :cond_14
    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_1b

    .line 85
    new-array p0, p0, [S

    return-object p0

    .line 87
    :cond_1b
    new-array p0, p0, [I

    return-object p0

    .line 80
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must be power of 2 between 2^1 and 2^30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getHashPrefix(II)I
    .registers 2

    .line 0
    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method static blacklist getNext(II)I
    .registers 2

    .line 0
    and-int/2addr p0, p1

    return p0
.end method

.method static blacklist maskCombine(III)I
    .registers 4

    .line 0
    not-int v0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static blacklist newCapacity(I)I
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    const/4 v0, 0x4

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    add-int/lit8 p0, p0, 0x1

    mul-int/2addr v0, p0

    return v0
.end method

.method static blacklist remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 15
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 167
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, p2

    .line 169
    invoke-static {p3, v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    .line 173
    :cond_e
    invoke-static {v0, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v0

    move v4, v3

    :goto_13
    add-int/lit8 v2, v2, -0x1

    .line 177
    aget v5, p4, v2

    .line 178
    invoke-static {v5, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v6

    if-ne v6, v0, :cond_42

    aget-object v6, p5, v2

    .line 179
    invoke-static {p0, v6}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    if-eqz p6, :cond_2f

    aget-object v6, p6, v2

    .line 180
    invoke-static {p1, v6}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 181
    :cond_2f
    invoke-static {v5, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result p0

    if-ne v4, v3, :cond_39

    .line 184
    invoke-static {p3, v1, p0}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    return v2

    .line 187
    :cond_39
    aget p1, p4, v4

    invoke-static {p1, p0, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p0

    aput p0, p4, v4

    return v2

    .line 193
    :cond_42
    invoke-static {v5, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v4

    if-nez v4, :cond_49

    return v3

    :cond_49
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_13
.end method

.method static blacklist tableClear(Ljava/lang/Object;)V
    .registers 3

    .line 92
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 93
    check-cast p0, [B

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 94
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_15

    .line 95
    check-cast p0, [S

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([SS)V

    return-void

    .line 97
    :cond_15
    check-cast p0, [I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method static blacklist tableGet(Ljava/lang/Object;I)I
    .registers 3

    .line 107
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 108
    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 109
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_18

    .line 110
    check-cast p0, [S

    aget-short p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 112
    :cond_18
    check-cast p0, [I

    aget p0, p0, p1

    return p0
.end method

.method static blacklist tableSet(Ljava/lang/Object;II)V
    .registers 4

    .line 124
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 125
    check-cast p0, [B

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void

    .line 126
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_14

    .line 127
    check-cast p0, [S

    int-to-short p2, p2

    aput-short p2, p0, p1

    return-void

    .line 129
    :cond_14
    check-cast p0, [I

    aput p2, p0, p1

    return-void
.end method

.method static blacklist tableSize(I)I
    .registers 3

    add-int/lit8 p0, p0, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 72
    invoke-static {p0, v0, v1}, Landroid/media/internal/guava_common/collect/Hashing;->closedTableSize(ID)I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
