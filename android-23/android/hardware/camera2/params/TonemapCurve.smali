.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final CHANNEL_BLUE:I = 0x2

.field public static final CHANNEL_GREEN:I = 0x1

.field public static final CHANNEL_RED:I = 0x0

.field public static final LEVEL_BLACK:F = 0.0f

.field public static final LEVEL_WHITE:F = 1.0f

.field private static final MIN_CURVE_LENGTH:I = 0x4

.field private static final OFFSET_POINT_IN:I = 0x0

.field private static final OFFSET_POINT_OUT:I = 0x1

.field public static final POINT_SIZE:I = 0x2

.field private static final TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final mBlue:[F

.field private final mGreen:[F

.field private mHashCalculated:Z

.field private mHashCode:I

.field private final mRed:[F


# direct methods
.method public constructor <init>([F[F[F)V
    .locals 5
    .param p1, "red"    # [F
    .param p2, "green"    # [F
    .param p3, "blue"    # [F

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x2

    #@2
    const/high16 v2, 0x3f800000    # 1.0f

    #@4
    const/4 v1, 0x0

    #@5
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 350
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    #@b
    .line 106
    const-string/jumbo v0, "red must not be null"

    #@e
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 107
    const-string/jumbo v0, "green must not be null"

    #@14
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 108
    const-string/jumbo v0, "blue must not be null"

    #@1a
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 110
    const-string/jumbo v0, "red"

    #@20
    invoke-static {p1, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    #@23
    .line 111
    const-string/jumbo v0, "green"

    #@26
    invoke-static {p2, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    #@29
    .line 112
    const-string/jumbo v0, "blue"

    #@2c
    invoke-static {p3, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    #@2f
    .line 114
    const-string/jumbo v0, "red"

    #@32
    invoke-static {p1, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    #@35
    .line 115
    const-string/jumbo v0, "green"

    #@38
    invoke-static {p2, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    #@3b
    .line 116
    const-string/jumbo v0, "blue"

    #@3e
    invoke-static {p3, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    #@41
    .line 118
    const-string/jumbo v0, "red"

    #@44
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    #@47
    .line 119
    const-string/jumbo v0, "green"

    #@4a
    invoke-static {p2, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    #@4d
    .line 120
    const-string/jumbo v0, "blue"

    #@50
    invoke-static {p3, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    #@53
    .line 122
    array-length v0, p1

    #@54
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    #@5a
    .line 123
    array-length v0, p2

    #@5b
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    #@61
    .line 124
    array-length v0, p3

    #@62
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    #@65
    move-result-object v0

    #@66
    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    #@68
    .line 103
    return-void
.end method

.method private static checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .locals 3
    .param p0, "array"    # [F
    .param p1, "divisible"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    array-length v0, p0

    #@1
    rem-int/2addr v0, p1

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " size must be divisible by "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 128
    :cond_0
    return-void
.end method

.method private static checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .locals 3
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    array-length v0, p0

    #@1
    if-ge v0, p1, :cond_0

    #@3
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " size must be at least "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 149
    :cond_0
    return-void
.end method

.method private static checkArgumentColorChannel(I)I
    .locals 2
    .param p0, "colorChannel"    # I

    #@0
    .prologue
    .line 136
    packed-switch p0, :pswitch_data_0

    #@3
    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "colorChannel out of range"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 145
    :pswitch_0
    return p0

    #@d
    .line 136
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private curveToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "colorChannel"    # I

    #@0
    .prologue
    .line 310
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    #@3
    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    const-string/jumbo v5, "["

    #@8
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    .line 312
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    #@e
    move-result-object v0

    #@f
    .line 313
    .local v0, "curve":[F
    array-length v5, v0

    #@10
    div-int/lit8 v3, v5, 0x2

    #@12
    .line 314
    .local v3, "pointCount":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    const/4 v2, 0x0

    #@14
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@16
    .line 315
    const-string/jumbo v5, "("

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 316
    aget v5, v0, v2

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@21
    .line 317
    const-string/jumbo v5, ", "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 318
    add-int/lit8 v5, v2, 0x1

    #@29
    aget v5, v0, v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2e
    .line 319
    const-string/jumbo v5, "), "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 314
    add-int/lit8 v1, v1, 0x1

    #@36
    add-int/lit8 v2, v2, 0x2

    #@38
    goto :goto_0

    #@39
    .line 322
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@3c
    move-result v5

    #@3d
    add-int/lit8 v5, v5, -0x2

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@42
    .line 323
    const-string/jumbo v5, "]"

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    return-object v5
.end method

.method private getCurve(I)[F
    .locals 2
    .param p1, "colorChannel"    # I

    #@0
    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    #@3
    .line 336
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string/jumbo v1, "colorChannel out of range"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v0

    #@c
    .line 330
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    #@e
    return-object v0

    #@f
    .line 332
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    #@11
    return-object v0

    #@12
    .line 334
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    #@14
    return-object v0

    #@15
    .line 328
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public copyColorCurve(I[FI)V
    .locals 3
    .param p1, "colorChannel"    # I
    .param p2, "destination"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 234
    const-string/jumbo v1, "offset must not be negative"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@6
    .line 235
    const-string/jumbo v1, "destination must not be null"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 237
    array-length v1, p2

    #@d
    add-int/2addr v1, p3

    #@e
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    #@11
    move-result v2

    #@12
    mul-int/lit8 v2, v2, 0x2

    #@14
    if-ge v1, v2, :cond_0

    #@16
    .line 238
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@18
    const-string/jumbo v2, "destination too small to fit elements"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 241
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    #@22
    move-result-object v0

    #@23
    .line 242
    .local v0, "curve":[F
    array-length v1, v0

    #@24
    const/4 v2, 0x0

    #@25
    invoke-static {v0, v2, p2, p3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@28
    .line 233
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 255
    if-nez p1, :cond_0

    #@3
    .line 256
    return v1

    #@4
    .line 258
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 259
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 261
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 262
    check-cast v0, Landroid/hardware/camera2/params/TonemapCurve;

    #@f
    .line 263
    .local v0, "other":Landroid/hardware/camera2/params/TonemapCurve;
    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    #@11
    iget-object v3, v0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    #@13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 264
    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    #@1b
    iget-object v3, v0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    #@1d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    #@20
    move-result v2

    #@21
    .line 263
    if-eqz v2, :cond_2

    #@23
    .line 265
    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    #@25
    iget-object v2, v0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    #@27
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    #@2a
    move-result v1

    #@2b
    .line 263
    :cond_2
    return v1

    #@2c
    .line 267
    .end local v0    # "other":Landroid/hardware/camera2/params/TonemapCurve;
    :cond_3
    return v1
.end method

.method public getPoint(II)Landroid/graphics/PointF;
    .locals 5
    .param p1, "colorChannel"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 189
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    #@3
    .line 190
    if-ltz p2, :cond_0

    #@5
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    #@8
    move-result v3

    #@9
    if-lt p2, v3, :cond_1

    #@b
    .line 191
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "index out of range"

    #@10
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 194
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    #@17
    move-result-object v0

    #@18
    .line 196
    .local v0, "curve":[F
    mul-int/lit8 v3, p2, 0x2

    #@1a
    add-int/lit8 v3, v3, 0x0

    #@1c
    aget v1, v0, v3

    #@1e
    .line 197
    .local v1, "pIn":F
    mul-int/lit8 v3, p2, 0x2

    #@20
    add-int/lit8 v3, v3, 0x1

    #@22
    aget v2, v0, v3

    #@24
    .line 199
    .local v2, "pOut":F
    new-instance v3, Landroid/graphics/PointF;

    #@26
    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    #@29
    return-object v3
.end method

.method public getPointCount(I)I
    .locals 1
    .param p1, "colorChannel"    # I

    #@0
    .prologue
    .line 165
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    #@3
    .line 167
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    #@6
    move-result-object v0

    #@7
    array-length v0, v0

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 275
    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 277
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    #@7
    return v0

    #@8
    .line 280
    :cond_0
    const/4 v0, 0x3

    #@9
    new-array v0, v0, [[F

    #@b
    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    #@12
    aput-object v1, v0, v3

    #@14
    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    #@16
    const/4 v2, 0x2

    #@17
    aput-object v1, v0, v2

    #@19
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    #@1f
    .line 281
    iput-boolean v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    #@21
    .line 283
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    #@23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "TonemapCurve{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "R:"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 300
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 301
    const-string/jumbo v1, ", G:"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 302
    const/4 v1, 0x1

    #@1d
    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 303
    const-string/jumbo v1, ", B:"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 304
    const/4 v1, 0x2

    #@2b
    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 305
    const-string/jumbo v1, "}"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method
