.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mCx:F

.field private mCy:F

.field private mPositions:[F

.field private mType:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "color0"    # I
    .param p4, "color1"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 77
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    #@6
    .line 78
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    #@8
    .line 79
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    #@a
    .line 80
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    #@c
    .line 81
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    #@e
    .line 82
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate2(FFII)J

    #@11
    move-result-wide v0

    #@12
    invoke-virtual {p0, v0, v1}, Landroid/graphics/SweepGradient;->init(J)V

    #@15
    .line 76
    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [I
    .param p4, "positions"    # [F

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    #@3
    .line 53
    array-length v0, p3

    #@4
    const/4 v1, 0x2

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "needs >= 2 number of colors"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 56
    :cond_0
    if-eqz p4, :cond_1

    #@12
    array-length v0, p3

    #@13
    array-length v1, p4

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    .line 58
    const-string/jumbo v1, "color and position arrays must be of equal length"

    #@1b
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 60
    :cond_1
    const/4 v0, 0x1

    #@20
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    #@22
    .line 61
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    #@24
    .line 62
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    #@26
    .line 63
    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    #@28
    .line 64
    iput-object p4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    #@2a
    .line 65
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate1(FF[I[F)J

    #@2d
    move-result-wide v0

    #@2e
    invoke-virtual {p0, v0, v1}, Landroid/graphics/SweepGradient;->init(J)V

    #@31
    .line 52
    return-void
.end method

.method private static native nativeCreate1(FF[I[F)J
.end method

.method private static native nativeCreate2(FFII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    iget v1, p0, Landroid/graphics/SweepGradient;->mType:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "SweepGradient should be created with either colors and positions or start color and end color"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 93
    :pswitch_0
    new-instance v0, Landroid/graphics/SweepGradient;

    #@11
    iget v3, p0, Landroid/graphics/SweepGradient;->mCx:F

    #@13
    iget v4, p0, Landroid/graphics/SweepGradient;->mCy:F

    #@15
    iget-object v1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    #@17
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, [I

    #@1d
    .line 94
    iget-object v5, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    #@1f
    if-eqz v5, :cond_0

    #@21
    iget-object v2, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    #@23
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, [F

    #@29
    .line 93
    :cond_0
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    #@2c
    .line 103
    .local v0, "copy":Landroid/graphics/SweepGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/SweepGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    #@2f
    .line 104
    return-object v0

    #@30
    .line 97
    .end local v0    # "copy":Landroid/graphics/SweepGradient;
    :pswitch_1
    new-instance v0, Landroid/graphics/SweepGradient;

    #@32
    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    #@34
    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    #@36
    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    #@38
    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    #@3a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    #@3d
    .line 98
    .restart local v0    # "copy":Landroid/graphics/SweepGradient;
    goto :goto_0

    #@3e
    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
