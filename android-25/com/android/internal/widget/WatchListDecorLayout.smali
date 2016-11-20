.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private mBottomPanel:Landroid/view/View;

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mListView:Landroid/widget/ListView;

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPendingScroll:I

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 42
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@6
    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@8
    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@a
    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@c
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@14
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 42
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@6
    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@8
    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@a
    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@c
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@14
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 42
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@6
    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@8
    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@a
    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@c
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@14
    .line 66
    return-void
.end method

.method private applyMeasureToChild(Landroid/view/View;II)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, -0x1

    #@4
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    .line 116
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@c
    if-ne v5, v7, :cond_0

    #@e
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@11
    move-result v5

    #@12
    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    #@15
    move-result v6

    #@16
    .line 117
    sub-int/2addr v5, v6

    #@17
    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    #@1a
    move-result v6

    #@1b
    .line 117
    sub-int/2addr v5, v6

    #@1c
    .line 119
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1e
    .line 117
    sub-int/2addr v5, v6

    #@1f
    .line 119
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@21
    .line 117
    sub-int/2addr v5, v6

    #@22
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v4

    #@26
    .line 120
    .local v4, "width":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@29
    move-result v1

    #@2a
    .line 130
    .end local v4    # "width":I
    .local v1, "childWidthMeasureSpec":I
    :goto_0
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2c
    if-ne v5, v7, :cond_1

    #@2e
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@31
    move-result v5

    #@32
    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    #@35
    move-result v6

    #@36
    .line 131
    sub-int/2addr v5, v6

    #@37
    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    #@3a
    move-result v6

    #@3b
    .line 131
    sub-int/2addr v5, v6

    #@3c
    .line 133
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@3e
    .line 131
    sub-int/2addr v5, v6

    #@3f
    .line 133
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@41
    .line 131
    sub-int/2addr v5, v6

    #@42
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v2

    #@46
    .line 134
    .local v2, "height":I
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@49
    move-result v0

    #@4a
    .line 143
    .end local v2    # "height":I
    .local v0, "childHeightMeasureSpec":I
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@4d
    .line 112
    return-void

    #@4e
    .line 124
    .end local v0    # "childHeightMeasureSpec":I
    .end local v1    # "childWidthMeasureSpec":I
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    #@51
    move-result v5

    #@52
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    #@55
    move-result v6

    #@56
    add-int/2addr v5, v6

    #@57
    .line 125
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@59
    .line 124
    add-int/2addr v5, v6

    #@5a
    .line 125
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@5c
    .line 124
    add-int/2addr v5, v6

    #@5d
    .line 126
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5f
    .line 123
    invoke-static {p2, v5, v6}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    #@62
    move-result v1

    #@63
    .restart local v1    # "childWidthMeasureSpec":I
    goto :goto_0

    #@64
    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    #@67
    move-result v5

    #@68
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    #@6b
    move-result v6

    #@6c
    add-int/2addr v5, v6

    #@6d
    .line 139
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@6f
    .line 138
    add-int/2addr v5, v6

    #@70
    .line 139
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@72
    .line 138
    add-int/2addr v5, v6

    #@73
    .line 140
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@75
    .line 137
    invoke-static {p3, v5, v6}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    #@78
    move-result v0

    #@79
    .restart local v0    # "childHeightMeasureSpec":I
    goto :goto_1
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    #@8
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 281
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    #@11
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    #@8
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 266
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    #@11
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method private getPaddingRightWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    #@8
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 271
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    #@11
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    #@8
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 276
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    #@11
    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method private measureAndGetHeight(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 147
    if-eqz p1, :cond_1

    #@2
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@c
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    #@f
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@1c
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    #@1f
    .line 155
    :cond_1
    const/4 v0, 0x0

    #@20
    return v0
.end method

.method private setScrolling(Landroid/view/View;F)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "translationY"    # F

    #@0
    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, v0, p2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    #@b
    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    #@0
    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 74
    const/4 v3, 0x0

    #@4
    iput v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@6
    .line 76
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@a
    move-result v3

    #@b
    if-ge v2, v3, :cond_4

    #@d
    .line 77
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 78
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ListView;

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 79
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v4, "only one ListView child allowed"

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 82
    :cond_0
    nop

    #@23
    nop

    #@24
    .end local v0    # "child":Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@26
    .line 84
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@28
    const/4 v4, 0x1

    #@29
    invoke-virtual {v3, v4}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    #@2c
    .line 85
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@2e
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@34
    .line 86
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@36
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@39
    .line 76
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 88
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    #@42
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@44
    and-int/lit8 v1, v3, 0x70

    #@46
    .line 90
    .local v1, "gravity":I
    const/16 v3, 0x30

    #@48
    if-ne v1, v3, :cond_3

    #@4a
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@4c
    if-nez v3, :cond_3

    #@4e
    .line 91
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@50
    goto :goto_1

    #@51
    .line 92
    :cond_3
    const/16 v3, 0x50

    #@53
    if-ne v1, v3, :cond_1

    #@55
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@57
    if-nez v3, :cond_1

    #@59
    .line 93
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@5b
    goto :goto_1

    #@5c
    .line 71
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "gravity":I
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@3
    .line 102
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@5
    .line 103
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@7
    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@d
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@15
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@18
    .line 108
    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    #@1a
    .line 100
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v10

    #@4
    .line 163
    .local v10, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v3

    #@8
    const/high16 v5, 0x40000000    # 2.0f

    #@a
    if-ne v3, v5, :cond_3

    #@c
    .line 164
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@f
    move-result v3

    #@10
    const/high16 v5, 0x40000000    # 2.0f

    #@12
    if-eq v3, v5, :cond_4

    #@14
    const/16 v16, 0x1

    #@16
    .line 165
    .local v16, "measureMatchParentChildren":Z
    :goto_0
    move-object/from16 v0, p0

    #@18
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 167
    const/4 v14, 0x0

    #@1e
    .line 168
    .local v14, "maxHeight":I
    const/4 v15, 0x0

    #@1f
    .line 169
    .local v15, "maxWidth":I
    const/4 v9, 0x0

    #@20
    .line 171
    .local v9, "childState":I
    const/4 v12, 0x0

    #@21
    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_5

    #@23
    .line 172
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v4

    #@29
    .line 173
    .local v4, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@32
    move-result v3

    #@33
    const/16 v5, 0x8

    #@35
    if-eq v3, v5, :cond_2

    #@37
    .line 174
    :cond_0
    const/4 v6, 0x0

    #@38
    const/4 v8, 0x0

    #@39
    move-object/from16 v3, p0

    #@3b
    move/from16 v5, p1

    #@3d
    move/from16 v7, p2

    #@3f
    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@42
    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@45
    move-result-object v13

    #@46
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    #@48
    .line 177
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@4b
    move-result v3

    #@4c
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4e
    add-int/2addr v3, v5

    #@4f
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@51
    add-int/2addr v3, v5

    #@52
    .line 176
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    #@55
    move-result v15

    #@56
    .line 179
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@59
    move-result v3

    #@5a
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@5c
    add-int/2addr v3, v5

    #@5d
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@5f
    add-int/2addr v3, v5

    #@60
    .line 178
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    #@63
    move-result v14

    #@64
    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@67
    move-result v3

    #@68
    invoke-static {v9, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    #@6b
    move-result v9

    #@6c
    .line 181
    if-eqz v16, :cond_2

    #@6e
    .line 182
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@70
    const/4 v5, -0x1

    #@71
    if-eq v3, v5, :cond_1

    #@73
    .line 183
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@75
    const/4 v5, -0x1

    #@76
    if-ne v3, v5, :cond_2

    #@78
    .line 184
    :cond_1
    move-object/from16 v0, p0

    #@7a
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    .line 171
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@81
    goto :goto_1

    #@82
    .line 163
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v12    # "i":I
    .end local v14    # "maxHeight":I
    .end local v15    # "maxWidth":I
    .end local v16    # "measureMatchParentChildren":Z
    :cond_3
    const/16 v16, 0x1

    #@84
    .restart local v16    # "measureMatchParentChildren":Z
    goto :goto_0

    #@85
    .line 164
    .end local v16    # "measureMatchParentChildren":Z
    :cond_4
    const/16 v16, 0x0

    #@87
    .restart local v16    # "measureMatchParentChildren":Z
    goto :goto_0

    #@88
    .line 191
    .restart local v9    # "childState":I
    .restart local v12    # "i":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    #@8b
    move-result v3

    #@8c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    #@8f
    move-result v5

    #@90
    add-int/2addr v3, v5

    #@91
    add-int/2addr v15, v3

    #@92
    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    #@95
    move-result v3

    #@96
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    #@99
    move-result v5

    #@9a
    add-int/2addr v3, v5

    #@9b
    add-int/2addr v14, v3

    #@9c
    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    #@9f
    move-result v3

    #@a0
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    #@a3
    move-result v14

    #@a4
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    #@a7
    move-result v3

    #@a8
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    #@ab
    move-result v15

    #@ac
    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    #@af
    move-result-object v11

    #@b0
    .line 200
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_6

    #@b2
    .line 201
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@b5
    move-result v3

    #@b6
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    #@b9
    move-result v14

    #@ba
    .line 202
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@bd
    move-result v3

    #@be
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    #@c1
    move-result v15

    #@c2
    .line 205
    :cond_6
    move/from16 v0, p1

    #@c4
    invoke-static {v15, v0, v9}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    #@c7
    move-result v3

    #@c8
    .line 207
    shl-int/lit8 v5, v9, 0x10

    #@ca
    .line 206
    move/from16 v0, p2

    #@cc
    invoke-static {v14, v0, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    #@cf
    move-result v5

    #@d0
    .line 205
    move-object/from16 v0, p0

    #@d2
    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    #@d5
    .line 209
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@d9
    if-eqz v3, :cond_9

    #@db
    .line 210
    move-object/from16 v0, p0

    #@dd
    iget v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@df
    if-eqz v3, :cond_7

    #@e1
    .line 211
    move-object/from16 v0, p0

    #@e3
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@e9
    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->scrollListBy(I)V

    #@ec
    .line 212
    const/4 v3, 0x0

    #@ed
    move-object/from16 v0, p0

    #@ef
    iput v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@f1
    .line 215
    :cond_7
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@f5
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    #@f8
    move-result v3

    #@f9
    .line 216
    move-object/from16 v0, p0

    #@fb
    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@fd
    move-object/from16 v0, p0

    #@ff
    move/from16 v1, p1

    #@101
    move/from16 v2, p2

    #@103
    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    #@106
    move-result v5

    #@107
    .line 215
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@10a
    move-result v18

    #@10b
    .line 217
    .local v18, "paddingTop":I
    move-object/from16 v0, p0

    #@10d
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@10f
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@112
    move-result v3

    #@113
    .line 218
    move-object/from16 v0, p0

    #@115
    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@117
    move-object/from16 v0, p0

    #@119
    move/from16 v1, p1

    #@11b
    move/from16 v2, p2

    #@11d
    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    #@120
    move-result v5

    #@121
    .line 217
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@124
    move-result v17

    #@125
    .line 220
    .local v17, "paddingBottom":I
    move-object/from16 v0, p0

    #@127
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@129
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    #@12c
    move-result v3

    #@12d
    move/from16 v0, v18

    #@12f
    if-ne v0, v3, :cond_8

    #@131
    .line 221
    move-object/from16 v0, p0

    #@133
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@135
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@138
    move-result v3

    #@139
    move/from16 v0, v17

    #@13b
    if-eq v0, v3, :cond_9

    #@13d
    .line 222
    :cond_8
    move-object/from16 v0, p0

    #@13f
    iget v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@145
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    #@148
    move-result v5

    #@149
    sub-int v5, v5, v18

    #@14b
    add-int/2addr v3, v5

    #@14c
    move-object/from16 v0, p0

    #@14e
    iput v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    #@150
    .line 223
    move-object/from16 v0, p0

    #@152
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@154
    .line 224
    move-object/from16 v0, p0

    #@156
    iget-object v5, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@158
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    #@15b
    move-result v5

    #@15c
    .line 225
    move-object/from16 v0, p0

    #@15e
    iget-object v6, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@160
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    #@163
    move-result v6

    #@164
    .line 223
    move/from16 v0, v18

    #@166
    move/from16 v1, v17

    #@168
    invoke-virtual {v3, v5, v0, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    #@16b
    .line 229
    .end local v17    # "paddingBottom":I
    .end local v18    # "paddingTop":I
    :cond_9
    move-object/from16 v0, p0

    #@16d
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@16f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@172
    move-result v10

    #@173
    .line 230
    const/4 v3, 0x1

    #@174
    if-le v10, v3, :cond_c

    #@176
    .line 231
    const/4 v12, 0x0

    #@177
    :goto_2
    if-ge v12, v10, :cond_c

    #@179
    .line 232
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@17d
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@180
    move-result-object v4

    #@181
    check-cast v4, Landroid/view/View;

    #@183
    .line 233
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@185
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@187
    if-eqz v3, :cond_a

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@18d
    if-eq v4, v3, :cond_b

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v3, v0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@193
    if-eq v4, v3, :cond_b

    #@195
    .line 234
    :cond_a
    move-object/from16 v0, p0

    #@197
    move/from16 v1, p1

    #@199
    move/from16 v2, p2

    #@19b
    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    #@19e
    .line 231
    :cond_b
    add-int/lit8 v12, v12, 0x1

    #@1a0
    goto :goto_2

    #@1a1
    .line 159
    .end local v4    # "child":Landroid/view/View;
    :cond_c
    return-void
.end method

.method public onScrollChanged()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 286
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 287
    return-void

    #@7
    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 291
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    #@10
    move-result v2

    #@11
    if-lez v2, :cond_4

    #@13
    .line 292
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@15
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_3

    #@1b
    .line 293
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@1d
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 294
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@23
    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    #@26
    move-result v3

    #@27
    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@29
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@2c
    move-result v4

    #@2d
    int-to-float v4, v4

    #@2e
    sub-float/2addr v3, v4

    #@2f
    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@31
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@34
    move-result v4

    #@35
    int-to-float v4, v4

    #@36
    sub-float/2addr v3, v4

    #@37
    .line 294
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@3a
    .line 305
    .end local v0    # "firstChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@3c
    if-eqz v2, :cond_2

    #@3e
    .line 306
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@40
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    #@43
    move-result v2

    #@44
    if-lez v2, :cond_6

    #@46
    .line 307
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@48
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    #@4b
    move-result v2

    #@4c
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@4e
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    #@51
    move-result v3

    #@52
    add-int/lit8 v3, v3, -0x1

    #@54
    if-lt v2, v3, :cond_5

    #@56
    .line 308
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@58
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    #@5a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@5d
    move-result v3

    #@5e
    add-int/lit8 v3, v3, -0x1

    #@60
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@63
    move-result-object v1

    #@64
    .line 309
    .local v1, "lastChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@66
    .line 310
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    #@69
    move-result v3

    #@6a
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@6d
    move-result v4

    #@6e
    int-to-float v4, v4

    #@6f
    add-float/2addr v3, v4

    #@70
    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@72
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@75
    move-result v4

    #@76
    int-to-float v4, v4

    #@77
    sub-float/2addr v3, v4

    #@78
    .line 309
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@7b
    .line 285
    .end local v1    # "lastChild":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    #@7c
    .line 298
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@7e
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@80
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@83
    move-result v3

    #@84
    neg-int v3, v3

    #@85
    int-to-float v3, v3

    #@86
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@89
    goto :goto_0

    #@8a
    .line 301
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    #@8c
    invoke-direct {p0, v2, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@8f
    goto :goto_0

    #@90
    .line 313
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@92
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@94
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@97
    move-result v3

    #@98
    int-to-float v3, v3

    #@99
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@9c
    goto :goto_1

    #@9d
    .line 316
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    #@9f
    invoke-direct {p0, v2, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    #@a2
    goto :goto_1
.end method

.method public setForegroundGravity(I)V
    .locals 5
    .param p1, "foregroundGravity"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    #@4
    move-result v2

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    #@a
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 247
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    #@11
    move-result v2

    #@12
    const/16 v3, 0x77

    #@14
    if-ne v2, v3, :cond_1

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 248
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 249
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 250
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@25
    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@27
    .line 251
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@29
    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@2b
    .line 252
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@2d
    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@2f
    .line 253
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@31
    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@33
    .line 241
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    #@34
    .line 256
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    #@36
    .line 257
    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    #@38
    .line 258
    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    #@3a
    .line 259
    iput v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    #@3c
    goto :goto_0
.end method
