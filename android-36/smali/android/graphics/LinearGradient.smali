.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# instance fields
.field private greylist mColor0:I

.field private greylist-max-r mColor1:I

.field private final blacklist mColorLongs:[J

.field private greylist mColors:[I

.field private greylist-max-r mPositions:[F

.field private greylist-max-r mTileMode:Landroid/graphics/Shader$TileMode;

.field private greylist-max-r mX0:F

.field private greylist-max-r mX1:F

.field private greylist-max-r mY0:F

.field private greylist-max-r mY1:F


# direct methods
.method public constructor whitelist <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .registers 18
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # I
    .param p6, "color1"    # I
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 133
    invoke-static {p5}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v5

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFJJLandroid/graphics/Shader$TileMode;)V

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(FFFFJJLandroid/graphics/Shader$TileMode;)V
    .registers 19
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # J
    .param p7, "color1"    # J
    .param p9, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 153
    const/4 v0, 0x2

    new-array v6, v0, [J

    const/4 v0, 0x0

    aput-wide p5, v6, v0

    const/4 v0, 0x1

    aput-wide p7, v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V

    .line 154
    return-void
.end method

.method public constructor whitelist <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .registers 17
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 72
    invoke-static {p5}, Landroid/graphics/LinearGradient;->convertColors([I)[J

    move-result-object v5

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 73
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    .line 72
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V
    .registers 18
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [J
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 95
    invoke-virtual {p5}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [J

    invoke-static {p5}, Landroid/graphics/LinearGradient;->detectColorSpace([J)Landroid/graphics/ColorSpace;

    move-result-object v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(FFFF[J[FLandroid/graphics/Shader$TileMode;Landroid/graphics/ColorSpace;)V
    .registers 11
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [J
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;
    .param p8, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 105
    invoke-direct {p0, p8}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    .line 107
    if-eqz p6, :cond_12

    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 108
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_12
    :goto_12
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 111
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 112
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 113
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 114
    iput-object p5, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    .line 115
    if-eqz p6, :cond_25

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-object v0, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 116
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 117
    return-void
.end method

.method private native blacklist nativeCreate(JFFFF[J[FIJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 16
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 159
    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v7, p0, Landroid/graphics/LinearGradient;->mColorLongs:[J

    iget-object v8, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 161
    invoke-virtual {p0}, Landroid/graphics/LinearGradient;->colorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v10

    .line 159
    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "nativeMatrix":J
    .local v1, "nativeMatrix":J
    invoke-direct/range {v0 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate(JFFFF[J[FIJ)J

    move-result-wide p1

    return-wide p1
.end method
