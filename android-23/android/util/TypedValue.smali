.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DATA_NULL_EMPTY:I = 0x1

.field public static final DATA_NULL_UNDEFINED:I = 0x0

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 205
    new-array v0, v6, [F

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    #@b
    .line 439
    const/4 v0, 0x6

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 440
    const-string/jumbo v1, "px"

    #@11
    aput-object v1, v0, v3

    #@13
    const-string/jumbo v1, "dip"

    #@16
    aput-object v1, v0, v4

    #@18
    const-string/jumbo v1, "sp"

    #@1b
    aput-object v1, v0, v5

    #@1d
    const-string/jumbo v1, "pt"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "in"

    #@26
    aput-object v1, v0, v6

    #@28
    const-string/jumbo v1, "mm"

    #@2b
    const/4 v2, 0x5

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 439
    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    #@30
    .line 442
    new-array v0, v5, [Ljava/lang/String;

    #@32
    .line 443
    const-string/jumbo v1, "%"

    #@35
    aput-object v1, v0, v3

    #@37
    const-string/jumbo v1, "%p"

    #@3a
    aput-object v1, v0, v4

    #@3c
    .line 442
    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    #@3e
    .line 25
    return-void

    #@3f
    .line 205
    nop

    #@40
    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    #@6
    .line 25
    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 345
    packed-switch p0, :pswitch_data_0

    #@3
    .line 359
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 347
    :pswitch_0
    return p1

    #@6
    .line 349
    :pswitch_1
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    #@8
    mul-float/2addr v0, p1

    #@9
    return v0

    #@a
    .line 351
    :pswitch_2
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@c
    mul-float/2addr v0, p1

    #@d
    return v0

    #@e
    .line 353
    :pswitch_3
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    #@10
    mul-float/2addr v0, p1

    #@11
    const v1, 0x3c638e39

    #@14
    mul-float/2addr v0, v1

    #@15
    return v0

    #@16
    .line 355
    :pswitch_4
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    #@18
    mul-float/2addr v0, p1

    #@19
    return v0

    #@1a
    .line 357
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    #@1c
    mul-float/2addr v0, p1

    #@1d
    const v1, 0x3d214285

    #@20
    mul-float/2addr v0, v1

    #@21
    return v0

    #@22
    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "data"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x1f

    #@3
    .line 458
    packed-switch p0, :pswitch_data_0

    #@6
    .line 479
    :pswitch_0
    const/16 v0, 0x1c

    #@8
    if-lt p0, v0, :cond_1

    #@a
    if-gt p0, v1, :cond_1

    #@c
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "#"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 460
    :pswitch_1
    return-object v2

    #@26
    .line 462
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "@"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 464
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "?"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    return-object v0

    #@50
    .line 466
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@53
    move-result v0

    #@54
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    return-object v0

    #@59
    .line 468
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@61
    move-result v1

    #@62
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    #@6c
    .line 469
    shr-int/lit8 v2, p1, 0x0

    #@6e
    and-int/lit8 v2, v2, 0xf

    #@70
    .line 468
    aget-object v1, v1, v2

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    return-object v0

    #@7b
    .line 471
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@83
    move-result v1

    #@84
    const/high16 v2, 0x42c80000    # 100.0f

    #@86
    mul-float/2addr v1, v2

    #@87
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    #@91
    .line 472
    shr-int/lit8 v2, p1, 0x0

    #@93
    and-int/lit8 v2, v2, 0xf

    #@95
    .line 471
    aget-object v1, v1, v2

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    return-object v0

    #@a0
    .line 474
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v1, "0x"

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    return-object v0

    #@b9
    .line 476
    :pswitch_8
    if-eqz p1, :cond_0

    #@bb
    const-string/jumbo v0, "true"

    #@be
    :goto_0
    return-object v0

    #@bf
    :cond_0
    const-string/jumbo v0, "false"

    #@c2
    goto :goto_0

    #@c3
    .line 481
    :cond_1
    const/16 v0, 0x10

    #@c5
    if-lt p0, v0, :cond_2

    #@c7
    if-gt p0, v1, :cond_2

    #@c9
    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    return-object v0

    #@ce
    .line 485
    :cond_2
    return-object v2

    #@cf
    .line 458
    nop

    #@d0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .locals 2
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 244
    shr-int/lit8 v0, p0, 0x0

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    .line 245
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@7
    move-result v1

    #@8
    .line 243
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .locals 1
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 269
    shr-int/lit8 v0, p0, 0x0

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    .line 270
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@7
    move-result v1

    #@8
    .line 268
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@b
    move-result v0

    #@c
    float-to-int v0, v0

    #@d
    return v0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .locals 6
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 295
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@5
    move-result v2

    #@6
    .line 297
    .local v2, "value":F
    shr-int/lit8 v3, p0, 0x0

    #@8
    and-int/lit8 v3, v3, 0xf

    #@a
    .line 296
    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@d
    move-result v0

    #@e
    .line 300
    .local v0, "f":F
    const/high16 v3, 0x3f000000    # 0.5f

    #@10
    add-float/2addr v3, v0

    #@11
    float-to-int v1, v3

    #@12
    .line 301
    .local v1, "res":I
    if-eqz v1, :cond_0

    #@14
    return v1

    #@15
    .line 302
    :cond_0
    cmpl-float v3, v2, v4

    #@17
    if-nez v3, :cond_1

    #@19
    return v5

    #@1a
    .line 303
    :cond_1
    cmpl-float v3, v2, v4

    #@1c
    if-lez v3, :cond_2

    #@1e
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 304
    :cond_2
    const/4 v3, -0x1

    #@21
    return v3
.end method

.method public static complexToFloat(I)F
    .locals 3
    .param p0, "complex"    # I

    #@0
    .prologue
    .line 222
    and-int/lit16 v0, p0, -0x100

    #@2
    int-to-float v0, v0

    #@3
    .line 224
    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    #@5
    shr-int/lit8 v2, p0, 0x4

    #@7
    and-int/lit8 v2, v2, 0x3

    #@9
    aget v1, v1, v2

    #@b
    .line 222
    mul-float/2addr v0, v1

    #@c
    return v0
.end method

.method public static complexToFraction(IFF)F
    .locals 1
    .param p0, "data"    # I
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    #@0
    .prologue
    .line 395
    shr-int/lit8 v0, p0, 0x0

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 401
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 397
    :pswitch_0
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@c
    move-result v0

    #@d
    mul-float/2addr v0, p1

    #@e
    return v0

    #@f
    .line 399
    :pswitch_1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@12
    move-result v0

    #@13
    mul-float/2addr v0, p2

    #@14
    return v0

    #@15
    .line 395
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 432
    iget v0, p0, Landroid/util/TypedValue;->type:I

    #@2
    .line 433
    .local v0, "t":I
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 434
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@7
    return-object v1

    #@8
    .line 436
    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->data:I

    #@a
    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getComplexUnit()I
    .locals 1

    #@0
    .prologue
    .line 326
    iget v0, p0, Landroid/util/TypedValue;->data:I

    #@2
    shr-int/lit8 v0, v0, 0x0

    #@4
    and-int/lit8 v0, v0, 0xf

    #@6
    return v0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 374
    iget v0, p0, Landroid/util/TypedValue;->data:I

    #@2
    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getFloat()F
    .locals 1

    #@0
    .prologue
    .line 200
    iget v0, p0, Landroid/util/TypedValue;->data:I

    #@2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFraction(FF)F
    .locals 1
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    #@0
    .prologue
    .line 419
    iget v0, p0, Landroid/util/TypedValue;->data:I

    #@2
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .locals 1
    .param p1, "other"    # Landroid/util/TypedValue;

    #@0
    .prologue
    .line 490
    iget v0, p1, Landroid/util/TypedValue;->type:I

    #@2
    iput v0, p0, Landroid/util/TypedValue;->type:I

    #@4
    .line 491
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@6
    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@8
    .line 492
    iget v0, p1, Landroid/util/TypedValue;->data:I

    #@a
    iput v0, p0, Landroid/util/TypedValue;->data:I

    #@c
    .line 493
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    #@e
    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    #@10
    .line 494
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    #@12
    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    #@14
    .line 495
    iget v0, p1, Landroid/util/TypedValue;->density:I

    #@16
    iput v0, p0, Landroid/util/TypedValue;->density:I

    #@18
    .line 488
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 501
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TypedValue{t=0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/util/TypedValue;->type:I

    #@e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 502
    const-string/jumbo v1, "/d=0x"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Landroid/util/TypedValue;->data:I

    #@1e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 503
    iget v1, p0, Landroid/util/TypedValue;->type:I

    #@27
    const/4 v2, 0x3

    #@28
    if-ne v1, v2, :cond_0

    #@2a
    .line 504
    const-string/jumbo v1, " \""

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@33
    if-eqz v1, :cond_3

    #@35
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@37
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string/jumbo v2, "\""

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 506
    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    #@43
    if-eqz v1, :cond_1

    #@45
    .line 507
    const-string/jumbo v1, " a="

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    .line 509
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    #@53
    if-eqz v1, :cond_2

    #@55
    .line 510
    const-string/jumbo v1, " r=0x"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 512
    :cond_2
    const-string/jumbo v1, "}"

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    return-object v1

    #@70
    .line 504
    :cond_3
    const-string/jumbo v1, "<null>"

    #@73
    goto :goto_0
.end method
