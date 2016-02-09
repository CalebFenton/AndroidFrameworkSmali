.class public final Lcom/android/internal/widget/DrawingSpace;
.super Landroid/view/View;
.source "DrawingSpace.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DrawingSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DrawingSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/DrawingSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 29
    return-void
.end method

.method private static getDefaultSizeNonGreedy(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    #@0
    .prologue
    .line 52
    move v0, p0

    #@1
    .line 53
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v1

    #@5
    .line 54
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v2

    #@9
    .line 56
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 67
    :goto_0
    return v0

    #@d
    .line 58
    :sswitch_0
    move v0, p0

    #@e
    .line 59
    goto :goto_0

    #@f
    .line 61
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    goto :goto_0

    #@14
    .line 64
    :sswitch_2
    move v0, v2

    #@15
    .line 65
    goto :goto_0

    #@16
    .line 56
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawingSpace;->getSuggestedMinimumWidth()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p1}, Lcom/android/internal/widget/DrawingSpace;->getDefaultSizeNonGreedy(II)I

    #@7
    move-result v0

    #@8
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawingSpace;->getSuggestedMinimumHeight()I

    #@b
    move-result v1

    #@c
    invoke-static {v1, p2}, Lcom/android/internal/widget/DrawingSpace;->getDefaultSizeNonGreedy(II)I

    #@f
    move-result v1

    #@10
    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/DrawingSpace;->setMeasuredDimension(II)V

    #@13
    .line 71
    return-void
.end method
