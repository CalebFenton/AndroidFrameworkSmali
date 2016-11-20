.class public Landroid/text/style/IconMarginSpan;
.super Ljava/lang/Object;
.source "IconMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "pad"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 34
    iput p2, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    #@7
    .line 32
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "istartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 57
    check-cast p1, Landroid/text/Spanned;

    #@2
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@5
    move-result v2

    #@6
    if-ne p3, v2, :cond_1

    #@8
    .line 58
    iget-object v2, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@d
    move-result v0

    #@e
    .line 60
    .local v0, "ht":I
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@10
    add-int/2addr v2, p5

    #@11
    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@13
    sub-int/2addr v2, v3

    #@14
    sub-int/2addr v2, p4

    #@15
    sub-int v1, v0, v2

    #@17
    .line 61
    .local v1, "need":I
    if-lez v1, :cond_0

    #@19
    .line 62
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1b
    add-int/2addr v2, v1

    #@1c
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1e
    .line 64
    :cond_0
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@20
    add-int/2addr v2, p5

    #@21
    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@23
    sub-int/2addr v2, v3

    #@24
    sub-int/2addr v2, p4

    #@25
    sub-int v1, v0, v2

    #@27
    .line 65
    if-lez v1, :cond_1

    #@29
    .line 66
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2b
    add-int/2addr v2, v1

    #@2c
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2e
    .line 56
    .end local v0    # "ht":I
    .end local v1    # "need":I
    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 45
    check-cast p8, Landroid/text/Spanned;

    #@2
    .end local p8    # "text":Ljava/lang/CharSequence;
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result v2

    #@6
    .line 46
    .local v2, "st":I
    move-object/from16 v0, p12

    #@8
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@b
    move-result v3

    #@c
    move-object/from16 v0, p12

    #@e
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    #@11
    move-result v1

    #@12
    .line 48
    .local v1, "itop":I
    if-gez p4, :cond_0

    #@14
    .line 49
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@19
    move-result v3

    #@1a
    sub-int/2addr p3, v3

    #@1b
    .line 51
    :cond_0
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@1d
    int-to-float v4, p3

    #@1e
    int-to-float v5, v1

    #@1f
    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@22
    .line 44
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method
