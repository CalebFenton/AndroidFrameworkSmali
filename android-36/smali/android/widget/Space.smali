.class public final Landroid/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 37
    :cond_d
    return-void
.end method

.method private static greylist-max-o getDefaultSize2(II)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .line 76
    move v0, p0

    .line 77
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 78
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 80
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_18

    goto :goto_16

    .line 88
    :sswitch_d
    move v0, v2

    goto :goto_16

    .line 82
    :sswitch_f
    move v0, p0

    .line 83
    goto :goto_16

    .line 85
    :sswitch_11
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    nop

    .line 91
    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 68
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/widget/Space;->getDefaultSize2(II)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/widget/Space;->getDefaultSize2(II)I

    move-result v1

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/widget/Space;->setMeasuredDimension(II)V

    .line 99
    return-void
.end method
