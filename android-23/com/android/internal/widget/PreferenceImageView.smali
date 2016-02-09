.class public Lcom/android/internal/widget/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 29
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 33
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 36
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
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 41
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const v7, 0x7fffffff

    #@3
    const/high16 v6, -0x80000000

    #@5
    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@8
    move-result v4

    #@9
    .line 48
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_0

    #@b
    if-nez v4, :cond_2

    #@d
    .line 49
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@10
    move-result v5

    #@11
    .line 50
    .local v5, "widthSize":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PreferenceImageView;->getMaxWidth()I

    #@14
    move-result v3

    #@15
    .line 51
    .local v3, "maxWidth":I
    if-eq v3, v7, :cond_2

    #@17
    .line 52
    if-lt v3, v5, :cond_1

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 53
    :cond_1
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e
    move-result p1

    #@1f
    .line 57
    .end local v3    # "maxWidth":I
    .end local v5    # "widthSize":I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@22
    move-result v0

    #@23
    .line 58
    .local v0, "heightMode":I
    if-eq v0, v6, :cond_3

    #@25
    if-nez v0, :cond_5

    #@27
    .line 59
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2a
    move-result v1

    #@2b
    .line 60
    .local v1, "heightSize":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PreferenceImageView;->getMaxHeight()I

    #@2e
    move-result v2

    #@2f
    .line 61
    .local v2, "maxHeight":I
    if-eq v2, v7, :cond_5

    #@31
    .line 62
    if-lt v2, v1, :cond_4

    #@33
    if-nez v0, :cond_5

    #@35
    .line 63
    :cond_4
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@38
    move-result p2

    #@39
    .line 67
    .end local v1    # "heightSize":I
    .end local v2    # "maxHeight":I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    #@3c
    .line 46
    return-void
.end method
