.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$ViewLocationHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final greylist-max-o ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final greylist-max-o CHILD_LEFT_INDEX:I = 0x0

.field private static final greylist-max-o CHILD_TOP_INDEX:I = 0x1

.field protected static final whitelist CLIP_TO_PADDING_MASK:I = 0x22

.field private static final greylist-max-r DBG:Z = false

.field private static final greylist-max-o DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final greylist-max-o FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final greylist-max-o FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_ANIMATION_DONE:I = 0x10

.field private static final greylist-max-o FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final greylist-max-o FLAG_CLIP_CHILDREN:I = 0x1

.field private static final greylist-max-o FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final greylist-max-p FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final greylist-max-o FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final greylist-max-o FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final greylist-max-o FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final greylist-max-o FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final greylist-max-o FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final greylist-max-o FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final greylist-max-o FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final greylist-max-o FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final blacklist FLAG_PROPAGATED_FRAME_RATE:I = 0x40000000

.field private static final greylist-max-o FLAG_RUN_ANIMATION:I = 0x8

.field private static final greylist-max-o FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final greylist-max-o FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final greylist-max-p FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final greylist-max-o FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final greylist-max-p FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final whitelist FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final whitelist FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final whitelist FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final whitelist LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static greylist-max-o LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final greylist-max-o LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final whitelist PERSISTENT_ALL_CACHES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_ANIMATION_CACHE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_NO_CACHE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_SCROLLING_CACHE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewGroup"

.field private static greylist-max-o sDebugLines:[F

.field private static blacklist sToolkitViewGroupFrameRateApiFlagValue:Z


# instance fields
.field private greylist-max-o mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field greylist-max-o mCachePaint:Landroid/graphics/Paint;

.field private greylist-max-o mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mChildTransformation:Landroid/view/animation/Transformation;

.field greylist-max-o mChildUnhandledKeyListeners:I

.field private greylist-max-p mChildren:[Landroid/view/View;

.field private greylist-max-p mChildrenCount:I

.field private greylist-max-o mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCurrentDragChild:Landroid/view/View;

.field private greylist-max-o mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private greylist-max-o mDefaultFocus:Landroid/view/View;

.field protected greylist mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private greylist mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private greylist-max-p mFocused:Landroid/view/View;

.field greylist-max-o mFocusedInCluster:Landroid/view/View;

.field protected greylist-max-p mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mHoveredSelf:Z

.field private blacklist mInsetsAnimationDispatchMode:I

.field greylist-max-o mInvalidateRegion:Landroid/graphics/RectF;

.field greylist-max-o mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mIsInterestedInDrag:Z

.field private greylist-max-o mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private greylist-max-o mLayoutCalledWhileSuppressed:Z

.field private greylist-max-o mLayoutMode:I

.field private greylist-max-o mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private greylist-max-o mLocalPoint:Landroid/graphics/PointF;

.field private greylist-max-o mNestedScrollAxes:I

.field protected greylist-max-p mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected greylist mPersistentDrawingCache:I

.field private greylist-max-o mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSuppressLayout:Z

.field private blacklist mTempLocation:[I

.field private blacklist mTempPoint:Landroid/graphics/Point;

.field private blacklist mTempPosition:[F

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTooltipHoverTarget:Landroid/view/View;

.field private greylist-max-o mTooltipHoveredSelf:Z

.field private blacklist mTransientIndices:Landroid/util/IntArray;

.field private greylist-max-o mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransition:Landroid/animation/LayoutTransition;

.field private greylist-max-o mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationListener(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutAnimationController(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyAnimationListener(Landroid/view/ViewGroup;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 388
    const/high16 v0, 0x40000

    const/high16 v1, 0x60000

    const/high16 v2, 0x20000

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 460
    invoke-static {}, Landroid/view/flags/Flags;->toolkitViewgroupSetRequestedFrameRateApi()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    .line 566
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 654
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 704
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 707
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 708
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 711
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 712
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 715
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 273
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 594
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 621
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 632
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 633
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 639
    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 646
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7253
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 717
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 718
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 719
    return-void
.end method

.method private greylist-max-o addDisappearingView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 7146
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7148
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_c

    .line 7149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .line 7152
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7153
    return-void
.end method

.method private greylist-max-o addInArray(Landroid/view/View;I)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5399
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5400
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5401
    .local v1, "count":I
    array-length v2, v0

    .line 5402
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne p2, v1, :cond_20

    .line 5403
    if-ne v2, v1, :cond_17

    .line 5404
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5405
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5406
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5408
    :cond_17
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_54

    .line 5409
    :cond_20
    if-ge p2, v1, :cond_55

    .line 5410
    if-ne v2, v1, :cond_3b

    .line 5411
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5412
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5413
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5414
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_42

    .line 5416
    :cond_3b
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5418
    :goto_42
    aput-object p1, v0, p2

    .line 5419
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5420
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_54

    .line 5421
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5426
    :cond_54
    :goto_54
    return-void

    .line 5424
    :cond_55
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .line 2990
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2991
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2992
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2993
    return-object v0
.end method

.method private greylist-max-o addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5282
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_a

    .line 5285
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 5288
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f8

    .line 5293
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_19

    .line 5294
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5297
    :cond_19
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5298
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5301
    :cond_23
    if-eqz p4, :cond_28

    .line 5302
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_2b

    .line 5304
    :cond_28
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5307
    :goto_2b
    if-gez p2, :cond_2f

    .line 5308
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5311
    :cond_2f
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5314
    if-eqz p4, :cond_38

    .line 5315
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_3a

    .line 5317
    :cond_38
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5319
    :goto_3a
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5320
    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 5323
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 5324
    .local v0, "childHasFocus":Z
    if-eqz v0, :cond_50

    .line 5325
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5328
    :cond_50
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5329
    .local v1, "ai":Landroid/view/View$AttachInfo;
    const/high16 v2, 0x400000

    const/4 v3, 0x1

    if-eqz v1, :cond_73

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_73

    .line 5330
    iget-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5331
    .local v4, "lastKeepOn":Z
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5332
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5333
    iget-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_71

    .line 5334
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5336
    :cond_71
    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5339
    .end local v4    # "lastKeepOn":Z
    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 5340
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 5343
    :cond_7c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 5345
    iget v4, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_8b

    .line 5346
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5349
    :cond_8b
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 5350
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5353
    :cond_94
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9f

    .line 5354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5357
    :cond_9f
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v2, :cond_be

    .line 5358
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 5359
    .local v2, "transientCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_aa
    if-ge v3, v2, :cond_be

    .line 5360
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 5361
    .local v4, "oldIndex":I
    if-gt p2, v4, :cond_bb

    .line 5362
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/IntArray;->set(II)V

    .line 5359
    .end local v4    # "oldIndex":I
    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 5367
    .end local v2    # "transientCount":I
    .end local v3    # "i":I
    :cond_be
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_cb

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_cb

    .line 5368
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 5371
    :cond_cb
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 5374
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 5377
    :cond_d4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    .line 5380
    sget-boolean v2, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz v2, :cond_f7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_f7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_f7

    .line 5382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 5384
    :cond_f7
    return-void

    .line 5289
    .end local v0    # "childHasFocus":Z
    .end local v1    # "ai":Landroid/view/View$AttachInfo;
    :cond_f8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V
    .registers 11
    .param p0, "region"    # Landroid/graphics/Region;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 7502
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7503
    .local v0, "locationInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7504
    const/4 v1, 0x0

    aget v3, v0, v1

    .line 7505
    .local v3, "x":I
    const/4 v1, 0x1

    aget v4, v0, v1

    .line 7506
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v5, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v6, v4, v1

    move-object v2, p0

    move-object v7, p2

    .end local p0    # "region":Landroid/graphics/Region;
    .end local p2    # "op":Landroid/graphics/Region$Op;
    .local v2, "region":Landroid/graphics/Region;
    .local v7, "op":Landroid/graphics/Region$Op;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 7507
    return-void
.end method

.method private greylist-max-o bindLayoutAnimation(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5486
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5487
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5488
    return-void
.end method

.method private blacklist brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7524
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 7525
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7526
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7527
    goto :goto_19

    .line 7524
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7530
    .end local v1    # "i":I
    :cond_19
    :goto_19
    return-object p1
.end method

.method private greylist-max-o cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2950
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_36

    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, "syntheticEvent":Z
    if-nez p1, :cond_1a

    .line 2953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2954
    .local v1, "now":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2956
    const/16 v3, 0x1002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2957
    const/4 v0, 0x1

    .line 2960
    .end local v1    # "now":J
    :cond_1a
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_1c
    if-eqz v1, :cond_2e

    .line 2961
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2962
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2960
    iget-object v1, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1c

    .line 2964
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2e
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2966
    if-eqz v0, :cond_36

    .line 2967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2970
    .end local v0    # "syntheticEvent":Z
    :cond_36
    return-void
.end method

.method private greylist-max-o cancelHoverTarget(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2338
    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_3
    if-eqz v1, :cond_32

    .line 2339
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2340
    .local v2, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_2f

    .line 2341
    if-nez v0, :cond_10

    .line 2342
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_12

    .line 2344
    :cond_10
    iput-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2346
    :goto_12
    invoke-virtual {v1}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2349
    .local v4, "now":J
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2351
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v6, 0x1002

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2352
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2353
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2354
    return-void

    .line 2356
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v4    # "now":J
    :cond_2f
    move-object v0, v1

    .line 2357
    move-object v1, v2

    .line 2358
    .end local v2    # "next":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_3

    .line 2359
    :cond_32
    return-void
.end method

.method private greylist cancelTouchTarget(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .line 3024
    const/4 v0, 0x0

    .line 3025
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3026
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v1, :cond_31

    .line 3027
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3028
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_2e

    .line 3029
    if-nez v0, :cond_10

    .line 3030
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_12

    .line 3032
    :cond_10
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3034
    :goto_12
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3036
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3037
    .local v4, "now":J
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3039
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v6, 0x1002

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3040
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3041
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3042
    return-void

    .line 3044
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v4    # "now":J
    :cond_2e
    move-object v0, v1

    .line 3045
    move-object v1, v2

    .line 3046
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_3

    .line 3047
    :cond_31
    return-void
.end method

.method private greylist-max-o clearCachedLayoutMode()V
    .registers 2

    .line 5204
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5205
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5207
    :cond_b
    return-void
.end method

.method private greylist-max-o clearTouchTargets()V
    .registers 3

    .line 2935
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2936
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v0, :cond_f

    .line 2938
    :cond_4
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2939
    .local v1, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2940
    move-object v0, v1

    .line 2941
    .end local v1    # "next":Landroid/view/ViewGroup$TouchTarget;
    if-nez v0, :cond_4

    .line 2942
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2944
    :cond_f
    return-void
.end method

.method private greylist-max-o dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    .line 2105
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2106
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2107
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v0, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 2108
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2109
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2110
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2111
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2112
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2113
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 2114
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v1, v2

    .line 2116
    .end local v0    # "offsetX":F
    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    :goto_2b
    return-object v1
.end method

.method private greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2435
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2436
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2437
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2438
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2439
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2440
    .end local v1    # "result":Z
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2441
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2442
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2443
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2444
    .local v2, "result":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2446
    .end local v0    # "offsetX":F
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_2b
    return v1
.end method

.method private greylist-max-o dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2612
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2613
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2614
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2615
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2616
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2617
    .end local v1    # "handled":Z
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2618
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2619
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2620
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2621
    .local v2, "handled":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2623
    .end local v0    # "offsetX":F
    .end local v2    # "handled":Z
    .local v1, "handled":Z
    :goto_2b
    return v1
.end method

.method private greylist-max-o dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .line 3110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3113
    .local v0, "oldAction":I
    const/4 v1, 0x3

    if-eqz p2, :cond_a

    .line 3114
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3118
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v2

    .line 3119
    .local v2, "oldPointerIdBits":I
    and-int v3, v2, p4

    .line 3124
    .local v3, "newPointerIdBits":I
    if-nez v3, :cond_1f

    .line 3125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_88

    if-eq v4, v1, :cond_1e

    .line 3126
    nop

    .line 3176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3126
    const/4 v1, 0x0

    return v1

    .line 3128
    :cond_1e
    move v3, v2

    .line 3137
    :cond_1f
    if-ne v3, v2, :cond_54

    .line 3138
    if-eqz p3, :cond_2f

    :try_start_23
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2f

    .line 3152
    :cond_2a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_58

    .line 3139
    .end local v1    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_2f
    :goto_2f
    if-nez p3, :cond_36

    .line 3140
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_4f

    .line 3142
    .end local v1    # "handled":Z
    :cond_36
    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 3143
    .local v1, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3144
    .local v4, "offsetY":F
    invoke-virtual {p1, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3146
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3148
    .local v5, "handled":Z
    neg-float v6, v1

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_88

    move v1, v5

    .line 3150
    .end local v4    # "offsetY":F
    .end local v5    # "handled":Z
    .local v1, "handled":Z
    :goto_4f
    nop

    .line 3176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3150
    return v1

    .line 3154
    .end local v1    # "handled":Z
    :cond_54
    :try_start_54
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v1

    .line 3158
    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    :goto_58
    if-nez p3, :cond_5f

    .line 3159
    invoke-super {p0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "handled":Z
    goto :goto_80

    .line 3161
    .end local v4    # "handled":Z
    :cond_5f
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3162
    .local v4, "offsetX":F
    iget v5, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v6, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 3163
    .local v5, "offsetY":F
    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3164
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_7b

    .line 3165
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3168
    :cond_7b
    invoke-virtual {p3, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v4, v6

    .line 3172
    .end local v5    # "offsetY":F
    .local v4, "handled":Z
    :goto_80
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_83
    .catchall {:try_start_54 .. :try_end_83} :catchall_88

    .line 3173
    nop

    .line 3176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3173
    return v4

    .line 3176
    .end local v1    # "transformedEvent":Landroid/view/MotionEvent;
    .end local v2    # "oldPointerIdBits":I
    .end local v3    # "newPointerIdBits":I
    .end local v4    # "handled":Z
    :catchall_88
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3177
    throw v1
.end method

.method private static greylist-max-o drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .registers 19
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .line 4167
    add-int v4, p2, p4

    invoke-static/range {p5 .. p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int v0, v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4168
    invoke-static/range {p4 .. p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int v0, v0, p6

    add-int v10, p2, v0

    add-int v11, p3, p5

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v6 .. v11}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4169
    return-void
.end method

.method private static greylist-max-o drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 9
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 9403
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_a

    .line 9405
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 9408
    :cond_a
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9409
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9410
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9411
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9413
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9414
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9415
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9416
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9418
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9419
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9420
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9421
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9423
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9424
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9425
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9426
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9428
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 9429
    return-void
.end method

.method private static greylist-max-o drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .registers 21
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .line 4173
    move/from16 v5, p6

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object/from16 v1, p5

    move/from16 v4, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4174
    neg-int v5, v4

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4175
    move/from16 v5, p6

    neg-int v4, v5

    move v3, p2

    move/from16 v2, p3

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4176
    move v4, v5

    neg-int v10, v4

    neg-int v11, v4

    move-object v6, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v7, p5

    move/from16 v12, p7

    invoke-static/range {v6 .. v12}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4177
    return-void
.end method

.method private greylist-max-o exitHoverTargets()V
    .registers 10

    .line 2325
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_21

    .line 2326
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2327
    .local v1, "now":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2329
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2330
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2331
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2333
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "now":J
    :cond_21
    return-void
.end method

.method private greylist-max-o exitTooltipHoverTargets()V
    .registers 10

    .line 2450
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2451
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2452
    .local v1, "now":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2454
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2455
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2456
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2458
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "now":J
    :cond_21
    return-void
.end method

.method private static greylist-max-o fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 22
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 4182
    sub-int v2, p1, p5

    .line 4183
    .local v2, "x1":I
    sub-int v3, p2, p6

    .line 4185
    .local v3, "y1":I
    add-int v4, p3, p7

    .line 4186
    .local v4, "x4":I
    add-int v10, p4, p8

    .line 4188
    .local v10, "y4":I
    move-object v0, p0

    move v5, p2

    move-object/from16 v1, p9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4189
    move v11, v3

    move v8, v4

    .end local v3    # "y1":I
    .end local v4    # "x4":I
    .local v8, "x4":I
    .local v11, "y1":I
    move v4, p1

    move v3, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4190
    move-object v4, p0

    move v7, p2

    move v6, p3

    move/from16 v9, p4

    move-object/from16 v5, p9

    invoke-static/range {v4 .. v9}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4191
    move/from16 v3, p4

    move v4, v8

    move v5, v10

    .end local v8    # "x4":I
    .end local v10    # "y4":I
    .restart local v4    # "x4":I
    .local v5, "y4":I
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4192
    .end local v4    # "x4":I
    .restart local v8    # "x4":I
    return-void
.end method

.method private static greylist-max-o fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 4151
    if-eq p2, p4, :cond_18

    if-eq p3, p5, :cond_18

    .line 4152
    if-le p2, p4, :cond_9

    .line 4153
    move v0, p2

    .local v0, "tmp":I
    move p2, p4

    move p4, v0

    .line 4155
    .end local v0    # "tmp":I
    :cond_9
    if-le p3, p5, :cond_e

    .line 4156
    move v0, p3

    .restart local v0    # "tmp":I
    move p3, p5

    move p5, v0

    .line 4158
    .end local v0    # "tmp":I
    :cond_e
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    .end local p0    # "canvas":Landroid/graphics/Canvas;
    .end local p1    # "paint":Landroid/graphics/Paint;
    .local v0, "canvas":Landroid/graphics/Canvas;
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1a

    .line 4151
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local p0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_18
    move-object v0, p0

    move-object v5, p1

    .line 4160
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :goto_1a
    return-void
.end method

.method private greylist-max-o findChildWithAccessibilityFocus()Landroid/view/View;
    .registers 6

    .line 2887
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2888
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2889
    return-object v1

    .line 2892
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    .line 2893
    .local v2, "current":Landroid/view/View;
    if-nez v2, :cond_f

    .line 2894
    return-object v1

    .line 2897
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2898
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_13
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_22

    .line 2899
    if-ne v3, p0, :cond_1a

    .line 2900
    return-object v2

    .line 2902
    :cond_1a
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    .line 2903
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_13

    .line 2906
    :cond_22
    return-object v1
.end method

.method private greylist-max-o getAndVerifyPreorderedIndex(IIZ)I
    .registers 8
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    .line 2121
    if-eqz p3, :cond_33

    .line 2122
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 2123
    .local v0, "childIndex1":I
    if-ge v0, p1, :cond_a

    .line 2128
    nop

    .line 2129
    .local v0, "childIndex":I
    goto :goto_34

    .line 2124
    .local v0, "childIndex1":I
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (child count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2130
    .end local v0    # "childIndex1":I
    :cond_33
    move v0, p2

    .line 2132
    .local v0, "childIndex":I
    :goto_34
    return v0
.end method

.method private static greylist-max-o getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3793
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_24

    .line 3794
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3795
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    goto :goto_26

    .line 3796
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3800
    .end local v0    # "child":Landroid/view/View;
    :cond_24
    aget-object v0, p1, p2

    .line 3802
    .restart local v0    # "child":Landroid/view/View;
    :goto_26
    return-object v0
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    .line 3701
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    return-object v0
.end method

.method public static whitelist getChildMeasureSpec(III)I
    .registers 10
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 7051
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7052
    .local v0, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7054
    .local v1, "specSize":I
    const/4 v2, 0x0

    sub-int v3, v1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7056
    .local v2, "size":I
    const/4 v3, 0x0

    .line 7057
    .local v3, "resultSize":I
    const/4 v4, 0x0

    .line 7059
    .local v4, "resultMode":I
    const/4 v5, -0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_4a

    .line 7062
    :sswitch_17
    if-ltz p2, :cond_1d

    .line 7063
    move v3, p2

    .line 7064
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4a

    .line 7065
    :cond_1d
    if-ne p2, v6, :cond_23

    .line 7067
    move v3, v2

    .line 7068
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4a

    .line 7069
    :cond_23
    if-ne p2, v5, :cond_4a

    .line 7072
    move v3, v2

    .line 7073
    const/high16 v4, -0x80000000

    goto :goto_4a

    .line 7098
    :sswitch_29
    if-ltz p2, :cond_2f

    .line 7100
    move v3, p2

    .line 7101
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4a

    .line 7102
    :cond_2f
    if-ne p2, v6, :cond_34

    .line 7105
    move v3, v2

    .line 7106
    const/4 v4, 0x0

    goto :goto_4a

    .line 7107
    :cond_34
    if-ne p2, v5, :cond_4a

    .line 7110
    move v3, v2

    .line 7111
    const/4 v4, 0x0

    goto :goto_4a

    .line 7079
    :sswitch_39
    if-ltz p2, :cond_3f

    .line 7081
    move v3, p2

    .line 7082
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4a

    .line 7083
    :cond_3f
    if-ne p2, v6, :cond_45

    .line 7086
    move v3, v2

    .line 7087
    const/high16 v4, -0x80000000

    goto :goto_4a

    .line 7088
    :cond_45
    if-ne p2, v5, :cond_4a

    .line 7091
    move v3, v2

    .line 7092
    const/high16 v4, -0x80000000

    .line 7116
    :cond_4a
    :goto_4a
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    nop

    :sswitch_data_50
    .sparse-switch
        -0x80000000 -> :sswitch_39
        0x0 -> :sswitch_29
        0x40000000 -> :sswitch_17
    .end sparse-switch
.end method

.method private blacklist getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 3
    .param p1, "flags"    # I

    .line 3695
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3696
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 3697
    return-object v0
.end method

.method private blacklist getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 2

    .line 3764
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3765
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3766
    return-object v0
.end method

.method private greylist-max-o getLocalPoint()Landroid/graphics/PointF;
    .registers 2

    .line 1707
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1708
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private blacklist getTempLocationF()[F
    .registers 2

    .line 3057
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    if-nez v0, :cond_9

    .line 3058
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    .line 3060
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    return-object v0
.end method

.method private blacklist getTempPoint()Landroid/graphics/Point;
    .registers 2

    .line 3064
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 3065
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    .line 3067
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private blacklist getTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 3050
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 3051
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 3053
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private greylist-max-o getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 2977
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_2
    if-eqz v0, :cond_c

    .line 2978
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_9

    .line 2979
    return-object v0

    .line 2977
    :cond_9
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 2982
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2636
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2637
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2638
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2639
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2640
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_20

    .line 2641
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2643
    :cond_20
    return-object v2
.end method

.method private greylist-max-o hasBooleanFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 6682
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o hasChildWithZ()Z
    .registers 4

    .line 4446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_17

    .line 4447
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    .line 4446
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4449
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 743
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 745
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 748
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    .line 749
    .local p1, "N":I
    const/4 p2, 0x0

    .local p2, "i":I
    :goto_15
    if-ge p2, p1, :cond_a5

    .line 750
    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    .line 751
    .local p3, "attr":I
    const/4 p4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_aa

    goto/16 :goto_a1

    .line 795
    :pswitch_23
    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto/16 :goto_a1

    .line 792
    :pswitch_2c
    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 793
    goto/16 :goto_a1

    .line 789
    :pswitch_35
    invoke-virtual {v5, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 790
    goto :goto_a1

    .line 783
    :pswitch_3d
    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 784
    .local p4, "animateLayoutChanges":Z
    if-eqz p4, :cond_a1

    .line 785
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_a1

    .line 780
    .end local p4    # "animateLayoutChanges":Z
    :pswitch_4c
    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 781
    goto :goto_a1

    .line 777
    :pswitch_54
    sget-object p4, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 778
    goto :goto_a1

    .line 765
    :pswitch_60
    invoke-virtual {v5, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 766
    goto :goto_a1

    .line 768
    :pswitch_68
    invoke-virtual {v5, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 769
    goto :goto_a1

    .line 762
    :pswitch_70
    const/4 p4, 0x2

    invoke-virtual {v5, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 763
    goto :goto_a1

    .line 759
    :pswitch_79
    invoke-virtual {v5, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 760
    goto :goto_a1

    .line 771
    :pswitch_81
    invoke-virtual {v5, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 772
    .local p4, "id":I
    if-lez p4, :cond_a1

    .line 773
    iget-object v0, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_a1

    .line 756
    .end local p4    # "id":I
    :pswitch_91
    invoke-virtual {v5, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 757
    goto :goto_a1

    .line 753
    :pswitch_99
    invoke-virtual {v5, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 754
    nop

    .line 749
    .end local p3    # "attr":I
    :cond_a1
    :goto_a1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_15

    .line 800
    .end local p2    # "i":I
    :cond_a5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 801
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_99
        :pswitch_91
        :pswitch_81
        :pswitch_79
        :pswitch_70
        :pswitch_68
        :pswitch_60
        :pswitch_54
        :pswitch_4c
        :pswitch_3d
        :pswitch_35
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o initViewGroup()V
    .registers 4

    .line 723
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v0

    if-nez v0, :cond_b

    .line 724
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 726
    :cond_b
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 727
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 728
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 729
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 730
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 733
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 735
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 738
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 739
    return-void
.end method

.method private blacklist isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 7484
    .local p3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7485
    .local v0, "childrenCount":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 7486
    .local v3, "customOrder":Z
    :goto_f
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7487
    .local v4, "children":[Landroid/view/View;
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_13
    if-ltz v5, :cond_26

    .line 7488
    invoke-direct {p0, v0, v5, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6

    .line 7489
    .local v6, "childIndex":I
    invoke-static {p3, v4, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 7490
    .local v7, "child":Landroid/view/View;
    if-ne v7, p1, :cond_20

    .line 7491
    return v1

    .line 7493
    :cond_20
    if-ne v7, p2, :cond_23

    .line 7494
    return v2

    .line 7487
    .end local v6    # "childIndex":I
    .end local v7    # "child":Landroid/view/View;
    :cond_23
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    .line 7498
    .end local v5    # "i":I
    :cond_26
    return v2
.end method

.method private blacklist newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7535
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 7536
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 7535
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7538
    .end local v1    # "i":I
    :cond_11
    return-object p1
.end method

.method private greylist-max-o notifyAnimationListener()V
    .registers 2

    .line 4490
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4491
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4493
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_18

    .line 4494
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 4500
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4503
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4504
    return-void
.end method

.method private static greylist-max-o obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 2551
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_7

    .line 2552
    return-object p0

    .line 2554
    :cond_7
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .registers 11
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3726
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3727
    .local v0, "childrenCount":I
    if-gtz v0, :cond_5

    .line 3728
    return-void

    .line 3730
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3731
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_13

    .line 3732
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 3733
    .local v2, "customOrder":Z
    :goto_14
    invoke-direct {p0}, Landroid/view/ViewGroup;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v3

    .line 3734
    .local v3, "afm":Landroid/view/autofill/AutofillManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v0, :cond_80

    .line 3735
    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 3736
    .local v5, "childIndex":I
    if-nez v1, :cond_26

    .line 3737
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v5

    goto :goto_2c

    :cond_26
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3738
    .local v6, "child":Landroid/view/View;
    :goto_2c
    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_7a

    .line 3739
    invoke-virtual {v6}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v7

    if-nez v7, :cond_7a

    instance-of v7, v6, Landroid/webkit/WebView;

    if-eqz v7, :cond_40

    .line 3740
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 3741
    :cond_40
    invoke-virtual {v6}, Landroid/view/View;->isMatchingAutofillableHeuristics()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3742
    invoke-virtual {v6}, Landroid/view/View;->isActivityDeniedForAutofillForUnimportantView()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 3743
    :cond_4c
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 3744
    invoke-virtual {v6}, Landroid/view/View;->getAutofillType()I

    move-result v7

    if-nez v7, :cond_7a

    .line 3745
    :cond_58
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 3746
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-eqz v7, :cond_6f

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6f

    .line 3747
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_6f

    goto :goto_7a

    .line 3756
    :cond_6f
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_7d

    .line 3757
    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v7, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_7d

    .line 3755
    :cond_7a
    :goto_7a
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3734
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3760
    .end local v4    # "i":I
    :cond_80
    return-void
.end method

.method private blacklist populateChildrenForContentCapture(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3771
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3772
    .local v0, "childrenCount":I
    if-gtz v0, :cond_5

    .line 3773
    return-void

    .line 3775
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3776
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_13

    .line 3777
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 3778
    .local v2, "customOrder":Z
    :goto_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_3f

    .line 3779
    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3780
    .local v4, "childIndex":I
    if-nez v1, :cond_22

    .line 3781
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_28

    :cond_22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3782
    .local v5, "child":Landroid/view/View;
    :goto_28
    invoke-virtual {v5}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3783
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 3784
    :cond_32
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3c

    .line 3785
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3778
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3788
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o recreateChildDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 4552
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4553
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4554
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 4555
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4556
    return-void
.end method

.method private greylist-max-o removeFromArray(I)V
    .registers 7
    .param p1, "index"    # I

    .line 5430
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5431
    .local v0, "children":[Landroid/view/View;
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 5432
    :cond_11
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5434
    :cond_15
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5435
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_24

    .line 5436
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    goto :goto_39

    .line 5437
    :cond_24
    if-ltz p1, :cond_50

    if-ge p1, v1, :cond_50

    .line 5438
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5439
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    .line 5443
    :goto_39
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_45

    .line 5444
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 5445
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_4f

    .line 5446
    :cond_45
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_4f

    .line 5447
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5449
    :cond_4f
    :goto_4f
    return-void

    .line 5441
    :cond_50
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private greylist-max-o removeFromArray(II)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5453
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5454
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5456
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5457
    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5459
    .local v2, "end":I
    if-ne p1, v2, :cond_12

    .line 5460
    return-void

    .line 5463
    :cond_12
    const/4 v3, 0x0

    if-ne v2, v1, :cond_22

    .line 5464
    move v4, p1

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_21

    .line 5465
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5466
    aput-object v3, v0, v4

    .line 5464
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .end local v4    # "i":I
    :cond_21
    goto :goto_3c

    .line 5469
    :cond_22
    move v4, p1

    .restart local v4    # "i":I
    :goto_23
    if-ge v4, v2, :cond_2c

    .line 5470
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5469
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 5475
    .end local v4    # "i":I
    :cond_2c
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5477
    sub-int v4, v2, p1

    sub-int v4, v1, v4

    .restart local v4    # "i":I
    :goto_35
    if-ge v4, v1, :cond_3c

    .line 5478
    aput-object v3, v0, v4

    .line 5477
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 5482
    .end local v4    # "i":I
    :cond_3c
    :goto_3c
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5483
    return-void
.end method

.method private greylist-max-o removePointersFromTouchTargets(I)V
    .registers 7
    .param p1, "pointerIdBits"    # I

    .line 3000
    const/4 v0, 0x0

    .line 3001
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3002
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v1, :cond_25

    .line 3003
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3004
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_22

    .line 3005
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 3006
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_22

    .line 3007
    if-nez v0, :cond_1b

    .line 3008
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1d

    .line 3010
    :cond_1b
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3012
    :goto_1d
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3013
    move-object v1, v2

    .line 3014
    goto :goto_3

    .line 3017
    :cond_22
    move-object v0, v1

    .line 3018
    move-object v1, v2

    .line 3019
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_3

    .line 3020
    :cond_25
    return-void
.end method

.method private greylist-max-o removeViewInternal(ILandroid/view/View;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 5598
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 5599
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5602
    :cond_9
    const/4 v0, 0x0

    .line 5603
    .local v0, "clearChildFocus":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_13

    .line 5604
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5605
    const/4 v0, 0x1

    .line 5607
    :cond_13
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v1, :cond_1a

    .line 5608
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5611
    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5613
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5614
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5616
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5617
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3e

    .line 5619
    :cond_36
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_41

    .line 5620
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_41

    .line 5618
    :cond_3e
    :goto_3e
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5623
    :cond_41
    :goto_41
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 5624
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5627
    :cond_4b
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5629
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5631
    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 5632
    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 5635
    :cond_5a
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v1, :cond_61

    .line 5636
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5638
    :cond_61
    if-eqz v0, :cond_6f

    .line 5639
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 5641
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5645
    :cond_6f
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5647
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_7d

    .line 5648
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5651
    :cond_7d
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v1, :cond_82

    goto :goto_88

    :cond_82
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 5652
    .local v2, "transientCount":I
    :goto_88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_89
    if-ge v1, v2, :cond_9d

    .line 5653
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 5654
    .local v3, "oldIndex":I
    if-ge p1, v3, :cond_9a

    .line 5655
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/IntArray;->set(II)V

    .line 5652
    .end local v3    # "oldIndex":I
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 5659
    .end local v1    # "i":I
    :cond_9d
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v1, :cond_a6

    .line 5660
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5662
    :cond_a6
    return-void
.end method

.method private greylist-max-o removeViewInternal(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 5589
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5590
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 5591
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5592
    const/4 v1, 0x1

    return v1

    .line 5594
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o removeViewsInternal(II)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5704
    add-int v0, p1, p2

    .line 5706
    .local v0, "end":I
    if-ltz p1, :cond_87

    if-ltz p2, :cond_87

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_87

    .line 5710
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5711
    .local v1, "focused":Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v3

    .line 5712
    .local v2, "detach":Z
    :goto_14
    const/4 v4, 0x0

    .line 5713
    .local v4, "clearChildFocus":Z
    const/4 v5, 0x0

    .line 5715
    .local v5, "clearDefaultFocus":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5717
    .local v6, "children":[Landroid/view/View;
    move v7, p1

    .local v7, "i":I
    :goto_19
    if-ge v7, v0, :cond_70

    .line 5718
    aget-object v8, v6, v7

    .line 5720
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_26

    .line 5721
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5724
    :cond_26
    if-ne v8, v1, :cond_2d

    .line 5725
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5726
    const/4 v4, 0x1

    .line 5728
    :cond_2d
    iget-object v9, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v8, v9, :cond_32

    .line 5729
    move-object v5, v8

    .line 5731
    :cond_32
    iget-object v9, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v8, v9, :cond_39

    .line 5732
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5735
    :cond_39
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5737
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5738
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5740
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_5b

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_55

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5741
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    goto :goto_5b

    .line 5743
    :cond_55
    if-eqz v2, :cond_5e

    .line 5744
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_5e

    .line 5742
    :cond_5b
    :goto_5b
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5747
    :cond_5e
    :goto_5e
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 5748
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5751
    :cond_67
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5753
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5717
    .end local v8    # "view":Landroid/view/View;
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 5756
    .end local v7    # "i":I
    :cond_70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5758
    if-eqz v5, :cond_78

    .line 5759
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5761
    :cond_78
    if-eqz v4, :cond_86

    .line 5762
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v3

    if-nez v3, :cond_86

    .line 5764
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5767
    :cond_86
    return-void

    .line 5707
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "detach":Z
    .end local v4    # "clearChildFocus":Z
    .end local v5    # "clearDefaultFocus":Landroid/view/View;
    .end local v6    # "children":[Landroid/view/View;
    :cond_87
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private static greylist-max-o resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2924
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 2925
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2926
    const/4 v0, 0x1

    return v0

    .line 2928
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o resetTouchState()V
    .registers 3

    .line 2913
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2914
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2915
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2916
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2917
    return-void
.end method

.method private greylist-max-o restoreFocusInClusterInternal(I)Z
    .registers 4
    .param p1, "direction"    # I

    .line 3444
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 3446
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3447
    const/4 v0, 0x1

    return v0

    .line 3449
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o setBooleanFlag(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 6686
    if-eqz p2, :cond_8

    .line 6687
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_e

    .line 6689
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6691
    :goto_e
    return-void
.end method

.method private greylist-max-o setLayoutMode(IZ)V
    .registers 4
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .line 6763
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 6764
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6765
    return-void
.end method

.method private greylist-max-o setTouchscreenBlocksFocusNoRefocus(Z)V
    .registers 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1429
    if-eqz p1, :cond_a

    .line 1430
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 1432
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1434
    :goto_12
    return-void
.end method

.method private blacklist shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z
    .registers 3
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;

    .line 3715
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 3716
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z
    .registers 3
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;

    .line 3705
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 3706
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z
    .registers 3
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;

    .line 3710
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 3711
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z
    .registers 3
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;

    .line 3720
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 3721
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o sign(I)I
    .registers 2
    .param p0, "x"    # I

    .line 4163
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0
.end method

.method private greylist-max-o touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5393
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5394
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5396
    :cond_b
    return-void
.end method


# virtual methods
.method public whitelist addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2478
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2479
    return-void

    .line 2481
    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2483
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_c
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2484
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_2d

    .line 2485
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2486
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2a

    .line 2487
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2488
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2490
    :cond_27
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2484
    .end local v3    # "child":Landroid/view/View;
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2495
    .end local v1    # "childrenCount":I
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2496
    nop

    .line 2497
    return-void

    .line 2495
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2496
    throw v1
.end method

.method public whitelist addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "extraDataKey"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 3854
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3856
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    .line 3857
    .local v0, "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    .line 3858
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    .line 3860
    .end local v0    # "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    :cond_1e
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 14
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1319
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1321
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1322
    .local v1, "descendantFocusability":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

    .line 1323
    .local v2, "blockFocusForTouchscreen":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_18

    if-nez v2, :cond_16

    goto :goto_18

    :cond_16
    move v3, v4

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v3, 0x1

    .line 1325
    .local v3, "focusSelf":Z
    :goto_19
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_23

    .line 1326
    if-eqz v3, :cond_22

    .line 1327
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1329
    :cond_22
    return-void

    .line 1332
    :cond_23
    if-eqz v2, :cond_27

    .line 1333
    or-int/lit8 p3, p3, 0x1

    .line 1336
    :cond_27
    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_30

    if-eqz v3, :cond_30

    .line 1337
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1340
    :cond_30
    const/4 v5, 0x0

    .line 1341
    .local v5, "count":I
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v6, [Landroid/view/View;

    .line 1342
    .local v6, "children":[Landroid/view/View;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v7, v8, :cond_4c

    .line 1343
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v8, v8, v7

    .line 1344
    .local v8, "child":Landroid/view/View;
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_49

    .line 1345
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "count":I
    .local v9, "count":I
    aput-object v8, v6, v5

    move v5, v9

    .line 1342
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "count":I
    .restart local v5    # "count":I
    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 1348
    .end local v7    # "i":I
    :cond_4c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v7

    invoke-static {v6, v4, v5, p0, v7}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1349
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_54
    if-ge v4, v5, :cond_5e

    .line 1350
    aget-object v7, v6, v4

    invoke-virtual {v7, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1349
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1357
    .end local v4    # "i":I
    :cond_5e
    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_6d

    if-eqz v3, :cond_6d

    .line 1358
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_6d

    .line 1359
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1361
    :cond_6d
    return-void
.end method

.method public whitelist addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .registers 10
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1365
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1367
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    .line 1372
    .local v1, "blockedFocus":Z
    :try_start_f
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1373
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 1375
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1376
    nop

    .line 1377
    .end local v1    # "blockedFocus":Z
    goto :goto_22

    .line 1375
    .restart local v1    # "blockedFocus":Z
    :catchall_1a
    move-exception v2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1376
    throw v2

    .line 1378
    .end local v1    # "blockedFocus":Z
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1381
    :goto_22
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 1383
    return-void

    .line 1386
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_32

    .line 1387
    return-void

    .line 1390
    :cond_32
    const/4 v1, 0x0

    .line 1391
    .local v1, "count":I
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v3, v3, [Landroid/view/View;

    .line 1392
    .local v3, "visibleChildren":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_4e

    .line 1393
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 1394
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_4b

    .line 1395
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    aput-object v5, v3, v1

    move v1, v6

    .line 1392
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 1398
    .end local v4    # "i":I
    :cond_4e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v4

    invoke-static {v3, v2, v1, p0, v4}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    if-ge v2, v1, :cond_60

    .line 1400
    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1399
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1402
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method public whitelist addStatesFromChildren()Z
    .registers 2

    .line 7837
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1540
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1542
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1543
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1545
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_18

    .line 1546
    aget-object v3, v1, v2

    .line 1547
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 1548
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1545
    .end local v3    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1551
    .end local v2    # "i":I
    :cond_18
    return-void
.end method

.method public greylist addTransientView(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 4904
    if-ltz p2, :cond_77

    if-nez p1, :cond_6

    goto/16 :goto_77

    .line 4907
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_5c

    .line 4912
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_1c

    .line 4913
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 4914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 4916
    :cond_1c
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 4917
    .local v0, "oldSize":I
    if-lez v0, :cond_3e

    .line 4919
    const/4 v1, 0x0

    .local v1, "insertionIndex":I
    :goto_25
    if-ge v1, v0, :cond_33

    .line 4920
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_30

    .line 4921
    goto :goto_33

    .line 4919
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 4924
    :cond_33
    :goto_33
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/IntArray;->add(II)V

    .line 4925
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4926
    .end local v1    # "insertionIndex":I
    goto :goto_48

    .line 4927
    :cond_3e
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->add(I)V

    .line 4928
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4930
    :goto_48
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4931
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_57

    .line 4932
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4934
    :cond_57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4935
    return-void

    .line 4908
    .end local v0    # "oldSize":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified view already has a parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4905
    :cond_77
    :goto_77
    return-void
.end method

.method public whitelist addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5030
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5031
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5047
    if-eqz p1, :cond_1b

    .line 5050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5051
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_17

    .line 5052
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5053
    if-eqz v0, :cond_f

    goto :goto_17

    .line 5054
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null  "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5058
    :cond_17
    :goto_17
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5059
    return-void

    .line 5048
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;II)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5072
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5073
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5074
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5075
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5076
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5109
    if-eqz p1, :cond_e

    .line 5116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5119
    return-void

    .line 5110
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5090
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5091
    return-void
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5261
    if-eqz p1, :cond_14

    .line 5264
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5265
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5266
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5267
    const/4 v0, 0x1

    return v0

    .line 5262
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 5502
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5504
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_c

    .line 5505
    new-instance v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 5506
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5509
    :cond_c
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5510
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 5511
    return-void
.end method

.method protected whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5937
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5939
    if-gez p2, :cond_6

    .line 5940
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5943
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5945
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5946
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5949
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 5950
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5952
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5953
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5955
    :cond_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_46

    .line 5956
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 5955
    :goto_47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 5957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5958
    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1696
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1697
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 1698
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1699
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1700
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1701
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1702
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1704
    :cond_16
    return-void
.end method

.method greylist-max-o buildOrderedChildList()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4461
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4462
    .local v0, "childrenCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_58

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_58

    .line 4464
    :cond_c
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 4465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_22

    .line 4468
    :cond_18
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4469
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4472
    :goto_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    .line 4473
    .local v1, "customOrder":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v0, :cond_55

    .line 4475
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    .line 4476
    .local v3, "childIndex":I
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 4477
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    .line 4480
    .local v5, "currentZ":F
    move v6, v2

    .line 4481
    .local v6, "insertIndex":I
    :goto_36
    if-lez v6, :cond_4d

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4d

    .line 4482
    add-int/lit8 v6, v6, -0x1

    goto :goto_36

    .line 4484
    :cond_4d
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4473
    .end local v3    # "childIndex":I
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "currentZ":F
    .end local v6    # "insertIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4486
    .end local v2    # "i":I
    :cond_55
    iget-object v2, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v2

    .line 4462
    .end local v1    # "customOrder":Z
    :cond_58
    :goto_58
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2878
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist calculateAccessibilityDataSensitive()V
    .registers 3

    .line 3951
    invoke-super {p0}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    .line 3952
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_12

    .line 3953
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    .line 3952
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3955
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 6478
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o captureTransitioningViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8185
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 8186
    return-void

    .line 8188
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8189
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 8191
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8192
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_22

    .line 8193
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8194
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 8192
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 8197
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5133
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 7846
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 7847
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7849
    :cond_9
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .line 1152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v0

    .line 1153
    .local v0, "oldHasTransientState":Z
    if-eqz p2, :cond_d

    .line 1154
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_13

    .line 1156
    :cond_d
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 1159
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 1160
    .local v1, "newHasTransientState":Z
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_46

    if-eq v0, v1, :cond_46

    .line 1162
    :try_start_1d
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_22
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_22} :catch_23

    .line 1166
    goto :goto_46

    .line 1163
    :catch_23
    move-exception v2

    .line 1164
    .local v2, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewGroup"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    .end local v2    # "e":Ljava/lang/AbstractMethodError;
    :cond_46
    :goto_46
    return-void
.end method

.method protected whitelist cleanupLayoutState(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5276
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5277
    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1188
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 1189
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 1191
    :cond_c
    return-void
.end method

.method greylist-max-o clearDefaultFocus(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 904
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 905
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 906
    return-void

    .line 909
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_35

    .line 913
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 914
    .local v1, "sibling":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 915
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 916
    return-void

    .line 917
    :cond_26
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 918
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 912
    .end local v1    # "sibling":Landroid/view/View;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 922
    .end local v0    # "i":I
    :cond_35
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_42

    .line 923
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 925
    :cond_42
    return-void
.end method

.method public whitelist clearDisappearingChildren()V
    .registers 6

    .line 7125
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7126
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_24

    .line 7127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7128
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 7129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7130
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_18

    .line 7131
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7133
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 7128
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7135
    .end local v2    # "i":I
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7138
    .end local v1    # "count":I
    :cond_24
    return-void
.end method

.method public whitelist clearFocus()V
    .registers 3

    .line 1198
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1199
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_10

    .line 1201
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1202
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1203
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1205
    .end local v0    # "focused":Landroid/view/View;
    :goto_10
    return-void
.end method

.method greylist-max-o clearFocusedInCluster()V
    .registers 5

    .line 950
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    .line 951
    .local v0, "top":Landroid/view/View;
    move-object v1, p0

    .line 953
    .local v1, "parent":Landroid/view/ViewParent;
    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 954
    if-ne v1, v0, :cond_e

    .line 955
    goto :goto_16

    .line 957
    :cond_e
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 958
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 959
    :goto_16
    return-void
.end method

.method greylist-max-o clearFocusedInCluster(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 940
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_5

    .line 941
    return-void

    .line 943
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    .line 944
    return-void
.end method

.method greylist-max-o computeOpticalInsets()Landroid/graphics/Insets;
    .registers 9

    .line 4129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4130
    const/4 v0, 0x0

    .line 4131
    .local v0, "left":I
    const/4 v1, 0x0

    .line 4132
    .local v1, "top":I
    const/4 v2, 0x0

    .line 4133
    .local v2, "right":I
    const/4 v3, 0x0

    .line 4134
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_38

    .line 4135
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4136
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_35

    .line 4137
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .line 4138
    .local v6, "insets":Landroid/graphics/Insets;
    iget v7, v6, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4139
    iget v7, v6, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4140
    iget v7, v6, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4141
    iget v7, v6, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4134
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "insets":Landroid/graphics/Insets;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 4144
    .end local v4    # "i":I
    :cond_38
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4

    .line 4146
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_3d
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "canvasProvider"    # Landroid/view/ViewDebug$CanvasProvider;
    .param p2, "skipChildren"    # Z

    .line 4094
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4095
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4097
    .local v1, "visibilities":[I
    if-eqz p2, :cond_23

    .line 4098
    new-array v1, v0, [I

    .line 4099
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_23

    .line 4100
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4101
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    aput v4, v1, v2

    .line 4102
    aget v4, v1, v2

    if-nez v4, :cond_20

    .line 4103
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, -0xd

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/view/View;->mViewFlags:I

    .line 4099
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4110
    .end local v2    # "i":I
    :cond_23
    :try_start_23
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_3f

    .line 4112
    if-eqz p2, :cond_3e

    .line 4113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_3e

    .line 4114
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4115
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4113
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 4110
    .end local v3    # "i":I
    :cond_3e
    return-object v2

    .line 4112
    :catchall_3f
    move-exception v2

    if-eqz p2, :cond_57

    .line 4113
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_43
    if-ge v3, v0, :cond_57

    .line 4114
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4115
    .restart local v4    # "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4113
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 4119
    .end local v3    # "i":I
    :cond_57
    throw v2
.end method

.method protected whitelist debug(I)V
    .registers 7
    .param p1, "depth"    # I

    .line 6880
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6883
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_2a

    .line 6884
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6885
    .local v0, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mFocused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6886
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6889
    .end local v0    # "output":Ljava/lang/String;
    :cond_2a
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_4f

    .line 6890
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6891
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDefaultFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6892
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6893
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6895
    .end local v0    # "output":Ljava/lang/String;
    :cond_4f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_74

    .line 6896
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6897
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mFocusedInCluster"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6898
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6899
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6901
    .end local v0    # "output":Ljava/lang/String;
    :cond_74
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_93

    .line 6902
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6903
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6904
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6906
    .end local v0    # "output":Ljava/lang/String;
    :cond_93
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6907
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_96
    if-ge v2, v0, :cond_a4

    .line 6908
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    .line 6909
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    .line 6907
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 6912
    .end local v2    # "i":I
    :cond_a4
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v2, :cond_c3

    .line 6913
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 6914
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6915
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6917
    .end local v2    # "output":Ljava/lang/String;
    :cond_c3
    return-void
.end method

.method greylist-max-o decrementChildUnhandledKeyListeners()V
    .registers 2

    .line 8228
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8229
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-nez v0, :cond_17

    .line 8230
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 8231
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 8234
    :cond_17
    return-void
.end method

.method protected greylist-max-o destroyHardwareResources()V
    .registers 4

    .line 5224
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 5225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5226
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 5227
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 5226
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5229
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method protected whitelist detachAllViewsFromParent()V
    .registers 7

    .line 6049
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6050
    .local v0, "count":I
    if-gtz v0, :cond_5

    .line 6051
    return-void

    .line 6054
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6055
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6057
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1e

    .line 6058
    aget-object v3, v1, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6059
    aget-object v3, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setDetached(Z)V

    .line 6060
    aput-object v4, v1, v2

    .line 6057
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 6062
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method protected whitelist detachViewFromParent(I)V
    .registers 4
    .param p1, "index"    # I

    .line 6000
    if-ltz p1, :cond_e

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_e

    .line 6001
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDetached(Z)V

    .line 6003
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6004
    return-void
.end method

.method protected whitelist detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5978
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 5979
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5980
    return-void
.end method

.method protected whitelist detachViewsFromParent(II)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 6025
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6026
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6027
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1b

    .line 6028
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDetached(Z)V

    .line 6027
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6030
    .end local v1    # "i":I
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 6031
    return-void
.end method

.method public greylist-max-o dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 1060
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1061
    return v1

    .line 1063
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1064
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1d

    .line 1065
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1066
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1067
    return v1

    .line 1064
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1070
    .end local v2    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7511
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7512
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7513
    return-object p1

    .line 7515
    :cond_b
    sget-boolean v0, Landroid/view/View;->sBrokenInsetsDispatch:Z

    if-eqz v0, :cond_14

    .line 7516
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 7518
    :cond_14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method greylist dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 9
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 3519
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3520
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3521
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3523
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3524
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3525
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 3526
    aget-object v3, v1, v2

    .line 3527
    .local v3, "child":Landroid/view/View;
    nop

    .line 3528
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v4

    .line 3527
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3525
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3530
    .end local v2    # "i":I
    :cond_2a
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_36

    :cond_30
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 3531
    .local v2, "transientCount":I
    :goto_36
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v2, :cond_50

    .line 3532
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3533
    .local v4, "view":Landroid/view/View;
    nop

    .line 3534
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3533
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3531
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 3536
    .end local v3    # "i":I
    :cond_50
    return-void
.end method

.method greylist-max-o dispatchCancelPendingInputEvents()V
    .registers 5

    .line 4733
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4735
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4736
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4737
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 4738
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4737
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4740
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2036
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    .line 2038
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2039
    return v2

    .line 2041
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    .line 2043
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2044
    return v2

    .line 2047
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 8
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 1682
    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_1b

    .line 1683
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1684
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1685
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1686
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1b

    .line 1687
    aget-object v3, v1, v2

    .line 1688
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1686
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1692
    .end local v0    # "count":I
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1664
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1665
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1666
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1667
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1668
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1667
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1670
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 8
    .param p2, "supportedFormats"    # [I
    .param p3, "capability"    # Landroid/view/translation/TranslationCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 9488
    .local p1, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .local p4, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9490
    .local v0, "childCount":I
    if-nez v0, :cond_a

    .line 9491
    return-void

    .line 9493
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 9494
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9495
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9493
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 9498
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-r dispatchDetachedFromWindow()V
    .registers 6

    .line 3965
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3968
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3969
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 3972
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3975
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 3976
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 3977
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_1c

    .line 3978
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 3979
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 3982
    :cond_1c
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3983
    .local v0, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3984
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_2b

    .line 3985
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3984
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3987
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3988
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_33

    goto :goto_39

    :cond_33
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 3989
    .local v1, "transientCount":I
    :goto_39
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3a
    if-ge v3, v1, :cond_4a

    .line 3990
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3991
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3989
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 3993
    .end local v3    # "i":I
    :cond_4a
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3994
    return-void
.end method

.method public whitelist dispatchDisplayHint(I)V
    .registers 6
    .param p1, "hint"    # I

    .line 1582
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1583
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1584
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1585
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1586
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1585
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1588
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method greylist-max-o dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1713
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 1719
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1720
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1722
    :cond_11
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1d

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1728
    const/4 v0, 0x0

    .line 1729
    .local v0, "retval":Z
    iget v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1730
    .local v1, "tx":F
    iget v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1731
    .local v2, "ty":F
    iget-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1734
    .local v3, "td":Landroid/content/ClipData;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 1736
    .local v4, "localPoint":Landroid/graphics/PointF;
    iget v5, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_108

    goto/16 :goto_106

    .line 1778
    :pswitch_13
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1779
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_32

    .line 1780
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1782
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1783
    const/4 v0, 0x1

    .line 1785
    .end local v8    # "child":Landroid/view/View;
    :cond_2e
    goto :goto_1b

    .line 1786
    :cond_2f
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1788
    :cond_32
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v7, :cond_3d

    .line 1789
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    .line 1790
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1793
    :cond_3d
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_4b

    .line 1794
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1795
    const/4 v0, 0x1

    .line 1797
    :cond_48
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1799
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_4b
    goto/16 :goto_106

    .line 1804
    :pswitch_4d
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v5, v7, v4}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    .line 1806
    .local v5, "target":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v5, v7, :cond_84

    .line 1807
    sget-boolean v7, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v7, :cond_82

    .line 1812
    iget v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1815
    .local v7, "action":I
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    .line 1816
    iput v8, p1, Landroid/view/DragEvent;->mY:F

    .line 1817
    iput-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1819
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v6, :cond_72

    .line 1820
    const/4 v6, 0x6

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1821
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1824
    :cond_72
    if-eqz v5, :cond_7a

    .line 1825
    const/4 v6, 0x5

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1826
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1829
    :cond_7a
    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1830
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1831
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1832
    iput-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1834
    .end local v7    # "action":I
    :cond_82
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1837
    :cond_84
    if-nez v5, :cond_8b

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_8b

    .line 1838
    move-object v5, p0

    .line 1842
    :cond_8b
    if-eqz v5, :cond_106

    .line 1843
    if-eq v5, p0, :cond_b2

    .line 1844
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iput v6, p1, Landroid/view/DragEvent;->mX:F

    .line 1845
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iput v6, p1, Landroid/view/DragEvent;->mY:F

    .line 1847
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1849
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1850
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1852
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_106

    .line 1854
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_a9

    .line 1855
    move v6, v0

    .local v6, "eventWasConsumed":Z
    goto :goto_ab

    .line 1857
    .end local v6    # "eventWasConsumed":Z
    :cond_a9
    iget-boolean v6, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1860
    .restart local v6    # "eventWasConsumed":Z
    :goto_ab
    if-nez v6, :cond_b1

    .line 1861
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1863
    .end local v6    # "eventWasConsumed":Z
    :cond_b1
    goto :goto_106

    .line 1865
    :cond_b2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_106

    .line 1739
    .end local v5    # "target":Landroid/view/View;
    :pswitch_b7
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1742
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1743
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v5, :cond_cb

    .line 1744
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_d0

    .line 1746
    :cond_cb
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1750
    :goto_d0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1751
    .local v5, "count":I
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1752
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d5
    if-ge v8, v5, :cond_f1

    .line 1753
    aget-object v9, v7, v8

    .line 1754
    .local v9, "child":Landroid/view/View;
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1755
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_ee

    .line 1756
    aget-object v10, v7, v8

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 1757
    const/4 v0, 0x1

    .line 1752
    .end local v9    # "child":Landroid/view/View;
    :cond_ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_d5

    .line 1763
    .end local v8    # "i":I
    :cond_f1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1764
    iget-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v8, :cond_fc

    .line 1765
    const/4 v0, 0x1

    .line 1768
    :cond_fc
    if-nez v0, :cond_105

    .line 1771
    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 1772
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1774
    .end local v5    # "count":I
    .end local v7    # "children":[Landroid/view/View;
    :cond_105
    nop

    .line 1871
    :cond_106
    :goto_106
    return v0

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_4d
        :pswitch_4d
        :pswitch_13
    .end packed-switch
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4257
    .local v2, "childrenCount":I
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4258
    .local v3, "children":[Landroid/view/View;
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4260
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_56

    invoke-virtual {v0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 4261
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v2, :cond_2c

    .line 4262
    aget-object v6, v3, v5

    .line 4263
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_29

    .line 4264
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4265
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 4266
    invoke-direct {v0, v6}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 4261
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 4270
    .end local v5    # "i":I
    :cond_2c
    iget-object v5, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4271
    .local v5, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 4272
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4275
    :cond_3a
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 4277
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4278
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4280
    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_56

    .line 4281
    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 4285
    .end local v5    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_56
    const/4 v5, 0x0

    .line 4286
    .local v5, "clipSaveCount":I
    and-int/lit8 v6, v4, 0x22

    const/16 v7, 0x22

    const/4 v8, 0x0

    if-ne v6, v7, :cond_60

    const/4 v6, 0x1

    goto :goto_61

    :cond_60
    move v6, v8

    .line 4287
    .local v6, "clipToPadding":Z
    :goto_61
    if-eqz v6, :cond_8b

    .line 4288
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 4289
    iget v7, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v10, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v12, v0, Landroid/view/ViewGroup;->mRight:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v13, v0, Landroid/view/ViewGroup;->mBottom:I

    add-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4295
    :cond_8b
    iget v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v7, v7, -0x41

    iput v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4296
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4298
    const/4 v7, 0x0

    .line 4299
    .local v7, "more":Z
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v10

    .line 4301
    .local v10, "drawingTime":J
    invoke-virtual {v1}, Landroid/graphics/Canvas;->enableZ()V

    .line 4302
    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v12, :cond_a5

    move v12, v8

    goto :goto_ab

    :cond_a5
    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    move-result v12

    .line 4303
    .local v12, "transientCount":I
    :goto_ab
    if-eqz v12, :cond_af

    move v13, v8

    goto :goto_b0

    :cond_af
    const/4 v13, -0x1

    .line 4306
    .local v13, "transientIndex":I
    :goto_b0
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->drawsWithRenderNode(Landroid/graphics/Canvas;)Z

    move-result v14

    if-eqz v14, :cond_b8

    .line 4307
    const/4 v14, 0x0

    goto :goto_bc

    :cond_b8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v14

    .line 4308
    .local v14, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_bc
    if-nez v14, :cond_c6

    .line 4309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v15

    if-eqz v15, :cond_c6

    const/4 v8, 0x1

    goto :goto_c7

    :cond_c6
    nop

    .line 4310
    .local v8, "customOrder":Z
    :goto_c7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c8
    if-ge v15, v2, :cond_125

    .line 4311
    :goto_ca
    if-ltz v13, :cond_fe

    const/16 v16, 0x1

    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v9, v13}, Landroid/util/IntArray;->get(I)I

    move-result v9

    if-ne v9, v15, :cond_fb

    .line 4312
    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 4313
    .local v9, "transientChild":Landroid/view/View;
    move/from16 v17, v4

    .end local v4    # "flags":I
    .local v17, "flags":I
    iget v4, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_ec

    .line 4314
    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_f2

    .line 4315
    :cond_ec
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .line 4317
    :cond_f2
    add-int/lit8 v13, v13, 0x1

    .line 4318
    if-lt v13, v12, :cond_f8

    .line 4319
    const/4 v4, -0x1

    move v13, v4

    .line 4321
    .end local v9    # "transientChild":Landroid/view/View;
    :cond_f8
    move/from16 v4, v17

    goto :goto_ca

    .line 4311
    .end local v17    # "flags":I
    .restart local v4    # "flags":I
    :cond_fb
    move/from16 v17, v4

    goto :goto_102

    :cond_fe
    move/from16 v17, v4

    const/16 v16, 0x1

    .line 4323
    .end local v4    # "flags":I
    .restart local v17    # "flags":I
    :goto_102
    invoke-direct {v0, v2, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 4324
    .local v4, "childIndex":I
    invoke-static {v14, v3, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 4325
    .local v9, "child":Landroid/view/View;
    move/from16 v18, v2

    .end local v2    # "childrenCount":I
    .local v18, "childrenCount":I
    iget v2, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_118

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_11e

    .line 4326
    :cond_118
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    or-int/2addr v2, v7

    move v7, v2

    .line 4310
    .end local v4    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_11e
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    move/from16 v2, v18

    goto :goto_c8

    .end local v17    # "flags":I
    .end local v18    # "childrenCount":I
    .restart local v2    # "childrenCount":I
    .local v4, "flags":I
    :cond_125
    move/from16 v18, v2

    move/from16 v17, v4

    const/16 v16, 0x1

    .line 4329
    .end local v2    # "childrenCount":I
    .end local v4    # "flags":I
    .end local v15    # "i":I
    .restart local v17    # "flags":I
    .restart local v18    # "childrenCount":I
    :goto_12b
    if-ltz v13, :cond_14d

    .line 4331
    iget-object v2, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4332
    .local v2, "transientChild":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_141

    .line 4333
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_147

    .line 4334
    :cond_141
    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .line 4336
    :cond_147
    add-int/lit8 v13, v13, 0x1

    .line 4337
    if-lt v13, v12, :cond_14c

    .line 4338
    goto :goto_14d

    .line 4340
    .end local v2    # "transientChild":Landroid/view/View;
    :cond_14c
    goto :goto_12b

    .line 4341
    :cond_14d
    :goto_14d
    if-eqz v14, :cond_152

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 4344
    :cond_152
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_170

    .line 4345
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4346
    .local v2, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 4348
    .local v4, "disappearingCount":I
    move v9, v4

    .local v9, "i":I
    :goto_15f
    if-ltz v9, :cond_170

    .line 4349
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 4350
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v15, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v19

    or-int v7, v7, v19

    .line 4348
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v9, v9, -0x1

    goto :goto_15f

    .line 4353
    .end local v2    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v9    # "i":I
    :cond_170
    invoke-virtual {v1}, Landroid/graphics/Canvas;->disableZ()V

    .line 4355
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 4356
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 4359
    :cond_17c
    if-eqz v6, :cond_181

    .line 4360
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4364
    :cond_181
    iget v2, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4366
    .end local v17    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v4, v2, 0x4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_18d

    .line 4367
    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4370
    :cond_18d
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_1ad

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1ad

    iget-object v4, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4371
    invoke-virtual {v4}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1ad

    if-nez v7, :cond_1ad

    .line 4375
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4376
    new-instance v4, Landroid/view/ViewGroup$2;

    invoke-direct {v4, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 4382
    .local v4, "end":Ljava/lang/Runnable;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4384
    .end local v4    # "end":Ljava/lang/Runnable;
    :cond_1ad
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4709
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4710
    .local v0, "count":I
    if-nez v0, :cond_5

    .line 4711
    return-void

    .line 4714
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4715
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_40

    .line 4716
    aget-object v3, v1, v2

    .line 4719
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v6

    goto :goto_1d

    :cond_1c
    move v4, v5

    .line 4720
    .local v4, "nonActionable":Z
    :goto_1d
    iget v7, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    move v7, v6

    goto :goto_27

    :cond_26
    move v7, v5

    .line 4721
    .local v7, "duplicatesState":Z
    :goto_27
    if-nez v4, :cond_2b

    if-eqz v7, :cond_3d

    .line 4722
    :cond_2b
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v8

    .line 4723
    .local v8, "point":[F
    aput p1, v8, v5

    .line 4724
    aput p2, v8, v6

    .line 4725
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4726
    aget v5, v8, v5

    aget v6, v8, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4715
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "nonActionable":Z
    .end local v7    # "duplicatesState":Z
    .end local v8    # "point":[F
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4729
    .end local v2    # "i":I
    :cond_40
    return-void
.end method

.method public whitelist dispatchFinishTemporaryDetach()V
    .registers 5

    .line 3508
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3509
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3510
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3511
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3512
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3511
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3514
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4032
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4033
    return-void
.end method

.method protected whitelist dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2592
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 2594
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2595
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 2597
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2599
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2560
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2561
    .local v0, "childrenCount":I
    if-eqz v0, :cond_4d

    .line 2562
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    .line 2563
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    .line 2565
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2566
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x1

    if-nez v4, :cond_1c

    .line 2567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c

    move v1, v5

    goto :goto_1d

    :cond_1c
    nop

    .line 2568
    .local v1, "customOrder":Z
    :goto_1d
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2569
    .local v6, "children":[Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_21
    if-ltz v7, :cond_48

    .line 2570
    invoke-direct {p0, v0, v7, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2571
    .local v8, "childIndex":I
    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2572
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 2573
    const/4 v10, 0x0

    invoke-virtual {p0, v2, v3, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_39

    .line 2574
    goto :goto_45

    .line 2577
    :cond_39
    invoke-direct {p0, p1, v9}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 2578
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2579
    :cond_44
    return v5

    .line 2569
    .end local v8    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_45
    :goto_45
    add-int/lit8 v7, v7, -0x1

    goto :goto_21

    .line 2582
    .end local v7    # "i":I
    :cond_48
    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2586
    .end local v1    # "customOrder":Z
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "children":[Landroid/view/View;
    :cond_4d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected greylist dispatchGetDisplayList()V
    .registers 8

    .line 4517
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4518
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4519
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_48

    .line 4520
    aget-object v3, v1, v2

    .line 4521
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1d

    .line 4526
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 4527
    :cond_17
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4519
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4522
    .restart local v3    # "child":Landroid/view/View;
    :cond_1d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contains null child at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when traversal in dispatchGetDisplayList, the view may have been removed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4530
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_48
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_4e

    const/4 v2, 0x0

    goto :goto_54

    :cond_4e
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 4531
    .local v2, "transientCount":I
    :goto_54
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    if-ge v3, v2, :cond_71

    .line 4532
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4533
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_6b

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 4534
    :cond_6b
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4531
    .end local v4    # "child":Landroid/view/View;
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 4537
    .end local v3    # "i":I
    :cond_71
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_7e

    .line 4538
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 4539
    .local v3, "overlayView":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4541
    .end local v3    # "overlayView":Landroid/view/View;
    :cond_7e
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_97

    .line 4542
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4543
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4544
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_89
    if-ge v5, v4, :cond_97

    .line 4545
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4546
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4544
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 4549
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v5    # "i":I
    :cond_97
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2141
    .local v2, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2142
    .local v3, "interceptHover":Z
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2144
    move-object/from16 v4, p1

    .line 2145
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v5, 0x0

    .line 2149
    .local v5, "handled":Z
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2150
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2151
    const/4 v10, 0x0

    const/16 v12, 0xa

    if-nez v3, :cond_11b

    if-eq v2, v12, :cond_11b

    .line 2152
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v13

    .line 2153
    .local v13, "x":F
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v14

    .line 2154
    .local v14, "y":F
    iget v15, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2155
    .local v15, "childrenCount":I
    if-eqz v15, :cond_118

    .line 2156
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2157
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_39

    .line 2158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_39

    const/16 v16, 0x1

    goto :goto_3b

    :cond_39
    const/16 v16, 0x0

    :goto_3b
    move/from16 v17, v16

    .line 2159
    .local v17, "customOrder":Z
    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2160
    .local v11, "children":[Landroid/view/View;
    const/16 v18, 0x0

    .line 2161
    .local v18, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v19, v15, -0x1

    move-object/from16 v12, v18

    move/from16 v9, v19

    .end local v18    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v9, "i":I
    .local v12, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_47
    if-ltz v9, :cond_108

    .line 2162
    move/from16 v8, v17

    .end local v17    # "customOrder":Z
    .local v8, "customOrder":Z
    invoke-direct {v0, v15, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2164
    .local v7, "childIndex":I
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .local v20, "interceptHover":Z
    invoke-static {v10, v11, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2166
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v21

    if-eqz v21, :cond_f3

    .line 2167
    move-object/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .local v21, "eventNoHistory":Landroid/view/MotionEvent;
    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_6a

    .line 2168
    move/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_f9

    .line 2173
    :cond_6a
    move-object v4, v6

    .line 2175
    .local v4, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v22, 0x0

    move-object/from16 v25, v22

    move/from16 v22, v5

    move-object/from16 v5, v25

    .line 2176
    .local v5, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v22, "handled":Z
    :goto_73
    if-nez v4, :cond_7d

    .line 2177
    invoke-static {v3}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v4

    .line 2178
    const/16 v23, 0x0

    .line 2179
    .local v23, "wasHovered":Z
    const/4 v5, 0x0

    goto :goto_96

    .line 2182
    .end local v23    # "wasHovered":Z
    :cond_7d
    move-object/from16 v23, v6

    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v23, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    iget-object v6, v4, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v6, v3, :cond_eb

    .line 2183
    if-eqz v5, :cond_8c

    .line 2184
    iget-object v6, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v6, v5, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v6, v23

    goto :goto_8e

    .line 2186
    :cond_8c
    iget-object v6, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2188
    .end local v23    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_8e
    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v24, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iput-object v5, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2189
    const/16 v23, 0x1

    .line 2190
    .local v23, "wasHovered":Z
    nop

    .line 2198
    .end local v24    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :goto_96
    if-eqz v12, :cond_9b

    .line 2199
    iput-object v4, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_9d

    .line 2201
    :cond_9b
    iput-object v4, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2203
    :goto_9d
    move-object v12, v4

    .line 2206
    const/16 v5, 0x9

    if-ne v2, v5, :cond_b2

    .line 2207
    if-nez v23, :cond_af

    .line 2209
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    or-int v5, v22, v5

    move-object/from16 v24, v4

    move-object/from16 v4, v21

    .end local v22    # "handled":Z
    .local v5, "handled":Z
    goto :goto_e8

    .line 2207
    .end local v5    # "handled":Z
    .restart local v22    # "handled":Z
    :cond_af
    move-object/from16 v24, v4

    goto :goto_e4

    .line 2212
    :cond_b2
    const/4 v5, 0x7

    if-ne v2, v5, :cond_e2

    .line 2213
    if-nez v23, :cond_d7

    .line 2215
    invoke-static/range {v21 .. v21}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 2216
    .end local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .local v5, "eventNoHistory":Landroid/view/MotionEvent;
    move-object/from16 v24, v4

    const/16 v4, 0x9

    .end local v4    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v24, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2217
    invoke-direct {v0, v5, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    or-int v4, v22, v4

    .line 2219
    .end local v22    # "handled":Z
    .local v4, "handled":Z
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2221
    invoke-direct {v0, v5, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v4, v4, v21

    move-object/from16 v25, v5

    move v5, v4

    move-object/from16 v4, v25

    goto :goto_e8

    .line 2225
    .end local v5    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v24    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v4, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v22    # "handled":Z
    :cond_d7
    move-object/from16 v24, v4

    .end local v4    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v24    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    or-int v5, v22, v4

    move-object/from16 v4, v21

    .end local v22    # "handled":Z
    .local v5, "handled":Z
    goto :goto_e8

    .line 2212
    .end local v5    # "handled":Z
    .end local v24    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v4    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v22    # "handled":Z
    :cond_e2
    move-object/from16 v24, v4

    .line 2228
    .end local v4    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v24    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_e4
    move-object/from16 v4, v21

    move/from16 v5, v22

    .end local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v22    # "handled":Z
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v5    # "handled":Z
    :goto_e8
    if-eqz v5, :cond_ff

    .line 2229
    goto :goto_112

    .line 2193
    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v24    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v4, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v5, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v22    # "handled":Z
    .local v23, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_eb
    move-object/from16 v24, v5

    .end local v5    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v24, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    move-object v5, v4

    .line 2194
    .end local v24    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v5    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v4, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v6, v23

    goto :goto_73

    .line 2166
    .end local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v22    # "handled":Z
    .end local v23    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    .local v5, "handled":Z
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_f3
    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    .line 2161
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v5    # "handled":Z
    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v7    # "childIndex":I
    .restart local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v22    # "handled":Z
    .restart local v23    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_f9
    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    .end local v21    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v22    # "handled":Z
    .end local v23    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v5    # "handled":Z
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_ff
    add-int/lit8 v9, v9, -0x1

    move/from16 v17, v8

    move/from16 v3, v20

    const/4 v7, 0x0

    goto/16 :goto_47

    .end local v8    # "customOrder":Z
    .end local v20    # "interceptHover":Z
    .local v3, "interceptHover":Z
    .restart local v17    # "customOrder":Z
    :cond_108
    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v8, v17

    .line 2232
    .end local v3    # "interceptHover":Z
    .end local v9    # "i":I
    .end local v17    # "customOrder":Z
    .restart local v8    # "customOrder":Z
    .restart local v20    # "interceptHover":Z
    :goto_112
    if-eqz v10, :cond_11d

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_11d

    .line 2155
    .end local v8    # "customOrder":Z
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "children":[Landroid/view/View;
    .end local v12    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "interceptHover":Z
    .restart local v3    # "interceptHover":Z
    :cond_118
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    goto :goto_11d

    .line 2151
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "childrenCount":I
    .end local v20    # "interceptHover":Z
    .restart local v3    # "interceptHover":Z
    :cond_11b
    move/from16 v20, v3

    .line 2237
    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    :cond_11d
    :goto_11d
    if-eqz v6, :cond_152

    .line 2238
    iget-object v3, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2241
    .local v3, "child":Landroid/view/View;
    const/16 v7, 0xa

    if-ne v2, v7, :cond_12b

    .line 2243
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_14b

    .line 2248
    :cond_12b
    const/4 v7, 0x7

    if-ne v2, v7, :cond_13c

    .line 2249
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v7

    .line 2250
    .local v7, "hoverExitPending":Z
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2251
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2253
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2255
    .end local v7    # "hoverExitPending":Z
    :cond_13c
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2256
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2257
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2259
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2262
    :goto_14b
    iget-object v7, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2263
    .local v7, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v6}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2264
    move-object v6, v7

    .line 2265
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_11d

    .line 2269
    :cond_152
    if-nez v5, :cond_160

    const/16 v7, 0xa

    if-eq v2, v7, :cond_160

    .line 2270
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_160

    const/4 v3, 0x1

    goto :goto_161

    :cond_160
    const/4 v3, 0x0

    .line 2271
    .local v3, "newHoveredSelf":Z
    :goto_161
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v7, :cond_16d

    .line 2272
    if-eqz v3, :cond_1be

    .line 2274
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_1be

    .line 2277
    :cond_16d
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-eqz v7, :cond_193

    .line 2279
    const/16 v7, 0xa

    if-ne v2, v7, :cond_17b

    .line 2281
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_190

    .line 2285
    :cond_17b
    const/4 v7, 0x7

    if-ne v2, v7, :cond_181

    .line 2286
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2288
    :cond_181
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2289
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2290
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2291
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2293
    :goto_190
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2296
    :cond_193
    if-eqz v3, :cond_1be

    .line 2298
    const/16 v7, 0x9

    if-ne v2, v7, :cond_1a2

    .line 2300
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2301
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_1be

    .line 2302
    :cond_1a2
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1be

    .line 2304
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2305
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2306
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2307
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2309
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2310
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2316
    :cond_1be
    :goto_1be
    if-eq v4, v1, :cond_1c3

    .line 2317
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 2321
    :cond_1c3
    return v5
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1976
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1977
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1980
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 1982
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1983
    return v1

    .line 1985
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 1987
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1988
    return v1

    .line 1992
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_37

    .line 1993
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1995
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1964
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 1966
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1967
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 1969
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1971
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2000
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 2002
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2003
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 2005
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2007
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3551
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3553
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3554
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3555
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3556
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3555
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3558
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 6
    .param p1, "hasCapture"    # Z

    .line 2052
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2054
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2055
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2056
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2057
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_15

    .line 2058
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2057
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2060
    .end local v2    # "i":I
    :cond_15
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3563
    const/4 v0, 0x0

    .line 3564
    .local v0, "handled":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->includeForAccessibility(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3565
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3566
    if-eqz v0, :cond_f

    .line 3567
    return v0

    .line 3571
    :cond_f
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 3573
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_14
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v3

    .line 3574
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_34

    .line 3575
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3576
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_31

    .line 3577
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_39

    .line 3578
    .end local v0    # "handled":Z
    .local v6, "handled":Z
    if-eqz v6, :cond_30

    .line 3579
    nop

    .line 3584
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3579
    return v6

    .line 3578
    :cond_30
    move v0, v6

    .line 3574
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "handled":Z
    .restart local v0    # "handled":Z
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3584
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_34
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3585
    nop

    .line 3586
    return v1

    .line 3584
    :catchall_39
    move-exception v1

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3585
    throw v1
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 8
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 3646
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3648
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3649
    return-void

    .line 3652
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3653
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3c

    .line 3654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3655
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3654
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_3c
    return-void

    .line 3660
    :cond_3d
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3661
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3662
    .local v1, "childrenCount":I
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3663
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v1, :cond_5b

    .line 3664
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3665
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    .line 3666
    .local v4, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3663
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 3668
    .end local v2    # "i":I
    :cond_5b
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3669
    return-void
.end method

.method public blacklist dispatchProvideContentCaptureStructure()V
    .registers 5

    .line 3674
    invoke-super {p0}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3676
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 3678
    :cond_a
    invoke-direct {p0}, Landroid/view/ViewGroup;->getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3679
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3680
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_21

    .line 3681
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3682
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3680
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3684
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3685
    return-void
.end method

.method public whitelist dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .registers 10
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 3596
    invoke-super {p0, p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_83

    .line 3600
    :cond_11
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3601
    .local v0, "childrenCount":I
    if-gtz v0, :cond_16

    .line 3602
    return-void

    .line 3605
    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_47

    .line 3606
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_46

    .line 3607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " children of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3607
    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    :cond_46
    return-void

    .line 3613
    :cond_47
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3614
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3616
    .local v1, "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_56

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    .line 3617
    .local v2, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_57
    if-nez v2, :cond_61

    .line 3618
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, 0x1

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    .line 3619
    .local v3, "customOrder":Z
    :goto_62
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_63
    if-ge v4, v0, :cond_7d

    .line 3622
    :try_start_65
    invoke-direct {p0, v0, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5
    :try_end_69
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_65 .. :try_end_69} :catch_7a

    .line 3626
    .local v5, "childIndex":I
    nop

    .line 3627
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v2, v6, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 3629
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v7

    .line 3630
    .local v7, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3619
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 3623
    :catch_7a
    move-exception v5

    .line 3624
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    move v6, v4

    .line 3625
    .local v6, "childIndex":I
    throw v5

    .line 3632
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "childIndex":I
    :cond_7d
    if-eqz v2, :cond_82

    .line 3633
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3635
    :cond_82
    return-void

    .line 3598
    .end local v0    # "childrenCount":I
    .end local v1    # "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "customOrder":Z
    :cond_83
    :goto_83
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4037
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4038
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4039
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4040
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_19

    .line 4041
    aget-object v3, v1, v2

    .line 4042
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4043
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4040
    .end local v3    # "c":Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4046
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4012
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4013
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4014
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4015
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_19

    .line 4016
    aget-object v3, v1, v2

    .line 4017
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4018
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4015
    .end local v3    # "c":Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4021
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method greylist-max-o dispatchScreenStateChanged(I)V
    .registers 6
    .param p1, "screenState"    # I

    .line 3540
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3542
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3543
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3544
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3545
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3544
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3547
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .registers 20
    .param p1, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p2, "windowOffset"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Point;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    .line 7664
    .local p3, "targets":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/ScrollCaptureTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_d

    .line 7665
    return-void

    .line 7668
    :cond_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v5, v0, Landroid/view/ViewGroup;->mRight:I

    iget v6, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup;->mBottom:I

    iget v7, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 7670
    return-void

    .line 7674
    :cond_2e
    invoke-super/range {p0 .. p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7676
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7677
    .local v3, "childrenCount":I
    if-nez v3, :cond_36

    .line 7678
    return-void

    .line 7682
    :cond_36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollCaptureHint()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3f

    .line 7683
    return-void

    .line 7685
    :cond_3f
    invoke-direct {v0}, Landroid/view/ViewGroup;->getTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 7687
    .local v4, "tmpRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 7688
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 7689
    .local v6, "customOrder":Z
    invoke-static {}, Landroid/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5c

    .line 7690
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7691
    if-nez v5, :cond_5a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    if-eqz v7, :cond_5a

    const/4 v7, 0x1

    goto :goto_5b

    :cond_5a
    move v7, v8

    :goto_5b
    move v6, v7

    .line 7693
    :cond_5c
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7694
    .local v7, "children":[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5f
    if-ge v9, v3, :cond_bd

    .line 7696
    invoke-static {}, Landroid/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v10

    if-eqz v10, :cond_70

    .line 7698
    invoke-direct {v0, v3, v9, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v10

    .line 7699
    .local v10, "childIndex":I
    invoke-static {v5, v7, v10}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 7700
    .local v10, "child":Landroid/view/View;
    goto :goto_72

    .line 7701
    .end local v10    # "child":Landroid/view/View;
    :cond_70
    aget-object v10, v7, v9

    .line 7705
    .restart local v10    # "child":Landroid/view/View;
    :goto_72
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_7b

    .line 7706
    move-object/from16 v0, p3

    goto :goto_b8

    .line 7714
    :cond_7b
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7717
    invoke-direct {v0}, Landroid/view/ViewGroup;->getTempPoint()Landroid/graphics/Point;

    move-result-object v11

    .line 7718
    .local v11, "childWindowOffset":Landroid/graphics/Point;
    iget v12, v2, Landroid/graphics/Point;->x:I

    iget v13, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 7720
    iget v12, v10, Landroid/view/View;->mLeft:I

    iget v13, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v12, v13

    .line 7721
    .local v12, "dx":I
    iget v13, v10, Landroid/view/View;->mTop:I

    iget v14, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v13, v14

    .line 7723
    .local v13, "dy":I
    neg-int v14, v12

    neg-int v15, v13

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 7724
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->offset(II)V

    .line 7726
    const/4 v14, 0x1

    .line 7729
    .local v14, "rectIsVisible":Z
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v15

    if-eqz v15, :cond_ae

    .line 7730
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v4, v8, v8, v15, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v14

    .line 7733
    :cond_ae
    if-eqz v14, :cond_b6

    .line 7734
    move-object/from16 v0, p3

    invoke-virtual {v10, v4, v11, v0}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    goto :goto_b8

    .line 7733
    :cond_b6
    move-object/from16 v0, p3

    .line 7694
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childWindowOffset":Landroid/graphics/Point;
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v14    # "rectIsVisible":Z
    :goto_b8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_5f

    :cond_bd
    move-object/from16 v0, p3

    .line 7737
    .end local v9    # "i":I
    if-eqz v5, :cond_c4

    .line 7738
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7740
    :cond_c4
    return-void
.end method

.method public whitelist dispatchSetActivated(Z)V
    .registers 6
    .param p1, "activated"    # Z

    .line 4671
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4672
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4673
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4674
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4673
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4676
    .end local v2    # "i":I
    :cond_f
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 7
    .param p1, "pressed"    # Z

    .line 4680
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4681
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4682
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1d

    .line 4683
    aget-object v3, v0, v2

    .line 4687
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4688
    :cond_17
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4682
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4691
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .registers 6
    .param p1, "selected"    # Z

    .line 4662
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4663
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4664
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4665
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4664
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4667
    .end local v2    # "i":I
    :cond_f
    return-void
.end method

.method public whitelist dispatchStartTemporaryDetach()V
    .registers 5

    .line 3493
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3494
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3495
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3496
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3497
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3496
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3499
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1939
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1941
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1942
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1943
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1944
    aget-object v3, v1, v2

    .line 1945
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1943
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1947
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4057
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4058
    return-void
.end method

.method greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2364
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_aa

    :pswitch_d
    goto/16 :goto_a8

    .line 2421
    :pswitch_f
    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v5, :cond_1c

    .line 2422
    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2423
    iput-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_a8

    .line 2424
    :cond_1c
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_a8

    .line 2425
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2426
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_a8

    .line 2366
    :pswitch_27
    goto/16 :goto_a8

    .line 2369
    :pswitch_29
    const/4 v5, 0x0

    .line 2372
    .local v5, "newTarget":Landroid/view/View;
    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2373
    .local v6, "childrenCount":I
    const/4 v7, 0x1

    if-eqz v6, :cond_74

    .line 2374
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v8

    .line 2375
    .local v8, "x":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v9

    .line 2377
    .local v9, "y":F
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2378
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_45

    .line 2379
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v11

    if-eqz v11, :cond_45

    move v11, v7

    goto :goto_46

    :cond_45
    move v11, v4

    .line 2380
    .local v11, "customOrder":Z
    :goto_46
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2381
    .local v12, "children":[Landroid/view/View;
    add-int/lit8 v13, v6, -0x1

    .local v13, "i":I
    :goto_4a
    if-ltz v13, :cond_6f

    .line 2382
    nop

    .line 2383
    invoke-direct {v0, v6, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v14

    .line 2384
    .local v14, "childIndex":I
    nop

    .line 2385
    invoke-static {v10, v12, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 2386
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v16

    if-eqz v16, :cond_6c

    .line 2387
    invoke-virtual {v0, v8, v9, v15, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_63

    .line 2388
    goto :goto_6c

    .line 2390
    :cond_63
    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6c

    .line 2391
    move-object v3, v15

    .line 2392
    .end local v5    # "newTarget":Landroid/view/View;
    .local v3, "newTarget":Landroid/view/View;
    move-object v5, v3

    goto :goto_6f

    .line 2381
    .end local v3    # "newTarget":Landroid/view/View;
    .end local v14    # "childIndex":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "newTarget":Landroid/view/View;
    :cond_6c
    :goto_6c
    add-int/lit8 v13, v13, -0x1

    goto :goto_4a

    .line 2395
    .end local v13    # "i":I
    :cond_6f
    :goto_6f
    if-eqz v10, :cond_74

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2398
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "customOrder":Z
    .end local v12    # "children":[Landroid/view/View;
    :cond_74
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v8, 0xa

    if-eq v3, v5, :cond_8b

    .line 2399
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_89

    .line 2400
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2401
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2402
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2404
    :cond_89
    iput-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 2407
    :cond_8b
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_9f

    .line 2408
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_9e

    .line 2409
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2410
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2411
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2412
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2414
    :cond_9e
    return v7

    .line 2417
    :cond_9f
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2418
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return v3

    .line 2430
    .end local v5    # "newTarget":Landroid/view/View;
    .end local v6    # "childrenCount":I
    :cond_a8
    :goto_a8
    return v4

    nop

    :pswitch_data_aa
    .packed-switch 0x7
        :pswitch_29
        :pswitch_d
        :pswitch_27
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2648
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 2649
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2654
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2655
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2658
    :cond_1e
    const/4 v2, 0x0

    .line 2659
    .local v2, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_29a

    .line 2660
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 2661
    .local v5, "action":I
    and-int/lit16 v6, v5, 0xff

    .line 2664
    .local v6, "actionMasked":I
    if-nez v6, :cond_33

    .line 2668
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2669
    invoke-direct {v0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2674
    :cond_33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    .line 2675
    .local v7, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_40

    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v8, :cond_3e

    goto :goto_40

    .line 2689
    :cond_3e
    const/4 v8, 0x1

    .local v8, "intercepted":Z
    goto :goto_6a

    .line 2676
    .end local v8    # "intercepted":Z
    :cond_40
    :goto_40
    iget v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_49

    move v8, v3

    goto :goto_4a

    :cond_49
    move v8, v4

    .line 2677
    .local v8, "disallowIntercept":Z
    :goto_4a
    if-eqz v7, :cond_58

    .line 2678
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v9

    invoke-virtual {v9}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v9

    if-eqz v9, :cond_58

    move v9, v3

    goto :goto_59

    :cond_58
    move v9, v4

    .line 2679
    .local v9, "isBackGestureInProgress":Z
    :goto_59
    if-eqz v8, :cond_61

    if-eqz v9, :cond_5e

    goto :goto_61

    .line 2684
    :cond_5e
    const/4 v10, 0x0

    move v8, v10

    .local v10, "intercepted":Z
    goto :goto_69

    .line 2681
    .end local v10    # "intercepted":Z
    :cond_61
    :goto_61
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2682
    .restart local v10    # "intercepted":Z
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    move v8, v10

    .line 2686
    .end local v9    # "isBackGestureInProgress":Z
    .end local v10    # "intercepted":Z
    .local v8, "intercepted":Z
    :goto_69
    nop

    .line 2694
    :goto_6a
    if-nez v8, :cond_70

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v9, :cond_73

    .line 2695
    :cond_70
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2699
    :cond_73
    invoke-static {v0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_7f

    const/4 v9, 0x3

    if-ne v6, v9, :cond_7d

    goto :goto_7f

    :cond_7d
    move v9, v4

    goto :goto_80

    :cond_7f
    :goto_7f
    move v9, v3

    .line 2703
    .local v9, "canceled":Z
    :goto_80
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    const/16 v11, 0x2002

    if-ne v10, v11, :cond_8a

    move v10, v3

    goto :goto_8b

    :cond_8a
    move v10, v4

    .line 2704
    .local v10, "isMouseEvent":Z
    :goto_8b
    iget v11, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v12, 0x200000

    and-int/2addr v11, v12

    if-eqz v11, :cond_96

    if-nez v10, :cond_96

    move v11, v3

    goto :goto_97

    :cond_96
    move v11, v4

    .line 2706
    .local v11, "split":Z
    :goto_97
    const/4 v12, 0x0

    .line 2707
    .local v12, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v13, 0x0

    .line 2708
    .local v13, "alreadyDispatchedToNewTouchTarget":Z
    const/4 v14, 0x7

    move/from16 v16, v3

    if-nez v9, :cond_211

    if-nez v8, :cond_211

    .line 2714
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v17

    if-eqz v17, :cond_ab

    .line 2715
    invoke-direct {v0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v17

    goto :goto_ad

    :cond_ab
    const/16 v17, 0x0

    .line 2717
    .local v17, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_ad
    if-eqz v6, :cond_cb

    if-eqz v11, :cond_b7

    const/16 v18, -0x1

    const/4 v15, 0x5

    if-eq v6, v15, :cond_cd

    goto :goto_b9

    :cond_b7
    const/16 v18, -0x1

    :goto_b9
    if-ne v6, v14, :cond_bc

    goto :goto_cd

    :cond_bc
    move/from16 v21, v2

    move/from16 v22, v5

    move-object/from16 v23, v7

    move/from16 v25, v8

    move/from16 v26, v10

    move/from16 v27, v11

    move v7, v4

    goto/16 :goto_220

    :cond_cb
    const/16 v18, -0x1

    .line 2720
    :cond_cd
    :goto_cd
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 2721
    .local v15, "actionIndex":I
    if-eqz v11, :cond_da

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    shl-int v19, v16, v19

    goto :goto_dc

    .line 2722
    :cond_da
    move/from16 v19, v18

    :goto_dc
    move/from16 v20, v19

    .line 2726
    .local v20, "idBitsToAssign":I
    move/from16 v14, v20

    .end local v20    # "idBitsToAssign":I
    .local v14, "idBitsToAssign":I
    invoke-direct {v0, v14}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2728
    iget v4, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2729
    .local v4, "childrenCount":I
    if-nez v12, :cond_1ec

    if-eqz v4, :cond_1ec

    .line 2730
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v3

    .line 2731
    .local v3, "x":F
    move/from16 v21, v2

    .end local v2    # "handled":Z
    .local v21, "handled":Z
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v2

    .line 2734
    .local v2, "y":F
    move/from16 v22, v5

    .end local v5    # "action":I
    .local v22, "action":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2735
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_104

    .line 2736
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v23

    if-eqz v23, :cond_104

    move/from16 v23, v16

    goto :goto_106

    :cond_104
    const/16 v23, 0x0

    :goto_106
    move/from16 v24, v23

    .line 2737
    .local v24, "customOrder":Z
    move-object/from16 v23, v7

    .end local v7    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v23, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2738
    .local v7, "children":[Landroid/view/View;
    add-int/lit8 v25, v4, -0x1

    move/from16 v26, v10

    move/from16 v10, v25

    move/from16 v25, v8

    move-object/from16 v8, v17

    .end local v17    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v8, "childWithAccessibilityFocus":Landroid/view/View;
    .local v10, "i":I
    .local v25, "intercepted":Z
    .local v26, "isMouseEvent":Z
    :goto_116
    if-ltz v10, :cond_1d5

    .line 2739
    move/from16 v27, v11

    move-object/from16 v17, v12

    move/from16 v11, v24

    .end local v12    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v24    # "customOrder":Z
    .local v11, "customOrder":Z
    .local v17, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v27, "split":Z
    invoke-direct {v0, v4, v10, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v12

    .line 2741
    .local v12, "childIndex":I
    move/from16 v24, v10

    .end local v10    # "i":I
    .local v24, "i":I
    invoke-static {v5, v7, v12}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2748
    .local v10, "child":Landroid/view/View;
    if-eqz v8, :cond_13c

    .line 2749
    if-eq v8, v10, :cond_139

    .line 2750
    move/from16 v31, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v12, v17

    move/from16 v10, v24

    const/4 v7, 0x0

    goto/16 :goto_1c7

    .line 2752
    :cond_139
    const/4 v8, 0x0

    .line 2753
    move/from16 v24, v4

    .line 2756
    :cond_13c
    invoke-virtual {v10}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v28

    if-eqz v28, :cond_1b5

    .line 2757
    move-object/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v28, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v3, v2, v10, v5}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v29

    if-nez v29, :cond_154

    move/from16 v31, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    const/4 v7, 0x0

    goto/16 :goto_1be

    .line 2762
    :cond_154
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v5

    .line 2763
    .end local v17    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v5, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v5, :cond_169

    .line 2766
    move-object/from16 v29, v7

    .end local v7    # "children":[Landroid/view/View;
    .local v29, "children":[Landroid/view/View;
    iget v7, v5, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v7, v14

    iput v7, v5, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2767
    move/from16 v31, v4

    move-object v12, v5

    move-object/from16 v17, v8

    const/4 v7, 0x0

    goto/16 :goto_1e6

    .line 2770
    .end local v29    # "children":[Landroid/view/View;
    .restart local v7    # "children":[Landroid/view/View;
    :cond_169
    move-object/from16 v29, v7

    .end local v7    # "children":[Landroid/view/View;
    .restart local v29    # "children":[Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2771
    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v10, v14}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    if-eqz v17, :cond_1a9

    .line 2773
    move-object/from16 v30, v8

    .end local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v30, "childWithAccessibilityFocus":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2774
    if-eqz v28, :cond_197

    .line 2776
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_180
    if-ge v7, v4, :cond_194

    .line 2777
    aget-object v8, v29, v12

    move/from16 v31, v4

    .end local v4    # "childrenCount":I
    .local v31, "childrenCount":I
    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v7

    if-ne v8, v4, :cond_18f

    .line 2778
    iput v7, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2779
    goto :goto_196

    .line 2776
    :cond_18f
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v31

    goto :goto_180

    .end local v31    # "childrenCount":I
    .restart local v4    # "childrenCount":I
    :cond_194
    move/from16 v31, v4

    .end local v4    # "childrenCount":I
    .end local v7    # "j":I
    .restart local v31    # "childrenCount":I
    :goto_196
    goto :goto_19b

    .line 2783
    .end local v31    # "childrenCount":I
    .restart local v4    # "childrenCount":I
    :cond_197
    move/from16 v31, v4

    .end local v4    # "childrenCount":I
    .restart local v31    # "childrenCount":I
    iput v12, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2785
    :goto_19b
    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2786
    iput v2, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2787
    invoke-direct {v0, v10, v14}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v4

    .line 2788
    .end local v5    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v4, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v13, 0x1

    .line 2789
    move-object v12, v4

    move-object/from16 v17, v30

    const/4 v7, 0x0

    goto :goto_1e6

    .line 2794
    .end local v30    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v31    # "childrenCount":I
    .local v4, "childrenCount":I
    .restart local v5    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_1a9
    move/from16 v31, v4

    move-object/from16 v30, v8

    .end local v4    # "childrenCount":I
    .end local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v30    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v31    # "childrenCount":I
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    move-object v12, v5

    move/from16 v10, v24

    goto :goto_1c7

    .line 2756
    .end local v28    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "children":[Landroid/view/View;
    .end local v30    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v31    # "childrenCount":I
    .restart local v4    # "childrenCount":I
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "children":[Landroid/view/View;
    .restart local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v17    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1b5
    move/from16 v31, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    const/4 v7, 0x0

    .line 2758
    .end local v4    # "childrenCount":I
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "children":[Landroid/view/View;
    .restart local v30    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v31    # "childrenCount":I
    :goto_1be
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2759
    move-object/from16 v12, v17

    move/from16 v10, v24

    move-object/from16 v8, v30

    .line 2738
    .end local v17    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v24    # "i":I
    .end local v30    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v10, "i":I
    .local v12, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_1c7
    add-int/lit8 v10, v10, -0x1

    move/from16 v24, v11

    move/from16 v11, v27

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move/from16 v4, v31

    goto/16 :goto_116

    .end local v27    # "split":Z
    .end local v28    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "children":[Landroid/view/View;
    .end local v31    # "childrenCount":I
    .restart local v4    # "childrenCount":I
    .restart local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "children":[Landroid/view/View;
    .local v11, "split":Z
    .local v24, "customOrder":Z
    :cond_1d5
    move/from16 v31, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move/from16 v27, v11

    move-object/from16 v17, v12

    move/from16 v11, v24

    const/4 v7, 0x0

    move/from16 v24, v10

    .end local v4    # "childrenCount":I
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "children":[Landroid/view/View;
    .end local v10    # "i":I
    .end local v12    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v11, "customOrder":Z
    .restart local v17    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v24, "i":I
    .restart local v27    # "split":Z
    .restart local v28    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "children":[Landroid/view/View;
    .restart local v31    # "childrenCount":I
    move-object/from16 v17, v8

    .line 2796
    .end local v8    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v24    # "i":I
    .restart local v12    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v17, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_1e6
    if-eqz v28, :cond_1fb

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    goto :goto_1fb

    .line 2729
    .end local v3    # "x":F
    .end local v21    # "handled":Z
    .end local v22    # "action":I
    .end local v23    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v25    # "intercepted":Z
    .end local v26    # "isMouseEvent":Z
    .end local v27    # "split":Z
    .end local v28    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "children":[Landroid/view/View;
    .end local v31    # "childrenCount":I
    .local v2, "handled":Z
    .restart local v4    # "childrenCount":I
    .local v5, "action":I
    .local v7, "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "intercepted":Z
    .local v10, "isMouseEvent":Z
    .local v11, "split":Z
    :cond_1ec
    move/from16 v21, v2

    move/from16 v31, v4

    move/from16 v22, v5

    move-object/from16 v23, v7

    move/from16 v25, v8

    move/from16 v26, v10

    move/from16 v27, v11

    const/4 v7, 0x0

    .line 2799
    .end local v2    # "handled":Z
    .end local v4    # "childrenCount":I
    .end local v5    # "action":I
    .end local v7    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v8    # "intercepted":Z
    .end local v10    # "isMouseEvent":Z
    .end local v11    # "split":Z
    .restart local v21    # "handled":Z
    .restart local v22    # "action":I
    .restart local v23    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v25    # "intercepted":Z
    .restart local v26    # "isMouseEvent":Z
    .restart local v27    # "split":Z
    .restart local v31    # "childrenCount":I
    :cond_1fb
    :goto_1fb
    if-nez v12, :cond_220

    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_220

    .line 2802
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object v12, v2

    .line 2803
    :goto_204
    iget-object v2, v12, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_20b

    .line 2804
    iget-object v12, v12, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_204

    .line 2806
    :cond_20b
    iget v2, v12, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v2, v14

    iput v2, v12, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_220

    .line 2708
    .end local v14    # "idBitsToAssign":I
    .end local v15    # "actionIndex":I
    .end local v17    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v21    # "handled":Z
    .end local v22    # "action":I
    .end local v23    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v25    # "intercepted":Z
    .end local v26    # "isMouseEvent":Z
    .end local v27    # "split":Z
    .end local v31    # "childrenCount":I
    .restart local v2    # "handled":Z
    .restart local v5    # "action":I
    .restart local v7    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v8    # "intercepted":Z
    .restart local v10    # "isMouseEvent":Z
    .restart local v11    # "split":Z
    :cond_211
    move/from16 v21, v2

    move/from16 v22, v5

    move-object/from16 v23, v7

    move/from16 v25, v8

    move/from16 v26, v10

    move/from16 v27, v11

    const/16 v18, -0x1

    move v7, v4

    .line 2812
    .end local v2    # "handled":Z
    .end local v5    # "action":I
    .end local v7    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v8    # "intercepted":Z
    .end local v10    # "isMouseEvent":Z
    .end local v11    # "split":Z
    .restart local v21    # "handled":Z
    .restart local v22    # "action":I
    .restart local v23    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v25    # "intercepted":Z
    .restart local v26    # "isMouseEvent":Z
    .restart local v27    # "split":Z
    :cond_220
    :goto_220
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v2, :cond_22c

    .line 2814
    move/from16 v2, v18

    const/4 v5, 0x0

    invoke-direct {v0, v1, v9, v5, v2}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v2

    .end local v21    # "handled":Z
    .restart local v2    # "handled":Z
    goto :goto_277

    .line 2819
    .end local v2    # "handled":Z
    .restart local v21    # "handled":Z
    :cond_22c
    const/4 v2, 0x0

    .line 2820
    .local v2, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2821
    .local v3, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_22f
    if-eqz v3, :cond_275

    .line 2822
    iget-object v4, v3, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2823
    .local v4, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v13, :cond_23b

    if-ne v3, v12, :cond_23b

    .line 2824
    const/4 v5, 0x1

    move/from16 v21, v5

    .end local v21    # "handled":Z
    .local v5, "handled":Z
    goto :goto_272

    .line 2826
    .end local v5    # "handled":Z
    .restart local v21    # "handled":Z
    :cond_23b
    iget-object v5, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v5, :cond_247

    iget-object v5, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 2827
    invoke-static {v5}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_249

    :cond_247
    if-eqz v25, :cond_24c

    :cond_249
    move/from16 v5, v16

    goto :goto_24d

    :cond_24c
    move v5, v7

    .line 2829
    .local v5, "cancelChild":Z
    :goto_24d
    iget-object v8, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v8, :cond_25e

    iget-object v8, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v10, v3, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v5, v8, v10}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_25e

    .line 2831
    const/4 v8, 0x1

    move/from16 v21, v8

    .line 2833
    :cond_25e
    if-eqz v5, :cond_272

    .line 2834
    if-nez v2, :cond_265

    .line 2835
    iput-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_267

    .line 2837
    :cond_265
    iput-object v4, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2839
    :goto_267
    invoke-virtual {v3}, Landroid/view/ViewGroup$TouchTarget;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_270

    .line 2840
    invoke-virtual {v3}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2842
    :cond_270
    move-object v3, v4

    .line 2843
    goto :goto_22f

    .line 2846
    .end local v5    # "cancelChild":Z
    :cond_272
    :goto_272
    move-object v2, v3

    .line 2847
    move-object v3, v4

    .line 2848
    .end local v4    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_22f

    .line 2821
    :cond_275
    move/from16 v2, v21

    .line 2852
    .end local v3    # "target":Landroid/view/ViewGroup$TouchTarget;
    .end local v21    # "handled":Z
    .local v2, "handled":Z
    :goto_277
    if-nez v9, :cond_296

    move/from16 v3, v16

    if-eq v6, v3, :cond_296

    const/4 v3, 0x7

    if-ne v6, v3, :cond_281

    goto :goto_296

    .line 2856
    :cond_281
    if-eqz v27, :cond_29c

    const/4 v3, 0x6

    if-ne v6, v3, :cond_29c

    .line 2857
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2858
    .local v3, "actionIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/16 v16, 0x1

    shl-int v4, v16, v4

    .line 2859
    .local v4, "idBitsToRemove":I
    invoke-direct {v0, v4}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_29c

    .line 2855
    .end local v3    # "actionIndex":I
    .end local v4    # "idBitsToRemove":I
    :cond_296
    :goto_296
    invoke-direct {v0}, Landroid/view/ViewGroup;->resetTouchState()V

    goto :goto_29c

    .line 2659
    .end local v6    # "actionMasked":I
    .end local v9    # "canceled":Z
    .end local v12    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v13    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v22    # "action":I
    .end local v23    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v25    # "intercepted":Z
    .end local v26    # "isMouseEvent":Z
    .end local v27    # "split":Z
    :cond_29a
    move/from16 v21, v2

    .line 2863
    :cond_29c
    :goto_29c
    if-nez v2, :cond_2a8

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_2a8

    .line 2864
    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2866
    :cond_2a8
    return v2
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2012
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2013
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2016
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 2018
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2019
    return v1

    .line 2021
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 2023
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2024
    return v1

    .line 2028
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_37

    .line 2029
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2031
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 7
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 8238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8239
    return-object v1

    .line 8241
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8242
    .local v0, "orderedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_33

    .line 8244
    :try_start_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_2a

    .line 8245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8246
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_2e

    .line 8247
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_27

    .line 8248
    nop

    .line 8252
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8248
    return-object v4

    .line 8244
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 8252
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8253
    goto :goto_49

    .line 8252
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8253
    throw v1

    .line 8255
    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_39
    if-ltz v2, :cond_49

    .line 8256
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8257
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 8258
    .restart local v4    # "consumer":Landroid/view/View;
    if-eqz v4, :cond_46

    .line 8259
    return-object v4

    .line 8255
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 8263
    .end local v2    # "i":I
    :cond_49
    :goto_49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 8264
    return-object p0

    .line 8266
    :cond_50
    return-object v1
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1177
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1178
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1177
    :goto_f
    return v0
.end method

.method greylist dispatchViewAdded(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5171
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 5172
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 5173
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 5175
    :cond_c
    return-void
.end method

.method greylist dispatchViewRemoved(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5188
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 5189
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 5190
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 5192
    :cond_c
    return-void
.end method

.method greylist-max-o dispatchVisibilityAggregated(Z)Z
    .registers 6
    .param p1, "isVisible"    # Z

    .line 1648
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1649
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1650
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1651
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1b

    .line 1655
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    .line 1656
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1651
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1659
    .end local v2    # "i":I
    :cond_1b
    return p1
.end method

.method protected whitelist dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 1628
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1629
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1630
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1631
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1632
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1631
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1634
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .line 1530
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1531
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1532
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1533
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1534
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1533
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1536
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7637
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7638
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_8

    .line 7639
    return-void

    .line 7641
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7642
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 7643
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7642
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7645
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7582
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7586
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 7587
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 7588
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_14
    if-eqz v0, :cond_33

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_33

    .line 7589
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/View$ListenerInfo;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v2, :cond_33

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v2, :cond_33

    .line 7591
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_33

    .line 7592
    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7593
    return-void

    .line 7596
    :cond_33
    iget v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v1, :cond_38

    .line 7597
    return-void

    .line 7599
    :cond_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7600
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v1, :cond_49

    .line 7601
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7600
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 7603
    .end local v2    # "i":I
    :cond_49
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 7624
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7625
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7626
    return-object p1

    .line 7628
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7629
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7630
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 7629
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7632
    .end local v1    # "i":I
    :cond_1a
    return-object p1
.end method

.method public whitelist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7609
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p2

    .line 7610
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7611
    return-object p2

    .line 7613
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7614
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7615
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7614
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7617
    .end local v1    # "i":I
    :cond_1a
    return-object p2
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 6
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1926
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1928
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1929
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1930
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1931
    aget-object v3, v1, v2

    .line 1932
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1930
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1934
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 1638
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1639
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1640
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1641
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1642
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1641
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1644
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4570
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawableStateChanged()V
    .registers 7

    .line 7754
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7756
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2e

    .line 7757
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_26

    .line 7762
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7763
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7765
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2e

    .line 7766
    aget-object v3, v0, v2

    .line 7767
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_23

    .line 7768
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 7765
    .end local v3    # "child":Landroid/view/View;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 7758
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7772
    :cond_2e
    return-void
.end method

.method protected greylist-max-r encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 9435
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9437
    const-string v0, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9438
    const-string v0, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9439
    const-string v0, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9440
    const-string v0, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9441
    const-string v0, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9443
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9444
    .local v0, "n":I
    const-string v1, "meta:__childCount__"

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 9445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    if-ge v1, v0, :cond_5d

    .line 9446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9447
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9445
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 9449
    .end local v1    # "i":I
    :cond_5d
    return-void
.end method

.method public whitelist endViewTransition(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 7232
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    .line 7233
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7234
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7235
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 7236
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7237
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 7238
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7239
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_36

    .line 7241
    :cond_28
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2f

    .line 7242
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7244
    :cond_2f
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_36

    .line 7245
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7248
    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7251
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_39
    return-void
.end method

.method public blacklist findAutofillableViewsByTraversal(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1518
    .local p1, "autofillableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->findAutofillableViewsByTraversal(Ljava/util/List;)V

    .line 1520
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1521
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1522
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1523
    aget-object v3, v1, v2

    .line 1524
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->findAutofillableViewsByTraversal(Ljava/util/List;)V

    .line 1522
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1526
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .registers 2

    .line 1263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1264
    return-object p0

    .line 1267
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1268
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1270
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 1877
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1878
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1879
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_1b

    .line 1880
    aget-object v3, v1, v2

    .line 1881
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1882
    goto :goto_18

    .line 1885
    :cond_11
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1886
    return-object v3

    .line 1879
    .end local v3    # "child":Landroid/view/View;
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1889
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o findNamedViews(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8202
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_b

    .line 8203
    return-void

    .line 8205
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8207
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 8208
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8209
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8207
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 8211
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "requester"    # Landroid/view/View;

    .line 9514
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9515
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_b

    .line 9516
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    return-object v1

    .line 9518
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 8
    .param p1, "accessibilityId"    # I

    .line 1472
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1473
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1474
    return-object v0

    .line 1477
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 1478
    return-object v2

    .line 1481
    :cond_f
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1482
    .local v1, "childrenCount":I
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1483
    .local v3, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_22

    .line 1484
    aget-object v5, v3, v4

    .line 1485
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1486
    if-eqz v0, :cond_1f

    .line 1487
    return-object v0

    .line 1483
    .end local v5    # "child":Landroid/view/View;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1491
    .end local v4    # "i":I
    :cond_22
    return-object v2
.end method

.method public greylist-max-o findViewByAutofillIdTraversal(I)Landroid/view/View;
    .registers 7
    .param p1, "autofillId"    # I

    .line 1497
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1498
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1499
    return-object v0

    .line 1502
    :cond_7
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1503
    .local v1, "childrenCount":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1504
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1a

    .line 1505
    aget-object v4, v2, v3

    .line 1506
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_17

    .line 1508
    return-object v0

    .line 1504
    .end local v4    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1512
    .end local v3    # "i":I
    :cond_1a
    const/4 v3, 0x0

    return-object v3
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4843
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4844
    return-object p0

    .line 4847
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4848
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4850
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_22

    .line 4851
    aget-object v3, v0, v2

    .line 4853
    .local v3, "v":Landroid/view/View;
    if-eq v3, p2, :cond_1f

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1f

    .line 4854
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 4856
    if-eqz v3, :cond_1f

    .line 4857
    return-object v3

    .line 4850
    .end local v3    # "v":Landroid/view/View;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4862
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewTraversal(I)Landroid/view/View;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4788
    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_5

    .line 4789
    return-object p0

    .line 4792
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4793
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4795
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1e

    .line 4796
    aget-object v3, v0, v2

    .line 4798
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 4799
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4801
    if-eqz v3, :cond_1b

    .line 4802
    return-object v3

    .line 4795
    .end local v3    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4807
    .end local v2    # "i":I
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4815
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4816
    return-object p0

    .line 4819
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4820
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4822
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_24

    .line 4823
    aget-object v3, v0, v2

    .line 4825
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_21

    .line 4826
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 4828
    if-eqz v3, :cond_21

    .line 4829
    return-object v3

    .line 4822
    .end local v3    # "v":Landroid/view/View;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4834
    .end local v2    # "i":I
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1457
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1458
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1459
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1460
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1461
    aget-object v3, v1, v2

    .line 1462
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1b

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 1464
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1460
    .end local v3    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1467
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method greylist-max-o finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .line 7163
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7164
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1d

    .line 7165
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 7166
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7168
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 7169
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7172
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7173
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7177
    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_28

    .line 7178
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7181
    :cond_28
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 7182
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 7185
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7187
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7189
    :cond_40
    return-void
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1083
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1087
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1088
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 1089
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 963
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_31

    .line 966
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_31

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_31

    .line 968
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_31

    .line 976
    :cond_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_31

    .line 977
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 979
    :cond_31
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 14
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7307
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 7308
    .local v0, "meOpaque":Z
    :goto_b
    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 7310
    return v2

    .line 7312
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 7318
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7319
    .local v3, "childrenCount":I
    const/4 v4, 0x1

    .line 7320
    .local v4, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_4f

    .line 7321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7322
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_26

    .line 7323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_26

    move v6, v2

    goto :goto_27

    :cond_26
    move v6, v1

    .line 7324
    .local v6, "customOrder":Z
    :goto_27
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7325
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v3, :cond_4a

    .line 7326
    invoke-direct {p0, v3, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 7327
    .local v9, "childIndex":I
    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 7328
    .local v10, "child":Landroid/view/View;
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_40

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_47

    .line 7329
    :cond_40
    invoke-virtual {v10, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_47

    .line 7330
    const/4 v4, 0x0

    .line 7325
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 7334
    .end local v8    # "i":I
    :cond_4a
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7336
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_4f
    if-nez v0, :cond_53

    if-eqz v4, :cond_54

    :cond_53
    move v1, v2

    :cond_54
    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 6875
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6846
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6864
    return-object p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 3864
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 6955
    if-ltz p1, :cond_c

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_7

    goto :goto_c

    .line 6958
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    .line 6956
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 6944
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public final whitelist getChildDrawingOrder(I)I
    .registers 3
    .param p1, "drawingPosition"    # I

    .line 4442
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 3
    .param p1, "childCount"    # I
    .param p2, "drawingPosition"    # I

    .line 4425
    return p2
.end method

.method public blacklist getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "matrix"    # Landroid/graphics/Matrix;
    .param p4, "isHover"    # Z

    .line 7387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_15

    .line 7388
    invoke-virtual {v1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 7391
    :cond_15
    iget v4, v1, Landroid/view/View;->mLeft:I

    iget v5, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v4, v5

    .line 7392
    .local v4, "dx":I
    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v5, v6

    .line 7393
    .local v5, "dy":I
    neg-int v6, v4

    int-to-float v6, v6

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7395
    iget v6, v0, Landroid/view/ViewGroup;->mRight:I

    iget v7, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v6, v7

    .line 7396
    .local v6, "width":I
    iget v7, v0, Landroid/view/ViewGroup;->mBottom:I

    iget v8, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v7, v8

    .line 7399
    .local v7, "height":I
    iget-object v8, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_39

    iget-object v8, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_3e

    :cond_39
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 7400
    .local v8, "rect":Landroid/graphics/RectF;
    :goto_3e
    int-to-float v9, v6

    int-to-float v10, v7

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7401
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7403
    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v9, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v9, v8, Landroid/graphics/RectF;->right:F

    .line 7404
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v14

    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 7403
    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v9

    .line 7406
    .local v9, "notEmpty":Z
    if-eqz v3, :cond_100

    .line 7407
    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 7408
    .local v10, "target":Landroid/view/ViewGroup$HoverTarget;
    const/4 v11, 0x0

    .line 7409
    .local v11, "childIsHit":Z
    :goto_6c
    if-eqz v10, :cond_7a

    .line 7410
    iget-object v12, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7411
    .local v12, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v13, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v13, v1, :cond_78

    .line 7412
    const/4 v11, 0x1

    .line 7413
    move/from16 v16, v11

    goto :goto_7c

    .line 7415
    :cond_78
    move-object v10, v12

    .line 7416
    .end local v12    # "next":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_6c

    .line 7409
    :cond_7a
    move/from16 v16, v11

    .line 7417
    .end local v11    # "childIsHit":Z
    .local v16, "childIsHit":Z
    :goto_7c
    if-nez v16, :cond_fa

    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v11, :cond_fa

    .line 7418
    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 7419
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v11

    .line 7420
    .local v11, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_88
    if-eqz v9, :cond_ee

    if-eqz v10, :cond_ee

    .line 7421
    iget-object v12, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7422
    .restart local v12    # "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v13, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7424
    .local v13, "hoveredView":Landroid/view/View;
    invoke-direct {v0, v1, v13, v11}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_dc

    .line 7425
    iget v14, v13, Landroid/view/View;->mLeft:I

    int-to-float v14, v14

    iget v15, v13, Landroid/view/View;->mTop:I

    int-to-float v15, v15

    move/from16 v17, v4

    .end local v4    # "dx":I
    .local v17, "dx":I
    iget v4, v13, Landroid/view/View;->mRight:I

    int-to-float v4, v4

    move/from16 v18, v5

    .end local v5    # "dy":I
    .local v18, "dy":I
    iget v5, v13, Landroid/view/View;->mBottom:I

    int-to-float v5, v5

    invoke-virtual {v8, v14, v15, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7427
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7428
    iget v4, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v14, v8, Landroid/graphics/RectF;->right:F

    .line 7429
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v19, v13

    move v13, v14

    move v14, v15

    .end local v13    # "hoveredView":Landroid/view/View;
    .local v19, "hoveredView":Landroid/view/View;
    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 7428
    move-object/from16 v20, v11

    move v11, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v12

    move v12, v5

    move-object v5, v10

    move-object/from16 v10, p2

    .end local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    .end local v11    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "next":Landroid/view/ViewGroup$HoverTarget;
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "target":Landroid/view/ViewGroup$HoverTarget;
    .local v19, "next":Landroid/view/ViewGroup$HoverTarget;
    .local v20, "hoveredView":Landroid/view/View;
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v9

    goto :goto_e6

    .line 7424
    .end local v17    # "dx":I
    .end local v18    # "dy":I
    .end local v19    # "next":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "hoveredView":Landroid/view/View;
    .local v4, "dx":I
    .local v5, "dy":I
    .restart local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    .restart local v11    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "next":Landroid/view/ViewGroup$HoverTarget;
    .restart local v13    # "hoveredView":Landroid/view/View;
    :cond_dc
    move/from16 v17, v4

    move/from16 v18, v5

    move-object v5, v10

    move-object v4, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    .line 7432
    .end local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    .end local v11    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "next":Landroid/view/ViewGroup$HoverTarget;
    .end local v13    # "hoveredView":Landroid/view/View;
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "target":Landroid/view/ViewGroup$HoverTarget;
    .restart local v17    # "dx":I
    .restart local v18    # "dy":I
    .restart local v19    # "next":Landroid/view/ViewGroup$HoverTarget;
    .restart local v20    # "hoveredView":Landroid/view/View;
    :goto_e6
    move-object/from16 v10, v19

    .line 7433
    .end local v5    # "target":Landroid/view/ViewGroup$HoverTarget;
    .end local v19    # "next":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "hoveredView":Landroid/view/View;
    .restart local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    move-object v11, v4

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_88

    .line 7420
    .end local v17    # "dx":I
    .end local v18    # "dy":I
    .local v4, "dx":I
    .local v5, "dy":I
    .restart local v11    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_ee
    move/from16 v17, v4

    move/from16 v18, v5

    move-object v5, v10

    move-object v4, v11

    .line 7434
    .end local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    .end local v11    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "target":Landroid/view/ViewGroup$HoverTarget;
    .restart local v17    # "dx":I
    .restart local v18    # "dy":I
    if-eqz v4, :cond_fe

    .line 7435
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_fe

    .line 7417
    .end local v17    # "dx":I
    .end local v18    # "dy":I
    .local v4, "dx":I
    .local v5, "dy":I
    .restart local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_fa
    move/from16 v17, v4

    move/from16 v18, v5

    .line 7438
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v10    # "target":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "childIsHit":Z
    .restart local v17    # "dx":I
    .restart local v18    # "dy":I
    :cond_fe
    :goto_fe
    goto/16 :goto_17c

    .line 7439
    .end local v17    # "dx":I
    .end local v18    # "dy":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    :cond_100
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .restart local v17    # "dx":I
    .restart local v18    # "dy":I
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 7440
    .local v4, "target":Landroid/view/ViewGroup$TouchTarget;
    const/4 v5, 0x0

    .line 7441
    .local v5, "childIsHit":Z
    :goto_107
    if-eqz v4, :cond_113

    .line 7442
    iget-object v10, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7443
    .local v10, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, v4, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v11, v1, :cond_111

    .line 7444
    const/4 v5, 0x1

    .line 7445
    goto :goto_113

    .line 7447
    :cond_111
    move-object v4, v10

    .line 7448
    .end local v10    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_107

    .line 7449
    :cond_113
    :goto_113
    if-nez v5, :cond_17c

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v10, :cond_17c

    .line 7450
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 7451
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 7452
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_11f
    if-eqz v9, :cond_176

    if-eqz v4, :cond_176

    .line 7453
    iget-object v11, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7454
    .local v11, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v12, v4, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 7456
    .local v12, "touchedView":Landroid/view/View;
    invoke-direct {v0, v1, v12, v10}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v13

    if-nez v13, :cond_16b

    .line 7457
    iget v13, v12, Landroid/view/View;->mLeft:I

    int-to-float v13, v13

    iget v14, v12, Landroid/view/View;->mTop:I

    int-to-float v14, v14

    iget v15, v12, Landroid/view/View;->mRight:I

    int-to-float v15, v15

    iget v1, v12, Landroid/view/View;->mBottom:I

    int-to-float v1, v1

    invoke-virtual {v8, v13, v14, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7459
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7460
    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v13, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v8, Landroid/graphics/RectF;->right:F

    .line 7461
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v16, v12

    move v12, v13

    move v13, v14

    move v14, v15

    .end local v12    # "touchedView":Landroid/view/View;
    .local v16, "touchedView":Landroid/view/View;
    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 7460
    move-object/from16 v19, v16

    move-object/from16 v16, v11

    move v11, v1

    move-object v1, v10

    move-object/from16 v10, p2

    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "next":Landroid/view/ViewGroup$TouchTarget;
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "next":Landroid/view/ViewGroup$TouchTarget;
    .local v19, "touchedView":Landroid/view/View;
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v9

    goto :goto_170

    .line 7456
    .end local v1    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v19    # "touchedView":Landroid/view/View;
    .restart local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v11    # "next":Landroid/view/ViewGroup$TouchTarget;
    .restart local v12    # "touchedView":Landroid/view/View;
    :cond_16b
    move-object v1, v10

    move-object/from16 v16, v11

    move-object/from16 v19, v12

    .line 7464
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v12    # "touchedView":Landroid/view/View;
    .restart local v1    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v16    # "next":Landroid/view/ViewGroup$TouchTarget;
    .restart local v19    # "touchedView":Landroid/view/View;
    :goto_170
    move-object/from16 v4, v16

    .line 7465
    .end local v16    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v19    # "touchedView":Landroid/view/View;
    move-object v10, v1

    move-object/from16 v1, p1

    goto :goto_11f

    .line 7452
    .end local v1    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_176
    move-object v1, v10

    .line 7466
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_17c

    .line 7467
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7472
    .end local v1    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "target":Landroid/view/ViewGroup$TouchTarget;
    .end local v5    # "childIsHit":Z
    :cond_17c
    :goto_17c
    if-eqz v9, :cond_18b

    iget-object v1, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_18b

    .line 7473
    iget-object v1, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    move-object/from16 v10, p2

    invoke-interface {v1, v0, v10, v2, v3}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result v9

    goto :goto_18d

    .line 7472
    :cond_18b
    move-object/from16 v10, p2

    .line 7475
    :goto_18d
    return v9
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 4773
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getChildTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 4777
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_b

    .line 4778
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 4780
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 6378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    .line 6392
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_e

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6393
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_e
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6395
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 6396
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6399
    :cond_1e
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6400
    .local v1, "dx":I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 6402
    .local v2, "dy":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6404
    if-eqz p3, :cond_6f

    .line 6405
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_65

    .line 6406
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_41

    .line 6407
    :cond_3e
    const/4 v3, 0x2

    new-array v3, v3, [F

    :goto_41
    nop

    .line 6408
    .local v3, "position":[F
    iget v4, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 6409
    iget v4, p3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 6410
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6411
    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->x:I

    .line 6412
    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->y:I

    .line 6414
    .end local v3    # "position":[F
    :cond_65
    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 6415
    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 6418
    :cond_6f
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    .line 6419
    .local v3, "width":I
    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    .line 6421
    .local v4, "height":I
    const/4 v5, 0x1

    .line 6422
    .local v5, "rectIsVisible":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_8e

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_95

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6423
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 6425
    :cond_8e
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6428
    :cond_95
    if-nez p4, :cond_99

    if-eqz v5, :cond_b4

    :cond_99
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_b4

    .line 6431
    iget v6, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6435
    :cond_b4
    if-nez p4, :cond_b8

    if-eqz v5, :cond_d4

    :cond_b8
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_d4

    .line 6437
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6440
    :cond_d4
    iget v6, v0, Landroid/graphics/RectF;->left:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    .line 6441
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 6440
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 6443
    if-nez p4, :cond_fb

    if-eqz v5, :cond_114

    :cond_fb
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_114

    .line 6444
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_10e

    .line 6445
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6446
    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v5

    goto :goto_114

    .line 6448
    :cond_10e
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 6451
    :cond_114
    :goto_114
    return v5
.end method

.method public whitelist getClipChildren()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4599
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getClipToPadding()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4657
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getDeepestFocusedChild()Landroid/view/View;
    .registers 4

    .line 1231
    move-object v0, p0

    .line 1232
    .local v0, "v":Landroid/view/View;
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1233
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1234
    return-object v0

    .line 1236
    :cond_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :cond_16
    move-object v0, v1

    goto :goto_1

    .line 1238
    :cond_18
    return-object v1
.end method

.method public whitelist getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .line 823
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFocusedChild()Landroid/view/View;
    .registers 2

    .line 1227
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .line 6523
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public whitelist getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 7749
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public whitelist getLayoutMode()I
    .registers 3

    .line 6811
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 6812
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 6813
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_16

    :cond_14
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 6814
    .local v0, "inheritedLayoutMode":I
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6816
    .end local v0    # "inheritedLayoutMode":I
    :cond_1a
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public whitelist getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .line 5700
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public whitelist getNestedScrollAxes()I
    .registers 2

    .line 8174
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method greylist-max-o getNumChildrenForAccessibility()I
    .registers 5

    .line 3920
    const/4 v0, 0x0

    .line 3921
    .local v0, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 3922
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3923
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3924
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 3925
    :cond_15
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 3926
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 3927
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v0, v3

    .line 3921
    .end local v2    # "child":Landroid/view/View;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3930
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public whitelist getOverlay()Landroid/view/ViewGroupOverlay;
    .registers 3

    .line 4404
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 4405
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 4407
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic whitelist getOverlay()Landroid/view/ViewOverlay;
    .registers 2

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6730
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method greylist-max-o getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 4575
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 4579
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4580
    .local v0, "clipToPadding":Z
    :goto_d
    if-eqz v0, :cond_2b

    .line 4581
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4582
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4583
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4584
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4586
    :cond_2b
    return-void
.end method

.method public whitelist getTouchscreenBlocksFocus()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1442
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist getTransientView(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 5011
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_16

    .line 5014
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 5012
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getTransientViewCount()I
    .registers 2

    .line 4977
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o getTransientViewIndex(I)I
    .registers 3
    .param p1, "position"    # I

    .line 4992
    if-ltz p1, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_16

    .line 4995
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    return v0

    .line 4993
    :cond_16
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 850
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 851
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 853
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 855
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 856
    return-void
.end method

.method greylist-max-o hasDefaultFocus()Z
    .registers 2

    .line 929
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

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

.method public whitelist hasFocus()Z
    .registers 2

    .line 1248
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

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

.method greylist-max-o hasFocusable(ZZ)Z
    .registers 6
    .param p1, "allowAutoFocus"    # Z
    .param p2, "dispatchExplicit"    # Z

    .line 1280
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1281
    return v1

    .line 1285
    :cond_8
    if-nez p1, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1a

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1286
    const/4 v0, 0x1

    return v0

    .line 1290
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1291
    .local v0, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_27

    .line 1292
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    .line 1295
    :cond_27
    return v1
.end method

.method greylist-max-o hasFocusableChild(Z)Z
    .registers 7
    .param p1, "dispatchExplicit"    # Z

    .line 1300
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1301
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1303
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_1e

    .line 1304
    aget-object v3, v1, v2

    .line 1308
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_11

    invoke-virtual {v3}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-nez v4, :cond_19

    :cond_11
    if-nez p1, :cond_1b

    .line 1309
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1310
    :cond_19
    const/4 v4, 0x1

    return v4

    .line 1303
    .end local v3    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1314
    .end local v2    # "i":I
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o hasHoveredChild()Z
    .registers 2

    .line 2463
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist hasTransientState()Z
    .registers 2

    .line 1172
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

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

.method greylist-max-o hasUnhandledKeyListener()Z
    .registers 2

    .line 8215
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-gtz v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasUnhandledKeyListener()Z

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

.method public blacklist hasWindowInsetsAnimationCallback()Z
    .registers 7

    .line 7555
    invoke-super {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7556
    return v1

    .line 7562
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 7563
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    .line 7564
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_19
    if-eqz v0, :cond_2e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v3, :cond_2e

    .line 7566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, 0x600

    if-nez v3, :cond_2e

    .line 7567
    return v2

    .line 7570
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7571
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_43

    .line 7572
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 7573
    return v1

    .line 7571
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 7576
    .end local v4    # "i":I
    :cond_43
    return v2
.end method

.method greylist-max-o incrementChildUnhandledKeyListeners()V
    .registers 3

    .line 8219
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8220
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-ne v0, v1, :cond_17

    .line 8221
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 8222
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 8225
    :cond_17
    return-void
.end method

.method public whitelist indexOfChild(Landroid/view/View;)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 6927
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6928
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6929
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 6930
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_c

    .line 6931
    return v2

    .line 6929
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6934
    .end local v2    # "i":I
    :cond_f
    const/4 v2, -0x1

    return v2
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 4001
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 4003
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 4004
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1d

    .line 4006
    :cond_17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4008
    :goto_1d
    return-void
.end method

.method public final whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6111
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_12

    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_12

    .line 6113
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6114
    return-void

    .line 6117
    :cond_12
    move-object/from16 v4, p0

    .line 6118
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_115

    .line 6122
    iget v5, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_20

    move v5, v7

    goto :goto_21

    :cond_20
    move v5, v6

    .line 6127
    .local v5, "drawAnimation":Z
    :goto_21
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 6131
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    iget v9, v1, Landroid/view/View;->mLayerType:I

    if-eqz v9, :cond_38

    .line 6132
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v10, -0x80000000

    or-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6133
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v10, -0x8001

    and-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6136
    :cond_38
    iget-object v9, v3, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 6137
    .local v9, "location":[I
    iget v10, v1, Landroid/view/View;->mLeft:I

    aput v10, v9, v6

    .line 6138
    iget v6, v1, Landroid/view/View;->mTop:I

    aput v6, v9, v7

    .line 6139
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_4e

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_9d

    .line 6141
    :cond_4e
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6142
    .local v6, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6144
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_76

    .line 6145
    iget-object v10, v3, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 6146
    .local v10, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v11

    .line 6147
    .local v11, "transformed":Z
    if-eqz v11, :cond_74

    .line 6148
    iget-object v12, v3, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6149
    .local v12, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6150
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_75

    .line 6151
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_75

    .line 6154
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_74
    move-object v12, v8

    .line 6156
    .end local v10    # "t":Landroid/view/animation/Transformation;
    .end local v11    # "transformed":Z
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_75
    :goto_75
    goto :goto_77

    .line 6157
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_76
    move-object v12, v8

    .line 6159
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :goto_77
    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6160
    iget v10, v6, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v11

    .line 6161
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v11, v13

    iget v13, v6, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    .line 6162
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    .line 6163
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 6160
    invoke-virtual {v2, v10, v11, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 6167
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_9d
    :goto_9d
    const/4 v6, 0x0

    .line 6168
    .local v6, "view":Landroid/view/View;
    instance-of v10, v4, Landroid/view/View;

    if-eqz v10, :cond_a5

    .line 6169
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    .line 6172
    :cond_a5
    if-eqz v5, :cond_b9

    .line 6173
    if-eqz v6, :cond_b0

    .line 6174
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    goto :goto_b9

    .line 6175
    :cond_b0
    instance-of v10, v4, Landroid/view/ViewRootImpl;

    if-eqz v10, :cond_b9

    .line 6176
    move-object v10, v4

    check-cast v10, Landroid/view/ViewRootImpl;

    iput-boolean v7, v10, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 6182
    :cond_b9
    :goto_b9
    if-eqz v6, :cond_cb

    .line 6183
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_cb

    .line 6184
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const v12, -0x200001

    and-int/2addr v10, v12

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    .line 6188
    :cond_cb
    invoke-interface {v4, v9, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    .line 6189
    if-eqz v6, :cond_10c

    .line 6191
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 6192
    .local v10, "m":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_109

    .line 6193
    iget-object v11, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6194
    .local v11, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6195
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6196
    iget v12, v11, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v11, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 6197
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v11, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 6198
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .local v16, "childMatrix":Landroid/graphics/Matrix;
    float-to-double v7, v15

    .line 6199
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6196
    invoke-virtual {v2, v12, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10e

    .line 6192
    .end local v11    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_109
    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    goto :goto_10e

    .line 6189
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_10c
    move-object/from16 v16, v8

    .line 6202
    .end local v6    # "view":Landroid/view/View;
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    :goto_10e
    if-nez v4, :cond_111

    goto :goto_115

    :cond_111
    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto :goto_9d

    .line 6204
    .end local v5    # "drawAnimation":Z
    .end local v9    # "location":[I
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    :cond_115
    :goto_115
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 9
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6220
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_92

    .line 6222
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x90

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4e

    .line 6224
    aget v0, p1, v3

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v2

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6226
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_31

    .line 6227
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6230
    :cond_31
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 6231
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 6233
    .local v1, "top":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_49

    .line 6234
    iget v4, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v3, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-nez v4, :cond_49

    .line 6235
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6239
    :cond_49
    aput v0, p1, v3

    .line 6240
    aput v1, p1, v2

    .line 6241
    .end local v0    # "left":I
    .end local v1    # "top":I
    goto :goto_7c

    .line 6243
    :cond_4e
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_61

    .line 6244
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    .line 6247
    :cond_61
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6249
    :goto_6e
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v0, p1, v3

    .line 6250
    iget v0, p0, Landroid/view/ViewGroup;->mTop:I

    aput v0, p1, v2

    .line 6252
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6254
    :goto_7c
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6255
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_8f

    .line 6256
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6259
    :cond_8f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 6262
    :cond_92
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o invalidateInheritedLayoutMode(I)V
    .registers 5
    .param p1, "layoutModeOfRoot"    # I

    .line 6781
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_28

    .line 6783
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_28

    .line 6786
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6789
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_1b
    if-ge v0, v1, :cond_27

    .line 6790
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 6789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 6792
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_27
    return-void

    .line 6784
    :cond_28
    :goto_28
    return-void
.end method

.method public whitelist isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6581
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isAnimationCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6543
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected whitelist isChildrenDrawingOrderEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6661
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected whitelist isChildrenDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6624
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o isLayoutModeOptical()Z
    .registers 3

    .line 4124
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isLayoutSuppressed()Z
    .registers 2

    .line 7301
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public whitelist isMotionEventSplittingEnabled()Z
    .registers 3

    .line 3212
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final greylist-max-o isShowingContextMenuWithCoords()Z
    .registers 3

    .line 995
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected greylist isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 3079
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v0

    .line 3080
    .local v0, "point":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3081
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 3082
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3083
    aget v3, v0, v1

    aget v4, v0, v2

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    .line 3084
    .local v3, "isInView":Z
    if-eqz v3, :cond_20

    if-eqz p4, :cond_20

    .line 3085
    aget v1, v0, v1

    aget v2, v0, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 3087
    :cond_20
    return v3
.end method

.method public whitelist isTransitionGroup()Z
    .registers 5

    .line 3229
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 3230
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 3232
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 3233
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    if-eqz v0, :cond_29

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method

.method greylist-max-o isViewTransitioning(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7197
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 5

    .line 7776
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7777
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7778
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7779
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 7780
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7779
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7782
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public final whitelist layout(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 6456
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6457
    :cond_10
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_19

    .line 6458
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 6460
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_20

    .line 6463
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6465
    :goto_20
    return-void
.end method

.method public blacklist makeFrameworkOptionalFitsSystemWindows()V
    .registers 5

    .line 1572
    invoke-super {p0}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1573
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1574
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1575
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1576
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1575
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1578
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public greylist makeOptionalFitsSystemWindows()V
    .registers 5

    .line 1559
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1560
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1561
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1562
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1563
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1562
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1565
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 6992
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6994
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 6996
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 6999
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7000
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 7019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7021
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 7024
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 7028
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7029
    return-void
.end method

.method protected whitelist measureChildren(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 6971
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6972
    .local v0, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6973
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_17

    .line 6974
    aget-object v3, v1, v2

    .line 6975
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 6976
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6973
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6979
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-o notifyChildOfDragStart(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 1899
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    .line 1900
    .local v0, "tx":F
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    .line 1902
    .local v1, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v2

    .line 1903
    .local v2, "point":[F
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1904
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 1905
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1907
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 1908
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v4

    iput v6, v5, Landroid/view/DragEvent;->mY:F

    .line 1909
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    .line 1910
    .local v5, "canAccept":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v6, Landroid/view/DragEvent;->mX:F

    .line 1911
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v6, Landroid/view/DragEvent;->mY:F

    .line 1912
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v6, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1913
    if-eqz v5, :cond_48

    .line 1914
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1915
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1916
    iget v3, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1917
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1920
    :cond_48
    return v5
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 3871
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_b

    .line 3872
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_38

    .line 3874
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_38

    .line 3876
    :try_start_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_14} :catch_15

    .line 3880
    goto :goto_38

    .line 3877
    :catch_15
    move-exception v0

    .line 3878
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3882
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist-max-o notifySubtreeAccessibilityStateChangedIfNeeded()V
    .registers 3

    .line 3887
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_11

    goto :goto_37

    .line 3892
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    .line 3893
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    .line 3894
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 3895
    .local v0, "a11yParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_33

    .line 3896
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3897
    return-void

    .line 3900
    .end local v0    # "a11yParent":Landroid/view/ViewParent;
    :cond_33
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3901
    return-void

    .line 3888
    :cond_37
    :goto_37
    return-void
.end method

.method public greylist offsetChildrenTopAndBottom(I)V
    .registers 8
    .param p1, "offset"    # I

    .line 6356
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6357
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6358
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .line 6360
    .local v2, "invalidate":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v0, :cond_21

    .line 6361
    aget-object v4, v1, v3

    .line 6362
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 6363
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 6364
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_1e

    .line 6365
    const/4 v2, 0x1

    .line 6366
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    .line 6360
    .end local v4    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6370
    .end local v3    # "i":I
    :cond_21
    if-eqz v2, :cond_27

    .line 6371
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6373
    :cond_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6374
    return-void
.end method

.method public final whitelist offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6272
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6273
    return-void
.end method

.method greylist-max-o offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 11
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .line 6293
    if-ne p1, p0, :cond_3

    .line 6294
    return-void

    .line 6297
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6300
    .local v0, "theParent":Landroid/view/ViewParent;
    :goto_5
    if-eqz v0, :cond_61

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_61

    if-eq v0, p0, :cond_61

    .line 6304
    const/4 v1, 0x0

    if-eqz p3, :cond_36

    .line 6305
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6307
    if-eqz p4, :cond_5b

    .line 6308
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6309
    .local v2, "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6311
    .local v1, "intersected":Z
    if-nez v1, :cond_35

    .line 6312
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6314
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_35
    goto :goto_5b

    .line 6316
    :cond_36
    if-eqz p4, :cond_4e

    .line 6317
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6318
    .restart local v2    # "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6320
    .restart local v1    # "intersected":Z
    if-nez v1, :cond_4e

    .line 6321
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6324
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_4e
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6328
    :cond_5b
    :goto_5b
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6329
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_5

    .line 6334
    :cond_61
    if-ne v0, p0, :cond_81

    .line 6335
    if-eqz p3, :cond_73

    .line 6336
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 6339
    :cond_73
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6345
    :goto_80
    return-void

    .line 6343
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parameter must be a descendant of this view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6283
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 5211
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5212
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5213
    return-void
.end method

.method protected greylist onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 1601
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_30

    .line 1602
    if-nez p3, :cond_c

    .line 1603
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_30

    .line 1605
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1606
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1609
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_28

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1612
    :cond_28
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 1619
    :cond_30
    :goto_30
    if-nez p3, :cond_41

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_41

    .line 1620
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1621
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1624
    :cond_41
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 7
    .param p1, "extraSpace"    # I

    .line 7786
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_b

    .line 7787
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 7790
    :cond_b
    const/4 v0, 0x0

    .line 7791
    .local v0, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7792
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_22

    .line 7793
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 7795
    .local v3, "childState":[I
    if-eqz v3, :cond_1f

    .line 7796
    array-length v4, v3

    add-int/2addr v0, v4

    .line 7792
    .end local v3    # "childState":[I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 7800
    .end local v2    # "i":I
    :cond_22
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 7802
    .local v2, "state":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v1, :cond_3c

    .line 7803
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7805
    .local v4, "childState":[I
    if-eqz v4, :cond_39

    .line 7806
    invoke-static {v2, v4}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v2

    .line 7802
    .end local v4    # "childState":[I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 7810
    .end local v3    # "i":I
    :cond_3c
    return-object v2
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4208
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 4212
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4213
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4215
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v8, 0x8

    const/4 v2, 0x1

    if-ge v6, v0, :cond_51

    .line 4216
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4217
    .local v7, "c":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_4c

    .line 4218
    invoke-virtual {v7}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 4220
    .local v8, "insets":Landroid/graphics/Insets;
    nop

    .line 4221
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, v8, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, v3

    .line 4222
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v8, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v4

    .line 4223
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v8, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    .line 4224
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v9, v8, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v5, v9

    sub-int/2addr v5, v2

    .line 4220
    move v2, v0

    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    goto :goto_4d

    .line 4217
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "insets":Landroid/graphics/Insets;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_4c
    move-object v0, p1

    .line 4215
    .end local v7    # "c":Landroid/view/View;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    move-object p1, v0

    goto :goto_10

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_51
    move-object v0, p1

    .line 4231
    .end local v6    # "i":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    const/16 p1, 0x3f

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {p1, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4232
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4234
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4239
    sget p1, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4240
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4242
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v6

    .line 4243
    .local v6, "lineLength":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v7

    .line 4244
    .local v7, "lineWidth":I
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_a1

    .line 4245
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4246
    .local v9, "c":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_9e

    .line 4247
    move-object v5, v1

    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    move-object v1, v5

    .line 4244
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v9    # "c":Landroid/view/View;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :cond_9e
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    .line 4252
    .end local v6    # "lineLength":I
    .end local v7    # "lineWidth":I
    .end local p1    # "i":I
    :cond_a1
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 4198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 4199
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4200
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4198
    .end local v1    # "c":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4202
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 6075
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6077
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 6080
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6083
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6087
    :cond_21
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 6090
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6091
    move-object p2, p0

    .line 6094
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_37

    .line 6095
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6097
    :cond_37
    return-void
.end method

.method public final blacklist onDescendantUnbufferedRequested()V
    .registers 5

    .line 9455
    const/4 v0, 0x0

    .line 9456
    .local v0, "focusedChildNonPointerSource":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 9457
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v1, -0x3

    .line 9460
    :cond_b
    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_26

    .line 9466
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 9467
    .local v2, "child":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_23

    .line 9468
    iget v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9469
    goto :goto_26

    .line 9465
    .end local v2    # "child":Landroid/view/View;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 9472
    .end local v1    # "i":I
    :cond_26
    :goto_26
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2f

    .line 9473
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    .line 9475
    :cond_2f
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 5217
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5218
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5219
    return-void
.end method

.method public greylist-max-r onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3820
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3821
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3822
    return-void

    .line 3824
    :cond_a
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2e

    .line 3825
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3826
    .local v0, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3827
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3828
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3829
    .local v1, "childrenForAccessibilityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 3830
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3831
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 3829
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3833
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3835
    .end local v0    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "childrenForAccessibilityCount":I
    :cond_2e
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 3837
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2538
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 2539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2540
    .local v0, "action":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    .line 2541
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    .line 2542
    .local v3, "y":F
    const/4 v4, 0x7

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9

    if-ne v0, v4, :cond_24

    .line 2543
    :cond_1c
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2544
    const/4 v1, 0x1

    return v1

    .line 2547
    .end local v0    # "action":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_24
    return v1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3315
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 3316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 3317
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3318
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3319
    return v0

    .line 3321
    :cond_25
    return v1
.end method

.method protected abstract whitelist onLayout(ZIIII)V
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 8150
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 8159
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 3946
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 8141
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 8142
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 8132
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .end local p2    # "dxConsumed":I
    .end local p3    # "dyConsumed":I
    .end local p4    # "dxUnconsumed":I
    .end local p5    # "dyUnconsumed":I
    .local v1, "dxConsumed":I
    .local v2, "dyConsumed":I
    .local v3, "dxUnconsumed":I
    .local v4, "dyUnconsumed":I
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 8133
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 8109
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8110
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3390
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3391
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 3392
    const/4 v1, 0x0

    .line 3393
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3394
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_e

    .line 3396
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_a
    add-int/lit8 v1, v0, -0x1

    .line 3397
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3398
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3400
    .restart local v3    # "end":I
    :goto_e
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3401
    .local v4, "children":[Landroid/view/View;
    move v5, v1

    .local v5, "i":I
    :goto_11
    if-eq v5, v3, :cond_25

    .line 3402
    aget-object v6, v4, v5

    .line 3403
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_23

    .line 3404
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 3405
    const/4 v7, 0x1

    return v7

    .line 3401
    .end local v6    # "child":Landroid/view/View;
    :cond_23
    add-int/2addr v5, v2

    goto :goto_11

    .line 3409
    .end local v5    # "i":I
    :cond_25
    const/4 v5, 0x0

    return v5
.end method

.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1129
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 1130
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1132
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 2064
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    .line 2065
    .local v0, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v1

    .line 2066
    .local v1, "y":F
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5e

    .line 2073
    :cond_16
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2074
    .local v2, "childrenCount":I
    if-eqz v2, :cond_59

    .line 2075
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2076
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v4, :cond_28

    .line 2077
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 2078
    .local v5, "customOrder":Z
    :goto_29
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2079
    .local v6, "children":[Landroid/view/View;
    add-int/lit8 v7, v2, -0x1

    .local v7, "i":I
    :goto_2d
    if-ltz v7, :cond_54

    .line 2080
    invoke-direct {p0, v2, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2081
    .local v8, "childIndex":I
    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2083
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_51

    .line 2084
    invoke-virtual {p0, v0, v1, v9, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_44

    .line 2085
    goto :goto_51

    .line 2087
    :cond_44
    nop

    .line 2088
    invoke-direct {p0, p1, p2, v9}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v10

    .line 2089
    .local v10, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v10, :cond_51

    .line 2090
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2091
    :cond_50
    return-object v10

    .line 2079
    .end local v8    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_51
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 2094
    .end local v7    # "i":I
    :cond_54
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2099
    .end local v4    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "customOrder":Z
    .end local v6    # "children":[Landroid/view/View;
    :cond_59
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 2070
    .end local v2    # "childrenCount":I
    :cond_5e
    :goto_5e
    return-object v3
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8180
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 8121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 8122
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8123
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5184
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5201
    return-void
.end method

.method blacklist overrideFrameRate(FZ)V
    .registers 5
    .param p1, "frameRate"    # F
    .param p2, "forceOverride"    # Z

    .line 9582
    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSelfRequestedFrameRateFlag()Z

    move-result v0

    if-nez v0, :cond_23

    .line 9583
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 9584
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 9587
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 9586
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 9590
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method protected blacklist pointInHoveredChild(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2469
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2470
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    .line 2471
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    iget-object v2, v2, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2470
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    .line 2473
    :cond_17
    return v1
.end method

.method public whitelist propagateRequestedFrameRate(FZ)V
    .registers 4
    .param p1, "frameRate"    # F
    .param p2, "forceOverride"    # Z

    .line 9564
    sget-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz v0, :cond_16

    .line 9566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9567
    return-void

    .line 9572
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9573
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->overrideFrameRate(FZ)V

    .line 9574
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9576
    :cond_16
    return-void
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1674
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_11

    .line 1675
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1676
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1678
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_11
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 5778
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5779
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5781
    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .registers 11

    .line 5797
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5798
    .local v0, "count":I
    if-gtz v0, :cond_5

    .line 5799
    return-void

    .line 5802
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5803
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5805
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5806
    .local v3, "focused":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    move v4, v2

    .line 5807
    .local v4, "detach":Z
    :goto_13
    const/4 v5, 0x0

    .line 5809
    .local v5, "clearChildFocus":Z
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5811
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_19
    if-ltz v6, :cond_65

    .line 5812
    aget-object v7, v1, v6

    .line 5814
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_26

    .line 5815
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5818
    :cond_26
    const/4 v8, 0x0

    if-ne v7, v3, :cond_2d

    .line 5819
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5820
    const/4 v5, 0x1

    .line 5823
    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5825
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5826
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5828
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_4f

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_49

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5829
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    goto :goto_4f

    .line 5831
    :cond_49
    if-eqz v4, :cond_52

    .line 5832
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_52

    .line 5830
    :cond_4f
    :goto_4f
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5835
    :cond_52
    :goto_52
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 5836
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5839
    :cond_5b
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5841
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5842
    aput-object v8, v1, v6

    .line 5811
    .end local v7    # "view":Landroid/view/View;
    add-int/lit8 v6, v6, -0x1

    goto :goto_19

    .line 5845
    .end local v6    # "i":I
    :cond_65
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_6e

    .line 5846
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5848
    :cond_6e
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v2, :cond_77

    .line 5849
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5851
    :cond_77
    if-eqz v5, :cond_85

    .line 5852
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5853
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v2

    if-nez v2, :cond_85

    .line 5854
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5857
    :cond_85
    return-void
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 5880
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 5881
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5884
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 5885
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5887
    :cond_10
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_17

    .line 5888
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5890
    :cond_17
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_1e

    .line 5891
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5894
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5896
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5897
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5899
    if-eqz p2, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3b

    :cond_2f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5900
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5901
    :cond_3b
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_46

    .line 5902
    :cond_3f
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_46

    .line 5903
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5906
    :cond_46
    :goto_46
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 5907
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5910
    :cond_50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5911
    return-void
.end method

.method public greylist removeTransientView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 4947
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_5

    .line 4948
    return-void

    .line 4950
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4951
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_32

    .line 4952
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2f

    .line 4953
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4954
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 4955
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4956
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2a

    .line 4957
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4959
    :cond_2a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4960
    return-void

    .line 4951
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4963
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 5522
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5526
    :cond_d
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 5567
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5568
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5569
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5570
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 5539
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 5540
    return-void
.end method

.method public whitelist removeViews(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5583
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5586
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5554
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5555
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 863
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    .line 864
    return-void

    .line 868
    :cond_9
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 871
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 873
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 876
    :cond_19
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 878
    :cond_1b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_24

    .line 879
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 881
    :cond_24
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .param p1, "disallowIntercept"    # Z

    .line 3260
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ne p1, v0, :cond_d

    .line 3262
    return-void

    .line 3265
    :cond_d
    if-eqz p1, :cond_15

    .line 3266
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1d

    .line 3268
    :cond_15
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3272
    :goto_1d
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_26

    .line 3273
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3275
    :cond_26
    return-void
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3347
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_56

    .line 3363
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3349
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3350
    .local v1, "result":Z
    goto :goto_40

    .line 3358
    .end local v1    # "result":Z
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3359
    .local v1, "took":Z
    if-eqz v1, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3360
    .local v2, "result":Z
    :goto_31
    move v1, v2

    goto :goto_40

    .line 3352
    .end local v1    # "took":Z
    .end local v2    # "result":Z
    :sswitch_33
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3353
    .restart local v1    # "took":Z
    if-eqz v1, :cond_3b

    move v2, v1

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3355
    .restart local v2    # "result":Z
    :goto_3f
    move v1, v2

    .line 3367
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_40
    if-eqz v1, :cond_54

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result v2

    if-nez v2, :cond_54

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_54

    .line 3368
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3370
    :cond_54
    return v1

    nop

    :sswitch_data_56
    .sparse-switch
        0x20000 -> :sswitch_33
        0x40000 -> :sswitch_25
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1101
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1102
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1103
    return v1

    .line 1105
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1106
    .local v2, "propagate":Z
    if-nez v2, :cond_d

    .line 1107
    return v1

    .line 1109
    :cond_d
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 7875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7876
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 7877
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 7879
    :cond_9
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 7341
    if-eqz p1, :cond_11

    .line 7342
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7343
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 7344
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 7347
    :cond_11
    return-void
.end method

.method protected blacklist resetResolvedDrawables()V
    .registers 5

    .line 8072
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8075
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8076
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8077
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8078
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8075
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8081
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedLayoutDirection()V
    .registers 5

    .line 8004
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8006
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8007
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8008
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8009
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8010
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8007
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8013
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedPadding()V
    .registers 5

    .line 8055
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 8057
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8058
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8059
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8060
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8061
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 8058
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8064
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextAlignment()V
    .registers 5

    .line 8038
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8040
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8041
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8042
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8043
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8044
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8041
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8047
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextDirection()V
    .registers 5

    .line 8021
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8024
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8025
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8026
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8027
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8024
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8030
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o resetSubtreeAccessibilityStateChanged()V
    .registers 5

    .line 3905
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3906
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3907
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3908
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3909
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3908
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3911
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public blacklist resetSubtreeAutofillIds()V
    .registers 5

    .line 3808
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3809
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3810
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3811
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3812
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3811
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3814
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected greylist-max-o resolveDrawables()V
    .registers 5

    .line 7975
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 7976
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7977
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 7978
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7979
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7980
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 7977
    .end local v2    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7983
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveLayoutDirection()Z
    .registers 6

    .line 7905
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    .line 7906
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7907
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7908
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7909
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7910
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7911
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 7908
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7915
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveLayoutParams()V
    .registers 4

    .line 7990
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 7991
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7992
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 7993
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7994
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 7992
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7996
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public greylist-max-r resolvePadding()V
    .registers 5

    .line 7960
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 7961
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7962
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 7963
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7964
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7965
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 7962
    .end local v2    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7968
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveRtlPropertiesIfNeeded()Z
    .registers 6

    .line 7886
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    .line 7888
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7889
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7890
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7891
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7892
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7893
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 7890
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7897
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextAlignment()Z
    .registers 6

    .line 7941
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    .line 7942
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7944
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7945
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7946
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7947
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 7944
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7951
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextDirection()Z
    .registers 6

    .line 7923
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    .line 7924
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7926
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7927
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7928
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7929
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 7926
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7933
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public whitelist restoreDefaultFocus()Z
    .registers 3

    .line 3414
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 3415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 3417
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3418
    const/4 v0, 0x1

    return v0

    .line 3420
    :cond_1e
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusInCluster(I)Z
    .registers 4
    .param p1, "direction"    # I

    .line 3430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    .line 3433
    .local v0, "blockedFocus":Z
    const/4 v1, 0x0

    :try_start_b
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3434
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 3436
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3434
    return v1

    .line 3436
    :catchall_16
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3437
    throw v1

    .line 3439
    .end local v0    # "blockedFocus":Z
    :cond_1b
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusNotInCluster()Z
    .registers 9

    .line 3457
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_b

    .line 3460
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    .line 3462
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5c

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_19

    goto :goto_5c

    .line 3465
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3466
    .local v0, "descendentFocusability":I
    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_27

    .line 3467
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3469
    :cond_27
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_33

    .line 3470
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3471
    return v5

    .line 3473
    :cond_33
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_4c

    .line 3474
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    .line 3475
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_49

    .line 3476
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 3477
    return v5

    .line 3473
    .end local v6    # "child":Landroid/view/View;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3480
    .end local v3    # "i":I
    :cond_4c
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 3481
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3483
    :cond_5b
    return v2

    .line 3463
    .end local v0    # "descendentFocusability":I
    :cond_5c
    :goto_5c
    return v2
.end method

.method public whitelist scheduleLayoutAnimation()V
    .registers 2

    .line 6499
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6500
    return-void
.end method

.method public whitelist setAddStatesFromChildren(Z)V
    .registers 3
    .param p1, "addsStates"    # Z

    .line 7820
    if-eqz p1, :cond_9

    .line 7821
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_f

    .line 7823
    :cond_9
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7826
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7827
    return-void
.end method

.method public whitelist setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "always"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6606
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6607
    return-void
.end method

.method public whitelist setAnimationCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6562
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6563
    return-void
.end method

.method protected whitelist setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4080
    if-nez p1, :cond_8

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_17

    .line 4081
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4082
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4083
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 4084
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4083
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4087
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method protected whitelist setChildrenDrawingOrderEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 6678
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6679
    return-void
.end method

.method protected whitelist setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6646
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6647
    return-void
.end method

.method public whitelist setClipChildren(Z)V
    .registers 7
    .param p1, "clipChildren"    # Z

    .line 4611
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 4612
    .local v0, "previousValue":Z
    :goto_9
    if-eq p1, v0, :cond_26

    .line 4613
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4614
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_23

    .line 4615
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4616
    .local v3, "child":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v4, :cond_20

    .line 4617
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, p1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 4614
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4620
    .end local v2    # "i":I
    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4622
    :cond_26
    return-void
.end method

.method public whitelist setClipToPadding(Z)V
    .registers 4
    .param p1, "clipToPadding"    # Z

    .line 4636
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_e

    .line 4637
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4640
    :cond_e
    return-void
.end method

.method greylist-max-o setDefaultFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 885
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 886
    return-void

    .line 889
    :cond_d
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 891
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 892
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 894
    :cond_1c
    return-void
.end method

.method public whitelist setDescendantFocusability(I)V
    .registers 4
    .param p1, "focusability"    # I

    .line 835
    sparse-switch p1, :sswitch_data_1e

    .line 841
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :sswitch_b
    nop

    .line 844
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 845
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 846
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_b
    .end sparse-switch
.end method

.method public whitelist setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .line 6509
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 6510
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_c

    .line 6511
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6513
    :cond_c
    return-void
.end method

.method public whitelist setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 7862
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 7863
    return-void
.end method

.method public whitelist setLayoutMode(I)V
    .registers 3
    .param p1, "layoutMode"    # I

    .line 6830
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_13

    .line 6831
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 6832
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6833
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6835
    :cond_13
    return-void
.end method

.method public whitelist setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 5679
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_e

    .line 5680
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5681
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5682
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5684
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_e
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5685
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1b

    .line 5686
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5688
    :cond_1b
    return-void
.end method

.method public whitelist setMotionEventSplittingEnabled(Z)V
    .registers 4
    .param p1, "split"    # Z

    .line 3199
    if-eqz p1, :cond_a

    .line 3200
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 3202
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3204
    :goto_12
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5166
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5167
    return-void
.end method

.method public whitelist setPersistentDrawingCache(I)V
    .registers 3
    .param p1, "drawingCacheToKeep"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6759
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 6760
    return-void
.end method

.method public whitelist setRequestedFrameRate(F)V
    .registers 4
    .param p1, "frameRate"    # F

    .line 9536
    sget-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz v0, :cond_23

    .line 9537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9538
    return-void

    .line 9540
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->setRequestedFrameRate(F)V

    .line 9543
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9544
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9546
    :cond_23
    return-void
.end method

.method protected whitelist setStaticTransformationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4757
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4758
    return-void
.end method

.method public whitelist setTouchscreenBlocksFocus(Z)V
    .registers 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1412
    if-eqz p1, :cond_2a

    .line 1413
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1416
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1417
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1418
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_29

    .line 1419
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1422
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_29
    goto :goto_32

    .line 1424
    :cond_2a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1426
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist setTransitionGroup(Z)V
    .registers 4
    .param p1, "isTransitionGroup"    # Z

    .line 3249
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3250
    if-eqz p1, :cond_11

    .line 3251
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_19

    .line 3253
    :cond_11
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3255
    :goto_19
    return-void
.end method

.method public whitelist setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/WindowInsetsAnimation$Callback;

    .line 7544
    invoke-super {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 7545
    if-eqz p1, :cond_a

    .line 7546
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Callback;->getDispatchMode()I

    move-result v0

    goto :goto_b

    .line 7547
    :cond_a
    const/4 v0, 0x1

    :goto_b
    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7548
    return-void
.end method

.method greylist-max-o shouldBlockFocusForTouchscreen()Z
    .registers 3

    .line 1449
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 1450
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1451
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1452
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1449
    :goto_29
    return v0
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 8093
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;

    .line 983
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 986
    return v1

    .line 988
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 7
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1001
    const v0, -0x20000001

    :try_start_3
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1002
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1003
    nop

    .line 1006
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1003
    return v2

    .line 1006
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1007
    nop

    .line 1008
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2

    .line 1006
    :catchall_2d
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1007
    throw v1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1013
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 1016
    const v0, -0x10000001

    :try_start_a
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1017
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 1019
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1017
    return-object v1

    .line 1019
    :catchall_1c
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1020
    throw v1

    .line 1023
    :cond_23
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 7
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1030
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_29

    if-nez p3, :cond_29

    .line 1034
    const v0, -0x8000001

    :try_start_c
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1035
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_22

    .line 1037
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1038
    nop

    .line 1039
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v0, :cond_29

    .line 1040
    return-object v1

    .line 1037
    .end local v1    # "mode":Landroid/view/ActionMode;
    :catchall_22
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1038
    throw v1

    .line 1043
    :cond_29
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3c

    .line 1045
    :try_start_2d
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/AbstractMethodError; {:try_start_2d .. :try_end_33} :catch_34

    return-object v0

    .line 1046
    :catch_34
    move-exception v0

    .line 1048
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    .line 1051
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist startLayoutAnimation()V
    .registers 2

    .line 6486
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 6487
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6490
    :cond_d
    return-void
.end method

.method public whitelist startViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7213
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 7214
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 7215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 7217
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7219
    :cond_14
    return-void
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .registers 11
    .param p1, "touchableRegion"    # Landroid/graphics/Region;
    .param p2, "view"    # Landroid/view/View;

    .line 7354
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7355
    .local v0, "childrenCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7356
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 7357
    .local v2, "customOrder":Z
    :goto_11
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7358
    .local v3, "children":[Landroid/view/View;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_15
    if-ltz v4, :cond_31

    .line 7359
    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 7360
    .local v5, "childIndex":I
    invoke-static {v1, v3, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 7361
    .local v6, "child":Landroid/view/View;
    if-ne v6, p2, :cond_22

    .line 7363
    goto :goto_31

    .line 7365
    :cond_22
    invoke-virtual {v6}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v7

    if-nez v7, :cond_29

    .line 7367
    goto :goto_2e

    .line 7369
    :cond_29
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-static {p1, v6, v7}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7358
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    :goto_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 7373
    .end local v4    # "i":I
    :cond_31
    :goto_31
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {p1, p0, v4}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 7376
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_3f

    .line 7377
    invoke-interface {v4, p1, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    .line 7379
    :cond_3f
    return-void
.end method

.method public whitelist suppressLayout(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .line 7285
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 7286
    if-nez p1, :cond_e

    .line 7287
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_e

    .line 7288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7289
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 7292
    :cond_e
    return-void
.end method

.method public greylist-max-r transformPointToViewLocal([FLandroid/view/View;)V
    .registers 7
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .line 3095
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3096
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3098
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3099
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3101
    :cond_25
    return-void
.end method

.method greylist-max-o unFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "focused"    # Landroid/view/View;

    .line 1212
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1213
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_10

    .line 1215
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1218
    :goto_10
    return-void
.end method

.method greylist-max-o updateLocalSystemUiVisibility(II)Z
    .registers 9
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .line 1951
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1953
    .local v0, "changed":Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1954
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1955
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_15

    .line 1956
    aget-object v4, v2, v3

    .line 1957
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1955
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1959
    .end local v3    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5123
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5126
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_e

    .line 5129
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5130
    return-void

    .line 5127
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5124
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
