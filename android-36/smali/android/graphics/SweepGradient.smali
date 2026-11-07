.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# instance fields
.field private greylist-max-r mColor0:I

.field private greylist-max-r mColor1:I

.field private final blacklist mColorLongs:[J

.field private greylist-max-r mColors:[I

.field private greylist-max-r mCx:F

.field private greylist-max-r mCy:F

.field private greylist-max-r mPositions:[F


# direct methods
.method public constructor whitelist <init>(FFII)V
    .registers 12
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "color0"    # I
    .param p4, "color1"    # I

    .line 117
    invoke-static {p3}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v3

    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "cx":F
    .end local p2    # "cy":F
    .local v1, "cx":F
    .local v2, "cy":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/SweepGradient;-><init>(FFJJ)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(FFJJ)V
    .registers 9
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "color0"    # J
    .param p5, "color1"    # J

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    const/4 v1, 0x1

    aput-wide p5, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[J[F)V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(FF[I[F)V
    .registers 11
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [I
    .param p4, "positions"    # [F

    .line 65
    invoke-static {p3}, Landroid/graphics/SweepGradient;->convertColors([I)[J

    move-result-object v3

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    .end local p1    # "cx":F
    .end local p2    # "cy":F
    .end local p4    # "positions":[F
    .local v1, "cx":F
    .local v2, "cy":F
    .local v4, "positions":[F
    invoke-direct/range {v0 .. v5}, Landroid/graphics/SweepGradient;-><init>(FF[J[FLandroid/graphics/ColorSpace;)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(FF[J[F)V
    .registers 12
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [J
    .param p4, "positions"    # [F

    .line 87
    invoke-virtual {p3}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [J

    invoke-static {p3}, Landroid/graphics/SweepGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    .end local p1    # "cx":F
    .end local p2    # "cy":F
    .end local p4    # "positions":[F
    .local v2, "cx":F
    .local v3, "cy":F
    .local v5, "positions":[F
    invoke-direct/range {v1 .. v6}, Landroid/graphics/SweepGradient;-><init>(FF[J[FLandroid/graphics/ColorSpace;)V

    .line 88
    return-void
.end method

.method private constructor blacklist <init>(FF[J[FLandroid/graphics/ColorSpace;)V
    .registers 8
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [J
    .param p4, "positions"    # [F
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 96
    invoke-direct {p0, p5}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    .line 98
    if-eqz p4, :cond_12

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 99
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_12
    :goto_12
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 103
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 104
    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColorLongs:[J

    .line 105
    if-eqz p4, :cond_21

    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-object v0, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 106
    return-void
.end method

.method private static native blacklist nativeCreate(JFF[J[FJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 12
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 138
    iget v2, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v4, p0, Landroid/graphics/SweepGradient;->mColorLongs:[J

    iget-object v5, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 139
    invoke-virtual {p0}, Landroid/graphics/SweepGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    .line 138
    move-wide v0, p1

    .end local p1    # "nativeMatrix":J
    .local v0, "nativeMatrix":J
    invoke-static/range {v0 .. v7}, Landroid/graphics/SweepGradient;->nativeCreate(JFF[J[FJ)J

    move-result-wide p1

    return-wide p1
.end method
