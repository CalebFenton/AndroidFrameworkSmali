.class public final Landroid/hardware/camera2/params/BlackLevelPattern;
.super Ljava/lang/Object;
.source "BlackLevelPattern.java"


# static fields
.field public static final COUNT:I = 0x4


# instance fields
.field private final mCfaOffsets:[I


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "offsets"    # [I

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    if-nez p1, :cond_0

    #@6
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "Null offsets array passed to constructor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 51
    :cond_0
    array-length v0, p1

    #@10
    if-ge v0, v1, :cond_1

    #@12
    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Invalid offsets array length"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 54
    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@21
    .line 47
    return-void
.end method


# virtual methods
.method public copyTo([II)V
    .locals 4
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 87
    const-string/jumbo v1, "destination must not be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 88
    if-gez p2, :cond_0

    #@9
    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Null offset passed to copyTo"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 91
    :cond_0
    array-length v1, p1

    #@13
    sub-int/2addr v1, p2

    #@14
    if-ge v1, v3, :cond_1

    #@16
    .line 92
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@18
    const-string/jumbo v2, "destination too small to fit elements"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 94
    :cond_1
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@22
    .line 95
    add-int v1, p2, v0

    #@24
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@26
    aget v2, v2, v0

    #@28
    aput v2, p1, v1

    #@2a
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 86
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 108
    if-nez p1, :cond_0

    #@3
    .line 109
    return v2

    #@4
    .line 110
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 111
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 112
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 113
    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    #@f
    .line 114
    .local v0, "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    iget-object v1, v0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@11
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@13
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 116
    .end local v0    # "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    :cond_2
    return v2
.end method

.method public getOffsetForIndex(II)I
    .locals 3
    .param p1, "column"    # I
    .param p2, "row"    # I

    #@0
    .prologue
    .line 67
    if-ltz p2, :cond_0

    #@2
    if-gez p1, :cond_1

    #@4
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "column, row arguments must be positive"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 70
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@f
    and-int/lit8 v1, p2, 0x1

    #@11
    shl-int/lit8 v1, v1, 0x1

    #@13
    and-int/lit8 v2, p1, 0x1

    #@15
    or-int/2addr v1, v2

    #@16
    aget v0, v0, v1

    #@18
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 142
    const-string/jumbo v0, "BlackLevelPattern([%d, %d], [%d, %d])"

    #@7
    const/4 v1, 0x4

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@c
    aget v2, v2, v3

    #@e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v1, v3

    #@14
    .line 143
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@16
    aget v2, v2, v4

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v4

    #@1e
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@20
    aget v2, v2, v5

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v1, v5

    #@28
    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    #@2a
    aget v2, v2, v6

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v1, v6

    #@32
    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
