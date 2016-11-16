.class public Landroid/text/style/DrawableMarginSpan;
.super Ljava/lang/Object;
.source "DrawableMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pad"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 34
    iput p2, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

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
    .line 60
    check-cast p1, Landroid/text/Spanned;

    #@2
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@5
    move-result v2

    #@6
    if-ne p3, v2, :cond_1

    #@8
    .line 61
    iget-object v2, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v0

    #@e
    .line 63
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
    .line 64
    .local v1, "need":I
    if-lez v1, :cond_0

    #@19
    .line 65
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1b
    add-int/2addr v2, v1

    #@1c
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1e
    .line 67
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
    .line 68
    if-lez v1, :cond_1

    #@29
    .line 69
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2b
    add-int/2addr v2, v1

    #@2c
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2e
    .line 59
    .end local v0    # "ht":I
    .end local v1    # "need":I
    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 9
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
    move-object/from16 v0, p8

    #@4
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@7
    move-result v5

    #@8
    .line 46
    .local v5, "st":I
    move v4, p3

    #@9
    .line 47
    .local v4, "ix":I
    move-object/from16 v0, p12

    #@b
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    #@e
    move-result v6

    #@f
    move-object/from16 v0, p12

    #@11
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@14
    move-result v3

    #@15
    .line 49
    .local v3, "itop":I
    iget-object v6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1a
    move-result v2

    #@1b
    .line 50
    .local v2, "dw":I
    iget-object v6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@20
    move-result v1

    #@21
    .line 53
    .local v1, "dh":I
    iget-object v6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@23
    add-int v7, v4, v2

    #@25
    add-int v8, v3, v1

    #@27
    invoke-virtual {v6, v4, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 54
    iget-object v6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2f
    .line 44
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method
