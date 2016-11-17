.class public final Landroid/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 34
    invoke-virtual {p0}, Landroid/widget/Space;->getVisibility()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 35
    const/4 v0, 0x4

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/Space;->setVisibility(I)V

    #@d
    .line 32
    :cond_0
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    #@0
    .prologue
    .line 76
    move v0, p0

    #@1
    .line 77
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v1

    #@5
    .line 78
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v2

    #@9
    .line 80
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 91
    :goto_0
    return v0

    #@d
    .line 82
    :sswitch_0
    move v0, p0

    #@e
    .line 83
    goto :goto_0

    #@f
    .line 85
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    goto :goto_0

    #@14
    .line 88
    :sswitch_2
    move v0, v2

    #@15
    .line 89
    goto :goto_0

    #@16
    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 67
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumWidth()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p1}, Landroid/widget/Space;->getDefaultSize2(II)I

    #@7
    move-result v0

    #@8
    .line 98
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumHeight()I

    #@b
    move-result v1

    #@c
    invoke-static {v1, p2}, Landroid/widget/Space;->getDefaultSize2(II)I

    #@f
    move-result v1

    #@10
    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/widget/Space;->setMeasuredDimension(II)V

    #@13
    .line 95
    return-void
.end method
