.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewAnimator;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 54
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@8
    .line 60
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    #@a
    .line 65
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    #@c
    .line 71
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    #@e
    .line 77
    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    #@10
    .line 82
    new-instance v3, Ljava/util/HashMap;

    #@12
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@17
    .line 92
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@19
    .line 97
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@1b
    .line 103
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    #@1d
    .line 123
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    #@1f
    .line 128
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    #@21
    .line 134
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@23
    .line 140
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@25
    .line 141
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@27
    .line 152
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@29
    .line 182
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    #@2b
    .line 181
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2e
    move-result-object v0

    #@2f
    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@32
    move-result v2

    #@33
    .line 185
    .local v2, "resource":I
    if-lez v2, :cond_0

    #@35
    .line 186
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    #@38
    .line 191
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v2

    #@3c
    .line 192
    if-lez v2, :cond_1

    #@3e
    .line 193
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    #@41
    .line 199
    :goto_1
    const/4 v3, 0x2

    #@42
    .line 198
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@45
    move-result v1

    #@46
    .line 200
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    #@49
    .line 203
    const/4 v3, 0x3

    #@4a
    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4d
    move-result v3

    #@4e
    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@50
    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@53
    .line 207
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    #@56
    .line 178
    return-void

    #@57
    .line 188
    .end local v1    # "flag":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    #@5e
    goto :goto_0

    #@5f
    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    #@66
    goto :goto_1
.end method

.method private addChild(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 578
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, p1, v2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@9
    .line 583
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@b
    if-eq v1, v2, :cond_0

    #@d
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 584
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@14
    move-result v0

    #@15
    .line 585
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    #@18
    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@1b
    move-result v1

    #@1c
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@1e
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@21
    move-result v1

    #@22
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@24
    .line 577
    .end local v0    # "measureSpec":I
    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 395
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "vm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@16
    .line 396
    .local v0, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@18
    if-ne v2, p1, :cond_0

    #@1a
    .line 397
    return-object v0

    #@1b
    .line 400
    .end local v0    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    const/4 v2, 0x0

    #@1c
    return-object v2
.end method

.method private initViewAnimator()V
    .locals 1

    #@0
    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@7
    .line 213
    return-void
.end method

.method private measureChildren()V
    .locals 8

    #@0
    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    #@2
    .line 681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v3

    #@6
    .line 682
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@9
    move-result v5

    #@a
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    #@c
    sub-int/2addr v5, v6

    #@d
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    #@f
    sub-int v2, v5, v6

    #@11
    .line 683
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@14
    move-result v5

    #@15
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    #@17
    sub-int/2addr v5, v6

    #@18
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    #@1a
    sub-int v1, v5, v6

    #@1c
    .line 685
    .local v1, "childHeight":I
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@1f
    .line 686
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .line 687
    .local v0, "child":Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@26
    move-result v5

    #@27
    .line 688
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2a
    move-result v6

    #@2b
    .line 687
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    #@2e
    .line 685
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_0

    #@31
    .line 680
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 3
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 300
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 301
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@7
    .line 302
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@a
    move-result v2

    #@b
    if-lt p1, v2, :cond_3

    #@d
    .line 303
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@f
    if-eqz v2, :cond_2

    #@11
    :goto_0
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@13
    .line 308
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_5

    #@19
    const/4 v0, 0x1

    #@1a
    .line 310
    .local v0, "hasFocus":Z
    :goto_2
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@1c
    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@1f
    .line 311
    if-eqz v0, :cond_1

    #@21
    .line 313
    const/4 v1, 0x2

    #@22
    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    #@25
    .line 299
    .end local v0    # "hasFocus":Z
    :cond_1
    return-void

    #@26
    .line 303
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@29
    move-result v1

    #@2a
    add-int/lit8 v1, v1, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 304
    :cond_3
    if-gez p1, :cond_0

    #@2f
    .line 305
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@31
    if-eqz v2, :cond_4

    #@33
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@36
    move-result v1

    #@37
    add-int/lit8 v1, v1, -0x1

    #@39
    :cond_4
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@3b
    goto :goto_1

    #@3c
    .line 308
    :cond_5
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "hasFocus":Z
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    #@0
    .prologue
    .line 1072
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    #@3
    .line 1071
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    #@0
    .prologue
    .line 325
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    #@0
    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 601
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 602
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    #@9
    .line 604
    :cond_0
    const/4 v1, 0x0

    #@a
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@c
    .line 599
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    #@0
    .prologue
    .line 737
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@2
    .line 738
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_0

    #@4
    .line 739
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    #@6
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    #@9
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 756
    :cond_0
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@f
    .line 736
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    #@0
    .prologue
    .line 245
    add-int/lit8 v0, p1, -0x1

    #@2
    if-le p2, v0, :cond_0

    #@4
    .line 248
    :cond_0
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    #@6
    .line 249
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    #@8
    .line 250
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 251
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@12
    .line 252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    #@15
    .line 253
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@18
    .line 254
    const/4 v0, -0x1

    #@19
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@1b
    .line 244
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 405
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    #@7
    .line 406
    return-object v0

    #@8
    .line 408
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@a
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@d
    return-object v1
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    #@0
    .prologue
    .line 1028
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    #@3
    .line 1027
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    #@0
    .prologue
    .line 1081
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1086
    const-class v0, Landroid/widget/AdapterViewAnimator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@2
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 854
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    #@0
    .prologue
    .line 278
    const-string/jumbo v1, "alpha"

    #@3
    const/4 v2, 0x2

    #@4
    new-array v2, v2, [F

    #@6
    fill-array-data v2, :array_0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v0

    #@e
    .line 279
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@13
    .line 280
    return-object v0

    #@14
    .line 278
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    #@0
    .prologue
    .line 284
    const-string/jumbo v1, "alpha"

    #@3
    const/4 v2, 0x2

    #@4
    new-array v2, v2, [F

    #@6
    fill-array-data v2, :array_0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v0

    #@e
    .line 285
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@13
    .line 286
    return-object v0

    #@14
    .line 284
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@2
    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    #@0
    .prologue
    .line 444
    new-instance v0, Landroid/widget/FrameLayout;

    #@2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    #@2
    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 375
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 377
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    #@13
    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    #@2
    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1020
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 4
    .param p1, "relativeIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 364
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    if-gt p1, v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 365
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    #@11
    add-int/2addr v1, p1

    #@12
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@19
    move-result v0

    #@1a
    .line 366
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 367
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@32
    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@34
    return-object v1

    #@35
    .line 370
    .end local v0    # "i":I
    :cond_0
    return-object v3
.end method

.method getWindowSize()I
    .locals 2

    #@0
    .prologue
    .line 382
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 383
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    #@7
    move-result v0

    #@8
    .line 384
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    #@b
    move-result v1

    #@c
    if-gt v0, v1, :cond_0

    #@e
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 385
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    #@14
    mul-int/2addr v1, v0

    #@15
    return v1

    #@16
    .line 387
    :cond_0
    return v0

    #@17
    .line 390
    .end local v0    # "adapterCount":I
    :cond_1
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 596
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    #@4
    .line 595
    return-void
.end method

.method modulo(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 350
    if-lez p2, :cond_0

    #@3
    .line 351
    rem-int v0, p1, p2

    #@5
    add-int/2addr v0, p2

    #@6
    rem-int/2addr v0, p2

    #@7
    return v0

    #@8
    .line 353
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    #@3
    .line 763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v2

    #@7
    .line 764
    .local v2, "childCount":I
    const/4 v4, 0x0

    #@8
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    #@a
    .line 765
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 767
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@13
    move-result v6

    #@14
    add-int v3, v5, v6

    #@16
    .line 768
    .local v3, "childRight":I
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    #@18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@1b
    move-result v6

    #@1c
    add-int v1, v5, v6

    #@1e
    .line 770
    .local v1, "childBottom":I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    #@20
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    #@22
    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    #@25
    .line 764
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 760
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v10, 0x1000000

    #@2
    const/4 v8, -0x1

    #@3
    const/high16 v9, -0x80000000

    #@5
    .line 694
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v6

    #@9
    .line 695
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@c
    move-result v3

    #@d
    .line 696
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@10
    move-result v5

    #@11
    .line 697
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@14
    move-result v2

    #@15
    .line 699
    .local v2, "heightSpecMode":I
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@17
    if-eq v7, v8, :cond_2

    #@19
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@1b
    if-eq v7, v8, :cond_2

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 704
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    #@20
    .line 705
    if-eqz v0, :cond_3

    #@22
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@24
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    #@26
    add-int/2addr v7, v8

    #@27
    .line 706
    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    #@29
    .line 705
    add-int v3, v7, v8

    #@2b
    .line 718
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    #@2d
    .line 719
    if-eqz v0, :cond_6

    #@2f
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@31
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    #@33
    add-int/2addr v7, v8

    #@34
    .line 720
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    #@36
    .line 719
    add-int v6, v7, v8

    #@38
    .line 732
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    #@3b
    .line 733
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    #@3e
    .line 693
    return-void

    #@3f
    .line 699
    .end local v0    # "haveChildRefSize":Z
    :cond_2
    const/4 v0, 0x0

    #@40
    .restart local v0    # "haveChildRefSize":Z
    goto :goto_0

    #@41
    .line 706
    :cond_3
    const/4 v3, 0x0

    #@42
    goto :goto_1

    #@43
    .line 707
    :cond_4
    if-ne v2, v9, :cond_0

    #@45
    .line 708
    if-eqz v0, :cond_0

    #@47
    .line 709
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    #@49
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    #@4b
    add-int/2addr v7, v8

    #@4c
    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    #@4e
    add-int v1, v7, v8

    #@50
    .line 710
    .local v1, "height":I
    if-le v1, v3, :cond_5

    #@52
    .line 711
    or-int/2addr v3, v10

    #@53
    goto :goto_1

    #@54
    .line 713
    :cond_5
    move v3, v1

    #@55
    goto :goto_1

    #@56
    .line 720
    .end local v1    # "height":I
    :cond_6
    const/4 v6, 0x0

    #@57
    goto :goto_2

    #@58
    .line 721
    :cond_7
    if-ne v2, v9, :cond_1

    #@5a
    .line 722
    if-eqz v0, :cond_1

    #@5c
    .line 723
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    #@5e
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    #@60
    add-int/2addr v7, v8

    #@61
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    #@63
    add-int v4, v7, v8

    #@65
    .line 724
    .local v4, "width":I
    if-le v4, v6, :cond_8

    #@67
    .line 725
    or-int/2addr v6, v10

    #@68
    goto :goto_2

    #@69
    .line 727
    :cond_8
    move v6, v4

    #@6a
    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1035
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@4
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@6
    if-eq v0, v1, :cond_2

    #@8
    .line 1036
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    #@d
    .line 1038
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1039
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@13
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    #@16
    .line 1040
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    #@18
    .line 1044
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    #@1a
    if-le v0, v3, :cond_1

    #@1c
    .line 1045
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    #@1e
    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    #@21
    .line 1046
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    #@23
    .line 1048
    :cond_1
    return v2

    #@24
    .line 1049
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 1050
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2a
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    #@2d
    .line 1051
    const/4 v0, 0x1

    #@2e
    return v0

    #@2f
    .line 1053
    :cond_3
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    #@0
    .prologue
    .line 1059
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 827
    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    #@3
    .line 828
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 833
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    #@c
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@e
    .line 839
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@14
    if-nez v1, :cond_0

    #@16
    .line 840
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@18
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    #@1a
    .line 826
    :goto_0
    return-void

    #@1b
    .line 842
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    #@21
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 818
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 819
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 820
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@a
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    #@d
    .line 822
    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    #@f
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@11
    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    #@14
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v0

    #@7
    .line 619
    .local v0, "action":I
    const/4 v1, 0x0

    #@8
    .line 620
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    #@b
    .line 677
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    #@c
    .line 622
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    .line 623
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    #@12
    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v5

    #@16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@19
    move-result v6

    #@1a
    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 625
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    #@22
    if-nez v5, :cond_1

    #@24
    .line 626
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    #@26
    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    #@29
    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    #@2b
    .line 628
    :cond_1
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@2d
    .line 629
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    #@2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@32
    move-result v6

    #@33
    int-to-long v6, v6

    #@34
    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@37
    goto :goto_0

    #@38
    .line 637
    .end local v3    # "v":Landroid/view/View;
    :pswitch_2
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@3a
    if-ne v5, v9, :cond_3

    #@3c
    .line 638
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@3f
    move-result-object v3

    #@40
    .line 639
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@43
    move-result-object v4

    #@44
    .line 640
    .local v4, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    #@46
    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@49
    move-result v5

    #@4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@4d
    move-result v6

    #@4e
    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_3

    #@54
    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@57
    move-result-object v2

    #@58
    .line 643
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    #@5a
    .line 644
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    #@5c
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@5f
    .line 646
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    #@62
    .line 647
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    #@64
    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    #@67
    .line 661
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@6a
    move-result v6

    #@6b
    int-to-long v6, v6

    #@6c
    .line 647
    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@6f
    .line 662
    const/4 v1, 0x1

    #@70
    .line 666
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@72
    goto :goto_0

    #@73
    .line 670
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@76
    move-result-object v3

    #@77
    .line 671
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_4

    #@79
    .line 672
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    #@7c
    .line 674
    :cond_4
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    #@7e
    goto :goto_0

    #@7f
    .line 620
    nop

    #@80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 412
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@3
    if-nez v5, :cond_0

    #@5
    return-void

    #@6
    .line 413
    :cond_0
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@8
    .local v2, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@a
    if-gt v2, v5, :cond_3

    #@c
    .line 414
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@f
    move-result v5

    #@10
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@13
    move-result v3

    #@14
    .line 416
    .local v3, "index":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    #@17
    move-result v0

    #@18
    .line 418
    .local v0, "adapterCount":I
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@1a
    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@1d
    move-result v6

    #@1e
    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@21
    move-result-object v4

    #@22
    .line 420
    .local v4, "updatedChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    #@25
    move-result v5

    #@26
    if-nez v5, :cond_1

    #@28
    .line 421
    const/4 v5, 0x1

    #@29
    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@2c
    .line 424
    :cond_1
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@2e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_2

    #@38
    .line 425
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@44
    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@46
    check-cast v1, Landroid/widget/FrameLayout;

    #@48
    .line 427
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_2

    #@4a
    .line 429
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    #@4d
    .line 430
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@50
    .line 413
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 411
    .end local v0    # "adapterCount":I
    .end local v3    # "index":I
    .end local v4    # "updatedChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/Adapter;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 954
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 955
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@b
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@d
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@10
    .line 958
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@12
    .line 959
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    #@15
    .line 961
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 962
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@1b
    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    #@1e
    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@20
    .line 963
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@22
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    #@24
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@27
    .line 964
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@29
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@2f
    .line 966
    :cond_1
    const/4 v0, 0x1

    #@30
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    #@33
    .line 967
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@35
    .line 968
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@37
    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@3a
    .line 953
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 939
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    #@2
    .line 938
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 296
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    #@4
    .line 295
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 878
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    #@2
    .line 877
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 915
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    #@9
    .line 914
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 902
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    #@2
    .line 901
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 928
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    #@9
    .line 927
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 982
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 983
    new-instance v0, Landroid/content/Intent$FilterComparison;

    #@6
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9
    .line 984
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@b
    .line 985
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@d
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    #@10
    move-result-object v2

    #@11
    .line 984
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@14
    .line 986
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 987
    return-void

    #@1b
    .line 990
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    #@1c
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    #@1e
    .line 992
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    #@20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    #@27
    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@29
    .line 993
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2b
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 994
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@33
    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    #@36
    .line 979
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1008
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1009
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@9
    .line 1005
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    #@3
    .line 1014
    return-void
.end method

.method public showNext()V
    .locals 1

    #@0
    .prologue
    .line 339
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    #@7
    .line 338
    return-void
.end method

.method showOnly(IZ)V
    .locals 35
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 458
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@4
    if-nez v5, :cond_0

    #@6
    return-void

    #@7
    .line 459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getCount()I

    #@a
    move-result v4

    #@b
    .line 460
    .local v4, "adapterCount":I
    if-nez v4, :cond_1

    #@d
    return-void

    #@e
    .line 462
    :cond_1
    const/4 v14, 0x0

    #@f
    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@11
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v5

    #@17
    if-ge v14, v5, :cond_3

    #@19
    .line 463
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@2b
    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@2d
    move-object/from16 v31, v0

    #@2f
    .line 464
    .local v31, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 465
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    #@41
    .line 466
    move-object/from16 v0, v31

    #@43
    instance-of v5, v0, Landroid/view/ViewGroup;

    #@45
    if-eqz v5, :cond_2

    #@47
    move-object/from16 v29, v31

    #@49
    .line 467
    nop

    #@4a
    nop

    #@4b
    .line 468
    .local v29, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    #@4e
    .line 472
    .end local v29    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, -0x1

    #@4f
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, v31

    #@53
    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    #@56
    .line 474
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v31

    #@5a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    #@5d
    .line 462
    add-int/lit8 v14, v14, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 476
    .end local v31    # "viewToRemove":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    #@62
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@67
    .line 477
    move-object/from16 v0, p0

    #@69
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    #@6b
    sub-int v23, p1, v5

    #@6d
    .line 478
    .local v23, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    #@70
    move-result v5

    #@71
    add-int v5, v5, v23

    #@73
    add-int/lit8 v21, v5, -0x1

    #@75
    .line 479
    .local v21, "newWindowEndUnbounded":I
    const/4 v5, 0x0

    #@76
    move/from16 v0, v23

    #@78
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    #@7b
    move-result v22

    #@7c
    .line 480
    .local v22, "newWindowStart":I
    add-int/lit8 v5, v4, -0x1

    #@7e
    move/from16 v0, v21

    #@80
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@83
    move-result v20

    #@84
    .line 482
    .local v20, "newWindowEnd":I
    move-object/from16 v0, p0

    #@86
    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@88
    if-eqz v5, :cond_4

    #@8a
    .line 483
    move/from16 v22, v23

    #@8c
    .line 484
    move/from16 v20, v21

    #@8e
    .line 486
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@91
    move-result v5

    #@92
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v22

    #@96
    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@99
    move-result v27

    #@9a
    .line 487
    .local v27, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@9d
    move-result v5

    #@9e
    move-object/from16 v0, p0

    #@a0
    move/from16 v1, v20

    #@a2
    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@a5
    move-result v26

    #@a6
    .line 489
    .local v26, "rangeEnd":I
    const/16 v32, 0x0

    #@a8
    .line 490
    .local v32, "wrap":Z
    move/from16 v0, v27

    #@aa
    move/from16 v1, v26

    #@ac
    if-le v0, v1, :cond_5

    #@ae
    .line 491
    const/16 v32, 0x1

    #@b0
    .line 498
    :cond_5
    move-object/from16 v0, p0

    #@b2
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@b4
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@b7
    move-result-object v5

    #@b8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bb
    move-result-object v18

    #@bc
    .local v18, "index$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@bf
    move-result v5

    #@c0
    if-eqz v5, :cond_a

    #@c2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c5
    move-result-object v17

    #@c6
    check-cast v17, Ljava/lang/Integer;

    #@c8
    .line 499
    .local v17, "index":Ljava/lang/Integer;
    const/16 v28, 0x0

    #@ca
    .line 500
    .local v28, "remove":Z
    if-nez v32, :cond_9

    #@cc
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@cf
    move-result v5

    #@d0
    move/from16 v0, v27

    #@d2
    if-lt v5, v0, :cond_7

    #@d4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@d7
    move-result v5

    #@d8
    move/from16 v0, v26

    #@da
    if-le v5, v0, :cond_9

    #@dc
    .line 501
    :cond_7
    const/16 v28, 0x1

    #@de
    .line 506
    :cond_8
    :goto_2
    if-eqz v28, :cond_6

    #@e0
    .line 507
    move-object/from16 v0, p0

    #@e2
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@e4
    move-object/from16 v0, v17

    #@e6
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    move-result-object v5

    #@ea
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@ec
    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@ee
    move-object/from16 v25, v0

    #@f0
    .line 508
    .local v25, "previousView":Landroid/view/View;
    move-object/from16 v0, p0

    #@f2
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@f4
    move-object/from16 v0, v17

    #@f6
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    move-result-object v5

    #@fa
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@fc
    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    #@fe
    move/from16 v24, v0

    #@100
    .line 510
    .local v24, "oldRelativeIndex":I
    move-object/from16 v0, p0

    #@102
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@104
    move-object/from16 v0, v17

    #@106
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@109
    .line 511
    const/4 v5, -0x1

    #@10a
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, v24

    #@10e
    move-object/from16 v2, v25

    #@110
    move/from16 v3, p2

    #@112
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    #@115
    goto :goto_1

    #@116
    .line 502
    .end local v24    # "oldRelativeIndex":I
    .end local v25    # "previousView":Landroid/view/View;
    :cond_9
    if-eqz v32, :cond_8

    #@118
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@11b
    move-result v5

    #@11c
    move/from16 v0, v26

    #@11e
    if-le v5, v0, :cond_8

    #@120
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@123
    move-result v5

    #@124
    move/from16 v0, v27

    #@126
    if-ge v5, v0, :cond_8

    #@128
    .line 503
    const/16 v28, 0x1

    #@12a
    goto :goto_2

    #@12b
    .line 516
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v28    # "remove":Z
    :cond_a
    move-object/from16 v0, p0

    #@12d
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@12f
    move/from16 v0, v22

    #@131
    if-ne v0, v5, :cond_b

    #@133
    move-object/from16 v0, p0

    #@135
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@137
    move/from16 v0, v20

    #@139
    if-eq v0, v5, :cond_d

    #@13b
    .line 519
    :cond_b
    move/from16 v14, v22

    #@13d
    :goto_3
    move/from16 v0, v20

    #@13f
    if-gt v14, v0, :cond_13

    #@141
    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@144
    move-result v5

    #@145
    move-object/from16 v0, p0

    #@147
    invoke-virtual {v0, v14, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@14a
    move-result v16

    #@14b
    .line 523
    .local v16, "index":I
    move-object/from16 v0, p0

    #@14d
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@14f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@152
    move-result-object v6

    #@153
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@156
    move-result v5

    #@157
    if-eqz v5, :cond_f

    #@159
    .line 524
    move-object/from16 v0, p0

    #@15b
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@15d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@160
    move-result-object v6

    #@161
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@164
    move-result-object v5

    #@165
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@167
    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    #@169
    move/from16 v24, v0

    #@16b
    .line 528
    .restart local v24    # "oldRelativeIndex":I
    :goto_4
    sub-int v8, v14, v23

    #@16d
    .line 533
    .local v8, "newRelativeIndex":I
    move-object/from16 v0, p0

    #@16f
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@171
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@174
    move-result-object v6

    #@175
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@178
    move-result v5

    #@179
    if-eqz v5, :cond_c

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    #@17f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@182
    move-result-object v6

    #@183
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@186
    move-result v5

    #@187
    if-eqz v5, :cond_10

    #@189
    :cond_c
    const/4 v15, 0x0

    #@18a
    .line 535
    .local v15, "inOldRange":Z
    :goto_5
    if-eqz v15, :cond_11

    #@18c
    .line 536
    move-object/from16 v0, p0

    #@18e
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@190
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v6

    #@194
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    move-result-object v5

    #@198
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@19a
    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@19c
    move-object/from16 v30, v0

    #@19e
    .line 537
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, p0

    #@1a0
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@1a2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a5
    move-result-object v6

    #@1a6
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a9
    move-result-object v5

    #@1aa
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@1ac
    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    #@1ae
    .line 538
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v30

    #@1b2
    invoke-virtual {v0, v1, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    #@1b5
    .line 539
    move-object/from16 v0, p0

    #@1b7
    move/from16 v1, v24

    #@1b9
    move-object/from16 v2, v30

    #@1bb
    move/from16 v3, p2

    #@1bd
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    #@1c0
    .line 562
    .end local v30    # "view":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    #@1c2
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@1c4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c7
    move-result-object v6

    #@1c8
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1cb
    move-result-object v5

    #@1cc
    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@1ce
    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@1d0
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    #@1d3
    .line 519
    add-int/lit8 v14, v14, 0x1

    #@1d5
    goto/16 :goto_3

    #@1d7
    .line 517
    .end local v8    # "newRelativeIndex":I
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v24    # "oldRelativeIndex":I
    :cond_d
    move-object/from16 v0, p0

    #@1d9
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    #@1db
    move/from16 v0, v23

    #@1dd
    if-ne v0, v5, :cond_b

    #@1df
    .line 573
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    #@1e2
    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    #@1e5
    .line 457
    return-void

    #@1e6
    .line 526
    .restart local v16    # "index":I
    :cond_f
    const/16 v24, -0x1

    #@1e8
    .restart local v24    # "oldRelativeIndex":I
    goto :goto_4

    #@1e9
    .line 533
    .restart local v8    # "newRelativeIndex":I
    :cond_10
    const/4 v15, 0x1

    #@1ea
    goto :goto_5

    #@1eb
    .line 544
    .restart local v15    # "inOldRange":Z
    :cond_11
    move-object/from16 v0, p0

    #@1ed
    invoke-virtual {v0, v14, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@1f0
    move-result v9

    #@1f1
    .line 545
    .local v9, "adapterPosition":I
    move-object/from16 v0, p0

    #@1f3
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@1f5
    const/4 v6, 0x0

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@1fb
    move-result-object v19

    #@1fc
    .line 546
    .local v19, "newView":Landroid/view/View;
    move-object/from16 v0, p0

    #@1fe
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@200
    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    #@203
    move-result-wide v10

    #@204
    .line 550
    .local v10, "itemId":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    #@207
    move-result-object v7

    #@208
    .line 553
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v19, :cond_12

    #@20a
    .line 554
    move-object/from16 v0, v19

    #@20c
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@20f
    .line 556
    :cond_12
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    #@213
    move-object/from16 v33, v0

    #@215
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@218
    move-result-object v34

    #@219
    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@21b
    move-object/from16 v6, p0

    #@21d
    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    #@220
    move-object/from16 v0, v33

    #@222
    move-object/from16 v1, v34

    #@224
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@227
    .line 558
    move-object/from16 v0, p0

    #@229
    invoke-direct {v0, v7}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    #@22c
    .line 559
    move-object/from16 v0, p0

    #@22e
    invoke-virtual {v0, v7, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    #@231
    .line 560
    const/4 v5, -0x1

    #@232
    move-object/from16 v0, p0

    #@234
    move/from16 v1, p2

    #@236
    invoke-virtual {v0, v5, v8, v7, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    #@239
    goto :goto_6

    #@23a
    .line 564
    .end local v7    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "newRelativeIndex":I
    .end local v9    # "adapterPosition":I
    .end local v10    # "itemId":J
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v19    # "newView":Landroid/view/View;
    .end local v24    # "oldRelativeIndex":I
    :cond_13
    move/from16 v0, v22

    #@23c
    move-object/from16 v1, p0

    #@23e
    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@240
    .line 565
    move/from16 v0, v20

    #@242
    move-object/from16 v1, p0

    #@244
    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@246
    .line 566
    move/from16 v0, v23

    #@248
    move-object/from16 v1, p0

    #@24a
    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    #@24c
    .line 567
    move-object/from16 v0, p0

    #@24e
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@250
    if-eqz v5, :cond_e

    #@252
    .line 568
    move-object/from16 v0, p0

    #@254
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    #@256
    move-object/from16 v0, p0

    #@258
    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@25b
    move-result v13

    #@25c
    .line 569
    .local v13, "adapterStart":I
    move-object/from16 v0, p0

    #@25e
    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    #@260
    move-object/from16 v0, p0

    #@262
    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    #@265
    move-result v12

    #@266
    .line 570
    .local v12, "adapterEnd":I
    move-object/from16 v0, p0

    #@268
    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    #@26a
    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    #@26d
    goto/16 :goto_7
.end method

.method public showPrevious()V
    .locals 1

    #@0
    .prologue
    .line 346
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    #@7
    .line 345
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 592
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    #@4
    .line 591
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 268
    if-ne p1, v0, :cond_1

    #@3
    .line 269
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    #@5
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@8
    .line 270
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    #@a
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@d
    .line 267
    :cond_0
    :goto_0
    return-void

    #@e
    .line 271
    :cond_1
    if-ne p2, v0, :cond_0

    #@10
    .line 272
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    #@12
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@15
    .line 273
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    #@17
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@1a
    goto :goto_0
.end method
