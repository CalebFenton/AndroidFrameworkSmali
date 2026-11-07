.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 55
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_3e

    .line 56
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 57
    .local v1, "lineCount":I
    if-lez v1, :cond_3e

    .line 58
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 59
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_3e

    .line 60
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 61
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 63
    iget-object v4, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/R$styleable;->TextAppearance:[I

    const v6, 0x1010041

    const v7, 0x1030044

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 66
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 68
    .local v5, "textSize":I
    if-eqz v5, :cond_38

    .line 70
    int-to-float v6, v5

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 72
    :cond_38
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 78
    .end local v1    # "lineCount":I
    .end local v2    # "ellipsisCount":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "textSize":I
    :cond_3e
    return-void
.end method
