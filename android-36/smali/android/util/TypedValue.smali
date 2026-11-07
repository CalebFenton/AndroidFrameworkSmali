.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/TypedValue$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field public static final whitelist COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final whitelist COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final whitelist COMPLEX_RADIX_0p23:I = 0x3

.field public static final whitelist COMPLEX_RADIX_16p7:I = 0x1

.field public static final whitelist COMPLEX_RADIX_23p0:I = 0x0

.field public static final whitelist COMPLEX_RADIX_8p15:I = 0x2

.field public static final whitelist COMPLEX_RADIX_MASK:I = 0x3

.field public static final whitelist COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final whitelist COMPLEX_UNIT_DIP:I = 0x1

.field public static final whitelist COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final whitelist COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final whitelist COMPLEX_UNIT_IN:I = 0x4

.field public static final whitelist COMPLEX_UNIT_MASK:I = 0xf

.field public static final whitelist COMPLEX_UNIT_MM:I = 0x5

.field public static final whitelist COMPLEX_UNIT_PT:I = 0x3

.field public static final whitelist COMPLEX_UNIT_PX:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final whitelist COMPLEX_UNIT_SP:I = 0x2

.field public static final whitelist DATA_NULL_EMPTY:I = 0x1

.field public static final whitelist DATA_NULL_UNDEFINED:I = 0x0

.field public static final whitelist DENSITY_DEFAULT:I = 0x0

.field public static final whitelist DENSITY_NONE:I = 0xffff

.field private static final greylist-max-o DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final greylist-max-o FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final blacklist INCHES_PER_MM:F = 0.03937008f

.field private static final blacklist INCHES_PER_PT:F = 0.013888889f

.field private static final greylist-max-o MANTISSA_MULT:F = 0.00390625f

.field private static final greylist-max-o RADIX_MULTS:[F

.field public static final whitelist TYPE_ATTRIBUTE:I = 0x2

.field public static final whitelist TYPE_DIMENSION:I = 0x5

.field public static final whitelist TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final whitelist TYPE_FIRST_INT:I = 0x10

.field public static final whitelist TYPE_FLOAT:I = 0x4

.field public static final whitelist TYPE_FRACTION:I = 0x6

.field public static final whitelist TYPE_INT_BOOLEAN:I = 0x12

.field public static final whitelist TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final whitelist TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final whitelist TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final whitelist TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final whitelist TYPE_INT_DEC:I = 0x10

.field public static final whitelist TYPE_INT_HEX:I = 0x11

.field public static final whitelist TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final whitelist TYPE_LAST_INT:I = 0x1f

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_REFERENCE:I = 0x1

.field public static final whitelist TYPE_STRING:I = 0x3


# instance fields
.field public whitelist assetCookie:I

.field public whitelist changingConfigurations:I

.field public whitelist data:I

.field public whitelist density:I

.field public whitelist resourceId:I

.field public whitelist sourceResourceId:I

.field public whitelist string:Ljava/lang/CharSequence;

.field public whitelist type:I

.field public blacklist usesFeatureFlags:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    .line 761
    const-string v5, "in"

    const-string v6, "mm"

    const-string/jumbo v1, "px"

    const-string v2, "dip"

    const-string/jumbo v3, "sp"

    const-string v4, "pt"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 764
    const-string v0, "%"

    const-string v1, "%p"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    nop

    :array_28
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/TypedValue;->usesFeatureFlags:Z

    return-void
.end method

.method public static whitelist applyDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 433
    packed-switch p0, :pswitch_data_32

    .line 454
    const/4 v0, 0x0

    return v0

    .line 452
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float/2addr v0, v1

    return v0

    .line 450
    :pswitch_d
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    return v0

    .line 448
    :pswitch_11
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float/2addr v0, v1

    return v0

    .line 439
    :pswitch_19
    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v0, :cond_29

    .line 440
    iget-object v0, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    .line 442
    invoke-interface {v0, p1}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v0

    .line 440
    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    .line 445
    :cond_29
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    return v0

    .line 437
    :pswitch_2d
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0

    .line 435
    :pswitch_31
    return p1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2d
        :pswitch_19
        :pswitch_11
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method public static final whitelist coerceToString(II)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # I
    .param p1, "data"    # I

    .line 780
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_ca

    .line 801
    const/16 v1, 0x1c

    const/16 v2, 0x1f

    if-lt p0, v1, :cond_be

    if-gt p0, v2, :cond_be

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 798
    :sswitch_24
    if-eqz p1, :cond_2a

    const-string/jumbo v0, "true"

    goto :goto_2c

    :cond_2a
    const-string v0, "false"

    :goto_2c
    return-object v0

    .line 796
    :sswitch_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 793
    :sswitch_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 790
    :sswitch_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 788
    :sswitch_8c
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :sswitch_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 784
    :sswitch_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 782
    :sswitch_bd
    return-object v0

    .line 803
    :cond_be
    const/16 v1, 0x10

    if-lt p0, v1, :cond_c9

    if-gt p0, v2, :cond_c9

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 807
    :cond_c9
    return-object v0

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_bd
        0x1 -> :sswitch_a9
        0x2 -> :sswitch_95
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_45
        0x11 -> :sswitch_2d
        0x12 -> :sswitch_24
    .end sparse-switch
.end method

.method public static whitelist complexToDimension(ILandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 316
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 318
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 316
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .registers 3
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static whitelist complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 341
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 343
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 341
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static whitelist complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .registers 7
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 368
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    .line 369
    .local v0, "value":F
    shr-int/lit8 v1, p0, 0x0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 373
    .local v1, "f":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-ltz v3, :cond_15

    add-float/2addr v4, v1

    goto :goto_17

    :cond_15
    sub-float v4, v1, v4

    :goto_17
    float-to-int v3, v4

    .line 374
    .local v3, "res":I
    if-eqz v3, :cond_1b

    return v3

    .line 375
    :cond_1b
    cmpl-float v4, v0, v2

    if-nez v4, :cond_21

    const/4 v2, 0x0

    return v2

    .line 376
    :cond_21
    cmpl-float v2, v0, v2

    if-lez v2, :cond_27

    const/4 v2, 0x1

    return v2

    .line 377
    :cond_27
    const/4 v2, -0x1

    return v2
.end method

.method public static whitelist complexToFloat(I)F
    .registers 4
    .param p0, "complex"    # I

    .line 295
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static whitelist complexToFraction(IFF)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .line 717
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_16

    .line 723
    const/4 v0, 0x0

    return v0

    .line 721
    :pswitch_9
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    return v0

    .line 719
    :pswitch_f
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public static whitelist convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "unitToConvertFrom"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 557
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static whitelist convertPixelsToDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "unitToConvertTo"    # I
    .param p1, "pixelValue"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 536
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static blacklist createComplex(II)I
    .registers 5
    .param p0, "mantissa"    # I
    .param p1, "radix"    # I

    .line 587
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_30

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_30

    .line 590
    if-ltz p1, :cond_17

    const/4 v0, 0x3

    if-gt p1, v0, :cond_17

    .line 593
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    return v0

    .line 591
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of mantissa is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createComplexDimension(FI)I
    .registers 5
    .param p0, "value"    # F
    .param p1, "units"    # I

    .line 693
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 696
    invoke-static {p0}, Landroid/util/TypedValue;->floatToComplex(F)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    .line 694
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createComplexDimension(II)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "units"    # I

    .line 672
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    .line 675
    invoke-static {p0}, Landroid/util/TypedValue;->intToComplex(I)I

    move-result v0

    or-int/2addr v0, p1

    return v0

    .line 673
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a valid COMPLEX_UNIT_*: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 6
    .param p0, "unitToConvertTo"    # I
    .param p1, "pixelValue"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 475
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_72

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unitToConvertTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_1d
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_24

    .line 509
    return v0

    .line 511
    :cond_24
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3d214285

    div-float/2addr v0, v1

    return v0

    .line 502
    :pswitch_2d
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_34

    .line 503
    return v0

    .line 505
    :cond_34
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    return v0

    .line 496
    :pswitch_39
    iget v1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_40

    .line 497
    return v0

    .line 499
    :cond_40
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, p1, v0

    const v1, 0x3c638e39

    div-float/2addr v0, v1

    return v0

    .line 486
    :pswitch_49
    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    if-eqz v1, :cond_59

    .line 487
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 488
    .local v0, "dpValue":F
    iget-object v1, p2, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    invoke-interface {v1, v0}, Landroid/content/res/FontScaleConverter;->convertDpToSp(F)F

    move-result v1

    return v1

    .line 490
    .end local v0    # "dpValue":F
    :cond_59
    iget v1, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_60

    .line 491
    return v0

    .line 493
    :cond_60
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p1, v0

    return v0

    .line 480
    :pswitch_65
    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_6c

    .line 481
    return v0

    .line 483
    :cond_6c
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0

    .line 477
    :pswitch_71
    return p1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_71
        :pswitch_65
        :pswitch_49
        :pswitch_39
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist floatToComplex(F)I
    .registers 5
    .param p0, "value"    # F

    .line 628
    const/high16 v0, -0x35000000    # -8388608.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_7a

    const v0, 0x4affffff    # 8388607.5f

    cmpl-float v0, p0, v0

    if-gez v0, :cond_7a

    .line 633
    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 634
    float-to-int v0, p0

    :try_start_15
    invoke-static {v0, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    .line 636
    :cond_1a
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 638
    .local v0, "absValue":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_31

    .line 639
    const/high16 v1, 0x4b000000    # 8388608.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 642
    :cond_31
    const/high16 v2, 0x43800000    # 256.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_44

    .line 643
    const/high16 v1, 0x47000000    # 32768.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 646
    :cond_44
    const/high16 v2, 0x47800000    # 65536.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_57

    .line 647
    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1

    return v1

    .line 650
    :cond_57
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v1
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_5f} :catch_60

    return v1

    .line 651
    .end local v0    # "absValue":F
    :catch_60
    move-exception v0

    .line 653
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert value to complex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 629
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getUnitFromComplexDimension(I)I
    .registers 2
    .param p0, "complexDimension"    # I

    .line 411
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static blacklist intToComplex(I)I
    .registers 4
    .param p0, "value"    # I

    .line 609
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v0, :cond_e

    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_e

    .line 612
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/TypedValue;->createComplex(II)I

    move-result v0

    return v0

    .line 610
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of the value is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist coerceToString()Ljava/lang/CharSequence;
    .registers 3

    .line 754
    iget v0, p0, Landroid/util/TypedValue;->type:I

    .line 755
    .local v0, "t":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 756
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v1

    .line 758
    :cond_8
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getComplexUnit()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->getUnitFromComplexDimension(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDimension(Landroid/util/DisplayMetrics;)F
    .registers 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 572
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final whitelist getFloat()F
    .registers 2

    .line 261
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getFraction(FF)F
    .registers 4
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .line 741
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public whitelist isColorType()Z
    .registers 3

    .line 280
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist setTo(Landroid/util/TypedValue;)V
    .registers 3
    .param p1, "other"    # Landroid/util/TypedValue;

    .line 812
    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    .line 813
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 814
    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    .line 815
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 816
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 817
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    .line 818
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 826
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_37

    :cond_35
    const-string v2, "<null>"

    :goto_37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_40
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_4f

    .line 829
    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    :cond_4f
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_62

    .line 832
    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_62
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
