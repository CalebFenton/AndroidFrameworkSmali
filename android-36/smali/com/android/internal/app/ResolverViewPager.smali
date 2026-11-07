.class public Lcom/android/internal/app/ResolverViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "ResolverViewPager.java"


# instance fields
.field private blacklist mSwipingEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_12

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_c

    .line 57
    return-void

    .line 59
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredHeight()I

    move-result v0

    .line 61
    .local v0, "height":I
    const/4 v3, 0x0

    .line 62
    .local v3, "maxHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 64
    .local v5, "child":Landroid/view/View;
    nop

    .line 65
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 64
    invoke-virtual {v5, p1, v6}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v3, v6, :cond_38

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 62
    .end local v5    # "child":Landroid/view/View;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 70
    .end local v4    # "i":I
    :cond_3b
    if-lez v3, :cond_3e

    .line 71
    move v0, v3

    .line 73
    :cond_3e
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 75
    return-void
.end method

.method blacklist setSwipingEnabled(Z)V
    .registers 2
    .param p1, "swipingEnabled"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 83
    return-void
.end method
