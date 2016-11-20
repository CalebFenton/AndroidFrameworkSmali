.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IIIIIIIIFIF)V
    .locals 2
    .param p1, "opticalLeft"    # I
    .param p2, "opticalTop"    # I
    .param p3, "opticalRight"    # I
    .param p4, "opticalBottom"    # I
    .param p5, "outlineLeft"    # I
    .param p6, "outlineTop"    # I
    .param p7, "outlineRight"    # I
    .param p8, "outlineBottom"    # I
    .param p9, "outlineRadius"    # F
    .param p10, "outlineAlpha"    # I
    .param p11, "decodeScale"    # F

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@8
    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    #@a
    .line 48
    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    #@f
    .line 50
    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    #@15
    .line 53
    mul-float v0, p9, p11

    #@17
    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    #@19
    .line 54
    int-to-float v0, p10

    #@1a
    const/high16 v1, 0x437f0000    # 255.0f

    #@1c
    div-float/2addr v0, v1

    #@1d
    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    #@1f
    .line 46
    return-void
.end method

.method public static scaleInsets(IIIIF)Landroid/graphics/Rect;
    .locals 4
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "scale"    # F

    #@0
    .prologue
    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    cmpl-float v1, p4, v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 68
    new-instance v1, Landroid/graphics/Rect;

    #@8
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@b
    return-object v1

    #@c
    .line 71
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    .line 72
    .local v0, "result":Landroid/graphics/Rect;
    int-to-float v1, p0

    #@12
    mul-float/2addr v1, p4

    #@13
    float-to-double v2, v1

    #@14
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@17
    move-result-wide v2

    #@18
    double-to-int v1, v2

    #@19
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@1b
    .line 73
    int-to-float v1, p1

    #@1c
    mul-float/2addr v1, p4

    #@1d
    float-to-double v2, v1

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@21
    move-result-wide v2

    #@22
    double-to-int v1, v2

    #@23
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@25
    .line 74
    int-to-float v1, p2

    #@26
    mul-float/2addr v1, p4

    #@27
    float-to-double v2, v1

    #@28
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@2b
    move-result-wide v2

    #@2c
    double-to-int v1, v2

    #@2d
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@2f
    .line 75
    int-to-float v1, p3

    #@30
    mul-float/2addr v1, p4

    #@31
    float-to-double v2, v1

    #@32
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@35
    move-result-wide v2

    #@36
    double-to-int v1, v2

    #@37
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@39
    .line 76
    return-object v0
.end method
