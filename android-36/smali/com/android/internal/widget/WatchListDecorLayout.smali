.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private blacklist mBottomPanel:Landroid/view/View;

.field private blacklist mForegroundPaddingBottom:I

.field private blacklist mForegroundPaddingLeft:I

.field private blacklist mForegroundPaddingRight:I

.field private blacklist mForegroundPaddingTop:I

.field private blacklist mListView:Landroid/widget/ListView;

.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mPendingScroll:I

.field private blacklist mTopPanel:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method private blacklist applyMeasureToChild(Landroid/view/View;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2b

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredWidth()I

    move-result v1

    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 117
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 120
    .local v1, "width":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 122
    .local v1, "childWidthMeasureSpec":I
    goto :goto_41

    .line 123
    .end local v1    # "childWidthMeasureSpec":I
    :cond_2b
    nop

    .line 124
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 123
    invoke-static {p2, v1, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 130
    .restart local v1    # "childWidthMeasureSpec":I
    :goto_41
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v4, :cond_62

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredHeight()I

    move-result v4

    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 134
    .local v3, "height":I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 136
    .end local v3    # "height":I
    .local v2, "childHeightMeasureSpec":I
    goto :goto_78

    .line 137
    .end local v2    # "childHeightMeasureSpec":I
    :cond_62
    nop

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 137
    invoke-static {p3, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 143
    .restart local v2    # "childHeightMeasureSpec":I
    :goto_78
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 144
    return-void
.end method

.method private blacklist getPaddingBottomWithForeground()I
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 281
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 280
    :goto_14
    return v0
.end method

.method private blacklist getPaddingLeftWithForeground()I
    .registers 3

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 266
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 265
    :goto_14
    return v0
.end method

.method private blacklist getPaddingRightWithForeground()I
    .registers 3

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 271
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 270
    :goto_14
    return v0
.end method

.method private blacklist getPaddingTopWithForeground()I
    .registers 3

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 276
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 275
    :goto_14
    return v0
.end method

.method private blacklist measureAndGetHeight(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 147
    if-eqz p1, :cond_1f

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 151
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 155
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setScrolling(Landroid/view/View;F)V
    .registers 4
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "translationY"    # F

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_b

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    :cond_b
    return-void
.end method


# virtual methods
.method protected whitelist onAttachedToWindow()V
    .registers 5

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_3a

    .line 79
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_32

    .line 82
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 86
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_59

    .line 80
    :cond_32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "only one ListView child allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    .line 90
    .local v2, "gravity":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_4f

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-nez v3, :cond_4f

    .line 91
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    goto :goto_59

    .line 92
    :cond_4f
    const/16 v3, 0x50

    if-ne v2, v3, :cond_59

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-nez v3, :cond_59

    .line 93
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 76
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "gravity":I
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 97
    .end local v0    # "i":I
    :cond_5c
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 3

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 102
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 103
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1a

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 108
    :cond_18
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 110
    :cond_1a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v6

    .line 162
    .local v6, "count":I
    nop

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_18

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_18

    :cond_16
    move v0, v7

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v8

    :goto_19
    move v9, v0

    .line 165
    .local v9, "measureMatchParentChildren":Z
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 169
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 171
    .local v2, "childState":I
    const/4 v3, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "maxHeight":I
    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v10, "maxHeight":I
    .local v11, "maxWidth":I
    .local v12, "childState":I
    .local v13, "i":I
    :goto_27
    if-ge v13, v6, :cond_8c

    .line 172
    invoke-virtual {p0, v13}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3c

    goto :goto_41

    :cond_3c
    move/from16 v2, p1

    move/from16 v4, p2

    goto :goto_89

    .line 174
    :cond_41
    :goto_41
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/WatchListDecorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v14

    .line 176
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 178
    .end local v11    # "maxWidth":I
    .local v5, "maxWidth":I
    nop

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v14

    iget v14, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v14

    .line 178
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v12, v11}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    move-result v11

    .line 181
    .end local v12    # "childState":I
    .local v11, "childState":I
    if-eqz v9, :cond_87

    .line 182
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_82

    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v12, v14, :cond_87

    .line 184
    :cond_82
    iget-object v12, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_87
    move v12, v11

    move v11, v5

    .end local v5    # "maxWidth":I
    .local v11, "maxWidth":I
    .restart local v12    # "childState":I
    :goto_89
    add-int/lit8 v13, v13, 0x1

    goto :goto_27

    :cond_8c
    move/from16 v2, p1

    move/from16 v4, p2

    .line 191
    .end local v13    # "i":I
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 192
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v10, v1

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 196
    .end local v10    # "maxHeight":I
    .local v1, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 199
    .end local v11    # "maxWidth":I
    .local v3, "maxWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 200
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_ca

    .line 201
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 205
    :cond_ca
    invoke-static {v3, v2, v12}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v10

    shl-int/lit8 v11, v12, 0x10

    .line 206
    invoke-static {v1, v4, v11}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v11

    .line 205
    invoke-virtual {p0, v10, v11}, Lcom/android/internal/widget/WatchListDecorLayout;->setMeasuredDimension(II)V

    .line 209
    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v10, :cond_135

    .line 210
    iget v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    if-eqz v10, :cond_e8

    .line 211
    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 212
    iput v7, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 215
    :cond_e8
    iget-object v7, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 216
    invoke-direct {p0, v10, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v10

    .line 215
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 217
    .local v7, "paddingTop":I
    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 218
    invoke-direct {p0, v11, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v11

    .line 217
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 220
    .local v10, "paddingBottom":I
    iget-object v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v11

    if-ne v7, v11, :cond_118

    iget-object v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 221
    invoke-virtual {v11}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v11

    if-eq v10, v11, :cond_135

    .line 222
    :cond_118
    iget v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    iget-object v13, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    iput v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 223
    iget-object v11, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 224
    invoke-virtual {v13}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v13

    iget-object v14, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 225
    invoke-virtual {v14}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v14

    .line 223
    invoke-virtual {v11, v13, v7, v14, v10}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 229
    .end local v7    # "paddingTop":I
    .end local v10    # "paddingBottom":I
    :cond_135
    iget-object v7, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 230
    if-le v6, v8, :cond_15a

    .line 231
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13e
    if-ge v7, v6, :cond_15a

    .line 232
    iget-object v8, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 233
    .local v8, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v10, :cond_154

    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eq v8, v10, :cond_157

    iget-object v10, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eq v8, v10, :cond_157

    .line 234
    :cond_154
    invoke-direct {p0, v8, v2, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 231
    .end local v8    # "child":Landroid/view/View;
    :cond_157
    add-int/lit8 v7, v7, 0x1

    goto :goto_13e

    .line 238
    .end local v7    # "i":I
    :cond_15a
    return-void
.end method

.method public whitelist onScrollChanged()V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_49

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3b

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 294
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 296
    .end local v0    # "firstChild":Landroid/view/View;
    goto :goto_4e

    .line 298
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_4e

    .line 301
    :cond_49
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 305
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eqz v0, :cond_a6

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a1

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_94

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "lastChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 309
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 312
    .end local v0    # "lastChild":Landroid/view/View;
    goto :goto_a6

    .line 314
    :cond_94
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_a6

    .line 317
    :cond_a1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 320
    :cond_a6
    :goto_a6
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .registers 5
    .param p1, "foregroundGravity"    # I

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_33

    if-eqz v0, :cond_33

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 250
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 251
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 252
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 253
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 255
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_32
    goto :goto_3c

    .line 256
    :cond_33
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 257
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 258
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 259
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 262
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_3c
    :goto_3c
    return-void
.end method
