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
.field public final greylist-max-o opticalRect:Landroid/graphics/Rect;

.field public final greylist-max-o outlineAlpha:F

.field public final greylist-max-o outlineRadius:F

.field public final greylist-max-o outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(IIIIIIIIFIF)V
    .registers 14
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    .line 51
    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    .line 53
    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    .line 56
    mul-float v0, p9, p11

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    .line 57
    int-to-float v0, p10

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    .line 58
    return-void
.end method

.method public static greylist-max-o scaleInsets(IIIIF)Landroid/graphics/Rect;
    .registers 8
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "scale"    # F

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_c

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 74
    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, "result":Landroid/graphics/Rect;
    int-to-float v1, p0

    mul-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 76
    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 77
    int-to-float v1, p2

    mul-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    int-to-float v1, p3

    mul-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    return-object v0
.end method
