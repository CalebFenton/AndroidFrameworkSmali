.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final greylist-max-o TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final greylist-max-o TOUCH_MODE_HANDLED:I = 0x2

.field static final greylist-max-o TOUCH_MODE_NONE:I


# instance fields
.field greylist-max-o mActiveOffset:I

.field greylist-max-o mAdapter:Landroid/widget/Adapter;

.field greylist-max-o mAnimateFirstTime:Z

.field greylist-max-o mCurrentWindowEnd:I

.field greylist-max-o mCurrentWindowStart:I

.field greylist-max-o mCurrentWindowStartUnbounded:I

.field greylist-max-o mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field greylist-max-o mDeferNotifyDataSetChanged:Z

.field greylist-max-o mFirstTime:Z

.field greylist-max-o mInAnimation:Landroid/animation/ObjectAnimator;

.field greylist-max-o mLoopViews:Z

.field greylist-max-o mMaxNumActiveViews:I

.field greylist-max-o mOutAnimation:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mPendingCheckForTap:Ljava/lang/Runnable;

.field greylist-max-o mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mReferenceChildHeight:I

.field greylist-max-o mReferenceChildWidth:I

.field greylist-max-o mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private greylist-max-o mRestoreWhichChild:I

.field private greylist-max-o mTouchMode:I

.field greylist-max-o mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWhichChild:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTouchMode(Landroid/widget/AdapterViewAnimator;)I
    .registers 1

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 71
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 77
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 92
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 97
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 103
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 123
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 128
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 134
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 140
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 141
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 152
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 181
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 183
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/AdapterViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 186
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 188
    .local p1, "resource":I
    if-lez p1, :cond_43

    .line 189
    invoke-virtual {p0, v4, p1}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_4a

    .line 191
    :cond_43
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 194
    :goto_4a
    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 195
    if-lez p1, :cond_54

    .line 196
    invoke-virtual {p0, v4, p1}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_5b

    .line 198
    :cond_54
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 201
    :goto_5b
    const/4 p2, 0x2

    invoke-virtual {v7, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 203
    .local p2, "flag":Z
    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 205
    const/4 p3, 0x3

    invoke-virtual {v7, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, v3, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 208
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 211
    return-void
.end method

.method private greylist-max-o addChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 586
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 591
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v0, v1, :cond_24

    .line 592
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 593
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 597
    .end local v0    # "measureSpec":I
    :cond_24
    return-void
.end method

.method private greylist-max-o getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 398
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 399
    .local v1, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_1b

    .line 400
    return-object v1

    .line 402
    .end local v1    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1b
    goto :goto_a

    .line 403
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o initViewAnimator()V
    .registers 2

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method private greylist-max-o measureChildren()V
    .registers 8

    .line 689
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    .line 690
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 691
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 693
    .local v2, "childHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_2f

    .line 694
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 695
    .local v4, "child":Landroid/view/View;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 696
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 695
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 693
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 698
    .end local v3    # "i":I
    :cond_2f
    return-void
.end method

.method private greylist-max-o setDisplayedChild(IZ)V
    .registers 6
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .line 303
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_3d

    .line 304
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 305
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1c

    .line 306
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_19

    :cond_14
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_19
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_2b

    .line 307
    :cond_1c
    if-gez p1, :cond_2b

    .line 308
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 311
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    move v1, v2

    .line 313
    .local v1, "hasFocus":Z
    :cond_32
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 314
    if-eqz v1, :cond_3d

    .line 316
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 319
    .end local v1    # "hasFocus":Z
    :cond_3d
    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .registers 1

    .line 1091
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1092
    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .line 329
    return-void
.end method

.method greylist-max-o cancelHandleClick()V
    .registers 3

    .line 608
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 610
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 612
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 613
    return-void
.end method

.method greylist-max-o checkForAndHandleDataChanged()V
    .registers 3

    .line 745
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 746
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_c

    .line 747
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 764
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 765
    return-void
.end method

.method greylist-max-o configureViewAnimator(II)V
    .registers 4
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .line 248
    nop

    .line 251
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 252
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 253
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 255
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 258
    return-void
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 408
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_7

    .line 409
    return-object v0

    .line 411
    :cond_7
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .registers 2

    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1048
    return-void
.end method

.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .registers 1

    .line 1101
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1105
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 957
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 952
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_13

    :cond_f
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    :goto_13
    return v0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .registers 2

    .line 862
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    const/4 v1, 0x0

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    return-object v0

    nop

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method greylist-max-o getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 287
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    const/4 v1, 0x0

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 288
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 289
    return-object v0

    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public whitelist getDisplayedChild()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .registers 3

    .line 452
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getInAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .line 874
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method greylist-max-o getNumActiveViews()I
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_11

    .line 378
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 380
    :cond_11
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public whitelist getOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .line 898
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 2

    .line 1039
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getViewAtRelativeIndex(I)Landroid/view/View;
    .registers 5
    .param p1, "relativeIndex"    # I

    .line 367
    if-ltz p1, :cond_34

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_34

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_34

    .line 368
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 369
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 370
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    .line 373
    .end local v0    # "i":I
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getWindowSize()I
    .registers 3

    .line 385
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_17

    .line 386
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 387
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_16

    .line 388
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    .line 390
    :cond_16
    return v0

    .line 393
    .end local v0    # "adapterCount":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 605
    return-void
.end method

.method greylist-max-o modulo(II)I
    .registers 4
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .line 353
    if-lez p2, :cond_7

    .line 354
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    .line 356
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 769
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 771
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    .line 772
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_26

    .line 773
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 775
    .local v2, "child":Landroid/view/View;
    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 776
    .local v3, "childRight":I
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 778
    .local v4, "childBottom":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 772
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 780
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 702
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 703
    .local v0, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 704
    .local v1, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 705
    .local v2, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 707
    .local v3, "heightSpecMode":I
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1c

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v4, v6, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    move v4, v5

    .line 712
    .local v4, "haveChildRefSize":Z
    :goto_1d
    const/high16 v6, 0x1000000

    const/high16 v7, -0x80000000

    if-nez v3, :cond_31

    .line 713
    if-eqz v4, :cond_2e

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    goto :goto_2f

    .line 714
    :cond_2e
    move v8, v5

    :goto_2f
    move v1, v8

    goto :goto_42

    .line 715
    :cond_31
    if-ne v3, v7, :cond_42

    .line 716
    if-eqz v4, :cond_42

    .line 717
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    .line 718
    .local v8, "height":I
    if-le v8, v1, :cond_41

    .line 719
    or-int/2addr v1, v6

    goto :goto_42

    .line 721
    :cond_41
    move v1, v8

    .line 726
    .end local v8    # "height":I
    :cond_42
    :goto_42
    if-nez v2, :cond_52

    .line 727
    if-eqz v4, :cond_4f

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v5, v6

    goto :goto_50

    .line 728
    :cond_4f
    nop

    :goto_50
    move v0, v5

    goto :goto_63

    .line 729
    :cond_52
    if-ne v3, v7, :cond_63

    .line 730
    if-eqz v4, :cond_63

    .line 731
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v5, v7

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v5, v7

    .line 732
    .local v5, "width":I
    if-le v5, v0, :cond_62

    .line 733
    or-int/2addr v0, v6

    goto :goto_63

    .line 735
    :cond_62
    move v0, v5

    .line 740
    .end local v5    # "width":I
    :cond_63
    :goto_63
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 741
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 742
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .registers 4

    .line 1054
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_24

    .line 1055
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1057
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_17

    .line 1058
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1059
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1063
    :cond_17
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_23

    .line 1064
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1065
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1067
    :cond_23
    return v2

    .line 1068
    :cond_24
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2f

    .line 1069
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1070
    const/4 v0, 0x1

    return v0

    .line 1072
    :cond_2f
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .registers 1

    .line 1084
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 835
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 836
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 841
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 847
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1b

    .line 848
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    goto :goto_21

    .line 850
    :cond_1b
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 852
    :goto_21
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 826
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 827
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_d

    .line 828
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 830
    :cond_d
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 627
    .local v0, "action":I
    const/4 v1, 0x0

    .line 628
    .local v1, "handled":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_84

    :pswitch_b
    goto/16 :goto_82

    .line 643
    :pswitch_d
    goto/16 :goto_82

    .line 678
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 679
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_18

    .line 680
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 682
    :cond_18
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_82

    .line 642
    .end local v3    # "v":Landroid/view/View;
    :pswitch_1b
    goto :goto_82

    .line 645
    :pswitch_1c
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v4, :cond_54

    .line 646
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 647
    .local v4, "v":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v5

    .line 648
    .local v5, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v4, :cond_54

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7, v4, v3}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 650
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 651
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_43

    .line 652
    iget-object v6, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 654
    :cond_43
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 655
    new-instance v6, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v6, p0, v4, v5}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    .line 669
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    .line 655
    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    const/4 v1, 0x1

    .line 674
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_54
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 675
    goto :goto_82

    .line 630
    :pswitch_57
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 631
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_82

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v2, v3}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 633
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v3, :cond_76

    .line 634
    new-instance v3, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v3, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 636
    :cond_76
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 637
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    .end local v2    # "v":Landroid/view/View;
    :cond_82
    :goto_82
    return v1

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_57
        :pswitch_1c
        :pswitch_1b
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method greylist-max-o refreshChildren()V
    .registers 7

    .line 415
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 416
    .local v0, "adapterCount":I
    :goto_a
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v1, "i":I
    :goto_c
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v1, v2, :cond_58

    .line 417
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 420
    .local v2, "index":I
    if-ge v1, v0, :cond_30

    .line 422
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 424
    .local v3, "updatedChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_31

    .line 426
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_31

    .line 429
    .end local v3    # "updatedChild":Landroid/view/View;
    :cond_30
    const/4 v3, 0x0

    .line 432
    .restart local v3    # "updatedChild":Landroid/view/View;
    :cond_31
    :goto_31
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 433
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v4, Landroid/widget/FrameLayout;

    .line 435
    .local v4, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 436
    if-eqz v3, :cond_55

    .line 438
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 416
    .end local v2    # "index":I
    .end local v3    # "updatedChild":Landroid/view/View;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 442
    .end local v1    # "i":I
    :cond_58
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .line 962
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 963
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 966
    :cond_f
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 967
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 969
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2e

    .line 970
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 971
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 972
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 974
    :cond_2e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 976
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 977
    return-void
.end method

.method public whitelist setAnimateFirstView(Z)V
    .registers 2
    .param p1, "animate"    # Z

    .line 947
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 948
    return-void
.end method

.method public whitelist setDisplayedChild(I)V
    .registers 3
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 300
    return-void
.end method

.method public whitelist setInAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .line 886
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 887
    return-void
.end method

.method public whitelist setInAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 923
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 924
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .line 910
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 911
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 936
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 937
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 989
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 1001
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 1002
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1003
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1004
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1005
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1006
    return-void

    .line 1009
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1011
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1012
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1013
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1015
    :cond_36
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 993
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 1027
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 1028
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1030
    :cond_9
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .line 1034
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1035
    return-void
.end method

.method public whitelist showNext()V
    .registers 2

    .line 342
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 343
    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .registers 28
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .line 466
    move-object/from16 v1, p0

    move/from16 v7, p2

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_9

    return-void

    .line 467
    :cond_9
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v8

    .line 468
    .local v8, "adapterCount":I
    if-nez v8, :cond_10

    return-void

    .line 470
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, -0x1

    if-ge v0, v2, :cond_4b

    .line 471
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 472
    .local v2, "viewToRemove":Landroid/view/View;
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 474
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_42

    .line 475
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 476
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 480
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_42
    invoke-virtual {v1, v2, v9}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 482
    invoke-virtual {v1, v2}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 470
    .end local v2    # "viewToRemove":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 484
    .end local v0    # "i":I
    :cond_4b
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v10, p1, v0

    .line 486
    .local v10, "newWindowStartUnbounded":I
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/2addr v0, v10

    const/4 v11, 0x1

    add-int/lit8 v12, v0, -0x1

    .line 487
    .local v12, "newWindowEndUnbounded":I
    const/4 v13, 0x0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 488
    .local v0, "newWindowStart":I
    add-int/lit8 v2, v8, -0x1

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 490
    .local v2, "newWindowEnd":I
    iget-boolean v3, v1, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v3, :cond_70

    .line 491
    move v0, v10

    .line 492
    move v2, v12

    move v14, v0

    move v15, v2

    goto :goto_72

    .line 490
    :cond_70
    move v14, v0

    move v15, v2

    .line 494
    .end local v0    # "newWindowStart":I
    .end local v2    # "newWindowEnd":I
    .local v14, "newWindowStart":I
    .local v15, "newWindowEnd":I
    :goto_72
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v1, v14, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 495
    .local v0, "rangeStart":I
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 497
    .local v2, "rangeEnd":I
    const/4 v3, 0x0

    .line 498
    .local v3, "wrap":Z
    if-le v0, v2, :cond_89

    .line 499
    const/4 v3, 0x1

    move/from16 v16, v3

    goto :goto_8b

    .line 498
    :cond_89
    move/from16 v16, v3

    .line 506
    .end local v3    # "wrap":Z
    .local v16, "wrap":Z
    :goto_8b
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 507
    .local v4, "index":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 508
    .local v5, "remove":Z
    if-nez v16, :cond_b2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v0, :cond_b0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v2, :cond_b2

    .line 509
    :cond_b0
    const/4 v5, 0x1

    goto :goto_c1

    .line 510
    :cond_b2
    if-eqz v16, :cond_c1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v2, :cond_c1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v0, :cond_c1

    .line 511
    const/4 v5, 0x1

    .line 514
    :cond_c1
    :goto_c1
    if-eqz v5, :cond_df

    .line 515
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v6, v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 516
    .local v6, "previousView":Landroid/view/View;
    iget-object v11, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v11, v11, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 518
    .local v11, "oldRelativeIndex":I
    iget-object v13, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v1, v11, v9, v6, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 521
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "remove":Z
    .end local v6    # "previousView":Landroid/view/View;
    .end local v11    # "oldRelativeIndex":I
    :cond_df
    const/4 v11, 0x1

    const/4 v13, 0x0

    goto :goto_95

    .line 524
    :cond_e2
    iget v3, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-ne v14, v3, :cond_f5

    iget v3, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-ne v15, v3, :cond_f5

    iget v3, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    if-eq v10, v3, :cond_ef

    goto :goto_f5

    :cond_ef
    move/from16 v22, v0

    move/from16 v18, v2

    goto/16 :goto_1e9

    .line 527
    :cond_f5
    :goto_f5
    move v3, v14

    move v11, v3

    .local v11, "i":I
    :goto_f7
    if-gt v11, v15, :cond_1c8

    .line 529
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v3

    invoke-virtual {v1, v11, v3}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v13

    .line 531
    .local v13, "index":I
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 532
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v3, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .local v3, "oldRelativeIndex":I
    goto :goto_11d

    .line 534
    .end local v3    # "oldRelativeIndex":I
    :cond_11c
    const/4 v3, -0x1

    .line 536
    .restart local v3    # "oldRelativeIndex":I
    :goto_11d
    sub-int v4, v11, v10

    .line 541
    .local v4, "newRelativeIndex":I
    iget-object v5, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    iget-object v5, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_139

    const/4 v5, 0x1

    goto :goto_13a

    :cond_139
    const/4 v5, 0x0

    :goto_13a
    move/from16 v17, v5

    .line 543
    .local v17, "inOldRange":Z
    if-eqz v17, :cond_16b

    .line 544
    iget-object v5, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 545
    .local v5, "view":Landroid/view/View;
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v4, v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 546
    invoke-virtual {v1, v5, v4}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 547
    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 550
    .end local v5    # "view":Landroid/view/View;
    move/from16 v22, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move v3, v4

    move/from16 v21, v11

    const/4 v0, -0x1

    goto :goto_1ae

    .line 552
    :cond_16b
    move v5, v3

    move v3, v4

    .end local v4    # "newRelativeIndex":I
    .local v3, "newRelativeIndex":I
    .local v5, "oldRelativeIndex":I
    invoke-virtual {v1, v11, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    .line 553
    .local v4, "adapterPosition":I
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v9, 0x0

    invoke-interface {v6, v4, v9, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 554
    .local v9, "newView":Landroid/view/View;
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v6, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v18

    .line 558
    .local v18, "itemId":J
    move v6, v2

    .end local v2    # "rangeEnd":I
    .local v6, "rangeEnd":I
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 561
    .local v2, "fl":Landroid/widget/FrameLayout;
    if-eqz v9, :cond_188

    .line 562
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    :cond_188
    move-object/from16 v20, v9

    .end local v9    # "newView":Landroid/view/View;
    .local v20, "newView":Landroid/view/View;
    iget-object v9, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move/from16 v21, v11

    .end local v11    # "i":I
    .local v21, "i":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v22, v0

    .end local v0    # "rangeStart":I
    .local v22, "rangeStart":I
    new-instance v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-wide/from16 v23, v18

    move/from16 v19, v5

    move/from16 v18, v6

    move-wide/from16 v5, v23

    .end local v6    # "rangeEnd":I
    .local v5, "itemId":J
    .local v18, "rangeEnd":I
    .local v19, "oldRelativeIndex":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    invoke-virtual {v9, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-direct {v1, v2}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 567
    invoke-virtual {v1, v2, v3}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 568
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v3, v2, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 570
    .end local v2    # "fl":Landroid/widget/FrameLayout;
    .end local v4    # "adapterPosition":I
    .end local v5    # "itemId":J
    .end local v20    # "newView":Landroid/view/View;
    :goto_1ae
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 527
    .end local v3    # "newRelativeIndex":I
    .end local v13    # "index":I
    .end local v17    # "inOldRange":Z
    .end local v19    # "oldRelativeIndex":I
    add-int/lit8 v11, v21, 0x1

    move v9, v0

    move/from16 v2, v18

    move/from16 v0, v22

    .end local v21    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_f7

    .end local v18    # "rangeEnd":I
    .end local v22    # "rangeStart":I
    .restart local v0    # "rangeStart":I
    .local v2, "rangeEnd":I
    :cond_1c8
    move/from16 v22, v0

    move/from16 v18, v2

    move/from16 v21, v11

    .line 572
    .end local v0    # "rangeStart":I
    .end local v2    # "rangeEnd":I
    .end local v11    # "i":I
    .restart local v18    # "rangeEnd":I
    .restart local v22    # "rangeStart":I
    iput v14, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 573
    iput v15, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 574
    iput v10, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 575
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1e9

    .line 576
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v1, v0, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 577
    .local v0, "adapterStart":I
    iget v2, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 578
    .local v2, "adapterEnd":I
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 581
    .end local v0    # "adapterStart":I
    .end local v2    # "adapterEnd":I
    :cond_1e9
    :goto_1e9
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 582
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 583
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 2

    .line 349
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 350
    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 600
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 601
    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .line 271
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 272
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1a

    .line 274
    :cond_e
    if-ne p2, v0, :cond_1a

    .line 275
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 278
    :cond_1a
    :goto_1a
    return-void
.end method
