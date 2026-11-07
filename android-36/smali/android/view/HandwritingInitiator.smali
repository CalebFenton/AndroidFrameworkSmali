.class public Landroid/view/HandwritingInitiator;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandwritingInitiator$HandwritingAreaTracker;,
        Landroid/view/HandwritingInitiator$State;,
        Landroid/view/HandwritingInitiator$DelegationCallback;,
        Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    }
.end annotation


# instance fields
.field private blacklist mCachedHoverTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionCount:I

.field public blacklist mFocusedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

.field private final blacklist mHandwritingSlop:I

.field private final blacklist mHandwritingTimeoutInMillis:J

.field private final blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mInitiateWithoutConnection:Z

.field private blacklist mShowHoverIconForConnectedView:Z

.field private blacklist mState:Landroid/view/HandwritingInitiator$State;

.field private final blacklist mTempLocation:[I

.field private final blacklist mTempMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final blacklist mTempRegion:Landroid/graphics/Region;


# direct methods
.method public static synthetic blacklist $r8$lambda$enNv4jkNW32Ldl00gpS-aH8O7UY(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/HandwritingInitiator;->lambda$tryAcceptStylusHandwritingDelegationAsync$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    iget-object p0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisViewActive(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->isViewActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 5
    .param p1, "viewConfiguration"    # Landroid/view/ViewConfiguration;
    .param p2, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-direct {v0}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 103
    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    .line 115
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    .line 117
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    .line 125
    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 146
    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHandwritingSlop()I

    move-result v0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    .line 152
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    .line 153
    iput-object p2, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    return-void
.end method

.method private blacklist clearConnectedView()V
    .registers 2

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 293
    return-void
.end method

.method private static blacklist contains(Landroid/graphics/Rect;FFFFFF)Z
    .registers 8
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "offsetLeft"    # F
    .param p4, "offsetTop"    # F
    .param p5, "offsetRight"    # F
    .param p6, "offsetBottom"    # F

    .line 863
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method private static blacklist distance(Landroid/graphics/Rect;FF)F
    .registers 10
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 736
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "rect":Landroid/graphics/Rect;
    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v0, "rect":Landroid/graphics/Rect;
    .local v1, "x":F
    .local v2, "y":F
    invoke-static/range {v0 .. v6}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 737
    const/4 p0, 0x0

    return p0

    .line 760
    :cond_f
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1f

    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_1f

    .line 761
    const/4 p0, 0x0

    .local p0, "xDistance":F
    goto :goto_30

    .line 762
    .end local p0    # "xDistance":F
    :cond_1f
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_2b

    .line 763
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    .restart local p0    # "xDistance":F
    goto :goto_30

    .line 765
    .end local p0    # "xDistance":F
    :cond_2b
    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float p0, v1, p0

    .line 769
    .restart local p0    # "xDistance":F
    :goto_30
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_40

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_40

    .line 770
    const/4 p1, 0x0

    .local p1, "yDistance":F
    goto :goto_51

    .line 771
    .end local p1    # "yDistance":F
    :cond_40
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_4c

    .line 772
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    .restart local p1    # "yDistance":F
    goto :goto_51

    .line 774
    .end local p1    # "yDistance":F
    :cond_4c
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float p1, v2, p1

    .line 777
    .restart local p1    # "yDistance":F
    :goto_51
    mul-float p2, p0, p0

    mul-float v3, p1, p1

    add-float/2addr p2, v3

    return p2
.end method

.method private blacklist findBestCandidateView(FFZ)Landroid/view/View;
    .registers 17
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isHover"    # Z

    .line 687
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v4

    .line 688
    .local v4, "connectedOrFocusedView":Landroid/view/View;
    if-eqz v4, :cond_3d

    .line 689
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 690
    .local v1, "handwritingArea":Landroid/graphics/Rect;
    invoke-static {v4, v1}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 691
    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 692
    invoke-static {v4}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 694
    if-nez p3, :cond_36

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v2, :cond_36

    .line 695
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 696
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    move v7, p2

    move-object v5, v1

    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    .local v5, "handwritingArea":Landroid/graphics/Rect;
    invoke-static/range {v5 .. v11}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result v1

    invoke-static {v2, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    goto :goto_37

    .line 694
    .end local v5    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_36
    move-object v5, v1

    .line 698
    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v5    # "handwritingArea":Landroid/graphics/Rect;
    :goto_37
    return-object v4

    .line 692
    .end local v5    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_38
    move-object v5, v1

    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v5    # "handwritingArea":Landroid/graphics/Rect;
    goto :goto_3d

    .line 691
    .end local v5    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_3a
    move-object v5, v1

    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v5    # "handwritingArea":Landroid/graphics/Rect;
    goto :goto_3d

    .line 690
    .end local v5    # "handwritingArea":Landroid/graphics/Rect;
    .restart local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_3c
    move-object v5, v1

    .line 702
    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_3d
    :goto_3d
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 703
    .local v1, "minDistance":F
    const/4 v2, 0x0

    .line 705
    .local v2, "bestCandidate":Landroid/view/View;
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 706
    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->computeViewInfos()Ljava/util/List;

    move-result-object v3

    .line 707
    .local v3, "handwritableViewInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/HandwritingInitiator$HandwritableViewInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4b
    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    .line 708
    .local v6, "viewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    invoke-virtual {v6}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v11

    .line 709
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v8

    .line 710
    .local v8, "handwritingArea":Landroid/graphics/Rect;
    move-object v7, p0

    move v9, p1

    move v10, p2

    move/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 711
    invoke-static {v11}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 712
    goto :goto_4b

    .line 715
    :cond_71
    invoke-static {v8, p1, p2}, Landroid/view/HandwritingInitiator;->distance(Landroid/graphics/Rect;FF)F

    move-result v0

    .line 716
    .local v0, "distance":F
    const/4 v12, 0x0

    cmpl-float v12, v0, v12

    if-nez v12, :cond_87

    .line 717
    if-nez p3, :cond_86

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v5, :cond_86

    .line 718
    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v12, 0x1

    invoke-static {v5, v12}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    .line 720
    :cond_86
    return-object v11

    .line 722
    :cond_87
    cmpg-float v12, v0, v1

    if-gez v12, :cond_8d

    .line 723
    move v1, v0

    .line 724
    move-object v2, v11

    .line 726
    .end local v0    # "distance":F
    .end local v6    # "viewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    .end local v8    # "handwritingArea":Landroid/graphics/Rect;
    .end local v11    # "view":Landroid/view/View;
    :cond_8d
    goto :goto_4b

    .line 727
    :cond_8e
    return-object v2
.end method

.method private static blacklist findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 984
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_42

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 986
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 987
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 988
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1a

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 989
    .local v3, "tv":Landroid/widget/TextView;
    goto :goto_22

    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_1a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 990
    .local v3, "textView":Landroid/widget/TextView;
    :goto_22
    if-eqz v3, :cond_3f

    .line 991
    invoke-virtual {v3}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 992
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 993
    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 994
    :cond_3e
    return-object v3

    .line 986
    .end local v2    # "child":Landroid/view/View;
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 998
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v2, p0

    goto :goto_6a

    .line 610
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_21

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1f

    goto :goto_21

    :cond_1f
    move-object v2, p0

    goto :goto_66

    .line 612
    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 613
    .local v4, "hoverX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 615
    .local v5, "hoverY":F
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getCachedHoverTarget()Landroid/view/View;

    move-result-object v6

    .line 616
    .local v6, "cachedHoverTarget":Landroid/view/View;
    if-eqz v6, :cond_50

    .line 617
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 618
    .local v3, "handwritingArea":Landroid/graphics/Rect;
    invoke-static {v6, v3}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 619
    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 621
    invoke-static {v6}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 622
    return-object v6

    .line 618
    :cond_4e
    move-object v2, p0

    goto :goto_51

    .line 616
    .end local v3    # "handwritingArea":Landroid/graphics/Rect;
    :cond_50
    move-object v2, p0

    .line 626
    :cond_51
    :goto_51
    const/4 v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "candidateView":Landroid/view/View;
    if-eqz v0, :cond_66

    .line 629
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingUnsupportedMessage()Z

    move-result v1

    if-nez v1, :cond_65

    .line 630
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v2, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 632
    :cond_65
    return-object v0

    .line 636
    .end local v0    # "candidateView":Landroid/view/View;
    .end local v4    # "hoverX":F
    .end local v5    # "hoverY":F
    .end local v6    # "cachedHoverTarget":Landroid/view/View;
    :cond_66
    :goto_66
    iput-object v1, v2, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 637
    return-object v1

    .line 606
    :cond_69
    move-object v2, p0

    .line 607
    :goto_6a
    return-object v1
.end method

.method private blacklist getCachedHoverTarget()Landroid/view/View;
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 600
    const/4 v0, 0x0

    return-object v0

    .line 602
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getConnectedOrFocusedView()Landroid/view/View;
    .registers 3

    .line 591
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 592
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    goto :goto_13

    :cond_a
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_13
    return-object v1

    .line 594
    :cond_14
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_19

    goto :goto_22

    :cond_19
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_22
    return-object v1
.end method

.method private blacklist getConnectedView()Landroid/view/View;
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 949
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    move-object v1, v0

    .line 952
    .local v1, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-static {p1}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 953
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_33

    .line 954
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/TextView;->getCursorAnchorInfo(ILandroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    .line 955
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-gez v2, :cond_5f

    .line 958
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v4, v2

    .line 959
    .local v4, "bottom":F
    nop

    .line 960
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 961
    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 959
    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 965
    .end local v4    # "bottom":F
    goto :goto_5f

    .line 969
    :cond_33
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 970
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 971
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 972
    nop

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    .line 975
    :goto_50
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v4, v3

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v5, v3

    .line 972
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 979
    :cond_5f
    :goto_5f
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getFocusedView()Landroid/view/View;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static blacklist getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 797
    .local v0, "viewParent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 799
    .local v2, "localHandwritingArea":Landroid/graphics/Rect;
    if-eqz v2, :cond_1d

    .line 800
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_28

    .line 802
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 804
    :goto_28
    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    return v1

    .line 806
    .end local v2    # "localHandwritingArea":Landroid/graphics/Rect;
    :cond_2e
    return v1
.end method

.method private blacklist isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z
    .registers 22
    .param p1, "handwritingArea"    # Landroid/graphics/Rect;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "view"    # Landroid/view/View;
    .param p5, "isHover"    # Z

    .line 815
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    .line 817
    :cond_6
    nop

    .line 818
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result v5

    .line 819
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result v6

    .line 820
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result v7

    .line 821
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result v8

    .line 817
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v8}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result v5

    if-nez v5, :cond_24

    .line 822
    return v1

    .line 829
    :cond_24
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 830
    .local v2, "parent":Landroid/view/ViewParent;
    if-nez v2, :cond_2c

    .line 831
    const/4 v1, 0x1

    return v1

    .line 834
    :cond_2c
    iget-object v3, v0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    .line 835
    .local v3, "region":Landroid/graphics/Region;
    iget-object v4, v0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 836
    iget-object v9, v0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    .line 837
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 838
    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-interface {v2, v10, v3, v9, v11}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 839
    return v1

    .line 845
    :cond_4b
    invoke-virtual {v10}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result v1

    sub-float v1, p2, v1

    .line 846
    .local v1, "left":F
    invoke-virtual {v10}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result v4

    sub-float v12, p3, v4

    .line 847
    .local v12, "top":F
    invoke-virtual {v10}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result v4

    add-float v4, p2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 848
    .local v13, "right":F
    invoke-virtual {v10}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result v4

    add-float v4, p3, v4

    add-float/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 849
    .local v14, "bottom":F
    iget-object v15, v0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    .line 850
    .local v15, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v15, v1, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 851
    invoke-virtual {v9, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 853
    iget v4, v15, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v15, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v15, Landroid/graphics/RectF;->right:F

    .line 854
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 853
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v4

    return v4
.end method

.method private static blacklist isViewActive(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 944
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 945
    invoke-virtual {p0}, Landroid/view/View;->shouldTrackHandwritingArea()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 944
    :goto_17
    return v0
.end method

.method private synthetic blacklist lambda$tryAcceptStylusHandwritingDelegationAsync$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "viewRef"    # Ljava/lang/ref/WeakReference;
    .param p2, "delegationAccepted"    # Ljava/lang/Boolean;

    .line 511
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 512
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->onDelegationAccepted(Landroid/view/View;)V

    .line 514
    :cond_f
    return-void
.end method

.method private blacklist largerThanTouchSlop(FFFF)Z
    .registers 10
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 868
    sub-float v0, p1, p3

    .line 869
    .local v0, "dx":F
    sub-float v1, p2, p4

    .line 870
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    iget v4, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method private blacklist onDelegationAccepted(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 519
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 520
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 521
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 523
    :cond_10
    if-nez p1, :cond_13

    .line 525
    return-void

    .line 527
    :cond_13
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 528
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideHint()V

    .line 532
    :cond_1d
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 533
    return-void
.end method

.method private blacklist prepareDelegation(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatePackageName()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "delegatePackageName":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_11

    .line 457
    :cond_10
    move-object v4, v0

    .line 460
    .end local v0    # "delegatePackageName":Ljava/lang/String;
    .local v4, "delegatePackageName":Ljava/lang/String;
    :goto_11
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isConnectionlessStylusHandwritingAvailable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 464
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 465
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    .line 466
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    new-instance v6, Landroid/view/HandwritingInitiator$DelegationCallback;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v4, v0}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator-IA;)V

    .line 464
    move-object v2, p1

    .end local p1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 467
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    goto :goto_50

    .line 469
    .end local v2    # "view":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_43
    move-object v2, p1

    .end local p1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 472
    :goto_50
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 473
    return-void
.end method

.method private blacklist requestFocusWithoutReveal(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 641
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3b

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .local v0, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 648
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 649
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v4

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v5, v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v3

    .line 652
    .local v3, "offset":I
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 654
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v3    # "offset":I
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 655
    invoke-virtual {p1, v1}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    .line 656
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 657
    invoke-virtual {p1, v2}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    goto :goto_4e

    .line 659
    :cond_4b
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 661
    :goto_4e
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    if-eqz v0, :cond_8f

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_8f

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 663
    .restart local v0    # "editText":Landroid/widget/EditText;
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 664
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v1

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v2, v3, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->getLineAtCoordinate(F)I

    move-result v1

    .line 665
    .local v1, "line":I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 666
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 665
    const/16 v4, 0xa

    invoke-static {v2, v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 667
    .local v2, "paragraphEnd":I
    if-gez v2, :cond_8c

    .line 668
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 670
    :cond_8c
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 672
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "line":I
    .end local v2    # "paragraphEnd":I
    :cond_8f
    return-void
.end method

.method private static blacklist shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 556
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 561
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static blacklist shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 545
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result v0

    return v0
.end method

.method private blacklist tryAcceptStylusHandwritingDelegationAsync(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 504
    nop

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatorPackageName()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "delegatorPackageName":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_f
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 510
    .local v1, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    new-instance v2, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;-><init>(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;)V

    .line 515
    .local v2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, p1, v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 516
    return-void
.end method

.method private blacklist tryAcceptStylusHandwritingDelegationInternal(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 490
    nop

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatorPackageName()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "delegatorPackageName":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_f
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 496
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->onDelegationAccepted(Landroid/view/View;)V

    .line 497
    const/4 v1, 0x1

    return v1

    .line 499
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist clearFocusedView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 412
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    goto :goto_13

    .line 415
    :cond_7
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 418
    :cond_12
    return-void

    .line 413
    :cond_13
    :goto_13
    return-void
.end method

.method public blacklist onDelegateViewFocused(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 300
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_7

    .line 301
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->onEditorFocused(Landroid/view/View;)V

    .line 303
    :cond_7
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 304
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z

    .line 306
    :cond_10
    return-void
.end method

.method public blacklist onEditorFocused(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 355
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v0, :cond_5

    .line 356
    return-void

    .line 359
    :cond_5
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, "focusedView":Landroid/view/View;
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 363
    return-void

    .line 366
    :cond_19
    if-ne v0, p1, :cond_1c

    .line 367
    return-void

    .line 369
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->updateFocusedView(Landroid/view/View;)Z

    .line 371
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_46

    .line 373
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 374
    :cond_43
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    .line 376
    :cond_46
    return-void
.end method

.method public blacklist onInputConnectionClosed(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 385
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 386
    return-void

    .line 388
    :cond_b
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, "connectedView":Landroid/view/View;
    if-nez v0, :cond_12

    return-void

    .line 390
    :cond_12
    if-ne v0, p1, :cond_22

    .line 391
    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 392
    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    if-nez v1, :cond_25

    .line 393
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    goto :goto_25

    .line 397
    :cond_22
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 399
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist onInputConnectionCreated(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 316
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 318
    return-void

    .line 320
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 321
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 322
    return-void

    .line 325
    :cond_15
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "connectedView":Landroid/view/View;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_22

    .line 327
    iget v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    goto :goto_5c

    .line 329
    :cond_22
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 330
    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 332
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 339
    return-void

    .line 341
    :cond_3d
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v1, :cond_5c

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_5c

    .line 344
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    .line 347
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/content/Context;Landroid/view/MotionEvent;)Landroid/view/PointerIcon;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 570
    invoke-direct {p0, p2}, Landroid/view/HandwritingInitiator;->findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, "hoverView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-static {v0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_28

    .line 575
    :cond_e
    iget-boolean v2, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    const/16 v3, 0x3fe

    if-eqz v2, :cond_19

    .line 576
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 579
    :cond_19
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 583
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 584
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 586
    :cond_27
    return-object v1

    .line 572
    :cond_28
    :goto_28
    return-object v1
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 175
    .local v0, "maskedAction":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_17e

    :pswitch_9
    goto/16 :goto_17c

    .line 186
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 187
    .local v3, "pointerId":I
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v4

    if-eq v3, v4, :cond_156

    .line 189
    :cond_1f
    return v2

    .line 206
    .end local v3    # "pointerId":I
    :pswitch_20
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-nez v3, :cond_25

    .line 207
    return v2

    .line 212
    :cond_25
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-eqz v3, :cond_14f

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto/16 :goto_14f

    .line 216
    :cond_37
    nop

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 218
    .local v3, "timeElapsed":J
    iget-wide v5, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_55

    .line 219
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 220
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    .line 223
    :cond_55
    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 224
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 225
    .local v6, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 226
    .local v7, "y":F
    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    iget-object v9, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v9}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v9

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/view/HandwritingInitiator;->largerThanTouchSlop(FFFF)Z

    move-result v8

    if-eqz v8, :cond_148

    .line 227
    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;Z)V

    .line 228
    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    iget-object v9, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v9}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v9

    invoke-direct {p0, v8, v9, v2}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object v8

    .line 230
    .local v8, "candidateView":Landroid/view/View;
    if-eqz v8, :cond_148

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_148

    .line 231
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v9

    .line 232
    .local v9, "candidateHasFocus":Z
    invoke-virtual {v8}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result v10

    if-nez v10, :cond_a6

    .line 233
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 234
    return v2

    .line 235
    :cond_a6
    invoke-static {v8}, Landroid/view/HandwritingInitiator;->shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_10c

    .line 236
    instance-of v10, v8, Landroid/widget/TextView;

    if-eqz v10, :cond_bd

    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    .line 237
    .local v10, "tv":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 238
    const v11, 0x10403aa

    goto :goto_c0

    .line 239
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_bd
    const v11, 0x10403a9

    :goto_c0
    nop

    .line 240
    .local v11, "messagesResId":I
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 241
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_d5

    .line 243
    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 245
    :cond_d5
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingUnsupportedShowSoftInputFix()Z

    move-result v10

    if-eqz v10, :cond_e8

    instance-of v10, v8, Landroid/widget/TextView;

    if-eqz v10, :cond_ed

    .line 246
    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    .line 247
    .restart local v10    # "tv":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v12

    if-eqz v12, :cond_ed

    .line 248
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_e8
    iget-object v10, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v10, v8, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 250
    :cond_ed
    iget-object v10, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v10, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 251
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 255
    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 256
    .end local v11    # "messagesResId":I
    goto :goto_148

    :cond_10c
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v1

    if-ne v8, v1, :cond_11b

    .line 257
    if-nez v9, :cond_117

    .line 258
    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 260
    :cond_117
    invoke-virtual {p0, v8}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_148

    .line 261
    :cond_11b
    invoke-virtual {v8}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_125

    .line 262
    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->prepareDelegation(Landroid/view/View;)V

    goto :goto_148

    .line 264
    :cond_125
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v1, :cond_139

    .line 265
    if-nez v9, :cond_148

    .line 267
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingFocusedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    .line 268
    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    goto :goto_148

    .line 271
    :cond_139
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingConnectedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    .line 272
    if-nez v9, :cond_148

    .line 273
    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 279
    .end local v8    # "candidateView":Landroid/view/View;
    .end local v9    # "candidateHasFocus":Z
    :cond_148
    :goto_148
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    .line 213
    .end local v3    # "timeElapsed":J
    .end local v5    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_14f
    :goto_14f
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    .line 196
    :cond_156
    :pswitch_156
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v3, :cond_169

    .line 197
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 198
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-nez v3, :cond_169

    .line 201
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 204
    :cond_169
    return v2

    .line 178
    :pswitch_16a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v3

    if-nez v3, :cond_174

    .line 181
    return v2

    .line 183
    :cond_174
    new-instance v3, Landroid/view/HandwritingInitiator$State;

    invoke-direct {v3, p1, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/MotionEvent;Landroid/view/HandwritingInitiator-IA;)V

    iput-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 184
    nop

    .line 281
    :goto_17c
    return v2

    nop

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_156
        :pswitch_20
        :pswitch_156
        :pswitch_9
        :pswitch_16a
        :pswitch_b
    .end packed-switch
.end method

.method public blacklist startHandwriting(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 446
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 448
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 449
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 450
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 451
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideHint()V

    .line 453
    :cond_1d
    return-void
.end method

.method public blacklist tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 481
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 482
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegationAsync(Landroid/view/View;)V

    .line 486
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegationInternal(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateFocusedView(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 426
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_11

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 428
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_11
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "focusedView":Landroid/view/View;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_2d

    .line 433
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 434
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 436
    :cond_2b
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 440
    :cond_2d
    return v1
.end method

.method public blacklist updateHandwritingAreasForView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 540
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v0, p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->updateHandwritingAreaForView(Landroid/view/View;)V

    .line 541
    return-void
.end method
