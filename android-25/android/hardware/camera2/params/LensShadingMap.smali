.class public final Landroid/hardware/camera2/params/LensShadingMap;
.super Ljava/lang/Object;
.source "LensShadingMap.java"


# static fields
.field public static final MINIMUM_GAIN_FACTOR:F = 1.0f


# instance fields
.field private final mColumns:I

.field private final mElements:[F

.field private final mRows:I


# direct methods
.method public constructor <init>([FII)V
    .locals 3
    .param p1, "elements"    # [F
    .param p2, "rows"    # I
    .param p3, "columns"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const-string/jumbo v0, "rows must be positive"

    #@6
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@c
    .line 64
    const-string/jumbo v0, "columns must be positive"

    #@f
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@15
    .line 65
    const-string/jumbo v0, "elements must not be null"

    #@18
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, [F

    #@1e
    iput-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@20
    .line 67
    array-length v0, p1

    #@21
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    #@24
    move-result v1

    #@25
    if-eq v0, v1, :cond_0

    #@27
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "elements must be "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 69
    const-string/jumbo v2, " length, received "

    #@40
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 69
    array-length v2, p1

    #@45
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 73
    :cond_0
    const-string/jumbo v0, "elements"

    #@54
    const/high16 v1, 0x3f800000    # 1.0f

    #@56
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    #@59
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    #@5c
    .line 61
    return-void
.end method


# virtual methods
.method public copyGainFactors([FI)V
    .locals 3
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 197
    const-string/jumbo v0, "offset must not be negative"

    #@3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@6
    .line 198
    const-string/jumbo v0, "destination must not be null"

    #@9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 199
    array-length v0, p1

    #@d
    add-int/2addr v0, p2

    #@e
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    #@11
    move-result v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 200
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    const-string/jumbo v1, "destination too small to fit elements"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 203
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@1f
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    #@22
    move-result v1

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@27
    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    if-nez p1, :cond_0

    #@3
    .line 217
    return v1

    #@4
    .line 219
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 220
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 222
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/LensShadingMap;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 223
    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    #@f
    .line 224
    .local v0, "other":Landroid/hardware/camera2/params/LensShadingMap;
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@11
    iget v3, v0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@13
    if-ne v2, v3, :cond_2

    #@15
    .line 225
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@17
    iget v3, v0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    .line 226
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@1d
    iget-object v2, v0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    #@22
    move-result v1

    #@23
    .line 224
    :cond_2
    return v1

    #@24
    .line 228
    .end local v0    # "other":Landroid/hardware/camera2/params/LensShadingMap;
    :cond_3
    return v1
.end method

.method public getColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@2
    return v0
.end method

.method public getGainFactor(III)F
    .locals 2
    .param p1, "colorChannel"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I

    #@0
    .prologue
    .line 128
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "colorChannel out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 130
    :cond_1
    if-ltz p2, :cond_2

    #@10
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@12
    if-lt p2, v0, :cond_3

    #@14
    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "column out of range"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 132
    :cond_3
    if-ltz p3, :cond_4

    #@1f
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@21
    if-lt p3, v0, :cond_5

    #@23
    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "row out of range"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 136
    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@2e
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@30
    mul-int/2addr v1, p3

    #@31
    add-int/2addr v1, p2

    #@32
    mul-int/lit8 v1, v1, 0x4

    #@34
    add-int/2addr v1, p1

    #@35
    aget v0, v0, v1

    #@37
    return v0
.end method

.method public getGainFactorCount()I
    .locals 2

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@4
    mul-int/2addr v0, v1

    #@5
    mul-int/lit8 v0, v0, 0x4

    #@7
    return v0
.end method

.method public getGainFactorVector(II)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 7
    .param p1, "column"    # I
    .param p2, "row"    # I

    #@0
    .prologue
    .line 156
    if-ltz p1, :cond_0

    #@2
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@4
    if-lt p1, v5, :cond_1

    #@6
    .line 157
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v6, "column out of range"

    #@b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 158
    :cond_1
    if-ltz p2, :cond_2

    #@11
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@13
    if-lt p2, v5, :cond_3

    #@15
    .line 159
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v6, "row out of range"

    #@1a
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 162
    :cond_3
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@20
    mul-int/2addr v5, p2

    #@21
    add-int/2addr v5, p1

    #@22
    mul-int/lit8 v3, v5, 0x4

    #@24
    .line 165
    .local v3, "offset":I
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@26
    add-int/lit8 v6, v3, 0x0

    #@28
    .line 164
    aget v4, v5, v6

    #@2a
    .line 167
    .local v4, "red":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@2c
    add-int/lit8 v6, v3, 0x1

    #@2e
    .line 166
    aget v1, v5, v6

    #@30
    .line 169
    .local v1, "greenEven":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@32
    add-int/lit8 v6, v3, 0x2

    #@34
    .line 168
    aget v2, v5, v6

    #@36
    .line 171
    .local v2, "greenOdd":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@38
    add-int/lit8 v6, v3, 0x3

    #@3a
    .line 170
    aget v0, v5, v6

    #@3c
    .line 173
    .local v0, "blue":F
    new-instance v5, Landroid/hardware/camera2/params/RggbChannelVector;

    #@3e
    invoke-direct {v5, v4, v1, v2, v0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    #@41
    return-object v5
.end method

.method public getRowCount()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    #@2
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    #@5
    move-result v0

    #@6
    .line 237
    .local v0, "elemsHash":I
    const/4 v1, 0x3

    #@7
    new-array v1, v1, [I

    #@9
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@b
    const/4 v3, 0x0

    #@c
    aput v2, v1, v3

    #@e
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@10
    const/4 v3, 0x1

    #@11
    aput v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput v0, v1, v2

    #@16
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 254
    .local v5, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "LensShadingMap{"

    #@a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 256
    new-array v2, v9, [Ljava/lang/String;

    #@f
    const-string/jumbo v6, "R:("

    #@12
    const/4 v7, 0x0

    #@13
    aput-object v6, v2, v7

    #@15
    const-string/jumbo v6, "G_even:("

    #@18
    const/4 v7, 0x1

    #@19
    aput-object v6, v2, v7

    #@1b
    const-string/jumbo v6, "G_odd:("

    #@1e
    const/4 v7, 0x2

    #@1f
    aput-object v6, v2, v7

    #@21
    const-string/jumbo v6, "B:("

    #@24
    aput-object v6, v2, v8

    #@26
    .line 258
    .local v2, "channelPrefix":[Ljava/lang/String;
    const/4 v1, 0x0

    #@27
    .local v1, "ch":I
    :goto_0
    if-ge v1, v9, :cond_5

    #@29
    .line 259
    aget-object v6, v2, v1

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 261
    const/4 v4, 0x0

    #@2f
    .local v4, "r":I
    :goto_1
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@31
    if-ge v4, v6, :cond_3

    #@33
    .line 262
    const-string/jumbo v6, "["

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 263
    const/4 v0, 0x0

    #@3a
    .local v0, "c":I
    :goto_2
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@3c
    if-ge v0, v6, :cond_1

    #@3e
    .line 264
    invoke-virtual {p0, v1, v0, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    #@41
    move-result v3

    #@42
    .line 265
    .local v3, "gain":F
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    .line 266
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    #@47
    add-int/lit8 v6, v6, -0x1

    #@49
    if-ge v0, v6, :cond_0

    #@4b
    .line 267
    const-string/jumbo v6, ", "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_2

    #@54
    .line 270
    .end local v3    # "gain":F
    :cond_1
    const-string/jumbo v6, "]"

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 271
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    #@5c
    add-int/lit8 v6, v6, -0x1

    #@5e
    if-ge v4, v6, :cond_2

    #@60
    .line 272
    const-string/jumbo v6, ", "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 261
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_1

    #@69
    .line 276
    .end local v0    # "c":I
    :cond_3
    const-string/jumbo v6, ")"

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 277
    if-ge v1, v8, :cond_4

    #@71
    .line 278
    const-string/jumbo v6, ", "

    #@74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 258
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 282
    .end local v4    # "r":I
    :cond_5
    const-string/jumbo v6, "}"

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    return-object v6
.end method
