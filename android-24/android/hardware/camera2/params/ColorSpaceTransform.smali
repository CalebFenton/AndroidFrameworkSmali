.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final COUNT:I = 0x9

.field private static final COUNT_INT:I = 0x12

.field private static final OFFSET_DENOMINATOR:I = 0x1

.field private static final OFFSET_NUMERATOR:I = 0x0

.field private static final RATIONAL_SIZE:I = 0x2

.field private static final ROWS:I = 0x3


# instance fields
.field private final mElements:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3
    .param p1, "elements"    # [I

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    const-string/jumbo v1, "elements must not be null"

    #@6
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 114
    array-length v1, p1

    #@a
    const/16 v2, 0x12

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "elements must be 18 length"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 118
    :cond_0
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "element "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, " must not be null"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 118
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 122
    :cond_1
    array-length v1, p1

    #@3d
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@40
    move-result-object v1

    #@41
    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@43
    .line 112
    return-void
.end method

.method public constructor <init>([Landroid/util/Rational;)V
    .locals 4
    .param p1, "elements"    # [Landroid/util/Rational;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    const-string/jumbo v1, "elements must not be null"

    #@6
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 74
    array-length v1, p1

    #@a
    const/16 v2, 0x9

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "elements must be 9 length"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 78
    :cond_0
    const/16 v1, 0x12

    #@19
    new-array v1, v1, [I

    #@1b
    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@1d
    .line 80
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@1f
    if-ge v0, v1, :cond_1

    #@21
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "element["

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "] must not be null"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 82
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@41
    mul-int/lit8 v2, v0, 0x2

    #@43
    add-int/lit8 v2, v2, 0x0

    #@45
    aget-object v3, p1, v0

    #@47
    invoke-virtual {v3}, Landroid/util/Rational;->getNumerator()I

    #@4a
    move-result v3

    #@4b
    aput v3, v1, v2

    #@4d
    .line 83
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@4f
    mul-int/lit8 v2, v0, 0x2

    #@51
    add-int/lit8 v2, v2, 0x1

    #@53
    aget-object v3, p1, v0

    #@55
    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    #@58
    move-result v3

    #@59
    aput v3, v1, v2

    #@5b
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 71
    :cond_1
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v6, "("

    #@7
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 277
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@b
    .local v4, "row":I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    #@e
    .line 278
    const-string/jumbo v6, "["

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 279
    const/4 v0, 0x0

    #@15
    .local v0, "col":I
    :goto_1
    if-ge v0, v9, :cond_1

    #@17
    .line 280
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@19
    add-int/lit8 v7, v2, 0x0

    #@1b
    aget v3, v6, v7

    #@1d
    .line 281
    .local v3, "numerator":I
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@1f
    add-int/lit8 v7, v2, 0x1

    #@21
    aget v1, v6, v7

    #@23
    .line 282
    .local v1, "denominator":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 283
    const-string/jumbo v6, "/"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 284
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 285
    if-ge v0, v8, :cond_0

    #@31
    .line 286
    const-string/jumbo v6, ", "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@39
    add-int/lit8 v2, v2, 0x2

    #@3b
    goto :goto_1

    #@3c
    .line 289
    .end local v1    # "denominator":I
    .end local v3    # "numerator":I
    :cond_1
    const-string/jumbo v6, "]"

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 290
    if-ge v4, v8, :cond_2

    #@44
    .line 291
    const-string/jumbo v6, ", "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 277
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 294
    .end local v0    # "col":I
    :cond_3
    const-string/jumbo v6, ")"

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    return-object v6
.end method


# virtual methods
.method public copyElements([II)V
    .locals 4
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/16 v3, 0x12

    #@2
    .line 198
    const-string/jumbo v1, "offset must not be negative"

    #@5
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@8
    .line 199
    const-string/jumbo v1, "destination must not be null"

    #@b
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 200
    array-length v1, p1

    #@f
    sub-int/2addr v1, p2

    #@10
    if-ge v1, v3, :cond_0

    #@12
    .line 201
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    const-string/jumbo v2, "destination too small to fit elements"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 205
    :cond_0
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@1e
    .line 206
    add-int v1, v0, p2

    #@20
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@22
    aget v2, v2, v0

    #@24
    aput v2, p1, v1

    #@26
    .line 205
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 197
    :cond_1
    return-void
.end method

.method public copyElements([Landroid/util/Rational;I)V
    .locals 7
    .param p1, "destination"    # [Landroid/util/Rational;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/16 v6, 0x9

    #@2
    .line 163
    const-string/jumbo v4, "offset must not be negative"

    #@5
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@8
    .line 164
    const-string/jumbo v4, "destination must not be null"

    #@b
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 165
    array-length v4, p1

    #@f
    sub-int/2addr v4, p2

    #@10
    if-ge v4, v6, :cond_0

    #@12
    .line 166
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    const-string/jumbo v5, "destination too small to fit elements"

    #@17
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v4

    #@1b
    .line 169
    :cond_0
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    const/4 v2, 0x0

    #@1d
    .local v2, "j":I
    :goto_0
    if-ge v1, v6, :cond_1

    #@1f
    .line 170
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@21
    add-int/lit8 v5, v2, 0x0

    #@23
    aget v3, v4, v5

    #@25
    .line 171
    .local v3, "numerator":I
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@27
    add-int/lit8 v5, v2, 0x1

    #@29
    aget v0, v4, v5

    #@2b
    .line 173
    .local v0, "denominator":I
    add-int v4, v1, p2

    #@2d
    new-instance v5, Landroid/util/Rational;

    #@2f
    invoke-direct {v5, v3, v0}, Landroid/util/Rational;-><init>(II)V

    #@32
    aput-object v5, p1, v4

    #@34
    .line 169
    add-int/lit8 v1, v1, 0x1

    #@36
    add-int/lit8 v2, v2, 0x2

    #@38
    goto :goto_0

    #@39
    .line 162
    .end local v0    # "denominator":I
    .end local v3    # "numerator":I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 220
    if-nez p1, :cond_0

    #@4
    .line 221
    return v11

    #@5
    .line 223
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 224
    return v12

    #@8
    .line 226
    :cond_1
    instance-of v9, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@a
    if-eqz v9, :cond_4

    #@c
    move-object v6, p1

    #@d
    .line 227
    check-cast v6, Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@f
    .line 228
    .local v6, "other":Landroid/hardware/camera2/params/ColorSpaceTransform;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    const/4 v3, 0x0

    #@11
    .local v3, "j":I
    :goto_0
    const/16 v9, 0x9

    #@13
    if-ge v2, v9, :cond_3

    #@15
    .line 229
    iget-object v9, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@17
    add-int/lit8 v10, v3, 0x0

    #@19
    aget v4, v9, v10

    #@1b
    .line 230
    .local v4, "numerator":I
    iget-object v9, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@1d
    add-int/lit8 v10, v3, 0x1

    #@1f
    aget v0, v9, v10

    #@21
    .line 231
    .local v0, "denominator":I
    iget-object v9, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@23
    add-int/lit8 v10, v3, 0x0

    #@25
    aget v5, v9, v10

    #@27
    .line 232
    .local v5, "numeratorOther":I
    iget-object v9, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@29
    add-int/lit8 v10, v3, 0x1

    #@2b
    aget v1, v9, v10

    #@2d
    .line 233
    .local v1, "denominatorOther":I
    new-instance v7, Landroid/util/Rational;

    #@2f
    invoke-direct {v7, v4, v0}, Landroid/util/Rational;-><init>(II)V

    #@32
    .line 234
    .local v7, "r":Landroid/util/Rational;
    new-instance v8, Landroid/util/Rational;

    #@34
    invoke-direct {v8, v5, v1}, Landroid/util/Rational;-><init>(II)V

    #@37
    .line 235
    .local v8, "rOther":Landroid/util/Rational;
    invoke-virtual {v7, v8}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v9

    #@3b
    if-nez v9, :cond_2

    #@3d
    .line 236
    return v11

    #@3e
    .line 228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@40
    add-int/lit8 v3, v3, 0x2

    #@42
    goto :goto_0

    #@43
    .line 239
    .end local v0    # "denominator":I
    .end local v1    # "denominatorOther":I
    .end local v4    # "numerator":I
    .end local v5    # "numeratorOther":I
    .end local v7    # "r":Landroid/util/Rational;
    .end local v8    # "rOther":Landroid/util/Rational;
    :cond_3
    return v12

    #@44
    .line 241
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v6    # "other":Landroid/hardware/camera2/params/ColorSpaceTransform;
    :cond_4
    return v11
.end method

.method public getElement(II)Landroid/util/Rational;
    .locals 4
    .param p1, "column"    # I
    .param p2, "row"    # I

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 136
    if-ltz p1, :cond_0

    #@3
    if-lt p1, v2, :cond_1

    #@5
    .line 137
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "column out of range"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 138
    :cond_1
    if-ltz p2, :cond_2

    #@10
    if-lt p2, v2, :cond_3

    #@12
    .line 139
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "row out of range"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 142
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@1d
    mul-int/lit8 v3, p2, 0x3

    #@1f
    add-int/2addr v3, p1

    #@20
    mul-int/lit8 v3, v3, 0x2

    #@22
    add-int/lit8 v3, v3, 0x0

    #@24
    aget v1, v2, v3

    #@26
    .line 143
    .local v1, "numerator":I
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@28
    mul-int/lit8 v3, p2, 0x3

    #@2a
    add-int/2addr v3, p1

    #@2b
    mul-int/lit8 v3, v3, 0x2

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    aget v0, v2, v3

    #@31
    .line 145
    .local v0, "denominator":I
    new-instance v2, Landroid/util/Rational;

    #@33
    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    #@36
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, "ColorSpaceTransform%s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
