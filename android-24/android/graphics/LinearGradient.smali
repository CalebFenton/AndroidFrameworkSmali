.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # I
    .param p6, "color1"    # I
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 82
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    #@6
    .line 83
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    #@8
    .line 84
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    #@a
    .line 85
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    #@c
    .line 86
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    #@e
    .line 87
    iput p5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    #@10
    .line 88
    iput p6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    #@12
    .line 89
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    #@14
    .line 90
    iget v7, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    move v3, p3

    #@1a
    move v4, p4

    #@1b
    move v5, p5

    #@1c
    move v6, p6

    #@1d
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate2(FFFFIII)J

    #@20
    move-result-wide v0

    #@21
    invoke-virtual {p0, v0, v1}, Landroid/graphics/LinearGradient;->init(J)V

    #@24
    .line 81
    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 54
    array-length v0, p5

    #@4
    const/4 v1, 0x2

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "needs >= 2 number of colors"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 57
    :cond_0
    if-eqz p6, :cond_1

    #@12
    array-length v0, p5

    #@13
    array-length v1, p6

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "color and position arrays must be of equal length"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 60
    :cond_1
    const/4 v0, 0x1

    #@20
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    #@22
    .line 61
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    #@24
    .line 62
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    #@26
    .line 63
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    #@28
    .line 64
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    #@2a
    .line 65
    iput-object p5, p0, Landroid/graphics/LinearGradient;->mColors:[I

    #@2c
    .line 66
    iput-object p6, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    #@2e
    .line 67
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    #@30
    .line 68
    iget v7, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    #@32
    move-object v0, p0

    #@33
    move v1, p1

    #@34
    move v2, p2

    #@35
    move v3, p3

    #@36
    move v4, p4

    #@37
    move-object v5, p5

    #@38
    move-object v6, p6

    #@39
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate1(FFFF[I[FI)J

    #@3c
    move-result-wide v0

    #@3d
    invoke-virtual {p0, v0, v1}, Landroid/graphics/LinearGradient;->init(J)V

    #@40
    .line 53
    return-void
.end method

.method private native nativeCreate1(FFFF[I[FI)J
.end method

.method private native nativeCreate2(FFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 99
    iget v1, p0, Landroid/graphics/LinearGradient;->mType:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "LinearGradient should be created with either colors and positions or start color and end color"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 101
    :pswitch_0
    new-instance v0, Landroid/graphics/LinearGradient;

    #@11
    iget v1, p0, Landroid/graphics/LinearGradient;->mX0:F

    #@13
    iget v2, p0, Landroid/graphics/LinearGradient;->mY0:F

    #@15
    iget v3, p0, Landroid/graphics/LinearGradient;->mX1:F

    #@17
    iget v4, p0, Landroid/graphics/LinearGradient;->mY1:F

    #@19
    iget-object v5, p0, Landroid/graphics/LinearGradient;->mColors:[I

    #@1b
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, [I

    #@21
    .line 102
    iget-object v7, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    #@23
    if-eqz v7, :cond_0

    #@25
    iget-object v6, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    #@27
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, [F

    #@2d
    :cond_0
    iget-object v7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    #@2f
    .line 101
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@32
    .line 111
    .local v0, "copy":Landroid/graphics/LinearGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/LinearGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    #@35
    .line 112
    return-object v0

    #@36
    .line 105
    .end local v0    # "copy":Landroid/graphics/LinearGradient;
    :pswitch_1
    new-instance v0, Landroid/graphics/LinearGradient;

    #@38
    iget v1, p0, Landroid/graphics/LinearGradient;->mX0:F

    #@3a
    iget v2, p0, Landroid/graphics/LinearGradient;->mY0:F

    #@3c
    iget v3, p0, Landroid/graphics/LinearGradient;->mX1:F

    #@3e
    iget v4, p0, Landroid/graphics/LinearGradient;->mY1:F

    #@40
    iget v5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    #@42
    iget v6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    #@44
    iget-object v7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    #@46
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    #@49
    .line 106
    .restart local v0    # "copy":Landroid/graphics/LinearGradient;
    goto :goto_0

    #@4a
    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
