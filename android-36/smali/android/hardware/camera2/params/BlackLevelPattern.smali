.class public final Landroid/hardware/camera2/params/BlackLevelPattern;
.super Ljava/lang/Object;
.source "BlackLevelPattern.java"


# static fields
.field public static final whitelist COUNT:I = 0x4


# instance fields
.field private final greylist-max-o mCfaOffsets:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .registers 4
    .param p1, "offsets"    # [I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_18

    .line 60
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    .line 63
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 64
    return-void

    .line 61
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offsets array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null offsets array passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist copyTo([II)V
    .registers 7
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    .line 96
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    if-ltz p2, :cond_23

    .line 100
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1a

    .line 104
    add-int v2, p2, v0

    iget-object v3, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    aget v3, v3, v0

    aput v3, p1, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 106
    .end local v0    # "i":I
    :cond_1a
    return-void

    .line 101
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null offset passed to copyTo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 118
    return v0

    .line 119
    :cond_4
    if-ne p0, p1, :cond_8

    .line 120
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_18

    .line 122
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 123
    .local v0, "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    iget-object v1, v0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 125
    .end local v0    # "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    :cond_18
    return v0
.end method

.method public whitelist getOffsetForIndex(II)I
    .registers 6
    .param p1, "column"    # I
    .param p2, "row"    # I

    .line 76
    if-ltz p2, :cond_10

    if-ltz p1, :cond_10

    .line 79
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    and-int/lit8 v1, p2, 0x1

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p1, 0x1

    or-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 77
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column, row arguments must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 157
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 157
    const-string v1, "BlackLevelPattern([%d, %d], [%d, %d])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
