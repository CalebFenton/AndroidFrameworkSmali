.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static sProportion:F


# instance fields
.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 405
    const/4 v0, 0x0

    #@1
    sput v0, Landroid/content/res/StringBlock$Height;->sProportion:F

    #@3
    .line 403
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 408
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    #@5
    .line 407
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 415
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@b
    .line 413
    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p7, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 421
    iget v3, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    #@3
    .line 422
    .local v3, "size":I
    if-eqz p7, :cond_0

    #@5
    .line 423
    int-to-float v4, v3

    #@6
    iget v5, p7, Landroid/text/TextPaint;->density:F

    #@8
    mul-float/2addr v4, v5

    #@9
    float-to-int v3, v4

    #@a
    .line 426
    :cond_0
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@c
    iget v5, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@e
    sub-int/2addr v4, v5

    #@f
    if-ge v4, v3, :cond_1

    #@11
    .line 427
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@13
    sub-int/2addr v4, v3

    #@14
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@16
    .line 428
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@18
    sub-int/2addr v4, v3

    #@19
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@1b
    .line 420
    :goto_0
    return-void

    #@1c
    .line 430
    :cond_1
    sget v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    #@1e
    const/4 v5, 0x0

    #@1f
    cmpl-float v4, v4, v5

    #@21
    if-nez v4, :cond_2

    #@23
    .line 438
    new-instance v1, Landroid/graphics/Paint;

    #@25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@28
    .line 439
    .local v1, "p":Landroid/graphics/Paint;
    const/high16 v4, 0x42c80000    # 100.0f

    #@2a
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@2d
    .line 440
    new-instance v2, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@32
    .line 441
    .local v2, "r":Landroid/graphics/Rect;
    const-string/jumbo v4, "ABCDEFG"

    #@35
    const/4 v5, 0x7

    #@36
    invoke-virtual {v1, v4, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@39
    .line 443
    iget v4, v2, Landroid/graphics/Rect;->top:I

    #@3b
    int-to-float v4, v4

    #@3c
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    #@3f
    move-result v5

    #@40
    div-float/2addr v4, v5

    #@41
    sput v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    #@43
    .line 446
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@45
    neg-int v4, v4

    #@46
    int-to-float v4, v4

    #@47
    sget v5, Landroid/content/res/StringBlock$Height;->sProportion:F

    #@49
    mul-float/2addr v4, v5

    #@4a
    float-to-double v4, v4

    #@4b
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@4e
    move-result-wide v4

    #@4f
    double-to-int v0, v4

    #@50
    .line 448
    .local v0, "need":I
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@52
    sub-int v4, v3, v4

    #@54
    if-lt v4, v0, :cond_3

    #@56
    .line 453
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@58
    sub-int/2addr v4, v3

    #@59
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@5b
    .line 454
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@5d
    sub-int/2addr v4, v3

    #@5e
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@60
    goto :goto_0

    #@61
    .line 455
    :cond_3
    if-lt v3, v0, :cond_4

    #@63
    .line 461
    neg-int v4, v0

    #@64
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@66
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@68
    .line 462
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@6a
    add-int/2addr v4, v3

    #@6b
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@6d
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@6f
    goto :goto_0

    #@70
    .line 468
    :cond_4
    neg-int v4, v3

    #@71
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@73
    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@75
    .line 469
    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@77
    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@79
    goto :goto_0
.end method
