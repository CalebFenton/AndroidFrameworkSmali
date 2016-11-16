.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$1;,
        Landroid/view/ViewGroup$2;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ViewLocationHolder;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field public static DEBUG_DRAW:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragChild:Landroid/view/View;

.field private mCurrentDragStartEvent:Landroid/view/DragEvent;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
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

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mIsInterestedInDrag:Z

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/ViewGroup;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ViewGroup;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0
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

    #@0
    .prologue
    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/ViewGroup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    sput-boolean v3, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    #@3
    .line 332
    const/high16 v0, 0x20000

    #@5
    const/high16 v1, 0x40000

    #@7
    .line 333
    const/high16 v2, 0x60000

    #@9
    .line 332
    filled-new-array {v0, v1, v2}, [I

    #@c
    move-result-object v0

    #@d
    .line 331
    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    #@f
    .line 443
    sput v3, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    #@11
    .line 518
    new-instance v0, Landroid/view/ViewGroup$1;

    #@13
    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    #@16
    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    #@18
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 567
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 566
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 571
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 570
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 575
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@8
    .line 221
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@a
    .line 464
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@c
    .line 469
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@e
    .line 498
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@10
    .line 508
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@12
    .line 509
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@14
    .line 6309
    new-instance v0, Landroid/view/ViewGroup$2;

    #@16
    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    #@19
    .line 6308
    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@1b
    .line 580
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    #@1e
    .line 581
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@21
    .line 578
    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 6201
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2
    .line 6203
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    #@4
    .line 6204
    new-instance v0, Ljava/util/ArrayList;

    #@6
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@b
    .line 6207
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 6200
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4497
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3
    .line 4498
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 4499
    .local v1, "count":I
    array-length v2, v0

    #@6
    .line 4500
    .local v2, "size":I
    if-ne p2, v1, :cond_2

    #@8
    .line 4501
    if-ne v2, v1, :cond_0

    #@a
    .line 4502
    add-int/lit8 v3, v2, 0xc

    #@c
    new-array v3, v3, [Landroid/view/View;

    #@e
    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@10
    .line 4503
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@12
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 4504
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@17
    .line 4506
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@19
    add-int/lit8 v4, v3, 0x1

    #@1b
    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1d
    aput-object p1, v0, v3

    #@1f
    .line 4496
    :cond_1
    :goto_0
    return-void

    #@20
    .line 4507
    :cond_2
    if-ge p2, v1, :cond_4

    #@22
    .line 4508
    if-ne v2, v1, :cond_3

    #@24
    .line 4509
    add-int/lit8 v3, v2, 0xc

    #@26
    new-array v3, v3, [Landroid/view/View;

    #@28
    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2a
    .line 4510
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2c
    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    .line 4511
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@31
    add-int/lit8 v4, p2, 0x1

    #@33
    sub-int v5, v1, p2

    #@35
    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 4512
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3a
    .line 4516
    :goto_1
    aput-object p1, v0, p2

    #@3c
    .line 4517
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3e
    add-int/lit8 v3, v3, 0x1

    #@40
    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@42
    .line 4518
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@44
    if-lt v3, p2, :cond_1

    #@46
    .line 4519
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@48
    add-int/lit8 v3, v3, 0x1

    #@4a
    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@4c
    goto :goto_0

    #@4d
    .line 4514
    :cond_3
    add-int/lit8 v3, p2, 0x1

    #@4f
    sub-int v4, v1, p2

    #@51
    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    goto :goto_1

    #@55
    .line 4522
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "index="

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    const-string/jumbo v5, " count="

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@79
    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    #@0
    .prologue
    .line 2480
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    #@3
    move-result-object v0

    #@4
    .line 2481
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@6
    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@8
    .line 2482
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@a
    .line 2483
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/high16 v8, 0x400000

    #@3
    const/4 v7, 0x0

    #@4
    .line 4410
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 4413
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@a
    const/4 v6, 0x3

    #@b
    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@e
    .line 4416
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 4417
    new-instance v5, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v6, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    #@19
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5

    #@1d
    .line 4421
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 4422
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@23
    invoke-virtual {v5, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@26
    .line 4425
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_3

    #@2c
    .line 4426
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@2f
    move-result-object p3

    #@30
    .line 4429
    :cond_3
    if-eqz p4, :cond_d

    #@32
    .line 4430
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@34
    .line 4435
    :goto_0
    if-gez p2, :cond_4

    #@36
    .line 4436
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@38
    .line 4439
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@3b
    .line 4442
    if-eqz p4, :cond_e

    #@3d
    .line 4443
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@40
    .line 4448
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_5

    #@46
    .line 4449
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@4d
    .line 4452
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4f
    .line 4453
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    #@51
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@53
    and-int/2addr v5, v8

    #@54
    if-nez v5, :cond_7

    #@56
    .line 4454
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@58
    .line 4455
    .local v2, "lastKeepOn":Z
    iput-boolean v7, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@5a
    .line 4456
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5c
    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@5e
    and-int/lit8 v6, v6, 0xc

    #@60
    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@63
    .line 4457
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@65
    if-eqz v5, :cond_6

    #@67
    .line 4458
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@6a
    .line 4460
    :cond_6
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@6c
    .line 4463
    .end local v2    # "lastKeepOn":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_8

    #@72
    .line 4464
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    #@75
    .line 4467
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    #@78
    .line 4469
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    #@7a
    and-int/2addr v5, v8

    #@7b
    if-ne v5, v8, :cond_9

    #@7d
    .line 4470
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7f
    const/high16 v6, 0x10000

    #@81
    or-int/2addr v5, v6

    #@82
    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@84
    .line 4473
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_a

    #@8a
    .line 4474
    invoke-virtual {p0, p1, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@8d
    .line 4477
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@90
    move-result v5

    #@91
    const/16 v6, 0x8

    #@93
    if-eq v5, v6, :cond_b

    #@95
    .line 4478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@98
    .line 4481
    :cond_b
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@9a
    if-eqz v5, :cond_f

    #@9c
    .line 4482
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@9e
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a1
    move-result v4

    #@a2
    .line 4483
    .local v4, "transientCount":I
    const/4 v1, 0x0

    #@a3
    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_f

    #@a5
    .line 4484
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@a7
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v5

    #@ab
    check-cast v5, Ljava/lang/Integer;

    #@ad
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@b0
    move-result v3

    #@b1
    .line 4485
    .local v3, "oldIndex":I
    if-gt p2, v3, :cond_c

    #@b3
    .line 4486
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@b5
    add-int/lit8 v6, v3, 0x1

    #@b7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ba
    move-result-object v6

    #@bb
    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 4483
    :cond_c
    add-int/lit8 v1, v1, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 4432
    .end local v0    # "ai":Landroid/view/View$AttachInfo;
    .end local v1    # "i":I
    .end local v3    # "oldIndex":I
    .end local v4    # "transientCount":I
    :cond_d
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 4445
    :cond_e
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@c8
    goto/16 :goto_1

    #@ca
    .line 4491
    .restart local v0    # "ai":Landroid/view/View$AttachInfo;
    :cond_f
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@cc
    if-eqz v5, :cond_10

    #@ce
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@d1
    move-result v5

    #@d2
    if-nez v5, :cond_10

    #@d4
    .line 4492
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    #@d7
    .line 4408
    :cond_10
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4584
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    #@5
    move-result-object v0

    #@6
    .line 4585
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    #@9
    .line 4583
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2543
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    #@4
    and-int/lit8 v2, v2, 0xc

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2544
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@b
    move-result-object v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2543
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 2544
    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2440
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    if-eqz v2, :cond_2

    #@5
    .line 2441
    const/4 v8, 0x0

    #@6
    .line 2442
    .local v8, "syntheticEvent":Z
    if-nez p1, :cond_0

    #@8
    .line 2443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    .line 2445
    .local v0, "now":J
    const/4 v4, 0x3

    #@d
    const/4 v7, 0x0

    #@e
    move-wide v2, v0

    #@f
    move v6, v5

    #@10
    .line 2444
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@13
    move-result-object p1

    #@14
    .line 2446
    const/16 v2, 0x1002

    #@16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@19
    .line 2447
    const/4 v8, 0x1

    #@1a
    .line 2450
    .end local v0    # "now":J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1c
    .local v9, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    #@1e
    .line 2451
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@20
    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@23
    .line 2452
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@25
    iget v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@27
    const/4 v4, 0x1

    #@28
    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@2b
    .line 2450
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@2d
    goto :goto_0

    #@2e
    .line 2454
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    #@31
    .line 2456
    if-eqz v8, :cond_2

    #@33
    .line 2457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@36
    .line 2439
    .end local v8    # "syntheticEvent":Z
    .end local v9    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1942
    const/4 v10, 0x0

    #@2
    .line 1943
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@4
    .line 1944
    .end local v10    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v11, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_2

    #@6
    .line 1945
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@8
    .line 1946
    .local v9, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@a
    if-ne v2, p1, :cond_1

    #@c
    .line 1947
    if-nez v10, :cond_0

    #@e
    .line 1948
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@10
    .line 1952
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    #@13
    .line 1954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 1956
    .local v0, "now":J
    const/16 v4, 0xa

    #@19
    const/4 v7, 0x0

    #@1a
    move-wide v2, v0

    #@1b
    move v6, v5

    #@1c
    .line 1955
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@1f
    move-result-object v8

    #@20
    .line 1957
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@22
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@25
    .line 1958
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@28
    .line 1959
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@2b
    .line 1960
    return-void

    #@2c
    .line 1950
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@2e
    goto :goto_1

    #@2f
    .line 1962
    :cond_1
    move-object v10, v11

    #@30
    .line 1963
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    move-object v11, v9

    #@31
    goto :goto_0

    #@32
    .line 1941
    .end local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    .end local v10    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2513
    const/4 v10, 0x0

    #@2
    .line 2514
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@4
    .line 2515
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v11, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_2

    #@6
    .line 2516
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@8
    .line 2517
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@a
    if-ne v2, p1, :cond_1

    #@c
    .line 2518
    if-nez v10, :cond_0

    #@e
    .line 2519
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@10
    .line 2523
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@13
    .line 2525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 2527
    .local v0, "now":J
    const/4 v4, 0x3

    #@18
    const/4 v7, 0x0

    #@19
    move-wide v2, v0

    #@1a
    move v6, v5

    #@1b
    .line 2526
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@1e
    move-result-object v8

    #@1f
    .line 2528
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@21
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@24
    .line 2529
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@27
    .line 2530
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@2a
    .line 2531
    return-void

    #@2b
    .line 2521
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@2d
    goto :goto_1

    #@2e
    .line 2533
    :cond_1
    move-object v10, v11

    #@2f
    .line 2534
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v11, v9

    #@30
    goto :goto_0

    #@31
    .line 2512
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    #@0
    .prologue
    .line 4342
    const/high16 v0, 0x800000

    #@2
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4343
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@b
    .line 4341
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2425
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .line 2426
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    #@5
    .line 2428
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@7
    .line 2429
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@a
    .line 2430
    move-object v1, v0

    #@b
    .line 2431
    if-nez v0, :cond_0

    #@d
    .line 2432
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@f
    .line 2424
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    #@0
    .prologue
    .line 585
    sget-boolean v0, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private dipsToPixels(I)I
    .locals 3
    .param p1, "dips"    # I

    #@0
    .prologue
    .line 3352
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v1

    #@c
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    #@e
    .line 3353
    .local v0, "scale":F
    int-to-float v1, p1

    #@f
    mul-float/2addr v1, v0

    #@10
    const/high16 v2, 0x3f000000    # 0.5f

    #@12
    add-float/2addr v1, v2

    #@13
    float-to-int v1, v1

    #@14
    return v1
.end method

.method private dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1716
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1717
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    #@9
    move-result-object v3

    #@a
    .line 1718
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v3, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@d
    move-result-object v2

    #@e
    .line 1719
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@11
    .line 1727
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return-object v2

    #@12
    .line 1721
    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@14
    iget v5, p3, Landroid/view/View;->mLeft:I

    #@16
    sub-int/2addr v4, v5

    #@17
    int-to-float v0, v4

    #@18
    .line 1722
    .local v0, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@1a
    iget v5, p3, Landroid/view/View;->mTop:I

    #@1c
    sub-int/2addr v4, v5

    #@1d
    int-to-float v1, v4

    #@1e
    .line 1723
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@21
    .line 1724
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@24
    move-result-object v2

    #@25
    .line 1725
    .restart local v2    # "pointerIcon":Landroid/view/PointerIcon;
    neg-float v4, v0

    #@26
    neg-float v5, v1

    #@27
    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@2a
    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2109
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2110
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    #@9
    move-result-object v3

    #@a
    .line 2111
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    .line 2112
    .local v0, "handled":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@11
    .line 2120
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return v0

    #@12
    .line 2114
    .end local v0    # "handled":Z
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@14
    iget v5, p2, Landroid/view/View;->mLeft:I

    #@16
    sub-int/2addr v4, v5

    #@17
    int-to-float v1, v4

    #@18
    .line 2115
    .local v1, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@1a
    iget v5, p2, Landroid/view/View;->mTop:I

    #@1c
    sub-int/2addr v4, v5

    #@1d
    int-to-float v2, v4

    #@1e
    .line 2116
    .local v2, "offsetY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@21
    .line 2117
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@24
    move-result v0

    #@25
    .line 2118
    .restart local v0    # "handled":Z
    neg-float v4, v1

    #@26
    neg-float v5, v2

    #@27
    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@2a
    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 2596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v4

    #@6
    .line 2597
    .local v4, "oldAction":I
    if-nez p2, :cond_0

    #@8
    if-ne v4, v8, :cond_2

    #@a
    .line 2598
    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    #@d
    .line 2599
    if-nez p3, :cond_1

    #@f
    .line 2600
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    .line 2604
    .local v0, "handled":Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@16
    .line 2605
    return v0

    #@17
    .line 2602
    .end local v0    # "handled":Z
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "handled":Z
    goto :goto_0

    #@1c
    .line 2609
    .end local v0    # "handled":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@1f
    move-result v5

    #@20
    .line 2610
    .local v5, "oldPointerIdBits":I
    and-int v1, v5, p4

    #@22
    .line 2614
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_3

    #@24
    .line 2615
    return v7

    #@25
    .line 2623
    :cond_3
    if-ne v1, v5, :cond_7

    #@27
    .line 2624
    if-eqz p3, :cond_4

    #@29
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_6

    #@2f
    .line 2625
    :cond_4
    if-nez p3, :cond_5

    #@31
    .line 2626
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@34
    move-result v0

    #@35
    .line 2636
    .restart local v0    # "handled":Z
    :goto_1
    return v0

    #@36
    .line 2628
    .end local v0    # "handled":Z
    :cond_5
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@38
    iget v8, p3, Landroid/view/View;->mLeft:I

    #@3a
    sub-int/2addr v7, v8

    #@3b
    int-to-float v2, v7

    #@3c
    .line 2629
    .local v2, "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@3e
    iget v8, p3, Landroid/view/View;->mTop:I

    #@40
    sub-int/2addr v7, v8

    #@41
    int-to-float v3, v7

    #@42
    .line 2630
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@45
    .line 2632
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@48
    move-result v0

    #@49
    .line 2634
    .restart local v0    # "handled":Z
    neg-float v7, v2

    #@4a
    neg-float v8, v3

    #@4b
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@4e
    goto :goto_1

    #@4f
    .line 2638
    .end local v0    # "handled":Z
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@52
    move-result-object v6

    #@53
    .line 2644
    .local v6, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    #@55
    .line 2645
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@58
    move-result v0

    #@59
    .line 2658
    .restart local v0    # "handled":Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    #@5c
    .line 2659
    return v0

    #@5d
    .line 2640
    .end local v0    # "handled":Z
    .end local v6    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    #@60
    move-result-object v6

    #@61
    .restart local v6    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2

    #@62
    .line 2647
    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@64
    iget v8, p3, Landroid/view/View;->mLeft:I

    #@66
    sub-int/2addr v7, v8

    #@67
    int-to-float v2, v7

    #@68
    .line 2648
    .restart local v2    # "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@6a
    iget v8, p3, Landroid/view/View;->mTop:I

    #@6c
    sub-int/2addr v7, v8

    #@6d
    int-to-float v3, v7

    #@6e
    .line 2649
    .restart local v3    # "offsetY":F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@71
    .line 2650
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    #@74
    move-result v7

    #@75
    if-nez v7, :cond_9

    #@77
    .line 2651
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@7e
    .line 2654
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@81
    move-result v0

    #@82
    .restart local v0    # "handled":Z
    goto :goto_3
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    #@0
    .prologue
    .line 3347
    add-int v4, p2, p4

    #@2
    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    #@5
    move-result v0

    #@6
    mul-int/2addr v0, p6

    #@7
    add-int v5, p3, v0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@10
    .line 3348
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    #@13
    move-result v0

    #@14
    mul-int/2addr v0, p6

    #@15
    add-int v4, p2, v0

    #@17
    add-int v5, p3, p5

    #@19
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move v2, p2

    #@1c
    move v3, p3

    #@1d
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@20
    .line 3346
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    #@0
    .prologue
    .line 7905
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7907
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [F

    #@8
    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@a
    .line 7910
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@c
    int-to-float v1, p2

    #@d
    const/4 v2, 0x0

    #@e
    aput v1, v0, v2

    #@10
    .line 7911
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@12
    int-to-float v1, p3

    #@13
    const/4 v2, 0x1

    #@14
    aput v1, v0, v2

    #@16
    .line 7912
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@18
    int-to-float v1, p4

    #@19
    const/4 v2, 0x2

    #@1a
    aput v1, v0, v2

    #@1c
    .line 7913
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@1e
    int-to-float v1, p3

    #@1f
    const/4 v2, 0x3

    #@20
    aput v1, v0, v2

    #@22
    .line 7915
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@24
    int-to-float v1, p4

    #@25
    const/4 v2, 0x4

    #@26
    aput v1, v0, v2

    #@28
    .line 7916
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@2a
    int-to-float v1, p3

    #@2b
    const/4 v2, 0x5

    #@2c
    aput v1, v0, v2

    #@2e
    .line 7917
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@30
    int-to-float v1, p4

    #@31
    const/4 v2, 0x6

    #@32
    aput v1, v0, v2

    #@34
    .line 7918
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@36
    int-to-float v1, p5

    #@37
    const/4 v2, 0x7

    #@38
    aput v1, v0, v2

    #@3a
    .line 7920
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@3c
    int-to-float v1, p4

    #@3d
    const/16 v2, 0x8

    #@3f
    aput v1, v0, v2

    #@41
    .line 7921
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@43
    int-to-float v1, p5

    #@44
    const/16 v2, 0x9

    #@46
    aput v1, v0, v2

    #@48
    .line 7922
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@4a
    int-to-float v1, p2

    #@4b
    const/16 v2, 0xa

    #@4d
    aput v1, v0, v2

    #@4f
    .line 7923
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@51
    int-to-float v1, p5

    #@52
    const/16 v2, 0xb

    #@54
    aput v1, v0, v2

    #@56
    .line 7925
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@58
    int-to-float v1, p2

    #@59
    const/16 v2, 0xc

    #@5b
    aput v1, v0, v2

    #@5d
    .line 7926
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@5f
    int-to-float v1, p5

    #@60
    const/16 v2, 0xd

    #@62
    aput v1, v0, v2

    #@64
    .line 7927
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@66
    int-to-float v1, p2

    #@67
    const/16 v2, 0xe

    #@69
    aput v1, v0, v2

    #@6b
    .line 7928
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@6d
    int-to-float v1, p3

    #@6e
    const/16 v2, 0xf

    #@70
    aput v1, v0, v2

    #@72
    .line 7930
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@74
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    #@77
    .line 7904
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p5

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p6

    #@5
    move v5, p6

    #@6
    move v6, p7

    #@7
    .line 3358
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    #@a
    .line 3359
    neg-int v5, p6

    #@b
    move-object v0, p0

    #@c
    move-object v1, p5

    #@d
    move v2, p1

    #@e
    move v3, p4

    #@f
    move v4, p6

    #@10
    move v6, p7

    #@11
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    #@14
    .line 3360
    neg-int v4, p6

    #@15
    move-object v0, p0

    #@16
    move-object v1, p5

    #@17
    move v2, p3

    #@18
    move v3, p2

    #@19
    move v5, p6

    #@1a
    move v6, p7

    #@1b
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    #@1e
    .line 3361
    neg-int v4, p6

    #@1f
    neg-int v5, p6

    #@20
    move-object v0, p0

    #@21
    move-object v1, p5

    #@22
    move v2, p3

    #@23
    move v3, p4

    #@24
    move v6, p7

    #@25
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    #@28
    .line 3357
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1931
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@3
    if-nez v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 1932
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v0

    #@d
    .line 1934
    .local v0, "now":J
    const/16 v4, 0xa

    #@f
    const/4 v7, 0x0

    #@10
    move-wide v2, v0

    #@11
    move v6, v5

    #@12
    .line 1933
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@15
    move-result-object v8

    #@16
    .line 1935
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@18
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@1b
    .line 1936
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1e
    .line 1937
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@21
    .line 1930
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 12
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

    #@0
    .prologue
    .line 3367
    sub-int v2, p1, p5

    #@2
    .line 3368
    .local v2, "x1":I
    sub-int v3, p2, p6

    #@4
    .line 3370
    .local v3, "y1":I
    add-int v4, p3, p7

    #@6
    .line 3371
    .local v4, "x4":I
    add-int v11, p4, p8

    #@8
    .local v11, "y4":I
    move-object v0, p0

    #@9
    move-object/from16 v1, p9

    #@b
    move v5, p2

    #@c
    .line 3373
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@f
    move-object v5, p0

    #@10
    move-object/from16 v6, p9

    #@12
    move v7, v2

    #@13
    move v8, p2

    #@14
    move v9, p1

    #@15
    move/from16 v10, p4

    #@17
    .line 3374
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@1a
    move-object v5, p0

    #@1b
    move-object/from16 v6, p9

    #@1d
    move v7, p3

    #@1e
    move v8, p2

    #@1f
    move v9, v4

    #@20
    move/from16 v10, p4

    #@22
    .line 3375
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@25
    move-object v5, p0

    #@26
    move-object/from16 v6, p9

    #@28
    move v7, v2

    #@29
    move/from16 v8, p4

    #@2b
    move v9, v4

    #@2c
    move v10, v11

    #@2d
    .line 3376
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@30
    .line 3366
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    #@0
    .prologue
    .line 3331
    if-eq p2, p4, :cond_2

    #@2
    if-eq p3, p5, :cond_2

    #@4
    .line 3332
    if-le p2, p4, :cond_0

    #@6
    .line 3333
    move v6, p2

    #@7
    .local v6, "tmp":I
    move p2, p4

    #@8
    move p4, v6

    #@9
    .line 3335
    .end local v6    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    #@b
    .line 3336
    move v6, p3

    #@c
    .restart local v6    # "tmp":I
    move p3, p5

    #@d
    move p5, v6

    #@e
    .line 3338
    .end local v6    # "tmp":I
    :cond_1
    int-to-float v1, p2

    #@f
    int-to-float v2, p3

    #@10
    int-to-float v3, p4

    #@11
    int-to-float v4, p5

    #@12
    move-object v0, p0

    #@13
    move-object v5, p1

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@17
    .line 3330
    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2377
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@4
    move-result-object v2

    #@5
    .line 2378
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_0

    #@7
    .line 2379
    return-object v4

    #@8
    .line 2382
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 2383
    .local v0, "current":Landroid/view/View;
    if-nez v0, :cond_1

    #@e
    .line 2384
    return-object v4

    #@f
    .line 2387
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 2388
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 2389
    if-ne v1, p0, :cond_2

    #@19
    .line 2390
    return-object v0

    #@1a
    :cond_2
    move-object v0, v1

    #@1b
    .line 2392
    check-cast v0, Landroid/view/View;

    #@1d
    .line 2393
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object v1

    #@21
    goto :goto_0

    #@22
    .line 2396
    :cond_3
    return-object v4
.end method

.method private getAndVerifyPreorderedIndex(IIZ)I
    .locals 5
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    #@0
    .prologue
    .line 1732
    if-eqz p3, :cond_1

    #@2
    .line 1733
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@5
    move-result v1

    #@6
    .line 1734
    .local v1, "childIndex1":I
    if-lt v1, p1, :cond_0

    #@8
    .line 1735
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "getChildDrawingOrder() returned invalid index "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 1737
    const-string/jumbo v4, " (child count is "

    #@1d
    .line 1735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 1737
    const-string/jumbo v4, ")"

    #@28
    .line 1735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 1739
    :cond_0
    move v0, v1

    #@35
    .line 1743
    .end local v1    # "childIndex1":I
    .local v0, "childIndex":I
    :goto_0
    return v0

    #@36
    .line 1741
    .end local v0    # "childIndex":I
    :cond_1
    move v0, p2

    #@37
    .restart local v0    # "childIndex":I
    goto :goto_0
.end method

.method private static getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 3054
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    #@2
    .line 3055
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 3056
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    #@a
    .line 3057
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Invalid preorderedList contained null child at index "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 3061
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    aget-object v0, p1, p2

    #@26
    .line 3063
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, -0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 6106
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result v3

    #@7
    .line 6107
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a
    move-result v4

    #@b
    .line 6109
    .local v4, "specSize":I
    sub-int v5, v4, p1

    #@d
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v2

    #@11
    .line 6111
    .local v2, "size":I
    const/4 v1, 0x0

    #@12
    .line 6112
    .local v1, "resultSize":I
    const/4 v0, 0x0

    #@13
    .line 6114
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_0

    #@16
    .line 6171
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@19
    move-result v5

    #@1a
    return v5

    #@1b
    .line 6117
    :sswitch_0
    if-ltz p2, :cond_1

    #@1d
    .line 6118
    move v1, p2

    #@1e
    .line 6119
    const/high16 v0, 0x40000000    # 2.0f

    #@20
    goto :goto_0

    #@21
    .line 6120
    :cond_1
    if-ne p2, v8, :cond_2

    #@23
    .line 6122
    move v1, v2

    #@24
    .line 6123
    const/high16 v0, 0x40000000    # 2.0f

    #@26
    goto :goto_0

    #@27
    .line 6124
    :cond_2
    if-ne p2, v7, :cond_0

    #@29
    .line 6127
    move v1, v2

    #@2a
    .line 6128
    const/high16 v0, -0x80000000

    #@2c
    goto :goto_0

    #@2d
    .line 6134
    :sswitch_1
    if-ltz p2, :cond_3

    #@2f
    .line 6136
    move v1, p2

    #@30
    .line 6137
    const/high16 v0, 0x40000000    # 2.0f

    #@32
    goto :goto_0

    #@33
    .line 6138
    :cond_3
    if-ne p2, v8, :cond_4

    #@35
    .line 6141
    move v1, v2

    #@36
    .line 6142
    const/high16 v0, -0x80000000

    #@38
    goto :goto_0

    #@39
    .line 6143
    :cond_4
    if-ne p2, v7, :cond_0

    #@3b
    .line 6146
    move v1, v2

    #@3c
    .line 6147
    const/high16 v0, -0x80000000

    #@3e
    goto :goto_0

    #@3f
    .line 6153
    :sswitch_2
    if-ltz p2, :cond_5

    #@41
    .line 6155
    move v1, p2

    #@42
    .line 6156
    const/high16 v0, 0x40000000    # 2.0f

    #@44
    goto :goto_0

    #@45
    .line 6157
    :cond_5
    if-ne p2, v8, :cond_7

    #@47
    .line 6160
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@49
    if-eqz v5, :cond_6

    #@4b
    const/4 v1, 0x0

    #@4c
    .line 6161
    :goto_1
    const/4 v0, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 6160
    :cond_6
    move v1, v2

    #@4f
    goto :goto_1

    #@50
    .line 6162
    :cond_7
    if-ne p2, v7, :cond_0

    #@52
    .line 6165
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@54
    if-eqz v5, :cond_8

    #@56
    const/4 v1, 0x0

    #@57
    .line 6166
    :goto_2
    const/4 v0, 0x0

    #@58
    goto :goto_0

    #@59
    .line 6165
    :cond_8
    move v1, v2

    #@5a
    goto :goto_2

    #@5b
    .line 6114
    nop

    #@5c
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    #@0
    .prologue
    .line 7897
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7898
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@b
    .line 7899
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@11
    .line 7901
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@13
    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Landroid/graphics/PointF;

    #@6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    #@b
    .line 1356
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    #@d
    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    #@0
    .prologue
    .line 2548
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2549
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    #@9
    .line 2551
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    #@b
    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2467
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    #@5
    .line 2468
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 2469
    return-object v0

    #@a
    .line 2467
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@c
    goto :goto_0

    #@d
    .line 2472
    :cond_1
    return-object v2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2133
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@2
    iget v4, p2, Landroid/view/View;->mLeft:I

    #@4
    sub-int/2addr v3, v4

    #@5
    int-to-float v0, v3

    #@6
    .line 2134
    .local v0, "offsetX":F
    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@8
    iget v4, p2, Landroid/view/View;->mTop:I

    #@a
    sub-int/2addr v3, v4

    #@b
    int-to-float v1, v3

    #@c
    .line 2135
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@f
    move-result-object v2

    #@10
    .line 2136
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@13
    .line 2137
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    .line 2138
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@20
    .line 2140
    :cond_0
    return-object v2
.end method

.method private hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 5788
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private hasChildWithZ()Z
    .locals 3

    #@0
    .prologue
    .line 3616
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 3617
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    cmpl-float v1, v1, v2

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 3616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3619
    :cond_1
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 613
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    #@5
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v1

    #@9
    .line 616
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@c
    move-result v0

    #@d
    .line 617
    .local v0, "N":I
    const/4 v4, 0x0

    #@e
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@10
    .line 618
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@13
    move-result v3

    #@14
    .line 619
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    #@17
    .line 617
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 621
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v6

    #@1e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    #@21
    goto :goto_1

    #@22
    .line 624
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@25
    move-result v6

    #@26
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    #@29
    goto :goto_1

    #@2a
    .line 627
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d
    move-result v6

    #@2e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    #@31
    goto :goto_1

    #@32
    .line 630
    :pswitch_3
    const/4 v6, 0x2

    #@33
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@36
    move-result v6

    #@37
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    #@3a
    goto :goto_1

    #@3b
    .line 633
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3e
    move-result v6

    #@3f
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    #@42
    goto :goto_1

    #@43
    .line 636
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@46
    move-result v6

    #@47
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    #@4a
    goto :goto_1

    #@4b
    .line 639
    :pswitch_6
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4e
    move-result v5

    #@4f
    .line 640
    .local v5, "id":I
    if-lez v5, :cond_0

    #@51
    .line 641
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@53
    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@5a
    goto :goto_1

    #@5b
    .line 645
    .end local v5    # "id":I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    #@5d
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@60
    move-result v7

    #@61
    aget v6, v6, v7

    #@63
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    #@66
    goto :goto_1

    #@67
    .line 648
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6a
    move-result v6

    #@6b
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    #@6e
    goto :goto_1

    #@6f
    .line 651
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@72
    move-result v2

    #@73
    .line 652
    .local v2, "animateLayoutChanges":Z
    if-eqz v2, :cond_0

    #@75
    .line 653
    new-instance v6, Landroid/animation/LayoutTransition;

    #@77
    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    #@7a
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@7d
    goto :goto_1

    #@7e
    .line 657
    .end local v2    # "animateLayoutChanges":Z
    :pswitch_a
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@81
    move-result v6

    #@82
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    #@85
    goto :goto_1

    #@86
    .line 660
    :pswitch_b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@89
    move-result v6

    #@8a
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    #@8d
    goto :goto_1

    #@8e
    .line 663
    :pswitch_c
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@91
    move-result v6

    #@92
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@95
    goto :goto_1

    #@96
    .line 668
    .end local v3    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@99
    .line 612
    return-void

    #@9a
    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x80

    #@2
    .line 590
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 591
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    #@b
    .line 593
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@d
    or-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@11
    .line 594
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    or-int/lit8 v0, v0, 0x2

    #@15
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@17
    .line 595
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@19
    or-int/lit8 v0, v0, 0x10

    #@1b
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1d
    .line 596
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    or-int/lit8 v0, v0, 0x40

    #@21
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@23
    .line 597
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@25
    or-int/lit16 v0, v0, 0x4000

    #@27
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@29
    .line 599
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2e
    move-result-object v0

    #@2f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@31
    const/16 v1, 0xb

    #@33
    if-lt v0, v1, :cond_1

    #@35
    .line 600
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@37
    const/high16 v1, 0x200000

    #@39
    or-int/2addr v0, v1

    #@3a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3c
    .line 603
    :cond_1
    const/high16 v0, 0x20000

    #@3e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    #@41
    .line 605
    const/16 v0, 0xc

    #@43
    new-array v0, v0, [Landroid/view/View;

    #@45
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@47
    .line 606
    const/4 v0, 0x0

    #@48
    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4a
    .line 608
    const/4 v0, 0x2

    #@4b
    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@4d
    .line 588
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 2

    #@0
    .prologue
    .line 3660
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v1, v1, -0x201

    #@4
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    .line 3661
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    or-int/lit8 v1, v1, 0x10

    #@a
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    .line 3663
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 3664
    new-instance v0, Landroid/view/ViewGroup$4;

    #@12
    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    #@15
    .line 3670
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@18
    .line 3673
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x1

    #@19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@1c
    .line 3659
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2049
    return-object p0

    #@7
    .line 2051
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3709
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@b
    .line 3710
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@d
    const v2, 0x7fffffff

    #@10
    and-int/2addr v0, v2

    #@11
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@13
    .line 3711
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@16
    .line 3712
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@18
    .line 3708
    return-void

    #@19
    :cond_0
    move v0, v1

    #@1a
    .line 3709
    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 4528
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 4529
    .local v0, "children":[Landroid/view/View;
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@a
    aget-object v3, v0, p1

    #@c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    :cond_0
    if-nez v2, :cond_1

    #@12
    .line 4530
    aget-object v2, v0, p1

    #@14
    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@16
    .line 4532
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@18
    .line 4533
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    #@1a
    if-ne p1, v2, :cond_3

    #@1c
    .line 4534
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@22
    aput-object v4, v0, v2

    #@24
    .line 4541
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@26
    if-ne v2, p1, :cond_5

    #@28
    .line 4542
    const-wide/16 v2, 0x0

    #@2a
    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    #@2c
    .line 4543
    const/4 v2, -0x1

    #@2d
    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@2f
    .line 4527
    :cond_2
    :goto_1
    return-void

    #@30
    .line 4535
    :cond_3
    if-ltz p1, :cond_4

    #@32
    if-ge p1, v1, :cond_4

    #@34
    .line 4536
    add-int/lit8 v2, p1, 0x1

    #@36
    sub-int v3, v1, p1

    #@38
    add-int/lit8 v3, v3, -0x1

    #@3a
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 4537
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3f
    add-int/lit8 v2, v2, -0x1

    #@41
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@43
    aput-object v4, v0, v2

    #@45
    goto :goto_0

    #@46
    .line 4539
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@48
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@4b
    throw v2

    #@4c
    .line 4544
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@4e
    if-le v2, p1, :cond_2

    #@50
    .line 4545
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@52
    add-int/lit8 v2, v2, -0x1

    #@54
    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@56
    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4551
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3
    .line 4552
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 4554
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    #@6
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result p1

    #@a
    .line 4555
    add-int v4, p1, p2

    #@c
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v2

    #@10
    .line 4557
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    #@12
    .line 4558
    return-void

    #@13
    .line 4561
    :cond_0
    if-ne v2, v1, :cond_1

    #@15
    .line 4562
    move v3, p1

    #@16
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    #@18
    .line 4563
    aget-object v4, v0, v3

    #@1a
    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@1c
    .line 4564
    aput-object v5, v0, v3

    #@1e
    .line 4562
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 4567
    .end local v3    # "i":I
    :cond_1
    move v3, p1

    #@22
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@24
    .line 4568
    aget-object v4, v0, v3

    #@26
    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@28
    .line 4567
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 4573
    :cond_2
    sub-int v4, v1, v2

    #@2d
    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 4575
    sub-int v4, v2, p1

    #@32
    sub-int v3, v1, v4

    #@34
    :goto_2
    if-ge v3, v1, :cond_3

    #@36
    .line 4576
    aput-object v5, v0, v3

    #@38
    .line 4575
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 4580
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3d
    sub-int v5, v2, p1

    #@3f
    sub-int/2addr v4, v5

    #@40
    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@42
    .line 4550
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    #@0
    .prologue
    .line 2490
    const/4 v1, 0x0

    #@1
    .line 2491
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .line 2492
    .end local v1    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v2, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    #@5
    .line 2493
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@7
    .line 2494
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@9
    and-int/2addr v3, p1

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 2495
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@e
    not-int v4, p1

    #@f
    and-int/2addr v3, v4

    #@10
    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@12
    .line 2496
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@14
    if-nez v3, :cond_1

    #@16
    .line 2497
    if-nez v1, :cond_0

    #@18
    .line 2498
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1a
    .line 2502
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@1d
    .line 2503
    move-object v2, v0

    #@1e
    .line 2504
    goto :goto_0

    #@1f
    .line 2500
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@21
    goto :goto_1

    #@22
    .line 2507
    :cond_1
    move-object v1, v2

    #@23
    .line 2508
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v2, v0

    #@24
    goto :goto_0

    #@25
    .line 2489
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v1    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 4696
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 4697
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@8
    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@b
    .line 4700
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 4701
    .local v0, "clearChildFocus":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    if-ne p2, v4, :cond_1

    #@10
    .line 4702
    invoke-virtual {p2, v5}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@13
    .line 4703
    const/4 v0, 0x1

    #@14
    .line 4706
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    #@17
    .line 4708
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@1a
    .line 4709
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@1d
    .line 4711
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@20
    move-result-object v4

    #@21
    if-nez v4, :cond_2

    #@23
    .line 4712
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@25
    if-eqz v4, :cond_8

    #@27
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    .line 4711
    if-eqz v4, :cond_8

    #@2f
    .line 4713
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@32
    .line 4718
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_4

    #@38
    .line 4719
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@3b
    .line 4722
    :cond_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@3e
    .line 4724
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@41
    .line 4726
    if-eqz v0, :cond_5

    #@43
    .line 4727
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@46
    .line 4728
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_5

    #@4c
    .line 4729
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@4f
    .line 4733
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@52
    .line 4735
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@55
    move-result v4

    #@56
    const/16 v5, 0x8

    #@58
    if-eq v4, v5, :cond_6

    #@5a
    .line 4736
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@5d
    .line 4739
    :cond_6
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@5f
    if-nez v4, :cond_9

    #@61
    const/4 v3, 0x0

    #@62
    .line 4740
    .local v3, "transientCount":I
    :goto_1
    const/4 v1, 0x0

    #@63
    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_a

    #@65
    .line 4741
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@67
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    check-cast v4, Ljava/lang/Integer;

    #@6d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v2

    #@71
    .line 4742
    .local v2, "oldIndex":I
    if-ge p1, v2, :cond_7

    #@73
    .line 4743
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@75
    add-int/lit8 v5, v2, -0x1

    #@77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v5

    #@7b
    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 4740
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@80
    goto :goto_2

    #@81
    .line 4714
    .end local v1    # "i":I
    .end local v2    # "oldIndex":I
    .end local v3    # "transientCount":I
    :cond_8
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 4715
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@88
    goto :goto_0

    #@89
    .line 4739
    :cond_9
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@8b
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8e
    move-result v3

    #@8f
    .restart local v3    # "transientCount":I
    goto :goto_1

    #@90
    .line 4747
    .restart local v1    # "i":I
    :cond_a
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@92
    if-eqz v4, :cond_b

    #@94
    .line 4748
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@96
    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@99
    .line 4695
    :cond_b
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4687
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4
    move-result v0

    #@5
    .line 4688
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 4689
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    #@a
    .line 4690
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 4692
    :cond_0
    return v1
.end method

.method private removeViewsInternal(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 4792
    add-int v3, p1, p2

    #@4
    .line 4794
    .local v3, "end":I
    if-ltz p1, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 4795
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v7

    #@e
    .line 4794
    :cond_1
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@10
    if-gt v3, v7, :cond_0

    #@12
    .line 4798
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@14
    .line 4799
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@16
    if-eqz v7, :cond_7

    #@18
    const/4 v2, 0x1

    #@19
    .line 4800
    .local v2, "detach":Z
    :goto_0
    const/4 v1, 0x0

    #@1a
    .line 4802
    .local v1, "clearChildFocus":Z
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1c
    .line 4804
    .local v0, "children":[Landroid/view/View;
    move v5, p1

    #@1d
    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_9

    #@1f
    .line 4805
    aget-object v6, v0, v5

    #@21
    .line 4807
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@23
    if-eqz v7, :cond_2

    #@25
    .line 4808
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@27
    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@2a
    .line 4811
    :cond_2
    if-ne v6, v4, :cond_3

    #@2c
    .line 4812
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@2f
    .line 4813
    const/4 v1, 0x1

    #@30
    .line 4816
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    #@33
    .line 4818
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@36
    .line 4819
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@39
    .line 4821
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@3c
    move-result-object v7

    #@3d
    if-nez v7, :cond_4

    #@3f
    .line 4822
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@41
    if-eqz v7, :cond_8

    #@43
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@48
    move-result v7

    #@49
    .line 4821
    if-eqz v7, :cond_8

    #@4b
    .line 4823
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@4e
    .line 4828
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_6

    #@54
    .line 4829
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@57
    .line 4832
    :cond_6
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@5a
    .line 4834
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@5d
    .line 4804
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 4799
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "clearChildFocus":Z
    .end local v2    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    const/4 v2, 0x0

    #@61
    .restart local v2    # "detach":Z
    goto :goto_0

    #@62
    .line 4824
    .restart local v0    # "children":[Landroid/view/View;
    .restart local v1    # "clearChildFocus":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_5

    #@64
    .line 4825
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@67
    goto :goto_2

    #@68
    .line 4837
    .end local v6    # "view":Landroid/view/View;
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    #@6b
    .line 4839
    if-eqz v1, :cond_a

    #@6d
    .line 4840
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@70
    .line 4841
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@73
    move-result v7

    #@74
    if-nez v7, :cond_a

    #@76
    .line 4842
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@79
    .line 4791
    :cond_a
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2414
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@3
    const/high16 v1, 0x4000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2415
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@a
    const v1, -0x4000001

    #@d
    and-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@10
    .line 2416
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 2418
    :cond_0
    return v2
.end method

.method private resetTouchState()V
    .locals 2

    #@0
    .prologue
    .line 2403
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    #@3
    .line 2404
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@6
    .line 2405
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    const v1, -0x80001

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    .line 2406
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@11
    .line 2402
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 5792
    if-eqz p2, :cond_0

    #@2
    .line 5793
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 5791
    :goto_0
    return-void

    #@8
    .line 5795
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    goto :goto_0
.end method

.method private setLayoutMode(IZ)V
    .locals 1
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    #@0
    .prologue
    .line 5835
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    .line 5836
    const/high16 v0, 0x800000

    #@4
    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@7
    .line 5834
    return-void
.end method

.method private static sign(I)I
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 3343
    if-ltz p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, -0x1

    #@5
    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1975
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1976
    return-void

    #@7
    .line 1978
    :cond_0
    const/4 v4, 0x1

    #@8
    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    #@b
    move-result-object v1

    #@c
    .line 1980
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    #@f
    move-result v2

    #@10
    .line 1981
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    #@13
    .line 1982
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 1983
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@19
    and-int/lit8 v4, v4, 0xc

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 1984
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 1985
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1981
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1987
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .line 1991
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2e
    .line 1992
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@31
    .line 1991
    throw v4

    #@32
    .line 1992
    .restart local v2    # "childrenCount":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@35
    .line 1974
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1084
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v4

    #@4
    .line 1086
    .local v4, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@7
    move-result v3

    #@8
    .line 1088
    .local v3, "descendantFocusability":I
    const/high16 v6, 0x60000

    #@a
    if-eq v3, v6, :cond_2

    #@c
    .line 1089
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 1090
    or-int/lit8 p3, p3, 0x1

    #@14
    .line 1093
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@16
    .line 1094
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@18
    .line 1096
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    #@1b
    .line 1097
    aget-object v0, v1, v5

    #@1d
    .line 1098
    .local v0, "child":Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    #@1f
    and-int/lit8 v6, v6, 0xc

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1099
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@26
    .line 1096
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1108
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_2
    const/high16 v6, 0x40000

    #@2b
    if-ne v3, v6, :cond_3

    #@2d
    .line 1110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v6

    #@31
    if-ne v4, v6, :cond_4

    #@33
    .line 1111
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_5

    #@39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_5

    #@3f
    .line 1083
    :cond_4
    :goto_1
    return-void

    #@40
    .line 1112
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@43
    goto :goto_1
.end method

.method public addStatesFromChildren()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6517
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    and-int/lit16 v1, v1, 0x2000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1203
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@3
    .line 1205
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1206
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1208
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 1209
    aget-object v0, v1, v3

    #@c
    .line 1210
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@e
    and-int/lit8 v4, v4, 0xc

    #@10
    if-nez v4, :cond_0

    #@12
    .line 1211
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@15
    .line 1208
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1202
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 4057
    if-gez p2, :cond_0

    #@2
    .line 4058
    return-void

    #@3
    .line 4060
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@5
    if-nez v2, :cond_1

    #@7
    .line 4061
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@e
    .line 4062
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@15
    .line 4064
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@17
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    .line 4065
    .local v1, "oldSize":I
    if-lez v1, :cond_4

    #@1d
    .line 4067
    const/4 v0, 0x0

    #@1e
    .local v0, "insertionIndex":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@20
    .line 4068
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@22
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/Integer;

    #@28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v2

    #@2c
    if-ge p2, v2, :cond_3

    #@2e
    .line 4072
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@37
    .line 4073
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@39
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@3c
    .line 4078
    .end local v0    # "insertionIndex":I
    :goto_1
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3e
    .line 4079
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@40
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@42
    and-int/lit8 v3, v3, 0xc

    #@44
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@47
    .line 4080
    const/4 v2, 0x1

    #@48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@4b
    .line 4056
    return-void

    #@4c
    .line 4067
    .restart local v0    # "insertionIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 4075
    .end local v0    # "insertionIndex":I
    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v3

    #@55
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@58
    .line 4076
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@5a
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5d
    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4171
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@4
    .line 4170
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 4188
    if-nez p1, :cond_0

    #@2
    .line 4189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Cannot add a null child view to a ViewGroup"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 4191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v0

    #@f
    .line 4192
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    #@11
    .line 4193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v0

    #@15
    .line 4194
    if-nez v0, :cond_1

    #@17
    .line 4195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "generateDefaultLayoutParams() cannot return null"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 4198
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@23
    .line 4187
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 4212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 4213
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    .line 4214
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@8
    .line 4215
    const/4 v1, -0x1

    #@9
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@c
    .line 4211
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4249
    if-nez p1, :cond_0

    #@2
    .line 4250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 4256
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@e
    .line 4257
    const/4 v0, 0x1

    #@f
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@12
    .line 4258
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@16
    .line 4244
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4230
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@4
    .line 4229
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4371
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4389
    if-nez p1, :cond_0

    #@3
    .line 4390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 4392
    :cond_0
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@e
    .line 4393
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@11
    .line 4394
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@13
    const v1, -0x600001

    #@16
    and-int/2addr v0, v1

    #@17
    or-int/lit8 v0, v0, 0x20

    #@19
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@1b
    .line 4395
    const/4 v0, 0x1

    #@1c
    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 4600
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@2
    .line 4602
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    #@4
    .line 4603
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@6
    .end local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    #@9
    .line 4604
    .restart local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@b
    .line 4607
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    #@d
    .line 4608
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    #@f
    .line 4599
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/high16 v3, -0x80000000

    #@2
    const/4 v0, 0x0

    #@3
    .line 5003
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@5
    .line 5005
    if-gez p2, :cond_0

    #@7
    .line 5006
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@9
    .line 5009
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@c
    .line 5011
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@e
    .line 5012
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@10
    const v2, -0x600001

    #@13
    and-int/2addr v1, v2

    #@14
    .line 5013
    const v2, -0x8001

    #@17
    .line 5012
    and-int/2addr v1, v2

    #@18
    or-int/lit8 v1, v1, 0x20

    #@1a
    or-int/2addr v1, v3

    #@1b
    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@1d
    .line 5015
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@1f
    or-int/2addr v1, v3

    #@20
    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@22
    .line 5017
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 5018
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@2f
    .line 5020
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_2

    #@35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_2

    #@3b
    .line 5021
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    #@3e
    move-result v0

    #@3f
    .line 5020
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    #@42
    .line 5002
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1344
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 1345
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 1346
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@9
    .line 1347
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@e
    .line 1348
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@10
    .line 1349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@13
    .line 1350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@16
    .line 1343
    :cond_0
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3631
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 3632
    .local v1, "childrenCount":I
    const/4 v7, 0x1

    #@4
    if-le v1, v7, :cond_0

    #@6
    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 3634
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@e
    if-nez v7, :cond_1

    #@10
    .line 3635
    new-instance v7, Ljava/util/ArrayList;

    #@12
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    iput-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@17
    .line 3642
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@1a
    move-result v3

    #@1b
    .line 3643
    .local v3, "customOrder":Z
    const/4 v4, 0x0

    #@1c
    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    #@1e
    .line 3645
    invoke-direct {p0, v1, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@21
    move-result v0

    #@22
    .line 3646
    .local v0, "childIndex":I
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@24
    aget-object v6, v7, v0

    #@26
    .line 3647
    .local v6, "nextChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    #@29
    move-result v2

    #@2a
    .line 3650
    .local v2, "currentZ":F
    move v5, v4

    #@2b
    .line 3651
    .local v5, "insertIndex":I
    :goto_2
    if-lez v5, :cond_2

    #@2d
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@2f
    add-int/lit8 v8, v5, -0x1

    #@31
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Landroid/view/View;

    #@37
    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    #@3a
    move-result v7

    #@3b
    cmpl-float v7, v7, v2

    #@3d
    if-lez v7, :cond_2

    #@3f
    .line 3652
    add-int/lit8 v5, v5, -0x1

    #@41
    goto :goto_2

    #@42
    .line 3632
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v3    # "customOrder":Z
    .end local v4    # "i":I
    .end local v5    # "insertIndex":I
    .end local v6    # "nextChild":Landroid/view/View;
    :cond_0
    return-object v8

    #@43
    .line 3638
    :cond_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@48
    .line 3639
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 3654
    .restart local v0    # "childIndex":I
    .restart local v2    # "currentZ":F
    .restart local v3    # "customOrder":Z
    .restart local v4    # "i":I
    .restart local v5    # "insertIndex":I
    .restart local v6    # "nextChild":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@53
    .line 3643
    add-int/lit8 v4, v4, 0x1

    #@55
    goto :goto_1

    #@56
    .line 3656
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v5    # "insertIndex":I
    .end local v6    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@58
    return-object v7
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2368
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected canAnimate()Z
    .locals 1

    #@0
    .prologue
    .line 5593
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 6858
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 6859
    return-void

    #@7
    .line 6861
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 6862
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 6857
    :cond_1
    return-void

    #@11
    .line 6864
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v1

    #@15
    .line 6865
    .local v1, "count":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@18
    .line 6866
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    .line 6867
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@1f
    .line 6865
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4273
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6526
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v0, v0, 0x2000

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    #@9
    .line 6525
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    #@0
    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    #@3
    move-result v2

    #@4
    .line 936
    .local v2, "oldHasTransientState":Z
    if-eqz p2, :cond_1

    #@6
    .line 937
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@c
    .line 942
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    #@f
    move-result v1

    #@10
    .line 943
    .local v1, "newHasTransientState":Z
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@12
    if-eqz v3, :cond_0

    #@14
    if-eq v2, v1, :cond_0

    #@16
    .line 945
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@18
    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 934
    :cond_0
    :goto_1
    return-void

    #@1c
    .line 939
    .end local v1    # "newHasTransientState":Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@1e
    add-int/lit8 v3, v3, -0x1

    #@20
    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@22
    goto :goto_0

    #@23
    .line 946
    .restart local v1    # "newHasTransientState":Z
    :catch_0
    move-exception v0

    #@24
    .line 947
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v3, "ViewGroup"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 948
    const-string/jumbo v5, " does not fully implement ViewParent"

    #@3d
    .line 947
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4404
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@2
    and-int/lit16 v0, v0, -0x1001

    #@4
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@6
    .line 4403
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 970
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    .line 971
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 972
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@9
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    #@c
    .line 965
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    #@0
    .prologue
    .line 6180
    iget-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2
    .line 6181
    .local v1, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    #@4
    .line 6182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 6183
    .local v0, "count":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 6184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/View;

    #@11
    .line 6185
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 6186
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@18
    .line 6188
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    #@1b
    .line 6183
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 6190
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 6191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@24
    .line 6179
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 981
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 982
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    #@8
    .line 977
    :goto_0
    return-void

    #@9
    .line 984
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    .line 985
    .local v0, "focused":Landroid/view/View;
    iput-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@d
    .line 986
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    #@10
    goto :goto_0
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    #@0
    .prologue
    .line 3309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_2

    #@6
    .line 3310
    const/4 v4, 0x0

    #@7
    .line 3311
    .local v4, "left":I
    const/4 v6, 0x0

    #@8
    .line 3312
    .local v6, "top":I
    const/4 v5, 0x0

    #@9
    .line 3313
    .local v5, "right":I
    const/4 v0, 0x0

    #@a
    .line 3314
    .local v0, "bottom":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@d
    if-ge v2, v7, :cond_1

    #@f
    .line 3315
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    .line 3316
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_0

    #@19
    .line 3317
    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    #@1c
    move-result-object v3

    #@1d
    .line 3318
    .local v3, "insets":Landroid/graphics/Insets;
    iget v7, v3, Landroid/graphics/Insets;->left:I

    #@1f
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v4

    #@23
    .line 3319
    iget v7, v3, Landroid/graphics/Insets;->top:I

    #@25
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v6

    #@29
    .line 3320
    iget v7, v3, Landroid/graphics/Insets;->right:I

    #@2b
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v5

    #@2f
    .line 3321
    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    #@31
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v0

    #@35
    .line 3314
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3324
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@3b
    move-result-object v7

    #@3c
    return-object v7

    #@3d
    .line 3326
    .end local v0    # "bottom":I
    .end local v2    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :cond_2
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@3f
    return-object v7
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    #@0
    .prologue
    .line 3274
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 3275
    .local v2, "count":I
    const/4 v4, 0x0

    #@3
    .line 3277
    .local v4, "visibilities":[I
    if-eqz p3, :cond_1

    #@5
    .line 3278
    new-array v4, v2, [I

    #@7
    .line 3279
    .local v4, "visibilities":[I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 3280
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    .line 3281
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v5

    #@12
    aput v5, v4, v3

    #@14
    .line 3282
    aget v5, v4, v3

    #@16
    if-nez v5, :cond_0

    #@18
    .line 3283
    iget v5, v1, Landroid/view/View;->mViewFlags:I

    #@1a
    and-int/lit8 v5, v5, -0xd

    #@1c
    or-int/lit8 v5, v5, 0x4

    #@1e
    iput v5, v1, Landroid/view/View;->mViewFlags:I

    #@20
    .line 3279
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3289
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "visibilities":[I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    #@26
    move-result-object v0

    #@27
    .line 3291
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    #@29
    .line 3292
    const/4 v3, 0x0

    #@2a
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@2c
    .line 3293
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v1

    #@30
    .line 3294
    .restart local v1    # "child":Landroid/view/View;
    iget v5, v1, Landroid/view/View;->mViewFlags:I

    #@32
    and-int/lit8 v5, v5, -0xd

    #@34
    .line 3295
    aget v6, v4, v3

    #@36
    and-int/lit8 v6, v6, 0xc

    #@38
    .line 3294
    or-int/2addr v5, v6

    #@39
    iput v5, v1, Landroid/view/View;->mViewFlags:I

    #@3b
    .line 3292
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 3299
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 5315
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->damageChildDeferred(Landroid/view/View;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 5316
    return-void

    #@8
    .line 5319
    :cond_0
    move-object v3, p0

    #@9
    .line 5321
    .local v3, "parent":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    .line 5322
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    #@d
    .line 5323
    iget v1, p1, Landroid/view/View;->mLeft:I

    #@f
    .line 5324
    .local v1, "left":I
    iget v5, p1, Landroid/view/View;->mTop:I

    #@11
    .line 5325
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    #@18
    move-result v6

    #@19
    if-nez v6, :cond_1

    #@1b
    .line 5326
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    #@1e
    .line 5330
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    #@20
    if-eqz v6, :cond_4

    #@22
    move-object v4, v3

    #@23
    .line 5331
    check-cast v4, Landroid/view/ViewGroup;

    #@25
    .line 5332
    .local v4, "parentVG":Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/ViewGroup;->mLayerType:I

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 5334
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    #@2c
    .line 5335
    const/4 v3, 0x0

    #@2d
    .line 5349
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    #@2f
    .line 5314
    .end local v1    # "left":I
    .end local v5    # "top":I
    :cond_2
    return-void

    #@30
    .line 5337
    .restart local v1    # "left":I
    .restart local v4    # "parentVG":Landroid/view/ViewGroup;
    .restart local v5    # "top":I
    :cond_3
    invoke-virtual {v4, v1, v5, p2}, Landroid/view/ViewGroup;->damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@33
    move-result-object v3

    #@34
    .line 5338
    .restart local v3    # "parent":Landroid/view/ViewParent;
    iget v1, v4, Landroid/view/ViewGroup;->mLeft:I

    #@36
    .line 5339
    iget v5, v4, Landroid/view/ViewGroup;->mTop:I

    #@38
    goto :goto_0

    #@39
    .line 5344
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@3b
    .line 5345
    .local v2, "location":[I
    aput v1, v2, v7

    #@3d
    .line 5346
    const/4 v6, 0x1

    #@3e
    aput v5, v2, v6

    #@40
    .line 5347
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@43
    move-result-object v3

    #@44
    .restart local v3    # "parent":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public damageChildDeferred(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 5293
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 5294
    :goto_0
    if-eqz v0, :cond_2

    #@6
    .line 5295
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5296
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    #@f
    .line 5297
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 5298
    check-cast v0, Landroid/view/ViewRootImpl;

    #@15
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@18
    .line 5299
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 5301
    :cond_1
    const/4 v0, 0x0

    #@1b
    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    #@1c
    .line 5304
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method protected damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5360
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@3
    and-int/lit8 v0, v0, 0x20

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5361
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@9
    const v1, 0x8000

    #@c
    and-int/2addr v0, v1

    #@d
    if-eqz v0, :cond_4

    #@f
    .line 5362
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@11
    sub-int v0, p1, v0

    #@13
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@15
    sub-int v1, p2, v1

    #@17
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@1a
    .line 5363
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1c
    and-int/lit8 v0, v0, 0x1

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 5364
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    #@22
    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    #@24
    sub-int/2addr v0, v1

    #@25
    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    #@27
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    #@29
    sub-int/2addr v1, v2

    #@2a
    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    #@2d
    .line 5367
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2f
    and-int/lit8 v0, v0, 0x1

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 5368
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    #@35
    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    #@37
    sub-int/2addr v0, v1

    #@38
    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    #@3a
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    #@3c
    sub-int/2addr v1, v2

    #@3d
    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@40
    move-result v0

    #@41
    .line 5367
    if-eqz v0, :cond_4

    #@43
    .line 5370
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 5371
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    #@50
    .line 5374
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@52
    return-object v0

    #@53
    .line 5378
    :cond_4
    const/4 v0, 0x0

    #@54
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 5948
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    #@3
    .line 5951
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 5952
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 5953
    .local v3, "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "mFocused"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 5954
    const-string/jumbo v4, "View"

    #@22
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 5956
    .end local v3    # "output":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 5957
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 5958
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    const-string/jumbo v5, "{"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 5959
    const-string/jumbo v4, "View"

    #@44
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 5961
    .end local v3    # "output":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@49
    .line 5962
    .local v1, "count":I
    const/4 v2, 0x0

    #@4a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@4c
    .line 5963
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4e
    aget-object v0, v4, v2

    #@50
    .line 5964
    .local v0, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    #@52
    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    #@55
    .line 5962
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 5967
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5a
    if-eqz v4, :cond_3

    #@5c
    .line 5968
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 5969
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    const-string/jumbo v5, "}"

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 5970
    const-string/jumbo v4, "View"

    #@77
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 5947
    .end local v3    # "output":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 5104
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 5105
    .local v1, "count":I
    if-gtz v1, :cond_0

    #@6
    .line 5106
    return-void

    #@7
    .line 5109
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 5110
    .local v0, "children":[Landroid/view/View;
    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    .line 5112
    add-int/lit8 v2, v1, -0x1

    #@d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@f
    .line 5113
    aget-object v3, v0, v2

    #@11
    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@13
    .line 5114
    aput-object v4, v0, v2

    #@15
    .line 5112
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 5103
    :cond_1
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5063
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@3
    .line 5062
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 5042
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@7
    .line 5041
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 5085
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    #@3
    .line 5084
    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 843
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 844
    return v4

    #@8
    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v1

    #@c
    .line 847
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 848
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 849
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 850
    return v4

    #@1a
    .line 847
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 853
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    #@1e
    return v3
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 6410
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@3
    move-result-object p1

    #@4
    .line 6411
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 6412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 6413
    .local v0, "count":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 6414
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@18
    move-result-object p1

    #@19
    .line 6415
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 6420
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object p1

    #@20
    .line 6413
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 8
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 2915
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    const/high16 v7, 0x400000

    #@4
    or-int/2addr v6, v7

    #@5
    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 2916
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@a
    .line 2917
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    const v7, -0x400001

    #@f
    and-int/2addr v6, v7

    #@10
    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    .line 2919
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@14
    .line 2920
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@16
    .line 2921
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@19
    .line 2922
    aget-object v0, v1, v3

    #@1b
    .line 2924
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1e
    move-result v6

    #@1f
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    #@22
    move-result v6

    #@23
    .line 2923
    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@26
    .line 2921
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2926
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@2b
    if-nez v6, :cond_1

    #@2d
    const/4 v4, 0x0

    #@2e
    .line 2927
    .local v4, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    #@2f
    :goto_2
    if-ge v3, v4, :cond_2

    #@31
    .line 2928
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@33
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Landroid/view/View;

    #@39
    .line 2930
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@3c
    move-result v6

    #@3d
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    #@40
    move-result v6

    #@41
    .line 2929
    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@44
    .line 2927
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_2

    #@47
    .line 2926
    .end local v4    # "transientCount":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@49
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@4c
    move-result v4

    #@4d
    .restart local v4    # "transientCount":I
    goto :goto_1

    #@4e
    .line 2914
    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    #@0
    .prologue
    .line 3888
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    #@3
    .line 3890
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 3891
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3892
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 3893
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    #@f
    .line 3892
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3887
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 1330
    and-int/lit8 v4, p2, 0xc

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1331
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@7
    .line 1332
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@9
    .line 1333
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@b
    .line 1334
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 1335
    aget-object v0, v1, v3

    #@10
    .line 1337
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@12
    and-int/lit8 v4, v4, 0xc

    #@14
    or-int/2addr v4, p2

    #@15
    .line 1336
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@18
    .line 1334
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1329
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1312
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 1313
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1314
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1315
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1316
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@f
    .line 1315
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1311
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 3160
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    #@5
    .line 3163
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    #@8
    .line 3166
    iput-boolean v5, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@a
    .line 3169
    iput-object v6, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@c
    .line 3170
    iput-boolean v5, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@e
    .line 3171
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 3172
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@14
    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    #@17
    .line 3173
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@19
    .line 3176
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1b
    .line 3177
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1d
    .line 3178
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@20
    .line 3179
    aget-object v5, v0, v2

    #@22
    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@25
    .line 3178
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 3181
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    #@2b
    .line 3182
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@2d
    if-nez v5, :cond_2

    #@2f
    const/4 v3, 0x0

    #@30
    .line 3183
    .local v3, "transientCount":I
    :goto_1
    const/4 v2, 0x0

    #@31
    :goto_2
    if-ge v2, v3, :cond_3

    #@33
    .line 3184
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@35
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroid/view/View;

    #@3b
    .line 3185
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@3e
    .line 3183
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_2

    #@41
    .line 3182
    .end local v3    # "transientCount":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@43
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@46
    move-result v3

    #@47
    .restart local v3    # "transientCount":I
    goto :goto_1

    #@48
    .line 3187
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@4b
    .line 3154
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 1231
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    #@3
    .line 1232
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1233
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1234
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1235
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    #@f
    .line 1234
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1230
    :cond_0
    return-void
.end method

.method dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1361
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    #@3
    const/4 v1, 0x6

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1367
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@c
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    #@f
    .line 1368
    iput-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@11
    .line 1370
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 1376
    const/4 v10, 0x0

    #@1
    .line 1377
    .local v10, "retval":Z
    move-object/from16 v0, p1

    #@3
    iget v12, v0, Landroid/view/DragEvent;->mX:F

    #@5
    .line 1378
    .local v12, "tx":F
    move-object/from16 v0, p1

    #@7
    iget v13, v0, Landroid/view/DragEvent;->mY:F

    #@9
    .line 1381
    .local v13, "ty":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    #@c
    move-result-object v9

    #@d
    .line 1383
    .local v9, "localPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    #@f
    iget v14, v0, Landroid/view/DragEvent;->mAction:I

    #@11
    packed-switch v14, :pswitch_data_0

    #@14
    .line 1516
    .end local v10    # "retval":Z
    :cond_0
    :goto_0
    return v10

    #@15
    .line 1386
    .restart local v10    # "retval":Z
    :pswitch_0
    const/4 v14, 0x0

    #@16
    move-object/from16 v0, p0

    #@18
    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@1a
    .line 1389
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    #@1d
    move-result-object v14

    #@1e
    move-object/from16 v0, p0

    #@20
    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@22
    .line 1390
    move-object/from16 v0, p0

    #@24
    iget-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@26
    if-nez v14, :cond_2

    #@28
    .line 1391
    new-instance v14, Ljava/util/HashSet;

    #@2a
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@31
    .line 1397
    :goto_1
    move-object/from16 v0, p0

    #@33
    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@35
    .line 1398
    .local v6, "count":I
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@39
    .line 1399
    .local v4, "children":[Landroid/view/View;
    const/4 v8, 0x0

    #@3a
    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_3

    #@3c
    .line 1400
    aget-object v2, v4, v8

    #@3e
    .line 1401
    .local v2, "child":Landroid/view/View;
    iget v14, v2, Landroid/view/View;->mPrivateFlags2:I

    #@40
    and-int/lit8 v14, v14, -0x4

    #@42
    iput v14, v2, Landroid/view/View;->mPrivateFlags2:I

    #@44
    .line 1402
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@47
    move-result v14

    #@48
    if-nez v14, :cond_1

    #@4a
    .line 1403
    aget-object v14, v4, v8

    #@4c
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    #@51
    move-result v14

    #@52
    if-eqz v14, :cond_1

    #@54
    .line 1404
    const/4 v10, 0x1

    #@55
    .line 1399
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@57
    goto :goto_2

    #@58
    .line 1393
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@5a
    iget-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@5c
    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    #@5f
    goto :goto_1

    #@60
    .line 1410
    .restart local v4    # "children":[Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@63
    move-result v14

    #@64
    move-object/from16 v0, p0

    #@66
    iput-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@68
    .line 1411
    move-object/from16 v0, p0

    #@6a
    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@6c
    if-eqz v14, :cond_4

    #@6e
    .line 1412
    const/4 v10, 0x1

    #@6f
    .line 1415
    :cond_4
    if-nez v10, :cond_0

    #@71
    .line 1418
    move-object/from16 v0, p0

    #@73
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@75
    invoke-virtual {v14}, Landroid/view/DragEvent;->recycle()V

    #@78
    .line 1419
    const/4 v14, 0x0

    #@79
    move-object/from16 v0, p0

    #@7b
    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@7d
    goto :goto_0

    #@7e
    .line 1425
    .end local v4    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    #@80
    iget-object v5, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@82
    .line 1426
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_7

    #@84
    .line 1427
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@87
    move-result-object v3

    #@88
    .local v3, "child$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8b
    move-result v14

    #@8c
    if-eqz v14, :cond_6

    #@8e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v2

    #@92
    check-cast v2, Landroid/view/View;

    #@94
    .line 1429
    .restart local v2    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@99
    move-result v14

    #@9a
    if-eqz v14, :cond_5

    #@9c
    .line 1430
    const/4 v10, 0x1

    #@9d
    goto :goto_3

    #@9e
    .line 1433
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    #@a1
    .line 1435
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    #@a3
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@a5
    if-eqz v14, :cond_8

    #@a7
    .line 1436
    move-object/from16 v0, p0

    #@a9
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@ab
    invoke-virtual {v14}, Landroid/view/DragEvent;->recycle()V

    #@ae
    .line 1437
    const/4 v14, 0x0

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@b3
    .line 1440
    :cond_8
    move-object/from16 v0, p0

    #@b5
    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@b7
    if-eqz v14, :cond_0

    #@b9
    .line 1441
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@bc
    move-result v14

    #@bd
    if-eqz v14, :cond_9

    #@bf
    .line 1442
    const/4 v10, 0x1

    #@c0
    .line 1444
    :cond_9
    const/4 v14, 0x0

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@c5
    goto/16 :goto_0

    #@c7
    .line 1451
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :pswitch_2
    move-object/from16 v0, p1

    #@c9
    iget v14, v0, Landroid/view/DragEvent;->mX:F

    #@cb
    move-object/from16 v0, p1

    #@cd
    iget v15, v0, Landroid/view/DragEvent;->mY:F

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v14, v15, v9}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    #@d4
    move-result-object v11

    #@d5
    .line 1453
    .local v11, "target":Landroid/view/View;
    move-object/from16 v0, p0

    #@d7
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@d9
    if-eq v11, v14, :cond_d

    #@db
    .line 1454
    sget-boolean v14, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    #@dd
    if-eqz v14, :cond_c

    #@df
    .line 1459
    move-object/from16 v0, p1

    #@e1
    iget v1, v0, Landroid/view/DragEvent;->mAction:I

    #@e3
    .line 1462
    .local v1, "action":I
    const/4 v14, 0x0

    #@e4
    move-object/from16 v0, p1

    #@e6
    iput v14, v0, Landroid/view/DragEvent;->mX:F

    #@e8
    .line 1463
    const/4 v14, 0x0

    #@e9
    move-object/from16 v0, p1

    #@eb
    iput v14, v0, Landroid/view/DragEvent;->mY:F

    #@ed
    .line 1465
    move-object/from16 v0, p0

    #@ef
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@f1
    if-eqz v14, :cond_a

    #@f3
    .line 1466
    const/4 v14, 0x6

    #@f4
    move-object/from16 v0, p1

    #@f6
    iput v14, v0, Landroid/view/DragEvent;->mAction:I

    #@f8
    .line 1467
    move-object/from16 v0, p0

    #@fa
    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@fc
    move-object/from16 v0, p1

    #@fe
    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    #@101
    .line 1470
    :cond_a
    if-eqz v11, :cond_b

    #@103
    .line 1471
    const/4 v14, 0x5

    #@104
    move-object/from16 v0, p1

    #@106
    iput v14, v0, Landroid/view/DragEvent;->mAction:I

    #@108
    .line 1472
    move-object/from16 v0, p1

    #@10a
    invoke-virtual {v11, v0}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    #@10d
    .line 1475
    :cond_b
    move-object/from16 v0, p1

    #@10f
    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    #@111
    .line 1476
    move-object/from16 v0, p1

    #@113
    iput v12, v0, Landroid/view/DragEvent;->mX:F

    #@115
    .line 1477
    move-object/from16 v0, p1

    #@117
    iput v13, v0, Landroid/view/DragEvent;->mY:F

    #@119
    .line 1479
    .end local v1    # "action":I
    :cond_c
    move-object/from16 v0, p0

    #@11b
    iput-object v11, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    #@11d
    .line 1482
    :cond_d
    if-nez v11, :cond_e

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@123
    if-eqz v14, :cond_e

    #@125
    .line 1483
    move-object/from16 v11, p0

    #@127
    .line 1487
    :cond_e
    if-eqz v11, :cond_0

    #@129
    .line 1488
    move-object/from16 v0, p0

    #@12b
    if-eq v11, v0, :cond_10

    #@12d
    .line 1489
    iget v14, v9, Landroid/graphics/PointF;->x:F

    #@12f
    move-object/from16 v0, p1

    #@131
    iput v14, v0, Landroid/view/DragEvent;->mX:F

    #@133
    .line 1490
    iget v14, v9, Landroid/graphics/PointF;->y:F

    #@135
    move-object/from16 v0, p1

    #@137
    iput v14, v0, Landroid/view/DragEvent;->mY:F

    #@139
    .line 1492
    move-object/from16 v0, p1

    #@13b
    invoke-virtual {v11, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@13e
    move-result v10

    #@13f
    .line 1494
    .local v10, "retval":Z
    move-object/from16 v0, p1

    #@141
    iput v12, v0, Landroid/view/DragEvent;->mX:F

    #@143
    .line 1495
    move-object/from16 v0, p1

    #@145
    iput v13, v0, Landroid/view/DragEvent;->mY:F

    #@147
    .line 1497
    move-object/from16 v0, p0

    #@149
    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    #@14b
    if-eqz v14, :cond_0

    #@14d
    .line 1499
    sget-boolean v14, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    #@14f
    if-eqz v14, :cond_f

    #@151
    .line 1500
    move v7, v10

    #@152
    .line 1505
    .local v7, "eventWasConsumed":Z
    :goto_4
    if-nez v7, :cond_0

    #@154
    .line 1506
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@157
    move-result v10

    #@158
    goto/16 :goto_0

    #@15a
    .line 1502
    .end local v7    # "eventWasConsumed":Z
    :cond_f
    move-object/from16 v0, p1

    #@15c
    iget-boolean v7, v0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    #@15e
    .restart local v7    # "eventWasConsumed":Z
    goto :goto_4

    #@15f
    .line 1510
    .end local v7    # "eventWasConsumed":Z
    .local v10, "retval":Z
    :cond_10
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@162
    move-result v10

    #@163
    .local v10, "retval":Z
    goto/16 :goto_0

    #@165
    .line 1383
    nop

    #@166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 3441
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/ViewGroup;->mRenderNode:Landroid/view/RenderNode;

    #@4
    move-object/from16 v29, v0

    #@6
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v29

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    #@d
    move-result v28

    #@e
    .line 3442
    .local v28, "usingRenderNodeProperties":Z
    move-object/from16 v0, p0

    #@10
    iget v10, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@12
    .line 3443
    .local v10, "childrenCount":I
    move-object/from16 v0, p0

    #@14
    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@16
    .line 3444
    .local v9, "children":[Landroid/view/View;
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1a
    move/from16 v20, v0

    #@1c
    .line 3446
    .local v20, "flags":I
    and-int/lit8 v29, v20, 0x8

    #@1e
    if-eqz v29, :cond_4

    #@20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    #@23
    move-result v29

    #@24
    if-eqz v29, :cond_4

    #@26
    .line 3447
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    #@29
    move-result v29

    #@2a
    if-eqz v29, :cond_1

    #@2c
    const/4 v6, 0x0

    #@2d
    .line 3448
    .local v6, "buildCache":Z
    :goto_0
    const/16 v21, 0x0

    #@2f
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    #@31
    if-ge v0, v10, :cond_2

    #@33
    .line 3449
    aget-object v7, v9, v21

    #@35
    .line 3450
    .local v7, "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    #@37
    move/from16 v29, v0

    #@39
    and-int/lit8 v29, v29, 0xc

    #@3b
    if-nez v29, :cond_0

    #@3d
    .line 3451
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40
    move-result-object v23

    #@41
    .line 3452
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, v23

    #@45
    move/from16 v2, v21

    #@47
    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    #@4a
    .line 3453
    move-object/from16 v0, p0

    #@4c
    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    #@4f
    .line 3448
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    #@51
    goto :goto_1

    #@52
    .line 3447
    .end local v6    # "buildCache":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "i":I
    :cond_1
    const/4 v6, 0x1

    #@53
    .restart local v6    # "buildCache":Z
    goto :goto_0

    #@54
    .line 3457
    .restart local v21    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@56
    iget-object v13, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@58
    .line 3458
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    #@5b
    move-result v29

    #@5c
    if-eqz v29, :cond_3

    #@5e
    .line 3459
    move-object/from16 v0, p0

    #@60
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@62
    move/from16 v29, v0

    #@64
    move/from16 v0, v29

    #@66
    or-int/lit16 v0, v0, 0x80

    #@68
    move/from16 v29, v0

    #@6a
    move/from16 v0, v29

    #@6c
    move-object/from16 v1, p0

    #@6e
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@70
    .line 3462
    :cond_3
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    #@73
    .line 3464
    move-object/from16 v0, p0

    #@75
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@77
    move/from16 v29, v0

    #@79
    and-int/lit8 v29, v29, -0x9

    #@7b
    move/from16 v0, v29

    #@7d
    move-object/from16 v1, p0

    #@7f
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@81
    .line 3465
    move-object/from16 v0, p0

    #@83
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@85
    move/from16 v29, v0

    #@87
    and-int/lit8 v29, v29, -0x11

    #@89
    move/from16 v0, v29

    #@8b
    move-object/from16 v1, p0

    #@8d
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8f
    .line 3467
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@93
    move-object/from16 v29, v0

    #@95
    if-eqz v29, :cond_4

    #@97
    .line 3468
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@9b
    move-object/from16 v29, v0

    #@9d
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    #@a0
    move-result-object v30

    #@a1
    invoke-interface/range {v29 .. v30}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    #@a4
    .line 3472
    .end local v6    # "buildCache":Z
    .end local v13    # "controller":Landroid/view/animation/LayoutAnimationController;
    .end local v21    # "i":I
    :cond_4
    const/4 v11, 0x0

    #@a5
    .line 3473
    .local v11, "clipSaveCount":I
    and-int/lit8 v29, v20, 0x22

    #@a7
    const/16 v30, 0x22

    #@a9
    move/from16 v0, v29

    #@ab
    move/from16 v1, v30

    #@ad
    if-ne v0, v1, :cond_a

    #@af
    const/4 v12, 0x1

    #@b0
    .line 3474
    .local v12, "clipToPadding":Z
    :goto_2
    if-eqz v12, :cond_5

    #@b2
    .line 3475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@b5
    move-result v11

    #@b6
    .line 3476
    move-object/from16 v0, p0

    #@b8
    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    #@ba
    move/from16 v29, v0

    #@bc
    move-object/from16 v0, p0

    #@be
    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@c0
    move/from16 v30, v0

    #@c2
    add-int v29, v29, v30

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    #@c8
    move/from16 v30, v0

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@ce
    move/from16 v31, v0

    #@d0
    add-int v30, v30, v31

    #@d2
    .line 3477
    move-object/from16 v0, p0

    #@d4
    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    #@d6
    move/from16 v31, v0

    #@d8
    move-object/from16 v0, p0

    #@da
    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    #@dc
    move/from16 v32, v0

    #@de
    add-int v31, v31, v32

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    #@e4
    move/from16 v32, v0

    #@e6
    sub-int v31, v31, v32

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@ec
    move/from16 v32, v0

    #@ee
    sub-int v31, v31, v32

    #@f0
    .line 3478
    move-object/from16 v0, p0

    #@f2
    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    #@f4
    move/from16 v32, v0

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    #@fa
    move/from16 v33, v0

    #@fc
    add-int v32, v32, v33

    #@fe
    move-object/from16 v0, p0

    #@100
    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    #@102
    move/from16 v33, v0

    #@104
    sub-int v32, v32, v33

    #@106
    move-object/from16 v0, p0

    #@108
    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@10a
    move/from16 v33, v0

    #@10c
    sub-int v32, v32, v33

    #@10e
    .line 3476
    move-object/from16 v0, p1

    #@110
    move/from16 v1, v29

    #@112
    move/from16 v2, v30

    #@114
    move/from16 v3, v31

    #@116
    move/from16 v4, v32

    #@118
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@11b
    .line 3482
    :cond_5
    move-object/from16 v0, p0

    #@11d
    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@11f
    move/from16 v29, v0

    #@121
    and-int/lit8 v29, v29, -0x41

    #@123
    move/from16 v0, v29

    #@125
    move-object/from16 v1, p0

    #@127
    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@129
    .line 3483
    move-object/from16 v0, p0

    #@12b
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12d
    move/from16 v29, v0

    #@12f
    and-int/lit8 v29, v29, -0x5

    #@131
    move/from16 v0, v29

    #@133
    move-object/from16 v1, p0

    #@135
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@137
    .line 3485
    const/16 v22, 0x0

    #@139
    .line 3486
    .local v22, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    #@13c
    move-result-wide v18

    #@13d
    .line 3488
    .local v18, "drawingTime":J
    if-eqz v28, :cond_6

    #@13f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    #@142
    .line 3489
    :cond_6
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@146
    move-object/from16 v29, v0

    #@148
    if-nez v29, :cond_b

    #@14a
    const/16 v26, 0x0

    #@14c
    .line 3490
    .local v26, "transientCount":I
    :goto_3
    if-eqz v26, :cond_c

    #@14e
    const/16 v27, 0x0

    #@150
    .line 3493
    .local v27, "transientIndex":I
    :goto_4
    if-eqz v28, :cond_d

    #@152
    .line 3494
    const/16 v24, 0x0

    #@154
    .line 3495
    .local v24, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_5
    if-nez v24, :cond_e

    #@156
    .line 3496
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@159
    move-result v14

    #@15a
    .line 3497
    :goto_6
    const/16 v21, 0x0

    #@15c
    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :goto_7
    move/from16 v0, v21

    #@15e
    if-ge v0, v10, :cond_12

    #@160
    .line 3498
    :cond_7
    :goto_8
    if-ltz v27, :cond_f

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@166
    move-object/from16 v29, v0

    #@168
    move-object/from16 v0, v29

    #@16a
    move/from16 v1, v27

    #@16c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16f
    move-result-object v29

    #@170
    check-cast v29, Ljava/lang/Integer;

    #@172
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    #@175
    move-result v29

    #@176
    move/from16 v0, v29

    #@178
    move/from16 v1, v21

    #@17a
    if-ne v0, v1, :cond_f

    #@17c
    .line 3499
    move-object/from16 v0, p0

    #@17e
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@180
    move-object/from16 v29, v0

    #@182
    move-object/from16 v0, v29

    #@184
    move/from16 v1, v27

    #@186
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@189
    move-result-object v25

    #@18a
    check-cast v25, Landroid/view/View;

    #@18c
    .line 3500
    .local v25, "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    #@18e
    iget v0, v0, Landroid/view/View;->mViewFlags:I

    #@190
    move/from16 v29, v0

    #@192
    and-int/lit8 v29, v29, 0xc

    #@194
    if-eqz v29, :cond_8

    #@196
    .line 3501
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@199
    move-result-object v29

    #@19a
    if-eqz v29, :cond_9

    #@19c
    .line 3502
    :cond_8
    move-object/from16 v0, p0

    #@19e
    move-object/from16 v1, p1

    #@1a0
    move-object/from16 v2, v25

    #@1a2
    move-wide/from16 v3, v18

    #@1a4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@1a7
    move-result v29

    #@1a8
    or-int v22, v22, v29

    #@1aa
    .line 3504
    :cond_9
    add-int/lit8 v27, v27, 0x1

    #@1ac
    .line 3505
    move/from16 v0, v27

    #@1ae
    move/from16 v1, v26

    #@1b0
    if-lt v0, v1, :cond_7

    #@1b2
    .line 3506
    const/16 v27, -0x1

    #@1b4
    goto :goto_8

    #@1b5
    .line 3473
    .end local v12    # "clipToPadding":Z
    .end local v18    # "drawingTime":J
    .end local v21    # "i":I
    .end local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "transientChild":Landroid/view/View;
    .end local v26    # "transientCount":I
    .end local v27    # "transientIndex":I
    :cond_a
    const/4 v12, 0x0

    #@1b6
    goto/16 :goto_2

    #@1b8
    .line 3489
    .restart local v12    # "clipToPadding":Z
    .restart local v18    # "drawingTime":J
    .restart local v22    # "more":Z
    :cond_b
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@1bc
    move-object/from16 v29, v0

    #@1be
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@1c1
    move-result v26

    #@1c2
    goto :goto_3

    #@1c3
    .line 3490
    .restart local v26    # "transientCount":I
    :cond_c
    const/16 v27, -0x1

    #@1c5
    .restart local v27    # "transientIndex":I
    goto :goto_4

    #@1c6
    .line 3494
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@1c9
    move-result-object v24

    #@1ca
    goto :goto_5

    #@1cb
    .line 3495
    .restart local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_e
    const/4 v14, 0x0

    #@1cc
    .local v14, "customOrder":Z
    goto :goto_6

    #@1cd
    .line 3510
    .end local v14    # "customOrder":Z
    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :cond_f
    move-object/from16 v0, p0

    #@1cf
    move/from16 v1, v21

    #@1d1
    invoke-direct {v0, v10, v1, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@1d4
    move-result v8

    #@1d5
    .line 3511
    .local v8, "childIndex":I
    move-object/from16 v0, v24

    #@1d7
    invoke-static {v0, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@1da
    move-result-object v7

    #@1db
    .line 3512
    .restart local v7    # "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    #@1dd
    move/from16 v29, v0

    #@1df
    and-int/lit8 v29, v29, 0xc

    #@1e1
    if-eqz v29, :cond_10

    #@1e3
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@1e6
    move-result-object v29

    #@1e7
    if-eqz v29, :cond_11

    #@1e9
    .line 3513
    :cond_10
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, p1

    #@1ed
    move-wide/from16 v2, v18

    #@1ef
    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@1f2
    move-result v29

    #@1f3
    or-int v22, v22, v29

    #@1f5
    .line 3497
    :cond_11
    add-int/lit8 v21, v21, 0x1

    #@1f7
    goto/16 :goto_7

    #@1f9
    .line 3516
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_12
    if-ltz v27, :cond_15

    #@1fb
    .line 3518
    move-object/from16 v0, p0

    #@1fd
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@1ff
    move-object/from16 v29, v0

    #@201
    move-object/from16 v0, v29

    #@203
    move/from16 v1, v27

    #@205
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@208
    move-result-object v25

    #@209
    check-cast v25, Landroid/view/View;

    #@20b
    .line 3519
    .restart local v25    # "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    #@20d
    iget v0, v0, Landroid/view/View;->mViewFlags:I

    #@20f
    move/from16 v29, v0

    #@211
    and-int/lit8 v29, v29, 0xc

    #@213
    if-eqz v29, :cond_13

    #@215
    .line 3520
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@218
    move-result-object v29

    #@219
    if-eqz v29, :cond_14

    #@21b
    .line 3521
    :cond_13
    move-object/from16 v0, p0

    #@21d
    move-object/from16 v1, p1

    #@21f
    move-object/from16 v2, v25

    #@221
    move-wide/from16 v3, v18

    #@223
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@226
    move-result v29

    #@227
    or-int v22, v22, v29

    #@229
    .line 3523
    :cond_14
    add-int/lit8 v27, v27, 0x1

    #@22b
    .line 3524
    move/from16 v0, v27

    #@22d
    move/from16 v1, v26

    #@22f
    if-lt v0, v1, :cond_12

    #@231
    .line 3528
    .end local v25    # "transientChild":Landroid/view/View;
    :cond_15
    if-eqz v24, :cond_16

    #@233
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    #@236
    .line 3531
    :cond_16
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@23a
    move-object/from16 v29, v0

    #@23c
    if-eqz v29, :cond_17

    #@23e
    .line 3532
    move-object/from16 v0, p0

    #@240
    iget-object v15, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@242
    .line 3533
    .local v15, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@245
    move-result v29

    #@246
    add-int/lit8 v16, v29, -0x1

    #@248
    .line 3535
    .local v16, "disappearingCount":I
    move/from16 v21, v16

    #@24a
    :goto_9
    if-ltz v21, :cond_17

    #@24c
    .line 3536
    move/from16 v0, v21

    #@24e
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@251
    move-result-object v7

    #@252
    check-cast v7, Landroid/view/View;

    #@254
    .line 3537
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, p1

    #@258
    move-wide/from16 v2, v18

    #@25a
    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@25d
    move-result v29

    #@25e
    or-int v22, v22, v29

    #@260
    .line 3535
    .local v22, "more":Z
    add-int/lit8 v21, v21, -0x1

    #@262
    goto :goto_9

    #@263
    .line 3540
    .end local v7    # "child":Landroid/view/View;
    .end local v15    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "disappearingCount":I
    .end local v22    # "more":Z
    :cond_17
    if-eqz v28, :cond_18

    #@265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    #@268
    .line 3542
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    #@26b
    move-result v29

    #@26c
    if-eqz v29, :cond_19

    #@26e
    .line 3543
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    #@271
    .line 3546
    :cond_19
    if-eqz v12, :cond_1a

    #@273
    .line 3547
    move-object/from16 v0, p1

    #@275
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@278
    .line 3551
    :cond_1a
    move-object/from16 v0, p0

    #@27a
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@27c
    move/from16 v20, v0

    #@27e
    .line 3553
    and-int/lit8 v29, v20, 0x4

    #@280
    const/16 v30, 0x4

    #@282
    move/from16 v0, v29

    #@284
    move/from16 v1, v30

    #@286
    if-ne v0, v1, :cond_1b

    #@288
    .line 3554
    const/16 v29, 0x1

    #@28a
    move-object/from16 v0, p0

    #@28c
    move/from16 v1, v29

    #@28e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@291
    .line 3557
    :cond_1b
    and-int/lit8 v29, v20, 0x10

    #@293
    if-nez v29, :cond_1c

    #@295
    move/from16 v0, v20

    #@297
    and-int/lit16 v0, v0, 0x200

    #@299
    move/from16 v29, v0

    #@29b
    if-nez v29, :cond_1c

    #@29d
    .line 3558
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2a1
    move-object/from16 v29, v0

    #@2a3
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    #@2a6
    move-result v29

    #@2a7
    .line 3557
    if-eqz v29, :cond_1c

    #@2a9
    .line 3558
    if-eqz v22, :cond_1d

    #@2ab
    .line 3440
    :cond_1c
    :goto_a
    return-void

    #@2ac
    .line 3562
    :cond_1d
    move-object/from16 v0, p0

    #@2ae
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2b0
    move/from16 v29, v0

    #@2b2
    move/from16 v0, v29

    #@2b4
    or-int/lit16 v0, v0, 0x200

    #@2b6
    move/from16 v29, v0

    #@2b8
    move/from16 v0, v29

    #@2ba
    move-object/from16 v1, p0

    #@2bc
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2be
    .line 3563
    new-instance v17, Landroid/view/ViewGroup$3;

    #@2c0
    move-object/from16 v0, v17

    #@2c2
    move-object/from16 v1, p0

    #@2c4
    invoke-direct {v0, v1}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    #@2c7
    .line 3569
    .local v17, "end":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@2c9
    move-object/from16 v1, v17

    #@2cb
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@2ce
    goto :goto_a
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 3864
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3865
    .local v2, "count":I
    if-nez v2, :cond_0

    #@6
    .line 3866
    return-void

    #@7
    .line 3869
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3870
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    #@c
    .line 3871
    aget-object v0, v1, v4

    #@e
    .line 3874
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    #@11
    move-result v7

    #@12
    if-nez v7, :cond_1

    #@14
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_4

    #@1a
    :cond_1
    const/4 v5, 0x0

    #@1b
    .line 3875
    .local v5, "nonActionable":Z
    :goto_1
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    #@1d
    const/high16 v8, 0x400000

    #@1f
    and-int/2addr v7, v8

    #@20
    if-eqz v7, :cond_5

    #@22
    const/4 v3, 0x1

    #@23
    .line 3876
    .local v3, "duplicatesState":Z
    :goto_2
    if-nez v5, :cond_2

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 3877
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    #@2a
    move-result-object v6

    #@2b
    .line 3878
    .local v6, "point":[F
    aput p1, v6, v9

    #@2d
    .line 3879
    aput p2, v6, v10

    #@2f
    .line 3880
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    #@32
    .line 3881
    aget v7, v6, v9

    #@34
    aget v8, v6, v10

    #@36
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@39
    .line 3870
    .end local v6    # "point":[F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3874
    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_4
    const/4 v5, 0x1

    #@3d
    .restart local v5    # "nonActionable":Z
    goto :goto_1

    #@3e
    .line 3875
    :cond_5
    const/4 v3, 0x0

    #@3f
    .restart local v3    # "duplicatesState":Z
    goto :goto_2

    #@40
    .line 3863
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_6
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    #@0
    .prologue
    .line 2905
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@3
    .line 2906
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2907
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2908
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2909
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@f
    .line 2908
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2904
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3226
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@3
    .line 3225
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2089
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 2090
    const/16 v1, 0x12

    #@6
    .line 2089
    if-ne v0, v1, :cond_0

    #@8
    .line 2091
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 2092
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@13
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    .line 2093
    const/16 v1, 0x10

    #@19
    .line 2092
    if-ne v0, v1, :cond_1

    #@1b
    .line 2094
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 2096
    :cond_1
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2057
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 2058
    .local v3, "childrenCount":I
    if-eqz v3, :cond_4

    #@5
    .line 2059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v7

    #@9
    .line 2060
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v8

    #@d
    .line 2062
    .local v8, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@10
    move-result-object v6

    #@11
    .line 2063
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_1

    #@13
    .line 2064
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@16
    move-result v4

    #@17
    .line 2065
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@19
    .line 2066
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    #@1b
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    #@1d
    .line 2067
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@20
    move-result v1

    #@21
    .line 2068
    .local v1, "childIndex":I
    invoke-static {v6, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    .line 2069
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_2

    #@2b
    .line 2070
    invoke-virtual {p0, v7, v8, v0, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@2e
    move-result v9

    #@2f
    if-eqz v9, :cond_2

    #@31
    .line 2074
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_2

    #@37
    .line 2075
    if-eqz v6, :cond_0

    #@39
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@3c
    .line 2076
    :cond_0
    const/4 v9, 0x1

    #@3d
    return v9

    #@3e
    .line 2063
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@3f
    .local v4, "customOrder":Z
    goto :goto_0

    #@40
    .line 2066
    .end local v4    # "customOrder":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childIndex":I
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    #@42
    goto :goto_1

    #@43
    .line 2079
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_3
    if-eqz v6, :cond_4

    #@45
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@48
    .line 2083
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    #@4b
    move-result v9

    #@4c
    return v9
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    #@0
    .prologue
    .line 3686
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 3687
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 3688
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    #@5
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    #@7
    .line 3689
    aget-object v0, v1, v5

    #@9
    .line 3690
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    #@b
    and-int/lit8 v7, v7, 0xc

    #@d
    if-eqz v7, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@12
    move-result-object v7

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 3691
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@18
    .line 3688
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3694
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@1d
    if-eqz v7, :cond_3

    #@1f
    .line 3695
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@21
    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    #@24
    move-result-object v6

    #@25
    .line 3696
    .local v6, "overlayView":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@28
    .line 3698
    .end local v6    # "overlayView":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2a
    if-eqz v7, :cond_4

    #@2c
    .line 3699
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2e
    .line 3700
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    .line 3701
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    #@33
    :goto_1
    if-ge v5, v4, :cond_4

    #@35
    .line 3702
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/view/View;

    #@3b
    .line 3703
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@3e
    .line 3701
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_1

    #@41
    .line 3685
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    :cond_4
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v4

    #@4
    .line 1752
    .local v4, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v15

    #@8
    .line 1753
    .local v15, "interceptHover":Z
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@d
    .line 1755
    move-object/from16 v10, p1

    #@f
    .line 1756
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v12, 0x0

    #@10
    .line 1760
    .local v12, "handled":Z
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@14
    .line 1761
    .local v11, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x0

    #@16
    move-object/from16 v0, v24

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@1c
    .line 1762
    if-nez v15, :cond_2

    #@1e
    const/16 v24, 0xa

    #@20
    move/from16 v0, v24

    #@22
    if-eq v4, v0, :cond_2

    #@24
    .line 1763
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@27
    move-result v22

    #@28
    .line 1764
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v23

    #@2c
    .line 1765
    .local v23, "y":F
    move-object/from16 v0, p0

    #@2e
    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@30
    .line 1766
    .local v8, "childrenCount":I
    if-eqz v8, :cond_2

    #@32
    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@35
    move-result-object v20

    #@36
    .line 1768
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v20, :cond_3

    #@38
    .line 1769
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@3b
    move-result v9

    #@3c
    .line 1770
    :goto_0
    move-object/from16 v0, p0

    #@3e
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@40
    .line 1771
    .local v7, "children":[Landroid/view/View;
    const/16 v16, 0x0

    #@42
    .line 1772
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v14, v8, -0x1

    #@44
    .end local v12    # "handled":Z
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_1

    #@46
    .line 1773
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v8, v14, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@4b
    move-result v6

    #@4c
    .line 1775
    .local v6, "childIndex":I
    move-object/from16 v0, v20

    #@4e
    invoke-static {v0, v7, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@51
    move-result-object v5

    #@52
    .line 1777
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@55
    move-result v24

    #@56
    if-eqz v24, :cond_a

    #@58
    .line 1778
    const/16 v24, 0x0

    #@5a
    move-object/from16 v0, p0

    #@5c
    move/from16 v1, v22

    #@5e
    move/from16 v2, v23

    #@60
    move-object/from16 v3, v24

    #@62
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@65
    move-result v24

    #@66
    if-eqz v24, :cond_a

    #@68
    .line 1784
    move-object v13, v11

    #@69
    .line 1786
    .local v13, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v19, 0x0

    #@6b
    .line 1787
    :goto_2
    if-nez v13, :cond_4

    #@6d
    .line 1788
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    #@70
    move-result-object v13

    #@71
    .line 1789
    const/16 v21, 0x0

    #@73
    .line 1809
    .local v21, "wasHovered":Z
    :goto_3
    if-eqz v16, :cond_7

    #@75
    .line 1810
    move-object/from16 v0, v16

    #@77
    iput-object v13, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@79
    .line 1814
    :goto_4
    move-object/from16 v16, v13

    #@7b
    .line 1817
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x9

    #@7d
    move/from16 v0, v24

    #@7f
    if-ne v4, v0, :cond_8

    #@81
    .line 1818
    if-nez v21, :cond_0

    #@83
    .line 1820
    move-object/from16 v0, p0

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@8a
    move-result v24

    #@8b
    or-int v12, v12, v24

    #@8d
    .line 1839
    :cond_0
    :goto_5
    if-eqz v12, :cond_a

    #@8f
    .line 1843
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_1
    if-eqz v20, :cond_2

    #@91
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    #@94
    .line 1848
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_2
    :goto_6
    if-eqz v11, :cond_d

    #@96
    .line 1849
    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@98
    .line 1852
    .restart local v5    # "child":Landroid/view/View;
    const/16 v24, 0xa

    #@9a
    move/from16 v0, v24

    #@9c
    if-ne v4, v0, :cond_b

    #@9e
    .line 1854
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, p1

    #@a2
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@a5
    move-result v24

    #@a6
    or-int v12, v12, v24

    #@a8
    .line 1870
    :goto_7
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@aa
    move-object/from16 v18, v0

    #@ac
    .line 1871
    .local v18, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    #@af
    .line 1872
    move-object/from16 v11, v18

    #@b1
    goto :goto_6

    #@b2
    .line 1768
    .end local v5    # "child":Landroid/view/View;
    .end local v18    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v8    # "childrenCount":I
    .restart local v12    # "handled":Z
    .restart local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_3
    const/4 v9, 0x0

    #@b3
    .local v9, "customOrder":Z
    goto :goto_0

    #@b4
    .line 1793
    .end local v9    # "customOrder":Z
    .end local v12    # "handled":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childIndex":I
    .restart local v7    # "children":[Landroid/view/View;
    .restart local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v14    # "i":I
    :cond_4
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@b6
    move-object/from16 v24, v0

    #@b8
    move-object/from16 v0, v24

    #@ba
    if-ne v0, v5, :cond_6

    #@bc
    .line 1794
    if-eqz v19, :cond_5

    #@be
    .line 1795
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@c0
    move-object/from16 v24, v0

    #@c2
    move-object/from16 v0, v24

    #@c4
    move-object/from16 v1, v19

    #@c6
    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@c8
    .line 1799
    :goto_8
    const/16 v24, 0x0

    #@ca
    move-object/from16 v0, v24

    #@cc
    iput-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@ce
    .line 1800
    const/16 v21, 0x1

    #@d0
    .line 1801
    .restart local v21    # "wasHovered":Z
    goto :goto_3

    #@d1
    .line 1797
    .end local v21    # "wasHovered":Z
    :cond_5
    iget-object v11, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@d3
    goto :goto_8

    #@d4
    .line 1804
    :cond_6
    move-object/from16 v19, v13

    #@d6
    .line 1805
    .local v19, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v13, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@d8
    goto :goto_2

    #@d9
    .line 1812
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v21    # "wasHovered":Z
    :cond_7
    move-object/from16 v0, p0

    #@db
    iput-object v13, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@dd
    goto :goto_4

    #@de
    .line 1823
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_8
    const/16 v24, 0x7

    #@e0
    move/from16 v0, v24

    #@e2
    if-ne v4, v0, :cond_0

    #@e4
    .line 1824
    if-nez v21, :cond_9

    #@e6
    .line 1826
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@e9
    move-result-object v10

    #@ea
    .line 1827
    const/16 v24, 0x9

    #@ec
    move/from16 v0, v24

    #@ee
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@f1
    .line 1828
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@f6
    move-result v24

    #@f7
    or-int v12, v12, v24

    #@f9
    .line 1830
    .local v12, "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@fc
    .line 1832
    move-object/from16 v0, p0

    #@fe
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@101
    move-result v24

    #@102
    or-int v12, v12, v24

    #@104
    goto :goto_5

    #@105
    .line 1836
    .end local v12    # "handled":Z
    :cond_9
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, p1

    #@109
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@10c
    move-result v24

    #@10d
    or-int v12, v12, v24

    #@10f
    .restart local v12    # "handled":Z
    goto/16 :goto_5

    #@111
    .line 1772
    .end local v12    # "handled":Z
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_a
    add-int/lit8 v14, v14, -0x1

    #@113
    goto/16 :goto_1

    #@115
    .line 1859
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_b
    const/16 v24, 0x7

    #@117
    move/from16 v0, v24

    #@119
    if-ne v4, v0, :cond_c

    #@11b
    .line 1860
    move-object/from16 v0, p0

    #@11d
    move-object/from16 v1, p1

    #@11f
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@122
    .line 1863
    :cond_c
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@125
    move-result-object v10

    #@126
    .line 1864
    const/16 v24, 0xa

    #@128
    move/from16 v0, v24

    #@12a
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@12d
    .line 1865
    move-object/from16 v0, p0

    #@12f
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@132
    .line 1867
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@135
    goto/16 :goto_7

    #@137
    .line 1876
    .end local v5    # "child":Landroid/view/View;
    :cond_d
    if-eqz v12, :cond_10

    #@139
    const/16 v17, 0x0

    #@13b
    .line 1877
    .local v17, "newHoveredSelf":Z
    :goto_9
    move-object/from16 v0, p0

    #@13d
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@13f
    move/from16 v24, v0

    #@141
    move/from16 v0, v17

    #@143
    move/from16 v1, v24

    #@145
    if-ne v0, v1, :cond_11

    #@147
    .line 1878
    if-eqz v17, :cond_e

    #@149
    .line 1880
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@14c
    move-result v24

    #@14d
    or-int v12, v12, v24

    #@14f
    .line 1922
    :cond_e
    :goto_a
    move-object/from16 v0, p1

    #@151
    if-eq v10, v0, :cond_f

    #@153
    .line 1923
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    #@156
    .line 1927
    :cond_f
    return v12

    #@157
    .line 1876
    .end local v17    # "newHoveredSelf":Z
    :cond_10
    const/16 v17, 0x1

    #@159
    .restart local v17    # "newHoveredSelf":Z
    goto :goto_9

    #@15a
    .line 1883
    :cond_11
    move-object/from16 v0, p0

    #@15c
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@15e
    move/from16 v24, v0

    #@160
    if-eqz v24, :cond_12

    #@162
    .line 1885
    const/16 v24, 0xa

    #@164
    move/from16 v0, v24

    #@166
    if-ne v4, v0, :cond_13

    #@168
    .line 1887
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@16b
    move-result v24

    #@16c
    or-int v12, v12, v24

    #@16e
    .line 1899
    :goto_b
    const/16 v24, 0x0

    #@170
    move/from16 v0, v24

    #@172
    move-object/from16 v1, p0

    #@174
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@176
    .line 1902
    :cond_12
    if-eqz v17, :cond_e

    #@178
    .line 1904
    const/16 v24, 0x9

    #@17a
    move/from16 v0, v24

    #@17c
    if-ne v4, v0, :cond_15

    #@17e
    .line 1906
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@181
    move-result v24

    #@182
    or-int v12, v12, v24

    #@184
    .line 1907
    .restart local v12    # "handled":Z
    const/16 v24, 0x1

    #@186
    move/from16 v0, v24

    #@188
    move-object/from16 v1, p0

    #@18a
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@18c
    goto :goto_a

    #@18d
    .line 1891
    .end local v12    # "handled":Z
    :cond_13
    const/16 v24, 0x7

    #@18f
    move/from16 v0, v24

    #@191
    if-ne v4, v0, :cond_14

    #@193
    .line 1892
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@196
    .line 1894
    :cond_14
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@199
    move-result-object v10

    #@19a
    .line 1895
    const/16 v24, 0xa

    #@19c
    move/from16 v0, v24

    #@19e
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@1a1
    .line 1896
    move-object/from16 v0, p0

    #@1a3
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1a6
    .line 1897
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@1a9
    goto :goto_b

    #@1aa
    .line 1908
    :cond_15
    const/16 v24, 0x7

    #@1ac
    move/from16 v0, v24

    #@1ae
    if-ne v4, v0, :cond_e

    #@1b0
    .line 1910
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1b3
    move-result-object v10

    #@1b4
    .line 1911
    const/16 v24, 0x9

    #@1b6
    move/from16 v0, v24

    #@1b8
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@1bb
    .line 1912
    move-object/from16 v0, p0

    #@1bd
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1c0
    move-result v24

    #@1c1
    or-int v12, v12, v24

    #@1c3
    .line 1913
    .restart local v12    # "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@1c6
    .line 1915
    move-object/from16 v0, p0

    #@1c8
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1cb
    move-result v24

    #@1cc
    or-int v12, v12, v24

    #@1ce
    .line 1916
    const/16 v24, 0x1

    #@1d0
    move/from16 v0, v24

    #@1d2
    move-object/from16 v1, p0

    #@1d4
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@1d6
    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1619
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1620
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@a
    .line 1623
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@c
    and-int/lit8 v0, v0, 0x12

    #@e
    .line 1624
    const/16 v1, 0x12

    #@10
    .line 1623
    if-ne v0, v1, :cond_1

    #@12
    .line 1625
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1626
    return v2

    #@19
    .line 1628
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1f
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@21
    and-int/lit8 v0, v0, 0x10

    #@23
    .line 1629
    const/16 v1, 0x10

    #@25
    .line 1628
    if-ne v0, v1, :cond_2

    #@27
    .line 1630
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@29
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 1631
    return v2

    #@30
    .line 1635
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 1636
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@36
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@39
    .line 1638
    :cond_3
    const/4 v0, 0x0

    #@3a
    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1607
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 1608
    const/16 v1, 0x12

    #@6
    .line 1607
    if-ne v0, v1, :cond_0

    #@8
    .line 1609
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1610
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@13
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    .line 1611
    const/16 v1, 0x10

    #@19
    .line 1610
    if-ne v0, v1, :cond_1

    #@1b
    .line 1612
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1614
    :cond_1
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1643
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 1644
    const/16 v1, 0x12

    #@6
    .line 1643
    if-ne v0, v1, :cond_0

    #@8
    .line 1645
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1646
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@13
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    .line 1647
    const/16 v1, 0x10

    #@19
    .line 1646
    if-ne v0, v1, :cond_1

    #@1b
    .line 1648
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1650
    :cond_1
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2948
    const/4 v3, 0x0

    #@2
    .line 2949
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 2950
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@b
    move-result v3

    #@c
    .line 2951
    .local v3, "handled":Z
    if-eqz v3, :cond_0

    #@e
    .line 2952
    return v3

    #@f
    .line 2956
    .end local v3    # "handled":Z
    :cond_0
    const/4 v5, 0x1

    #@10
    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    #@13
    move-result-object v2

    #@14
    .line 2958
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    #@17
    move-result v1

    #@18
    .line 2959
    .local v1, "childCount":I
    const/4 v4, 0x0

    #@19
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@1b
    .line 2960
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    .line 2961
    .local v0, "child":Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    #@21
    and-int/lit8 v5, v5, 0xc

    #@23
    if-nez v5, :cond_1

    #@25
    .line 2962
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    .line 2963
    .restart local v3    # "handled":Z
    if-eqz v3, :cond_1

    #@2b
    .line 2969
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@2e
    .line 2964
    return v3

    #@2f
    .line 2959
    .end local v3    # "handled":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2969
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@35
    .line 2971
    return v6

    #@36
    .line 2968
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    #@37
    .line 2969
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@3a
    .line 2968
    throw v5
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 17
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 2981
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    #@3
    .line 2982
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    #@6
    move-result v14

    #@7
    if-nez v14, :cond_7

    #@9
    .line 2983
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    #@c
    move-result v14

    #@d
    if-nez v14, :cond_7

    #@f
    .line 2984
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v4

    #@13
    .line 2985
    .local v4, "childrenCount":I
    if-lez v4, :cond_7

    #@15
    .line 2986
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setChildCount(I)V

    #@1a
    .line 2987
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@1d
    move-result-object v12

    #@1e
    .line 2988
    .local v12, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v12, :cond_1

    #@20
    .line 2989
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@23
    move-result v6

    #@24
    .line 2990
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@28
    .line 2991
    .local v3, "children":[Landroid/view/View;
    const/4 v8, 0x0

    #@29
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    #@2b
    .line 2994
    :try_start_0
    move-object/from16 v0, p0

    #@2d
    invoke-direct {v0, v4, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result v2

    #@31
    .line 3040
    .local v2, "childIndex":I
    :cond_0
    invoke-static {v12, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@34
    move-result-object v1

    #@35
    .line 3042
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p1

    #@37
    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    #@3a
    move-result-object v5

    #@3b
    .line 3043
    .local v5, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    #@3e
    .line 2991
    add-int/lit8 v8, v8, 0x1

    #@40
    goto :goto_1

    #@41
    .line 2988
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v5    # "cstructure":Landroid/view/ViewStructure;
    .end local v8    # "i":I
    :cond_1
    const/4 v6, 0x0

    #@42
    .local v6, "customOrder":Z
    goto :goto_0

    #@43
    .line 2995
    .end local v6    # "customOrder":Z
    .restart local v3    # "children":[Landroid/view/View;
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    #@44
    .line 2996
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v8

    #@45
    .line 2997
    .restart local v2    # "childIndex":I
    move-object/from16 v0, p0

    #@47
    iget-object v14, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@49
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@4c
    move-result-object v14

    #@4d
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4f
    .line 2998
    const/16 v15, 0x17

    #@51
    .line 2997
    if-ge v14, v15, :cond_5

    #@53
    .line 2999
    const-string/jumbo v14, "ViewGroup"

    #@56
    new-instance v15, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v16, "Bad getChildDrawingOrder while collecting assist @ "

    #@5e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v15

    #@62
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    .line 3000
    const-string/jumbo v16, " of "

    #@69
    .line 2999
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v15

    #@6d
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v15

    #@71
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v15

    #@75
    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@78
    .line 3004
    const/4 v6, 0x0

    #@79
    .line 3005
    .restart local v6    # "customOrder":Z
    if-lez v8, :cond_0

    #@7b
    .line 3012
    new-array v11, v4, [I

    #@7d
    .line 3013
    .local v11, "permutation":[I
    new-instance v13, Landroid/util/SparseBooleanArray;

    #@7f
    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    #@82
    .line 3015
    .local v13, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x0

    #@83
    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_2

    #@85
    .line 3016
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@8a
    move-result v14

    #@8b
    aput v14, v11, v9

    #@8d
    .line 3017
    aget v14, v11, v9

    #@8f
    const/4 v15, 0x1

    #@90
    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@93
    .line 3015
    add-int/lit8 v9, v9, 0x1

    #@95
    goto :goto_2

    #@96
    .line 3021
    :cond_2
    const/4 v10, 0x0

    #@97
    .line 3022
    .local v10, "nextIndex":I
    move v9, v8

    #@98
    :goto_3
    if-ge v9, v4, :cond_4

    #@9a
    .line 3023
    :goto_4
    const/4 v14, 0x0

    #@9b
    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@9e
    move-result v14

    #@9f
    if-eqz v14, :cond_3

    #@a1
    .line 3024
    add-int/lit8 v10, v10, 0x1

    #@a3
    goto :goto_4

    #@a4
    .line 3026
    :cond_3
    aput v10, v11, v9

    #@a6
    .line 3027
    add-int/lit8 v10, v10, 0x1

    #@a8
    .line 3022
    add-int/lit8 v9, v9, 0x1

    #@aa
    goto :goto_3

    #@ab
    .line 3030
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    #@ad
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@b0
    .line 3031
    .restart local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    #@b1
    :goto_5
    if-ge v9, v4, :cond_0

    #@b3
    .line 3032
    aget v14, v11, v9

    #@b5
    aget-object v14, v3, v14

    #@b7
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ba
    .line 3031
    add-int/lit8 v9, v9, 0x1

    #@bc
    goto :goto_5

    #@bd
    .line 3036
    .end local v6    # "customOrder":Z
    .end local v9    # "j":I
    .end local v10    # "nextIndex":I
    .end local v11    # "permutation":[I
    .end local v13    # "usedIndices":Landroid/util/SparseBooleanArray;
    :cond_5
    throw v7

    #@be
    .line 3045
    .end local v2    # "childIndex":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    if-eqz v12, :cond_7

    #@c0
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    #@c3
    .line 2980
    .end local v3    # "children":[Landroid/view/View;
    .end local v4    # "childrenCount":I
    .end local v8    # "i":I
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    #@2
    .line 3231
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@5
    .line 3232
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3233
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3234
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@c
    .line 3235
    aget-object v0, v1, v3

    #@e
    .line 3236
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@10
    and-int/2addr v4, v5

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 3237
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@16
    .line 3234
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 3230
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    #@2
    .line 3206
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@5
    .line 3207
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3208
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3209
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@c
    .line 3210
    aget-object v0, v1, v3

    #@e
    .line 3211
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@10
    and-int/2addr v4, v5

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 3212
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@16
    .line 3209
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 3205
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 2936
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    #@3
    .line 2938
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2939
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2940
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2941
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    #@f
    .line 2940
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2935
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 3826
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3827
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3828
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 3829
    aget-object v3, v0, v2

    #@9
    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    #@c
    .line 3828
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3825
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    #@0
    .prologue
    .line 3835
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3836
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3837
    .local v2, "count":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@7
    .line 3838
    aget-object v0, v1, v3

    #@9
    .line 3842
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 3837
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3843
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    #@1d
    goto :goto_1

    #@1e
    .line 3834
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 3817
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3818
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3819
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 3820
    aget-object v3, v0, v2

    #@9
    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    #@c
    .line 3819
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3816
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    #@0
    .prologue
    .line 2890
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@3
    .line 2891
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2892
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2893
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2894
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@f
    .line 2893
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2889
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 1582
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@3
    .line 1584
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1585
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1586
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@a
    .line 1587
    aget-object v0, v1, v3

    #@c
    .line 1588
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@f
    .line 1586
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1581
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3251
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@3
    .line 3250
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2145
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@4
    move-object/from16 v31, v0

    #@6
    if-eqz v31, :cond_0

    #@8
    .line 2146
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@c
    move-object/from16 v31, v0

    #@e
    const/16 v32, 0x1

    #@10
    move-object/from16 v0, v31

    #@12
    move-object/from16 v1, p1

    #@14
    move/from16 v2, v32

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    #@19
    .line 2151
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    #@1c
    move-result v31

    #@1d
    if-eqz v31, :cond_1

    #@1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    #@22
    move-result v31

    #@23
    if-eqz v31, :cond_1

    #@25
    .line 2152
    const/16 v31, 0x0

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v31

    #@2b
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@2e
    .line 2155
    :cond_1
    const/16 v17, 0x0

    #@30
    .line 2156
    .local v17, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    #@33
    move-result v31

    #@34
    if-eqz v31, :cond_9

    #@36
    .line 2157
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@39
    move-result v4

    #@3a
    .line 2158
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    #@3c
    .line 2161
    .local v6, "actionMasked":I
    if-nez v6, :cond_2

    #@3e
    .line 2165
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    #@41
    .line 2166
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    #@44
    .line 2171
    :cond_2
    if-eqz v6, :cond_3

    #@46
    .line 2172
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@4a
    move-object/from16 v31, v0

    #@4c
    if-eqz v31, :cond_d

    #@4e
    .line 2173
    :cond_3
    move-object/from16 v0, p0

    #@50
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@52
    move/from16 v31, v0

    #@54
    const/high16 v32, 0x80000

    #@56
    and-int v31, v31, v32

    #@58
    if-eqz v31, :cond_b

    #@5a
    const/16 v16, 0x1

    #@5c
    .line 2174
    .local v16, "disallowIntercept":Z
    :goto_0
    if-nez v16, :cond_c

    #@5e
    .line 2175
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@61
    move-result v21

    #@62
    .line 2176
    .local v21, "intercepted":Z
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@67
    .line 2188
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :goto_1
    if-nez v21, :cond_4

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@6d
    move-object/from16 v31, v0

    #@6f
    if-eqz v31, :cond_5

    #@71
    .line 2189
    :cond_4
    const/16 v31, 0x0

    #@73
    move-object/from16 v0, p1

    #@75
    move/from16 v1, v31

    #@77
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@7a
    .line 2193
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@7d
    move-result v31

    #@7e
    if-nez v31, :cond_e

    #@80
    .line 2194
    const/16 v31, 0x3

    #@82
    move/from16 v0, v31

    #@84
    if-ne v6, v0, :cond_f

    #@86
    const/4 v9, 0x1

    #@87
    .line 2197
    .local v9, "canceled":Z
    :goto_2
    move-object/from16 v0, p0

    #@89
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8b
    move/from16 v31, v0

    #@8d
    const/high16 v32, 0x200000

    #@8f
    and-int v31, v31, v32

    #@91
    if-eqz v31, :cond_10

    #@93
    const/16 v27, 0x1

    #@95
    .line 2198
    .local v27, "split":Z
    :goto_3
    const/16 v23, 0x0

    #@97
    .line 2199
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    #@98
    .line 2200
    .local v7, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v9, :cond_6

    #@9a
    if-eqz v21, :cond_11

    #@9c
    .line 2305
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@a0
    move-object/from16 v31, v0

    #@a2
    if-nez v31, :cond_22

    #@a4
    .line 2307
    const/16 v31, 0x0

    #@a6
    .line 2308
    const/16 v32, -0x1

    #@a8
    .line 2307
    move-object/from16 v0, p0

    #@aa
    move-object/from16 v1, p1

    #@ac
    move-object/from16 v2, v31

    #@ae
    move/from16 v3, v32

    #@b0
    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@b3
    move-result v17

    #@b4
    .line 2342
    .end local v17    # "handled":Z
    :cond_7
    if-nez v9, :cond_8

    #@b6
    .line 2343
    const/16 v31, 0x1

    #@b8
    move/from16 v0, v31

    #@ba
    if-ne v6, v0, :cond_28

    #@bc
    .line 2345
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    #@bf
    .line 2353
    .end local v4    # "action":I
    .end local v6    # "actionMasked":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v27    # "split":Z
    :cond_9
    :goto_5
    if-nez v17, :cond_a

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@c5
    move-object/from16 v31, v0

    #@c7
    if-eqz v31, :cond_a

    #@c9
    .line 2354
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@cd
    move-object/from16 v31, v0

    #@cf
    const/16 v32, 0x1

    #@d1
    move-object/from16 v0, v31

    #@d3
    move-object/from16 v1, p1

    #@d5
    move/from16 v2, v32

    #@d7
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@da
    .line 2356
    :cond_a
    return v17

    #@db
    .line 2173
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v17    # "handled":Z
    :cond_b
    const/16 v16, 0x0

    #@dd
    goto/16 :goto_0

    #@df
    .line 2178
    .restart local v16    # "disallowIntercept":Z
    :cond_c
    const/16 v21, 0x0

    #@e1
    .local v21, "intercepted":Z
    goto :goto_1

    #@e2
    .line 2183
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :cond_d
    const/16 v21, 0x1

    #@e4
    .restart local v21    # "intercepted":Z
    goto :goto_1

    #@e5
    .line 2193
    .end local v21    # "intercepted":Z
    :cond_e
    const/4 v9, 0x1

    #@e6
    .restart local v9    # "canceled":Z
    goto :goto_2

    #@e7
    .line 2194
    .end local v9    # "canceled":Z
    :cond_f
    const/4 v9, 0x0

    #@e8
    .restart local v9    # "canceled":Z
    goto :goto_2

    #@e9
    .line 2197
    :cond_10
    const/16 v27, 0x0

    #@eb
    .restart local v27    # "split":Z
    goto :goto_3

    #@ec
    .line 2207
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    #@ef
    move-result v31

    #@f0
    if-eqz v31, :cond_13

    #@f2
    .line 2208
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    #@f5
    move-result-object v12

    #@f6
    .line 2210
    :goto_6
    if-eqz v6, :cond_12

    #@f8
    .line 2211
    if-eqz v27, :cond_14

    #@fa
    const/16 v31, 0x5

    #@fc
    move/from16 v0, v31

    #@fe
    if-ne v6, v0, :cond_14

    #@100
    .line 2213
    :cond_12
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@103
    move-result v5

    #@104
    .line 2214
    .local v5, "actionIndex":I
    if-eqz v27, :cond_15

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@10b
    move-result v31

    #@10c
    const/16 v32, 0x1

    #@10e
    shl-int v19, v32, v31

    #@110
    .line 2219
    .local v19, "idBitsToAssign":I
    :goto_8
    move-object/from16 v0, p0

    #@112
    move/from16 v1, v19

    #@114
    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    #@117
    .line 2221
    move-object/from16 v0, p0

    #@119
    iget v14, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@11b
    .line 2222
    .local v14, "childrenCount":I
    if-eqz v14, :cond_1a

    #@11d
    .line 2223
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@122
    move-result v29

    #@123
    .line 2224
    .local v29, "x":F
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@128
    move-result v30

    #@129
    .line 2227
    .local v30, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    #@12c
    move-result-object v26

    #@12d
    .line 2228
    .local v26, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v26, :cond_16

    #@12f
    .line 2229
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@132
    move-result v15

    #@133
    .line 2230
    :goto_9
    move-object/from16 v0, p0

    #@135
    iget-object v13, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@137
    .line 2231
    .local v13, "children":[Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    #@139
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v18, "i":I
    :goto_a
    if-ltz v18, :cond_19

    #@13b
    .line 2232
    move-object/from16 v0, p0

    #@13d
    move/from16 v1, v18

    #@13f
    invoke-direct {v0, v14, v1, v15}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@142
    move-result v11

    #@143
    .line 2234
    .local v11, "childIndex":I
    move-object/from16 v0, v26

    #@145
    invoke-static {v0, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@148
    move-result-object v10

    #@149
    .line 2241
    .local v10, "child":Landroid/view/View;
    if-eqz v12, :cond_18

    #@14b
    .line 2242
    if-eq v12, v10, :cond_17

    #@14d
    .line 2231
    :goto_b
    add-int/lit8 v18, v18, -0x1

    #@14f
    goto :goto_a

    #@150
    .line 2208
    .end local v5    # "actionIndex":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v18    # "i":I
    .end local v19    # "idBitsToAssign":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_13
    const/4 v12, 0x0

    #@151
    .local v12, "childWithAccessibilityFocus":Landroid/view/View;
    goto :goto_6

    #@152
    .line 2212
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_14
    const/16 v31, 0x7

    #@154
    move/from16 v0, v31

    #@156
    if-ne v6, v0, :cond_6

    #@158
    goto :goto_7

    #@159
    .line 2215
    .restart local v5    # "actionIndex":I
    :cond_15
    const/16 v19, -0x1

    #@15b
    goto :goto_8

    #@15c
    .line 2228
    .restart local v14    # "childrenCount":I
    .restart local v19    # "idBitsToAssign":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_16
    const/4 v15, 0x0

    #@15d
    .local v15, "customOrder":Z
    goto :goto_9

    #@15e
    .line 2245
    .end local v15    # "customOrder":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    :cond_17
    const/4 v12, 0x0

    #@15f
    .line 2246
    .restart local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    #@161
    .line 2249
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_18
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@164
    move-result v31

    #@165
    if-eqz v31, :cond_1b

    #@167
    .line 2250
    const/16 v31, 0x0

    #@169
    move-object/from16 v0, p0

    #@16b
    move/from16 v1, v29

    #@16d
    move/from16 v2, v30

    #@16f
    move-object/from16 v3, v31

    #@171
    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@174
    move-result v31

    #@175
    if-eqz v31, :cond_1b

    #@177
    .line 2255
    move-object/from16 v0, p0

    #@179
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    #@17c
    move-result-object v23

    #@17d
    .line 2256
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v23, :cond_1c

    #@17f
    .line 2259
    move-object/from16 v0, v23

    #@181
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@183
    move/from16 v31, v0

    #@185
    or-int v31, v31, v19

    #@187
    move/from16 v0, v31

    #@189
    move-object/from16 v1, v23

    #@18b
    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@18d
    .line 2289
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_19
    :goto_c
    if-eqz v26, :cond_1a

    #@18f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    #@192
    .line 2292
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_1a
    if-nez v23, :cond_6

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@198
    move-object/from16 v31, v0

    #@19a
    if-eqz v31, :cond_6

    #@19c
    .line 2295
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1a0
    move-object/from16 v23, v0

    #@1a2
    .line 2296
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_d
    move-object/from16 v0, v23

    #@1a4
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@1a6
    move-object/from16 v31, v0

    #@1a8
    if-eqz v31, :cond_21

    #@1aa
    .line 2297
    move-object/from16 v0, v23

    #@1ac
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@1ae
    move-object/from16 v23, v0

    #@1b0
    goto :goto_d

    #@1b1
    .line 2251
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_1b
    const/16 v31, 0x0

    #@1b3
    move-object/from16 v0, p1

    #@1b5
    move/from16 v1, v31

    #@1b7
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@1ba
    goto :goto_b

    #@1bb
    .line 2263
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1c
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@1be
    .line 2264
    const/16 v31, 0x0

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move-object/from16 v1, p1

    #@1c4
    move/from16 v2, v31

    #@1c6
    move/from16 v3, v19

    #@1c8
    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@1cb
    move-result v31

    #@1cc
    if-eqz v31, :cond_20

    #@1ce
    .line 2266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@1d1
    move-result-wide v32

    #@1d2
    move-wide/from16 v0, v32

    #@1d4
    move-object/from16 v2, p0

    #@1d6
    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    #@1d8
    .line 2267
    if-eqz v26, :cond_1f

    #@1da
    .line 2269
    const/16 v22, 0x0

    #@1dc
    .local v22, "j":I
    :goto_e
    move/from16 v0, v22

    #@1de
    if-ge v0, v14, :cond_1d

    #@1e0
    .line 2270
    aget-object v31, v13, v11

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1e6
    move-object/from16 v32, v0

    #@1e8
    aget-object v32, v32, v22

    #@1ea
    move-object/from16 v0, v31

    #@1ec
    move-object/from16 v1, v32

    #@1ee
    if-ne v0, v1, :cond_1e

    #@1f0
    .line 2271
    move/from16 v0, v22

    #@1f2
    move-object/from16 v1, p0

    #@1f4
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@1f6
    .line 2278
    .end local v22    # "j":I
    :cond_1d
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@1f9
    move-result v31

    #@1fa
    move/from16 v0, v31

    #@1fc
    move-object/from16 v1, p0

    #@1fe
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    #@200
    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@203
    move-result v31

    #@204
    move/from16 v0, v31

    #@206
    move-object/from16 v1, p0

    #@208
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    #@20a
    .line 2280
    move-object/from16 v0, p0

    #@20c
    move/from16 v1, v19

    #@20e
    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    #@211
    move-result-object v23

    #@212
    .line 2281
    const/4 v7, 0x1

    #@213
    .line 2282
    goto/16 :goto_c

    #@215
    .line 2269
    .restart local v22    # "j":I
    :cond_1e
    add-int/lit8 v22, v22, 0x1

    #@217
    goto :goto_e

    #@218
    .line 2276
    .end local v22    # "j":I
    :cond_1f
    move-object/from16 v0, p0

    #@21a
    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@21c
    goto :goto_f

    #@21d
    .line 2287
    :cond_20
    const/16 v31, 0x0

    #@21f
    move-object/from16 v0, p1

    #@221
    move/from16 v1, v31

    #@223
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@226
    goto/16 :goto_b

    #@228
    .line 2299
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_21
    move-object/from16 v0, v23

    #@22a
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@22c
    move/from16 v31, v0

    #@22e
    or-int v31, v31, v19

    #@230
    move/from16 v0, v31

    #@232
    move-object/from16 v1, v23

    #@234
    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@236
    goto/16 :goto_4

    #@238
    .line 2312
    .end local v5    # "actionIndex":I
    .end local v14    # "childrenCount":I
    .end local v19    # "idBitsToAssign":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_22
    const/16 v25, 0x0

    #@23a
    .line 2313
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@23e
    move-object/from16 v28, v0

    #@240
    .line 2314
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v28, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_10
    if-eqz v28, :cond_7

    #@242
    .line 2315
    move-object/from16 v0, v28

    #@244
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@246
    move-object/from16 v24, v0

    #@248
    .line 2316
    .local v24, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_24

    #@24a
    move-object/from16 v0, v28

    #@24c
    move-object/from16 v1, v23

    #@24e
    if-ne v0, v1, :cond_24

    #@250
    .line 2317
    const/16 v17, 0x1

    #@252
    .line 2336
    :cond_23
    move-object/from16 v25, v28

    #@254
    .line 2337
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v28, v24

    #@256
    goto :goto_10

    #@257
    .line 2319
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_24
    move-object/from16 v0, v28

    #@259
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@25b
    move-object/from16 v31, v0

    #@25d
    invoke-static/range {v31 .. v31}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@260
    move-result v31

    #@261
    if-nez v31, :cond_26

    #@263
    .line 2320
    move/from16 v8, v21

    #@265
    .line 2322
    :goto_11
    move-object/from16 v0, v28

    #@267
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@269
    move-object/from16 v31, v0

    #@26b
    move-object/from16 v0, v28

    #@26d
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@26f
    move/from16 v32, v0

    #@271
    .line 2321
    move-object/from16 v0, p0

    #@273
    move-object/from16 v1, p1

    #@275
    move-object/from16 v2, v31

    #@277
    move/from16 v3, v32

    #@279
    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@27c
    move-result v31

    #@27d
    if-eqz v31, :cond_25

    #@27f
    .line 2323
    const/16 v17, 0x1

    #@281
    .line 2325
    :cond_25
    if-eqz v8, :cond_23

    #@283
    .line 2326
    if-nez v25, :cond_27

    #@285
    .line 2327
    move-object/from16 v0, v24

    #@287
    move-object/from16 v1, p0

    #@289
    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@28b
    .line 2331
    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@28e
    .line 2332
    move-object/from16 v28, v24

    #@290
    .line 2333
    goto :goto_10

    #@291
    .line 2319
    :cond_26
    const/4 v8, 0x1

    #@292
    .local v8, "cancelChild":Z
    goto :goto_11

    #@293
    .line 2329
    .end local v8    # "cancelChild":Z
    :cond_27
    move-object/from16 v0, v24

    #@295
    move-object/from16 v1, v25

    #@297
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@299
    goto :goto_12

    #@29a
    .line 2344
    .end local v17    # "handled":Z
    .end local v24    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_28
    const/16 v31, 0x7

    #@29c
    move/from16 v0, v31

    #@29e
    if-eq v6, v0, :cond_8

    #@2a0
    .line 2346
    if-eqz v27, :cond_9

    #@2a2
    const/16 v31, 0x6

    #@2a4
    move/from16 v0, v31

    #@2a6
    if-ne v6, v0, :cond_9

    #@2a8
    .line 2347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@2ab
    move-result v5

    #@2ac
    .line 2348
    .restart local v5    # "actionIndex":I
    move-object/from16 v0, p1

    #@2ae
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2b1
    move-result v31

    #@2b2
    const/16 v32, 0x1

    #@2b4
    shl-int v20, v32, v31

    #@2b6
    .line 2349
    .local v20, "idBitsToRemove":I
    move-object/from16 v0, p0

    #@2b8
    move/from16 v1, v20

    #@2ba
    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    #@2bd
    goto/16 :goto_5
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1655
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1656
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    #@a
    .line 1659
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@c
    and-int/lit8 v0, v0, 0x12

    #@e
    .line 1660
    const/16 v1, 0x12

    #@10
    .line 1659
    if-ne v0, v1, :cond_1

    #@12
    .line 1661
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1662
    return v2

    #@19
    .line 1664
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1f
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@21
    and-int/lit8 v0, v0, 0x10

    #@23
    .line 1665
    const/16 v1, 0x10

    #@25
    .line 1664
    if-ne v0, v1, :cond_2

    #@27
    .line 1666
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@29
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 1667
    return v2

    #@30
    .line 1671
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 1672
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@36
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@39
    .line 1674
    :cond_3
    const/4 v0, 0x0

    #@3a
    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 960
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 961
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    #@9
    move-result v0

    #@a
    .line 960
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4310
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 4311
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4312
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@9
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    #@c
    .line 4309
    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4326
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 4327
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4328
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@9
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    #@c
    .line 4325
    :cond_0
    return-void
.end method

.method dispatchVisibilityAggregated(Z)Z
    .locals 4
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 1296
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    #@3
    move-result p1

    #@4
    .line 1297
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@6
    .line 1298
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@8
    .line 1299
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@b
    .line 1303
    aget-object v3, v0, v2

    #@d
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_0

    #@13
    .line 1304
    aget-object v3, v0, v2

    #@15
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    #@18
    .line 1299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1307
    :cond_1
    return p1
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 1276
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 1277
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1278
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1279
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1280
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    #@f
    .line 1279
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1275
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 1193
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@3
    .line 1194
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1195
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1196
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1197
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@f
    .line 1196
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1192
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@3
    .line 1572
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1573
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1574
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@a
    .line 1575
    aget-object v0, v1, v3

    #@c
    .line 1576
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@f
    .line 1574
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1569
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1286
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@3
    .line 1287
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1288
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1289
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1290
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@f
    .line 1289
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1285
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 3727
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    #@0
    .prologue
    .line 6435
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 6437
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    const/high16 v5, 0x10000

    #@7
    and-int/2addr v4, v5

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 6438
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    and-int/lit16 v4, v4, 0x2000

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 6439
    new-instance v4, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 6443
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1b
    .line 6444
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1d
    .line 6446
    .local v2, "count":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@20
    .line 6447
    aget-object v0, v1, v3

    #@22
    .line 6448
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@24
    const/high16 v5, 0x400000

    #@26
    and-int/2addr v4, v5

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 6449
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    #@2c
    .line 6446
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 6434
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 7936
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 7938
    const-string/jumbo v2, "focus:descendantFocusability"

    #@6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 7939
    const-string/jumbo v2, "drawing:clipChildren"

    #@10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    #@13
    move-result v3

    #@14
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@17
    .line 7940
    const-string/jumbo v2, "drawing:clipToPadding"

    #@1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    #@1d
    move-result v3

    #@1e
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@21
    .line 7941
    const-string/jumbo v2, "drawing:childrenDrawingOrderEnabled"

    #@24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@27
    move-result v3

    #@28
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@2b
    .line 7942
    const-string/jumbo v2, "drawing:persistentDrawingCache"

    #@2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    #@31
    move-result v3

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@35
    .line 7944
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@38
    move-result v1

    #@39
    .line 7945
    .local v1, "n":I
    const-string/jumbo v2, "meta:__childCount__"

    #@3c
    int-to-short v3, v1

    #@3d
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    #@40
    .line 7946
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@43
    .line 7947
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "meta:__child__"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    #@5a
    .line 7948
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    #@61
    .line 7946
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 7935
    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6287
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 6288
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 6289
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@c
    .line 6290
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 6291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 6292
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 6293
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 6292
    if-eqz v1, :cond_2

    #@23
    .line 6294
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@28
    .line 6303
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@2b
    .line 6286
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    #@2c
    .line 6296
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 6297
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@33
    .line 6299
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 6300
    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@39
    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1047
    return-object p0

    #@8
    .line 1050
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1051
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 1053
    :cond_1
    return-object v1
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 1522
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 1523
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 1524
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    #@6
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@8
    .line 1525
    aget-object v0, v1, v3

    #@a
    .line 1526
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1524
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@12
    goto :goto_0

    #@13
    .line 1530
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1531
    return-object v0

    #@1a
    .line 1534
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    #@1b
    return-object v4
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 6875
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    #@8
    if-nez v3, :cond_0

    #@a
    .line 6876
    return-void

    #@b
    .line 6878
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@e
    .line 6879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@11
    move-result v1

    #@12
    .line 6880
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@15
    .line 6881
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 6882
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@1c
    .line 6880
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 6874
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 7
    .param p1, "accessibilityId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1169
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    #@4
    move-result-object v3

    #@5
    .line 1170
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_0

    #@7
    .line 1171
    return-object v3

    #@8
    .line 1174
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@b
    move-result-object v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1175
    return-object v6

    #@f
    .line 1178
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@11
    .line 1179
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@13
    .line 1180
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@14
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@16
    .line 1181
    aget-object v0, v1, v4

    #@18
    .line 1182
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    #@1b
    move-result-object v3

    #@1c
    .line 1183
    if-eqz v3, :cond_2

    #@1e
    .line 1184
    return-object v3

    #@1f
    .line 1180
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1188
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-object v6
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v5, 0x0

    #@1
    .line 3997
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 3998
    return-object p0

    #@8
    .line 4001
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@a
    .line 4002
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@c
    .line 4004
    .local v1, "len":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 4005
    aget-object v2, v3, v0

    #@11
    .line 4007
    .local v2, "v":Landroid/view/View;
    if-eq v2, p2, :cond_1

    #@13
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@15
    and-int/lit8 v4, v4, 0x8

    #@17
    if-nez v4, :cond_1

    #@19
    .line 4008
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    .line 4010
    if-eqz v2, :cond_1

    #@1f
    .line 4011
    return-object v2

    #@20
    .line 4004
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 4016
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3943
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    #@3
    if-ne p1, v4, :cond_0

    #@5
    .line 3944
    return-object p0

    #@6
    .line 3947
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@8
    .line 3948
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@a
    .line 3950
    .local v1, "len":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@d
    .line 3951
    aget-object v2, v3, v0

    #@f
    .line 3953
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@11
    and-int/lit8 v4, v4, 0x8

    #@13
    if-nez v4, :cond_1

    #@15
    .line 3954
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    .line 3956
    if-eqz v2, :cond_1

    #@1b
    .line 3957
    return-object v2

    #@1c
    .line 3950
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3962
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3970
    if-eqz p1, :cond_0

    #@3
    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 3971
    return-object p0

    #@c
    .line 3974
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@e
    .line 3975
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@10
    .line 3977
    .local v1, "len":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 3978
    aget-object v2, v3, v0

    #@15
    .line 3980
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@17
    and-int/lit8 v4, v4, 0x8

    #@19
    if-nez v4, :cond_1

    #@1b
    .line 3981
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 3983
    if-eqz v2, :cond_1

    #@21
    .line 3984
    return-object v2

    #@22
    .line 3977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3989
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1154
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@3
    .line 1155
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1156
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1157
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 1158
    aget-object v0, v1, v3

    #@c
    .line 1159
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@e
    and-int/lit8 v4, v4, 0xc

    #@10
    if-nez v4, :cond_0

    #@12
    .line 1160
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    #@14
    and-int/lit8 v4, v4, 0x8

    #@16
    if-nez v4, :cond_0

    #@18
    .line 1161
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@1b
    .line 1157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1153
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/high16 v2, 0x10000

    #@2
    .line 6218
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@4
    .line 6219
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    #@6
    .line 6220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 6221
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    .line 6223
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 6224
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@16
    .line 6227
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@19
    .line 6228
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1b
    or-int/lit8 v1, v1, 0x4

    #@1d
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    .line 6232
    :cond_1
    if-eqz p2, :cond_2

    #@21
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_4

    #@27
    .line 6236
    :cond_2
    :goto_0
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@29
    and-int/2addr v1, v2

    #@2a
    if-ne v1, v2, :cond_3

    #@2c
    .line 6237
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    #@2f
    .line 6240
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@31
    const v2, -0x10001

    #@34
    and-int/2addr v1, v2

    #@35
    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@37
    .line 6242
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@39
    or-int/lit8 v1, v1, 0x4

    #@3b
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3d
    .line 6217
    :cond_3
    return-void

    #@3e
    .line 6233
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@41
    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 866
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 870
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 871
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@16
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 874
    :cond_1
    return-object v1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 750
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@7
    move-result v0

    #@8
    const/high16 v1, 0x60000

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 746
    :cond_0
    :goto_0
    return-void

    #@19
    .line 759
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@22
    move-result v0

    #@23
    const/high16 v1, 0x40000

    #@25
    if-ne v0, v1, :cond_0

    #@27
    .line 760
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@29
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    #@2c
    goto :goto_0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 6366
    iget v10, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@4
    and-int/lit16 v10, v10, 0x200

    #@6
    if-nez v10, :cond_0

    #@8
    move v6, v9

    #@9
    .line 6367
    .local v6, "meOpaque":Z
    :cond_0
    if-eqz v6, :cond_1

    #@b
    if-nez p1, :cond_1

    #@d
    .line 6369
    return v9

    #@e
    .line 6371
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@11
    .line 6377
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@13
    .line 6378
    .local v3, "childrenCount":I
    const/4 v7, 0x1

    #@14
    .line 6379
    .local v7, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_6

    #@16
    .line 6380
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@19
    move-result-object v8

    #@1a
    .line 6381
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_4

    #@1c
    .line 6382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@1f
    move-result v4

    #@20
    .line 6383
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@22
    .line 6384
    .local v2, "children":[Landroid/view/View;
    const/4 v5, 0x0

    #@23
    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    #@25
    .line 6385
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@28
    move-result v1

    #@29
    .line 6386
    .local v1, "childIndex":I
    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 6387
    .local v0, "child":Landroid/view/View;
    iget v10, v0, Landroid/view/View;->mViewFlags:I

    #@2f
    and-int/lit8 v10, v10, 0xc

    #@31
    if-eqz v10, :cond_2

    #@33
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@36
    move-result-object v10

    #@37
    if-eqz v10, :cond_3

    #@39
    .line 6388
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@3c
    move-result v10

    #@3d
    if-nez v10, :cond_3

    #@3f
    .line 6389
    const/4 v7, 0x0

    #@40
    .line 6384
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@42
    goto :goto_1

    #@43
    .line 6381
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    :cond_4
    const/4 v4, 0x0

    #@44
    .local v4, "customOrder":Z
    goto :goto_0

    #@45
    .line 6393
    .end local v4    # "customOrder":Z
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    #@47
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@4a
    .line 6395
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    if-nez v6, :cond_7

    #@4c
    .end local v7    # "noneOfTheChildrenAreTransparent":Z
    :goto_2
    return v7

    #@4d
    .restart local v7    # "noneOfTheChildrenAreTransparent":Z
    :cond_7
    move v7, v9

    #@4e
    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 5943
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 5914
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 5932
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 3088
    const-class v0, Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 6010
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 6011
    :cond_0
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 6013
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@a
    aget-object v0, v0, p1

    #@c
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 5999
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 3612
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 3928
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    #@0
    .prologue
    .line 3932
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3933
    new-instance v0, Landroid/view/animation/Transformation;

    #@6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@b
    .line 3935
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@d
    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 5493
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    #@0
    .prologue
    .line 5507
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    if-eqz v11, :cond_b

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iget-object v8, v11, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@c
    .line 5508
    .local v8, "rect":Landroid/graphics/RectF;
    :goto_0
    move-object/from16 v0, p2

    #@e
    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@11
    .line 5510
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    #@14
    move-result v11

    #@15
    if-nez v11, :cond_0

    #@17
    .line 5511
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@1e
    .line 5514
    :cond_0
    move-object/from16 v0, p1

    #@20
    iget v11, v0, Landroid/view/View;->mLeft:I

    #@22
    move-object/from16 v0, p0

    #@24
    iget v12, v0, Landroid/view/ViewGroup;->mScrollX:I

    #@26
    sub-int v4, v11, v12

    #@28
    .line 5515
    .local v4, "dx":I
    move-object/from16 v0, p1

    #@2a
    iget v11, v0, Landroid/view/View;->mTop:I

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    #@30
    sub-int v5, v11, v12

    #@32
    .line 5517
    .local v5, "dy":I
    int-to-float v11, v4

    #@33
    int-to-float v12, v5

    #@34
    invoke-virtual {v8, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    #@37
    .line 5519
    if-eqz p3, :cond_2

    #@39
    .line 5520
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    #@3c
    move-result v11

    #@3d
    if-nez v11, :cond_1

    #@3f
    .line 5521
    move-object/from16 v0, p0

    #@41
    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@43
    if-eqz v11, :cond_c

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@49
    iget-object v7, v11, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    #@4b
    .line 5523
    .local v7, "position":[F
    :goto_1
    move-object/from16 v0, p3

    #@4d
    iget v11, v0, Landroid/graphics/Point;->x:I

    #@4f
    int-to-float v11, v11

    #@50
    const/4 v12, 0x0

    #@51
    aput v11, v7, v12

    #@53
    .line 5524
    move-object/from16 v0, p3

    #@55
    iget v11, v0, Landroid/graphics/Point;->y:I

    #@57
    int-to-float v11, v11

    #@58
    const/4 v12, 0x1

    #@59
    aput v11, v7, v12

    #@5b
    .line 5525
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@5e
    move-result-object v11

    #@5f
    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@62
    .line 5526
    const/4 v11, 0x0

    #@63
    aget v11, v7, v11

    #@65
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@68
    move-result v11

    #@69
    move-object/from16 v0, p3

    #@6b
    iput v11, v0, Landroid/graphics/Point;->x:I

    #@6d
    .line 5527
    const/4 v11, 0x1

    #@6e
    aget v11, v7, v11

    #@70
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@73
    move-result v11

    #@74
    move-object/from16 v0, p3

    #@76
    iput v11, v0, Landroid/graphics/Point;->y:I

    #@78
    .line 5529
    .end local v7    # "position":[F
    :cond_1
    move-object/from16 v0, p3

    #@7a
    iget v11, v0, Landroid/graphics/Point;->x:I

    #@7c
    add-int/2addr v11, v4

    #@7d
    move-object/from16 v0, p3

    #@7f
    iput v11, v0, Landroid/graphics/Point;->x:I

    #@81
    .line 5530
    move-object/from16 v0, p3

    #@83
    iget v11, v0, Landroid/graphics/Point;->y:I

    #@85
    add-int/2addr v11, v5

    #@86
    move-object/from16 v0, p3

    #@88
    iput v11, v0, Landroid/graphics/Point;->y:I

    #@8a
    .line 5533
    :cond_2
    move-object/from16 v0, p0

    #@8c
    iget v11, v0, Landroid/view/ViewGroup;->mRight:I

    #@8e
    move-object/from16 v0, p0

    #@90
    iget v12, v0, Landroid/view/ViewGroup;->mLeft:I

    #@92
    sub-int v10, v11, v12

    #@94
    .line 5534
    .local v10, "width":I
    move-object/from16 v0, p0

    #@96
    iget v11, v0, Landroid/view/ViewGroup;->mBottom:I

    #@98
    move-object/from16 v0, p0

    #@9a
    iget v12, v0, Landroid/view/ViewGroup;->mTop:I

    #@9c
    sub-int v6, v11, v12

    #@9e
    .line 5536
    .local v6, "height":I
    const/4 v9, 0x1

    #@9f
    .line 5537
    .local v9, "rectIsVisible":Z
    move-object/from16 v0, p0

    #@a1
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@a3
    if-eqz v11, :cond_3

    #@a5
    .line 5538
    move-object/from16 v0, p0

    #@a7
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@a9
    instance-of v11, v11, Landroid/view/ViewGroup;

    #@ab
    if-eqz v11, :cond_4

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@b1
    check-cast v11, Landroid/view/ViewGroup;

    #@b3
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getClipChildren()Z

    #@b6
    move-result v11

    #@b7
    .line 5537
    if-eqz v11, :cond_4

    #@b9
    .line 5540
    :cond_3
    const/4 v11, 0x0

    #@ba
    const/4 v12, 0x0

    #@bb
    int-to-float v13, v10

    #@bc
    int-to-float v14, v6

    #@bd
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@c0
    move-result v9

    #@c1
    .line 5543
    .end local v9    # "rectIsVisible":Z
    :cond_4
    if-nez p4, :cond_5

    #@c3
    if-eqz v9, :cond_6

    #@c5
    .line 5544
    :cond_5
    move-object/from16 v0, p0

    #@c7
    iget v11, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c9
    and-int/lit8 v11, v11, 0x22

    #@cb
    const/16 v12, 0x22

    #@cd
    if-ne v11, v12, :cond_6

    #@cf
    .line 5546
    move-object/from16 v0, p0

    #@d1
    iget v11, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@d3
    int-to-float v11, v11

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget v12, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@d8
    int-to-float v12, v12

    #@d9
    .line 5547
    move-object/from16 v0, p0

    #@db
    iget v13, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@dd
    sub-int v13, v10, v13

    #@df
    int-to-float v13, v13

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v14, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@e4
    sub-int v14, v6, v14

    #@e6
    int-to-float v14, v14

    #@e7
    .line 5546
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@ea
    move-result v9

    #@eb
    .line 5550
    :cond_6
    if-nez p4, :cond_7

    #@ed
    if-eqz v9, :cond_8

    #@ef
    :cond_7
    move-object/from16 v0, p0

    #@f1
    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@f3
    if-eqz v11, :cond_8

    #@f5
    .line 5552
    move-object/from16 v0, p0

    #@f7
    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@f9
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@fb
    int-to-float v11, v11

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v12, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@100
    iget v12, v12, Landroid/graphics/Rect;->top:I

    #@102
    int-to-float v12, v12

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v13, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@107
    iget v13, v13, Landroid/graphics/Rect;->right:I

    #@109
    int-to-float v13, v13

    #@10a
    .line 5553
    move-object/from16 v0, p0

    #@10c
    iget-object v14, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@10e
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    #@110
    int-to-float v14, v14

    #@111
    .line 5552
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@114
    move-result v9

    #@115
    .line 5555
    :cond_8
    iget v11, v8, Landroid/graphics/RectF;->left:F

    #@117
    float-to-double v12, v11

    #@118
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@11b
    move-result-wide v12

    #@11c
    double-to-int v11, v12

    #@11d
    iget v12, v8, Landroid/graphics/RectF;->top:F

    #@11f
    float-to-double v12, v12

    #@120
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@123
    move-result-wide v12

    #@124
    double-to-int v12, v12

    #@125
    .line 5556
    iget v13, v8, Landroid/graphics/RectF;->right:F

    #@127
    float-to-double v14, v13

    #@128
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@12b
    move-result-wide v14

    #@12c
    double-to-int v13, v14

    #@12d
    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    #@12f
    float-to-double v14, v14

    #@130
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@133
    move-result-wide v14

    #@134
    double-to-int v14, v14

    #@135
    .line 5555
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@13a
    .line 5558
    if-nez p4, :cond_9

    #@13c
    if-eqz v9, :cond_a

    #@13e
    :cond_9
    move-object/from16 v0, p0

    #@140
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@142
    if-eqz v11, :cond_a

    #@144
    .line 5559
    move-object/from16 v0, p0

    #@146
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@148
    instance-of v11, v11, Landroid/view/ViewGroup;

    #@14a
    if-eqz v11, :cond_d

    #@14c
    .line 5560
    move-object/from16 v0, p0

    #@14e
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@150
    check-cast v11, Landroid/view/ViewGroup;

    #@152
    move-object/from16 v0, p0

    #@154
    move-object/from16 v1, p2

    #@156
    move-object/from16 v2, p3

    #@158
    move/from16 v3, p4

    #@15a
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    #@15d
    move-result v9

    #@15e
    .line 5566
    :cond_a
    :goto_2
    return v9

    #@15f
    .line 5507
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "height":I
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v10    # "width":I
    :cond_b
    new-instance v8, Landroid/graphics/RectF;

    #@161
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    #@164
    goto/16 :goto_0

    #@166
    .line 5522
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v8    # "rect":Landroid/graphics/RectF;
    :cond_c
    const/4 v11, 0x2

    #@167
    new-array v7, v11, [F

    #@169
    .restart local v7    # "position":[F
    goto/16 :goto_1

    #@16b
    .line 5563
    .end local v7    # "position":[F
    .restart local v6    # "height":I
    .restart local v10    # "width":I
    :cond_d
    move-object/from16 v0, p0

    #@16d
    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@16f
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, p2

    #@173
    move-object/from16 v2, p3

    #@175
    invoke-interface {v11, v0, v1, v2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@178
    move-result v9

    #@179
    .local v9, "rectIsVisible":Z
    goto :goto_2
.end method

.method public getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3755
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    #@0
    .prologue
    .line 3812
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1014
    move-object v0, p0

    #@2
    .line 1015
    :goto_0
    if-eqz v0, :cond_2

    #@4
    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1017
    return-object v0

    #@b
    .line 1019
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@d
    if-eqz v1, :cond_1

    #@f
    check-cast v0, Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .local v0, "v":Landroid/view/View;
    goto :goto_0

    #@16
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@17
    .local v0, "v":Landroid/view/View;
    goto :goto_0

    #@18
    .line 1021
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method public getDescendantFocusability()I
    .locals 2
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

    #@0
    .prologue
    .line 686
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    const/high16 v1, 0x60000

    #@4
    and-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    #@0
    .prologue
    .line 5637
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    #@0
    .prologue
    .line 6430
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method public getLayoutMode()I
    .locals 3

    #@0
    .prologue
    .line 5879
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 5880
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@7
    instance-of v1, v1, Landroid/view/ViewGroup;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 5881
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@d
    check-cast v1, Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    #@12
    move-result v0

    #@13
    .line 5882
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    #@14
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@17
    .line 5884
    .end local v0    # "inheritedLayoutMode":I
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@19
    return v1

    #@1a
    .line 5881
    :cond_1
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    #@1c
    goto :goto_0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    #@0
    .prologue
    .line 4788
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    #@0
    .prologue
    .line 6848
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@2
    return v0
.end method

.method getNumChildrenForAccessibility()I
    .locals 4

    #@0
    .prologue
    .line 3124
    const/4 v2, 0x0

    #@1
    .line 3125
    .local v2, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v3

    #@6
    if-ge v1, v3, :cond_2

    #@8
    .line 3126
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3127
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 3128
    add-int/lit8 v2, v2, 0x1

    #@14
    .line 3125
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3129
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 3130
    check-cast v0, Landroid/view/ViewGroup;

    #@1d
    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    #@20
    move-result v3

    #@21
    add-int/2addr v2, v3

    #@22
    goto :goto_1

    #@23
    .line 3134
    :cond_2
    return v2
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    #@0
    .prologue
    .line 3591
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3592
    new-instance v0, Landroid/view/ViewGroupOverlay;

    #@6
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@b
    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@d
    .line 3594
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@f
    check-cast v0, Landroid/view/ViewGroupOverlay;

    #@11
    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    #@0
    .prologue
    .line 3590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
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

    #@0
    .prologue
    .line 5816
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@2
    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3732
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    #@3
    .line 3736
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    and-int/lit8 v1, v1, 0x22

    #@7
    const/16 v2, 0x22

    #@9
    if-ne v1, v2, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    .line 3737
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    #@e
    .line 3738
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@10
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@12
    add-int/2addr v1, v2

    #@13
    iput v1, p1, Landroid/graphics/Rect;->left:I

    #@15
    .line 3739
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@17
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@19
    sub-int/2addr v1, v2

    #@1a
    iput v1, p1, Landroid/graphics/Rect;->right:I

    #@1c
    .line 3740
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@1e
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@20
    add-int/2addr v1, v2

    #@21
    iput v1, p1, Landroid/graphics/Rect;->top:I

    #@23
    .line 3741
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@25
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@27
    sub-int/2addr v1, v2

    #@28
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 3731
    :cond_0
    return-void

    #@2b
    .line 3736
    .end local v0    # "clipToPadding":Z
    :cond_1
    const/4 v0, 0x0

    #@2c
    goto :goto_0
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1144
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    const/high16 v2, 0x4000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4152
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    if-lt p1, v0, :cond_1

    #@d
    .line 4153
    :cond_0
    return-object v1

    #@e
    .line 4155
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/View;

    #@16
    return-object v0
.end method

.method public getTransientViewCount()I
    .locals 1

    #@0
    .prologue
    .line 4119
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getTransientViewIndex(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 4134
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 4135
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 4134
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d
    move-result v0

    #@e
    if-ge p1, v0, :cond_0

    #@10
    .line 4137
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 713
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 714
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@7
    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@a
    .line 715
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@c
    .line 717
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    #@f
    .line 712
    return-void
.end method

.method public hasFocus()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1031
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@4
    and-int/lit8 v2, v2, 0x2

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@a
    if-eqz v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1058
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@4
    and-int/lit8 v5, v5, 0xc

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1059
    return v6

    #@9
    .line 1062
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 1063
    return v7

    #@10
    .line 1066
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@13
    move-result v3

    #@14
    .line 1067
    .local v3, "descendantFocusability":I
    const/high16 v5, 0x60000

    #@16
    if-eq v3, v5, :cond_3

    #@18
    .line 1068
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1a
    .line 1069
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1c
    .line 1071
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@1f
    .line 1072
    aget-object v0, v1, v4

    #@21
    .line 1073
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 1074
    return v7

    #@28
    .line 1071
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1079
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_3
    return v6
.end method

.method protected hasHoveredChild()Z
    .locals 1

    #@0
    .prologue
    .line 1970
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    #@0
    .prologue
    .line 955
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@2
    if-gtz v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 5982
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 5983
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 5984
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 5985
    aget-object v3, v0, v2

    #@9
    if-ne v3, p1, :cond_0

    #@b
    .line 5986
    return v2

    #@c
    .line 5984
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 5989
    :cond_1
    const/4 v3, -0x1

    #@10
    return v3
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 3195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    #@3
    .line 3197
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@5
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@7
    or-int/2addr v0, v1

    #@8
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@a
    or-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@d
    or-int/2addr v0, v1

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 3198
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    or-int/lit8 v0, v0, 0x20

    #@14
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    .line 3194
    :goto_0
    return-void

    #@17
    .line 3200
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@19
    and-int/lit8 v0, v0, -0x21

    #@1b
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1d
    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 5124
    move-object/from16 v14, p0

    #@2
    .line 5126
    .local v14, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    #@4
    iget-object v6, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    .line 5127
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_a

    #@8
    .line 5131
    move-object/from16 v0, p1

    #@a
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@c
    move/from16 v19, v0

    #@e
    and-int/lit8 v19, v19, 0x40

    #@10
    .line 5132
    const/16 v20, 0x40

    #@12
    .line 5131
    move/from16 v0, v19

    #@14
    move/from16 v1, v20

    #@16
    if-ne v0, v1, :cond_b

    #@18
    const/4 v9, 0x1

    #@19
    .line 5137
    .local v9, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@1c
    move-result-object v8

    #@1d
    .line 5138
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    #@20
    move-result v19

    #@21
    if-eqz v19, :cond_0

    #@23
    if-eqz v9, :cond_c

    #@25
    :cond_0
    const/4 v10, 0x0

    #@26
    .line 5142
    .local v10, "isOpaque":Z
    :goto_1
    if-eqz v10, :cond_d

    #@28
    const/high16 v13, 0x400000

    #@2a
    .line 5144
    .local v13, "opaqueFlag":I
    :goto_2
    move-object/from16 v0, p1

    #@2c
    iget v0, v0, Landroid/view/View;->mLayerType:I

    #@2e
    move/from16 v19, v0

    #@30
    if-eqz v19, :cond_1

    #@32
    .line 5145
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@36
    move/from16 v19, v0

    #@38
    const/high16 v20, -0x80000000

    #@3a
    or-int v19, v19, v20

    #@3c
    move/from16 v0, v19

    #@3e
    move-object/from16 v1, p0

    #@40
    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@42
    .line 5146
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@46
    move/from16 v19, v0

    #@48
    const v20, -0x8001

    #@4b
    and-int v19, v19, v20

    #@4d
    move/from16 v0, v19

    #@4f
    move-object/from16 v1, p0

    #@51
    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@53
    .line 5149
    :cond_1
    iget-object v11, v6, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@55
    .line 5150
    .local v11, "location":[I
    move-object/from16 v0, p1

    #@57
    iget v0, v0, Landroid/view/View;->mLeft:I

    #@59
    move/from16 v19, v0

    #@5b
    const/16 v20, 0x0

    #@5d
    aput v19, v11, v20

    #@5f
    .line 5151
    move-object/from16 v0, p1

    #@61
    iget v0, v0, Landroid/view/View;->mTop:I

    #@63
    move/from16 v19, v0

    #@65
    const/16 v20, 0x1

    #@67
    aput v19, v11, v20

    #@69
    .line 5152
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@6c
    move-result v19

    #@6d
    if-eqz v19, :cond_2

    #@6f
    .line 5153
    move-object/from16 v0, p0

    #@71
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@73
    move/from16 v19, v0

    #@75
    move/from16 v0, v19

    #@77
    and-int/lit16 v0, v0, 0x800

    #@79
    move/from16 v19, v0

    #@7b
    if-eqz v19, :cond_4

    #@7d
    .line 5154
    :cond_2
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@7f
    .line 5155
    .local v7, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@84
    .line 5157
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@88
    move/from16 v19, v0

    #@8a
    move/from16 v0, v19

    #@8c
    and-int/lit16 v0, v0, 0x800

    #@8e
    move/from16 v19, v0

    #@90
    if-eqz v19, :cond_f

    #@92
    .line 5158
    iget-object v15, v6, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    #@94
    .line 5159
    .local v15, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    #@96
    move-object/from16 v1, p1

    #@98
    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    #@9b
    move-result v17

    #@9c
    .line 5160
    .local v17, "transformed":Z
    if-eqz v17, :cond_e

    #@9e
    .line 5161
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    #@a0
    move-object/from16 v16, v0

    #@a2
    .line 5162
    .local v16, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v15}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@a5
    move-result-object v19

    #@a6
    move-object/from16 v0, v16

    #@a8
    move-object/from16 v1, v19

    #@aa
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@ad
    .line 5163
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@b0
    move-result v19

    #@b1
    if-nez v19, :cond_3

    #@b3
    .line 5164
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@b8
    .line 5172
    .end local v15    # "t":Landroid/view/animation/Transformation;
    .end local v17    # "transformed":Z
    :cond_3
    :goto_3
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@bd
    .line 5173
    iget v0, v7, Landroid/graphics/RectF;->left:F

    #@bf
    move/from16 v19, v0

    #@c1
    move/from16 v0, v19

    #@c3
    float-to-double v0, v0

    #@c4
    move-wide/from16 v20, v0

    #@c6
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@c9
    move-result-wide v20

    #@ca
    move-wide/from16 v0, v20

    #@cc
    double-to-int v0, v0

    #@cd
    move/from16 v19, v0

    #@cf
    .line 5174
    iget v0, v7, Landroid/graphics/RectF;->top:F

    #@d1
    move/from16 v20, v0

    #@d3
    move/from16 v0, v20

    #@d5
    float-to-double v0, v0

    #@d6
    move-wide/from16 v20, v0

    #@d8
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@db
    move-result-wide v20

    #@dc
    move-wide/from16 v0, v20

    #@de
    double-to-int v0, v0

    #@df
    move/from16 v20, v0

    #@e1
    .line 5175
    iget v0, v7, Landroid/graphics/RectF;->right:F

    #@e3
    move/from16 v21, v0

    #@e5
    move/from16 v0, v21

    #@e7
    float-to-double v0, v0

    #@e8
    move-wide/from16 v22, v0

    #@ea
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@ed
    move-result-wide v22

    #@ee
    move-wide/from16 v0, v22

    #@f0
    double-to-int v0, v0

    #@f1
    move/from16 v21, v0

    #@f3
    .line 5176
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    #@f5
    move/from16 v22, v0

    #@f7
    move/from16 v0, v22

    #@f9
    float-to-double v0, v0

    #@fa
    move-wide/from16 v22, v0

    #@fc
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@ff
    move-result-wide v22

    #@100
    move-wide/from16 v0, v22

    #@102
    double-to-int v0, v0

    #@103
    move/from16 v22, v0

    #@105
    .line 5173
    move-object/from16 v0, p2

    #@107
    move/from16 v1, v19

    #@109
    move/from16 v2, v20

    #@10b
    move/from16 v3, v21

    #@10d
    move/from16 v4, v22

    #@10f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@112
    .line 5180
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_4
    const/16 v18, 0x0

    #@114
    .line 5181
    .local v18, "view":Landroid/view/View;
    instance-of v0, v14, Landroid/view/View;

    #@116
    move/from16 v19, v0

    #@118
    if-eqz v19, :cond_5

    #@11a
    move-object/from16 v18, v14

    #@11c
    .line 5182
    check-cast v18, Landroid/view/View;

    #@11e
    .line 5185
    .end local v18    # "view":Landroid/view/View;
    :cond_5
    if-eqz v9, :cond_6

    #@120
    .line 5186
    if-eqz v18, :cond_10

    #@122
    .line 5187
    move-object/from16 v0, v18

    #@124
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@126
    move/from16 v19, v0

    #@128
    or-int/lit8 v19, v19, 0x40

    #@12a
    move/from16 v0, v19

    #@12c
    move-object/from16 v1, v18

    #@12e
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    #@130
    .line 5195
    :cond_6
    :goto_4
    if-eqz v18, :cond_8

    #@132
    .line 5196
    move-object/from16 v0, v18

    #@134
    iget v0, v0, Landroid/view/View;->mViewFlags:I

    #@136
    move/from16 v19, v0

    #@138
    move/from16 v0, v19

    #@13a
    and-int/lit16 v0, v0, 0x3000

    #@13c
    move/from16 v19, v0

    #@13e
    if-eqz v19, :cond_7

    #@140
    .line 5197
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getSolidColor()I

    #@143
    move-result v19

    #@144
    if-nez v19, :cond_7

    #@146
    .line 5198
    const/high16 v13, 0x200000

    #@148
    .line 5200
    :cond_7
    move-object/from16 v0, v18

    #@14a
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@14c
    move/from16 v19, v0

    #@14e
    const/high16 v20, 0x600000

    #@150
    and-int v19, v19, v20

    #@152
    const/high16 v20, 0x200000

    #@154
    move/from16 v0, v19

    #@156
    move/from16 v1, v20

    #@158
    if-eq v0, v1, :cond_8

    #@15a
    .line 5201
    move-object/from16 v0, v18

    #@15c
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@15e
    move/from16 v19, v0

    #@160
    const v20, -0x600001

    #@163
    and-int v19, v19, v20

    #@165
    or-int v19, v19, v13

    #@167
    move/from16 v0, v19

    #@169
    move-object/from16 v1, v18

    #@16b
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    #@16d
    .line 5205
    :cond_8
    move-object/from16 v0, p2

    #@16f
    invoke-interface {v14, v11, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@172
    move-result-object v14

    #@173
    .line 5206
    if-eqz v18, :cond_9

    #@175
    .line 5208
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@178
    move-result-object v12

    #@179
    .line 5209
    .local v12, "m":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    #@17c
    move-result v19

    #@17d
    if-nez v19, :cond_9

    #@17f
    .line 5210
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@181
    .line 5211
    .restart local v7    # "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    #@183
    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@186
    .line 5212
    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@189
    .line 5213
    iget v0, v7, Landroid/graphics/RectF;->left:F

    #@18b
    move/from16 v19, v0

    #@18d
    move/from16 v0, v19

    #@18f
    float-to-double v0, v0

    #@190
    move-wide/from16 v20, v0

    #@192
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@195
    move-result-wide v20

    #@196
    move-wide/from16 v0, v20

    #@198
    double-to-int v0, v0

    #@199
    move/from16 v19, v0

    #@19b
    .line 5214
    iget v0, v7, Landroid/graphics/RectF;->top:F

    #@19d
    move/from16 v20, v0

    #@19f
    move/from16 v0, v20

    #@1a1
    float-to-double v0, v0

    #@1a2
    move-wide/from16 v20, v0

    #@1a4
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@1a7
    move-result-wide v20

    #@1a8
    move-wide/from16 v0, v20

    #@1aa
    double-to-int v0, v0

    #@1ab
    move/from16 v20, v0

    #@1ad
    .line 5215
    iget v0, v7, Landroid/graphics/RectF;->right:F

    #@1af
    move/from16 v21, v0

    #@1b1
    move/from16 v0, v21

    #@1b3
    float-to-double v0, v0

    #@1b4
    move-wide/from16 v22, v0

    #@1b6
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@1b9
    move-result-wide v22

    #@1ba
    move-wide/from16 v0, v22

    #@1bc
    double-to-int v0, v0

    #@1bd
    move/from16 v21, v0

    #@1bf
    .line 5216
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    #@1c1
    move/from16 v22, v0

    #@1c3
    move/from16 v0, v22

    #@1c5
    float-to-double v0, v0

    #@1c6
    move-wide/from16 v22, v0

    #@1c8
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    #@1cb
    move-result-wide v22

    #@1cc
    move-wide/from16 v0, v22

    #@1ce
    double-to-int v0, v0

    #@1cf
    move/from16 v22, v0

    #@1d1
    .line 5213
    move-object/from16 v0, p2

    #@1d3
    move/from16 v1, v19

    #@1d5
    move/from16 v2, v20

    #@1d7
    move/from16 v3, v21

    #@1d9
    move/from16 v4, v22

    #@1db
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@1de
    .line 5219
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v12    # "m":Landroid/graphics/Matrix;
    :cond_9
    if-nez v14, :cond_4

    #@1e0
    .line 5123
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .end local v9    # "drawAnimation":Z
    .end local v10    # "isOpaque":Z
    .end local v11    # "location":[I
    .end local v13    # "opaqueFlag":I
    :cond_a
    return-void

    #@1e1
    .line 5131
    :cond_b
    const/4 v9, 0x0

    #@1e2
    .restart local v9    # "drawAnimation":Z
    goto/16 :goto_0

    #@1e4
    .line 5139
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@1e7
    move-result-object v19

    #@1e8
    if-nez v19, :cond_0

    #@1ea
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@1ed
    move-result v10

    #@1ee
    goto/16 :goto_1

    #@1f0
    .line 5142
    .restart local v10    # "isOpaque":Z
    :cond_d
    const/high16 v13, 0x200000

    #@1f2
    .restart local v13    # "opaqueFlag":I
    goto/16 :goto_2

    #@1f4
    .line 5167
    .restart local v7    # "boundingRect":Landroid/graphics/RectF;
    .restart local v11    # "location":[I
    .restart local v15    # "t":Landroid/view/animation/Transformation;
    .restart local v17    # "transformed":Z
    :cond_e
    move-object/from16 v16, v8

    #@1f6
    .restart local v16    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    #@1f8
    .line 5170
    .end local v15    # "t":Landroid/view/animation/Transformation;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v17    # "transformed":Z
    :cond_f
    move-object/from16 v16, v8

    #@1fa
    .restart local v16    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    #@1fc
    .line 5188
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_10
    instance-of v0, v14, Landroid/view/ViewRootImpl;

    #@1fe
    move/from16 v19, v0

    #@200
    if-eqz v19, :cond_6

    #@202
    move-object/from16 v19, v14

    #@204
    .line 5189
    check-cast v19, Landroid/view/ViewRootImpl;

    #@206
    const/16 v20, 0x1

    #@208
    move/from16 v0, v20

    #@20a
    move-object/from16 v1, v19

    #@20c
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@20e
    goto/16 :goto_4
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const v4, 0x8000

    #@3
    const/high16 v7, -0x80000000

    #@5
    const/4 v6, 0x1

    #@6
    const/4 v5, 0x0

    #@7
    .line 5233
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@9
    and-int/lit8 v2, v2, 0x20

    #@b
    const/16 v3, 0x20

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 5234
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@11
    and-int/2addr v2, v4

    #@12
    if-ne v2, v4, :cond_7

    #@14
    .line 5235
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    and-int/lit16 v2, v2, 0x90

    #@18
    .line 5236
    const/16 v3, 0x80

    #@1a
    .line 5235
    if-eq v2, v3, :cond_4

    #@1c
    .line 5237
    aget v2, p1, v5

    #@1e
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@20
    sub-int/2addr v2, v3

    #@21
    .line 5238
    aget v3, p1, v6

    #@23
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@25
    sub-int/2addr v3, v4

    #@26
    .line 5237
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@29
    .line 5239
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2b
    and-int/lit8 v2, v2, 0x1

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 5240
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    #@31
    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    #@33
    sub-int/2addr v2, v3

    #@34
    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    #@36
    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    #@38
    sub-int/2addr v3, v4

    #@39
    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    #@3c
    .line 5243
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    #@3e
    .line 5244
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    #@40
    .line 5246
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@42
    and-int/lit8 v2, v2, 0x1

    #@44
    if-ne v2, v6, :cond_2

    #@46
    .line 5247
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    #@48
    sub-int/2addr v2, v0

    #@49
    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    #@4b
    sub-int/2addr v3, v1

    #@4c
    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_2

    #@52
    .line 5248
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@55
    .line 5251
    :cond_2
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@57
    const v3, -0x8001

    #@5a
    and-int/2addr v2, v3

    #@5b
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@5d
    .line 5253
    aput v0, p1, v5

    #@5f
    .line 5254
    aput v1, p1, v6

    #@61
    .line 5256
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    #@63
    if-eqz v2, :cond_3

    #@65
    .line 5257
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@67
    or-int/2addr v2, v7

    #@68
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@6a
    .line 5260
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@6c
    return-object v2

    #@6d
    .line 5263
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@6f
    const v3, -0x8021

    #@72
    and-int/2addr v2, v3

    #@73
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@75
    .line 5265
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    #@77
    aput v2, p1, v5

    #@79
    .line 5266
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    #@7b
    aput v2, p1, v6

    #@7d
    .line 5267
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7f
    and-int/lit8 v2, v2, 0x1

    #@81
    if-ne v2, v6, :cond_6

    #@83
    .line 5268
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    #@85
    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    #@87
    sub-int/2addr v2, v3

    #@88
    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    #@8a
    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    #@8c
    sub-int/2addr v3, v4

    #@8d
    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@90
    .line 5274
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    #@92
    if-eqz v2, :cond_5

    #@94
    .line 5275
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@96
    or-int/2addr v2, v7

    #@97
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@99
    .line 5278
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@9b
    return-object v2

    #@9c
    .line 5271
    :cond_6
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    #@9e
    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    #@a0
    sub-int/2addr v2, v3

    #@a1
    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    #@a3
    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    #@a5
    sub-int/2addr v3, v4

    #@a6
    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    #@a9
    goto :goto_0

    #@aa
    .line 5282
    :cond_7
    const/4 v2, 0x0

    #@ab
    return-object v2
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 4
    .param p1, "layoutModeOfRoot"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 5853
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 5854
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@7
    if-ne v2, p1, :cond_1

    #@9
    .line 5856
    :cond_0
    return-void

    #@a
    .line 5855
    :cond_1
    const/high16 v2, 0x800000

    #@c
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@f
    move-result v2

    #@10
    .line 5853
    if-nez v2, :cond_0

    #@12
    .line 5858
    const/4 v2, 0x0

    #@13
    invoke-direct {p0, v3, v2}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@16
    .line 5861
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@1d
    .line 5862
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    #@24
    .line 5861
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 5852
    :cond_2
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 5690
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v0, v0, 0x4000

    #@4
    const/16 v1, 0x4000

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 5655
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    const/16 v1, 0x40

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    #@0
    .prologue
    .line 5767
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v0, v0, 0x400

    #@4
    const/16 v1, 0x400

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2

    #@0
    .prologue
    const v1, 0x8000

    #@3
    .line 5731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    and-int/2addr v0, v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method isLayoutModeOptical()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3304
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    #@0
    .prologue
    .line 6360
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@2
    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x200000

    #@2
    .line 2693
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final isShowingContextMenuWithCoords()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 778
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    const/high16 v2, 0x20000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2562
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    #@5
    move-result-object v1

    #@6
    .line 2563
    .local v1, "point":[F
    aput p1, v1, v4

    #@8
    .line 2564
    aput p2, v1, v5

    #@a
    .line 2565
    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    #@d
    .line 2566
    aget v2, v1, v4

    #@f
    aget v3, v1, v5

    #@11
    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    #@14
    move-result v0

    #@15
    .line 2567
    .local v0, "isInView":Z
    if-eqz v0, :cond_0

    #@17
    if-eqz p4, :cond_0

    #@19
    .line 2568
    aget v2, v1, v4

    #@1b
    aget v3, v1, v5

    #@1d
    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    #@20
    .line 2570
    :cond_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2709
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v4, 0x2000000

    #@6
    and-int/2addr v3, v4

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 2710
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@b
    const/high16 v4, 0x1000000

    #@d
    and-int/2addr v3, v4

    #@e
    if-eqz v3, :cond_0

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    move v1, v2

    #@12
    goto :goto_0

    #@13
    .line 2712
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    #@16
    move-result-object v0

    #@17
    .line 2713
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v3

    #@1b
    if-nez v3, :cond_2

    #@1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    if-eqz v3, :cond_3

    #@23
    :cond_2
    :goto_1
    return v1

    #@24
    .line 2714
    :cond_3
    if-eqz v0, :cond_4

    #@26
    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    #@28
    if-ne v0, v3, :cond_2

    #@2a
    :cond_4
    move v1, v2

    #@2b
    goto :goto_1
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6252
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    #@0
    .prologue
    .line 6457
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 6458
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 6459
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 6460
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 6461
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@f
    .line 6460
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 6456
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 5571
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@a
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 5578
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@13
    .line 5570
    :goto_0
    return-void

    #@14
    .line 5572
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 5573
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1a
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    #@1d
    .line 5575
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    #@20
    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    #@0
    .prologue
    .line 1221
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    #@3
    .line 1222
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1223
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1224
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1225
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    #@f
    .line 1224
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1220
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    #@0
    .prologue
    .line 6047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    .line 6050
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@6
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@8
    add-int/2addr v3, v4

    #@9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b
    .line 6049
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@e
    move-result v1

    #@f
    .line 6052
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@11
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@13
    add-int/2addr v3, v4

    #@14
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    .line 6051
    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@19
    move-result v0

    #@1a
    .line 6054
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@1d
    .line 6046
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    #@0
    .prologue
    .line 6074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 6077
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@8
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@a
    add-int/2addr v3, v4

    #@b
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@d
    add-int/2addr v3, v4

    #@e
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@10
    add-int/2addr v3, v4

    #@11
    add-int/2addr v3, p3

    #@12
    .line 6078
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@14
    .line 6076
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@17
    move-result v1

    #@18
    .line 6080
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@1a
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@1c
    add-int/2addr v3, v4

    #@1d
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1f
    add-int/2addr v3, v4

    #@20
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@22
    add-int/2addr v3, v4

    #@23
    add-int/2addr v3, p5

    #@24
    .line 6081
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@26
    .line 6079
    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@29
    move-result v0

    #@2a
    .line 6083
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@2d
    .line 6073
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 6026
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 6027
    .local v3, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 6028
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    .line 6029
    aget-object v0, v1, v2

    #@9
    .line 6030
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@b
    and-int/lit8 v4, v4, 0xc

    #@d
    const/16 v5, 0x8

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 6031
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    #@14
    .line 6028
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6025
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1544
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@4
    iget v2, v4, Landroid/view/DragEvent;->mX:F

    #@6
    .line 1545
    .local v2, "tx":F
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@8
    iget v3, v4, Landroid/view/DragEvent;->mY:F

    #@a
    .line 1547
    .local v3, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    #@d
    move-result-object v1

    #@e
    .line 1548
    .local v1, "point":[F
    aput v2, v1, v6

    #@10
    .line 1549
    aput v3, v1, v7

    #@12
    .line 1550
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    #@15
    .line 1552
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@17
    aget v5, v1, v6

    #@19
    iput v5, v4, Landroid/view/DragEvent;->mX:F

    #@1b
    .line 1553
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@1d
    aget v5, v1, v7

    #@1f
    iput v5, v4, Landroid/view/DragEvent;->mY:F

    #@21
    .line 1554
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@23
    invoke-virtual {p1, v4}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@26
    move-result v0

    #@27
    .line 1555
    .local v0, "canAccept":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@29
    iput v2, v4, Landroid/view/DragEvent;->mX:F

    #@2b
    .line 1556
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@2d
    iput v3, v4, Landroid/view/DragEvent;->mY:F

    #@2f
    .line 1557
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@31
    iput-boolean v6, v4, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    #@33
    .line 1558
    if-eqz v0, :cond_0

    #@35
    .line 1559
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@37
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3a
    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_0

    #@40
    .line 1561
    iget v4, p1, Landroid/view/View;->mPrivateFlags2:I

    #@42
    or-int/lit8 v4, v4, 0x1

    #@44
    iput v4, p1, Landroid/view/View;->mPrivateFlags2:I

    #@46
    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    #@49
    .line 1565
    :cond_0
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    #@0
    .prologue
    .line 3095
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 3096
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@9
    .line 3092
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3097
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3099
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@10
    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 3100
    :catch_0
    move-exception v0

    #@15
    .line 3101
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v1, "View"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 3102
    const-string/jumbo v3, " does not fully implement ViewParent"

    #@2e
    .line 3101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5471
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 5472
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 5473
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@6
    .line 5475
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 5476
    aget-object v4, v0, v2

    #@b
    .line 5477
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    #@d
    add-int/2addr v5, p1

    #@e
    iput v5, v4, Landroid/view/View;->mTop:I

    #@10
    .line 5478
    iget v5, v4, Landroid/view/View;->mBottom:I

    #@12
    add-int/2addr v5, p1

    #@13
    iput v5, v4, Landroid/view/View;->mBottom:I

    #@15
    .line 5479
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 5480
    const/4 v3, 0x1

    #@1a
    .line 5481
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@1c
    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    #@1f
    .line 5475
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 5485
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_2

    #@24
    .line 5486
    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    #@27
    .line 5488
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@2a
    .line 5470
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 5388
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@5
    .line 5387
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5409
    if-ne p1, p0, :cond_0

    #@3
    .line 5410
    return-void

    #@4
    .line 5413
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@6
    .line 5416
    .local v2, "theParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_4

    #@8
    .line 5417
    instance-of v3, v2, Landroid/view/View;

    #@a
    .line 5416
    if-eqz v3, :cond_4

    #@c
    .line 5418
    if-eq v2, p0, :cond_4

    #@e
    .line 5420
    if-eqz p3, :cond_2

    #@10
    .line 5421
    iget v3, p1, Landroid/view/View;->mLeft:I

    #@12
    iget v4, p1, Landroid/view/View;->mScrollX:I

    #@14
    sub-int/2addr v3, v4

    #@15
    .line 5422
    iget v4, p1, Landroid/view/View;->mTop:I

    #@17
    iget v5, p1, Landroid/view/View;->mScrollY:I

    #@19
    sub-int/2addr v4, v5

    #@1a
    .line 5421
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@1d
    .line 5423
    if-eqz p4, :cond_1

    #@1f
    move-object v1, v2

    #@20
    .line 5424
    check-cast v1, Landroid/view/View;

    #@22
    .line 5425
    .local v1, "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    #@24
    iget v4, v1, Landroid/view/View;->mLeft:I

    #@26
    sub-int/2addr v3, v4

    #@27
    .line 5426
    iget v4, v1, Landroid/view/View;->mBottom:I

    #@29
    iget v5, v1, Landroid/view/View;->mTop:I

    #@2b
    sub-int/2addr v4, v5

    #@2c
    .line 5425
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@2f
    move-result v0

    #@30
    .line 5427
    .local v0, "intersected":Z
    if-nez v0, :cond_1

    #@32
    .line 5428
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@35
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_1
    :goto_1
    move-object p1, v2

    #@36
    .line 5444
    check-cast p1, Landroid/view/View;

    #@38
    .line 5445
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3a
    goto :goto_0

    #@3b
    .line 5432
    :cond_2
    if-eqz p4, :cond_3

    #@3d
    move-object v1, v2

    #@3e
    .line 5433
    check-cast v1, Landroid/view/View;

    #@40
    .line 5434
    .restart local v1    # "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    #@42
    iget v4, v1, Landroid/view/View;->mLeft:I

    #@44
    sub-int/2addr v3, v4

    #@45
    .line 5435
    iget v4, v1, Landroid/view/View;->mBottom:I

    #@47
    iget v5, v1, Landroid/view/View;->mTop:I

    #@49
    sub-int/2addr v4, v5

    #@4a
    .line 5434
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@4d
    move-result v0

    #@4e
    .line 5436
    .restart local v0    # "intersected":Z
    if-nez v0, :cond_3

    #@50
    .line 5437
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@53
    .line 5440
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    #@55
    iget v4, p1, Landroid/view/View;->mLeft:I

    #@57
    sub-int/2addr v3, v4

    #@58
    .line 5441
    iget v4, p1, Landroid/view/View;->mScrollY:I

    #@5a
    iget v5, p1, Landroid/view/View;->mTop:I

    #@5c
    sub-int/2addr v4, v5

    #@5d
    .line 5440
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@60
    goto :goto_1

    #@61
    .line 5450
    :cond_4
    if-ne v2, p0, :cond_6

    #@63
    .line 5451
    if-eqz p3, :cond_5

    #@65
    .line 5452
    iget v3, p1, Landroid/view/View;->mLeft:I

    #@67
    iget v4, p1, Landroid/view/View;->mScrollX:I

    #@69
    sub-int/2addr v3, v4

    #@6a
    .line 5453
    iget v4, p1, Landroid/view/View;->mTop:I

    #@6c
    iget v5, p1, Landroid/view/View;->mScrollY:I

    #@6e
    sub-int/2addr v4, v5

    #@6f
    .line 5452
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@72
    .line 5406
    :goto_2
    return-void

    #@73
    .line 5455
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    #@75
    iget v4, p1, Landroid/view/View;->mLeft:I

    #@77
    sub-int/2addr v3, v4

    #@78
    .line 5456
    iget v4, p1, Landroid/view/View;->mScrollY:I

    #@7a
    iget v5, p1, Landroid/view/View;->mTop:I

    #@7c
    sub-int/2addr v4, v5

    #@7d
    .line 5455
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@80
    goto :goto_2

    #@81
    .line 5459
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@83
    const-string/jumbo v4, "parameter must be a descendant of this view"

    #@86
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5398
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@4
    .line 5397
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 4349
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 4350
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    #@6
    .line 4348
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    #@0
    .prologue
    .line 1249
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1250
    if-nez p3, :cond_2

    #@6
    .line 1251
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@8
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@b
    .line 1267
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    #@d
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1268
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1269
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    #@1c
    .line 1248
    :cond_1
    return-void

    #@1d
    .line 1253
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1f
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@22
    .line 1254
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@24
    if-eqz v0, :cond_0

    #@26
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 1257
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@30
    if-nez v0, :cond_3

    #@32
    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    #@34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@37
    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@39
    .line 1260
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1261
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@41
    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 6467
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v5, v5, 0x2000

    #@4
    if-nez v5, :cond_0

    #@6
    .line 6468
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@9
    move-result-object v5

    #@a
    return-object v5

    #@b
    .line 6471
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 6472
    .local v3, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v2

    #@10
    .line 6473
    .local v2, "n":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@13
    .line 6474
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    #@1a
    move-result-object v0

    #@1b
    .line 6476
    .local v0, "childState":[I
    if-eqz v0, :cond_1

    #@1d
    .line 6477
    array-length v5, v0

    #@1e
    add-int/2addr v3, v5

    #@1f
    .line 6473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 6481
    .end local v0    # "childState":[I
    :cond_2
    add-int v5, p1, v3

    #@24
    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@27
    move-result-object v4

    #@28
    .line 6483
    .local v4, "state":[I
    const/4 v1, 0x0

    #@29
    :goto_1
    if-ge v1, v2, :cond_4

    #@2b
    .line 6484
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    #@32
    move-result-object v0

    #@33
    .line 6486
    .restart local v0    # "childState":[I
    if-eqz v0, :cond_3

    #@35
    .line 6487
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    #@38
    move-result-object v4

    #@39
    .line 6483
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 6491
    .end local v0    # "childState":[I
    :cond_4
    return-object v4
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/16 v7, 0x3f

    #@2
    const/16 v6, 0xff

    #@4
    const/16 v13, 0x8

    #@6
    .line 3393
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    #@9
    move-result-object v1

    #@a
    .line 3397
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    #@c
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@f
    .line 3398
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@11
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@14
    .line 3400
    const/4 v11, 0x0

    #@15
    .local v11, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@18
    move-result v0

    #@19
    if-ge v11, v0, :cond_1

    #@1b
    .line 3401
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v10

    #@1f
    .line 3402
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@22
    move-result v0

    #@23
    if-eq v0, v13, :cond_0

    #@25
    .line 3403
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    #@28
    move-result-object v12

    #@29
    .line 3406
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    #@2c
    move-result v0

    #@2d
    iget v2, v12, Landroid/graphics/Insets;->left:I

    #@2f
    add-int/2addr v2, v0

    #@30
    .line 3407
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@33
    move-result v0

    #@34
    iget v3, v12, Landroid/graphics/Insets;->top:I

    #@36
    add-int/2addr v3, v0

    #@37
    .line 3408
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    #@3a
    move-result v0

    #@3b
    iget v4, v12, Landroid/graphics/Insets;->right:I

    #@3d
    sub-int/2addr v0, v4

    #@3e
    add-int/lit8 v4, v0, -0x1

    #@40
    .line 3409
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@43
    move-result v0

    #@44
    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    #@46
    sub-int/2addr v0, v5

    #@47
    add-int/lit8 v5, v0, -0x1

    #@49
    move-object v0, p1

    #@4a
    .line 3405
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@4d
    .line 3400
    .end local v12    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 3416
    .end local v10    # "c":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@51
    invoke-static {v7, v6, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    #@54
    move-result v0

    #@55
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@58
    .line 3417
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@5a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@5d
    .line 3419
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@60
    .line 3424
    const/16 v0, 0x7f

    #@62
    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    #@65
    move-result v0

    #@66
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@69
    .line 3425
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@6b
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6e
    .line 3427
    invoke-direct {p0, v13}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    #@71
    move-result v8

    #@72
    .line 3428
    .local v8, "lineLength":I
    const/4 v0, 0x1

    #@73
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    #@76
    move-result v9

    #@77
    .line 3429
    .local v9, "lineWidth":I
    const/4 v11, 0x0

    #@78
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@7b
    move-result v0

    #@7c
    if-ge v11, v0, :cond_3

    #@7e
    .line 3430
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@81
    move-result-object v10

    #@82
    .line 3431
    .restart local v10    # "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@85
    move-result v0

    #@86
    if-eq v0, v13, :cond_2

    #@88
    .line 3432
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    #@8b
    move-result v3

    #@8c
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@8f
    move-result v4

    #@90
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    #@93
    move-result v5

    #@94
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@97
    move-result v6

    #@98
    move-object v2, p1

    #@99
    move-object v7, v1

    #@9a
    invoke-static/range {v2 .. v9}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    #@9d
    .line 3429
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 3392
    .end local v10    # "c":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 3383
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 3384
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 3385
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@12
    .line 3383
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 3382
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 4355
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@3
    .line 4356
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    #@6
    .line 4354
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 3069
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 3070
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@6
    move-result-object v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 3071
    return-void

    #@a
    .line 3073
    :cond_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 3074
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@10
    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    #@12
    .line 3075
    .local v1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@15
    .line 3076
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    #@18
    .line 3077
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    .line 3078
    .local v2, "childrenForAccessibilityCount":I
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@1f
    .line 3079
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/View;

    #@25
    .line 3080
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    #@28
    .line 3078
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 3082
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@2e
    .line 3068
    .end local v1    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "childrenForAccessibilityCount":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2035
    const/16 v3, 0x2002

    #@2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 2036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 2037
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@f
    move-result v1

    #@10
    .line 2038
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@13
    move-result v2

    #@14
    .line 2039
    .local v2, "y":F
    const/4 v3, 0x7

    #@15
    if-eq v0, v3, :cond_0

    #@17
    .line 2040
    const/16 v3, 0x9

    #@19
    if-ne v0, v3, :cond_1

    #@1b
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    #@1e
    move-result v3

    #@1f
    .line 2039
    if-eqz v3, :cond_1

    #@21
    .line 2041
    const/4 v3, 0x1

    #@22
    return v3

    #@23
    .line 2044
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    const/4 v3, 0x0

    #@24
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2795
    const/16 v0, 0x2002

    #@4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 2797
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    #@13
    move-result v0

    #@14
    .line 2795
    if-eqz v0, :cond_0

    #@16
    .line 2798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    #@21
    move-result v0

    #@22
    .line 2795
    if-eqz v0, :cond_0

    #@24
    .line 2799
    return v3

    #@25
    .line 2801
    :cond_0
    return v2
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 6824
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 6833
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3150
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    .line 6815
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    #@4
    .line 6813
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 6806
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move v3, p4

    #@5
    move v4, p5

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    #@9
    .line 6804
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 6783
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@2
    .line 6782
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2861
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 2862
    .local v2, "count":I
    and-int/lit8 v7, p1, 0x2

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 2863
    const/4 v6, 0x0

    #@8
    .line 2864
    .local v6, "index":I
    const/4 v5, 0x1

    #@9
    .line 2865
    .local v5, "increment":I
    move v3, v2

    #@a
    .line 2871
    .local v3, "end":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@c
    .line 2872
    .local v1, "children":[Landroid/view/View;
    move v4, v6

    #@d
    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    #@f
    .line 2873
    aget-object v0, v1, v4

    #@11
    .line 2874
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    #@13
    and-int/lit8 v7, v7, 0xc

    #@15
    if-nez v7, :cond_1

    #@17
    .line 2875
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 2876
    const/4 v7, 0x1

    #@1e
    return v7

    #@1f
    .line 2867
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    #@21
    .line 2868
    .restart local v6    # "index":I
    const/4 v5, -0x1

    #@22
    .line 2869
    .restart local v5    # "increment":I
    const/4 v3, -0x1

    #@23
    .restart local v3    # "end":I
    goto :goto_0

    #@24
    .line 2872
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v4    # "i":I
    :cond_1
    add-int/2addr v4, v5

    #@25
    goto :goto_1

    #@26
    .line 2880
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v8
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 913
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    #@6
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 915
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 927
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 1679
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@3
    move-result v9

    #@4
    .line 1680
    .local v9, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@7
    move-result v10

    #@8
    .line 1681
    .local v10, "y":F
    invoke-virtual {p0, v9, v10}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    #@b
    move-result v11

    #@c
    if-nez v11, :cond_0

    #@e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    #@11
    move-result v11

    #@12
    if-eqz v11, :cond_1

    #@14
    .line 1682
    :cond_0
    iget-object v11, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@16
    const/16 v12, 0x3e8

    #@18
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@1b
    move-result-object v11

    #@1c
    return-object v11

    #@1d
    .line 1685
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1f
    .line 1686
    .local v3, "childrenCount":I
    if-eqz v3, :cond_6

    #@21
    .line 1687
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@24
    move-result-object v8

    #@25
    .line 1688
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_3

    #@27
    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@2a
    move-result v4

    #@2b
    .line 1690
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2d
    .line 1691
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    #@2f
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    #@31
    .line 1692
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    #@34
    move-result v1

    #@35
    .line 1693
    .local v1, "childIndex":I
    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    .line 1694
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    #@3c
    move-result-object v6

    #@3d
    .line 1695
    .local v6, "point":Landroid/graphics/PointF;
    invoke-virtual {p0, v9, v10, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@40
    move-result v11

    #@41
    if-eqz v11, :cond_4

    #@43
    .line 1697
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    #@46
    move-result-object v7

    #@47
    .line 1698
    .local v7, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v7, :cond_5

    #@49
    .line 1699
    if-eqz v8, :cond_2

    #@4b
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@4e
    .line 1700
    :cond_2
    return-object v7

    #@4f
    .line 1688
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "point":Landroid/graphics/PointF;
    .end local v7    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_3
    const/4 v4, 0x0

    #@50
    .local v4, "customOrder":Z
    goto :goto_0

    #@51
    .line 1691
    .end local v4    # "customOrder":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childIndex":I
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v6    # "point":Landroid/graphics/PointF;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@53
    goto :goto_1

    #@54
    .line 1705
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v6    # "point":Landroid/graphics/PointF;
    :cond_5
    if-eqz v8, :cond_6

    #@56
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@59
    .line 1710
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@5c
    move-result-object v11

    #@5d
    return-object v11
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 6852
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6775
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    #@3
    .line 6796
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@6
    .line 6793
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4322
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4338
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1322
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1321
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1323
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@d
    .line 1324
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    #@f
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    #@12
    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    #@0
    .prologue
    .line 4856
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    #@3
    .line 4857
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@6
    .line 4858
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@a
    .line 4855
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 4875
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 4876
    .local v2, "count":I
    if-gtz v2, :cond_0

    #@6
    .line 4877
    return-void

    #@7
    .line 4880
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 4881
    .local v0, "children":[Landroid/view/View;
    iput v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    .line 4883
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@d
    .line 4884
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f
    if-eqz v7, :cond_6

    #@11
    const/4 v3, 0x1

    #@12
    .line 4885
    .local v3, "detach":Z
    :goto_0
    const/4 v1, 0x0

    #@13
    .line 4887
    .local v1, "clearChildFocus":Z
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@16
    .line 4889
    add-int/lit8 v5, v2, -0x1

    #@18
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    #@1a
    .line 4890
    aget-object v6, v0, v5

    #@1c
    .line 4892
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1e
    if-eqz v7, :cond_1

    #@20
    .line 4893
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@22
    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@25
    .line 4896
    :cond_1
    if-ne v6, v4, :cond_2

    #@27
    .line 4897
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@2a
    .line 4898
    const/4 v1, 0x1

    #@2b
    .line 4901
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    #@2e
    .line 4903
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@31
    .line 4904
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@34
    .line 4906
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@37
    move-result-object v7

    #@38
    if-nez v7, :cond_3

    #@3a
    .line 4907
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@3c
    if-eqz v7, :cond_7

    #@3e
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@43
    move-result v7

    #@44
    .line 4906
    if-eqz v7, :cond_7

    #@46
    .line 4908
    :cond_3
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@49
    .line 4913
    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_5

    #@4f
    .line 4914
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@52
    .line 4917
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@55
    .line 4919
    iput-object v8, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@57
    .line 4920
    aput-object v8, v0, v5

    #@59
    .line 4889
    add-int/lit8 v5, v5, -0x1

    #@5b
    goto :goto_1

    #@5c
    .line 4884
    .end local v1    # "clearChildFocus":Z
    .end local v3    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    #@5d
    .restart local v3    # "detach":Z
    goto :goto_0

    #@5e
    .line 4909
    .restart local v1    # "clearChildFocus":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_4

    #@60
    .line 4910
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@63
    goto :goto_2

    #@64
    .line 4923
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_9

    #@66
    .line 4924
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@69
    .line 4925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@6c
    move-result v7

    #@6d
    if-nez v7, :cond_9

    #@6f
    .line 4926
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@72
    .line 4874
    :cond_9
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 4952
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4953
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@9
    .line 4956
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    if-ne p1, v0, :cond_1

    #@d
    .line 4957
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    #@10
    .line 4960
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    #@13
    .line 4962
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@16
    .line 4963
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@19
    .line 4965
    if-eqz p2, :cond_5

    #@1b
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_5

    #@21
    .line 4967
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@24
    .line 4972
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 4973
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@2e
    .line 4976
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@31
    .line 4951
    return-void

    #@32
    .line 4966
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@34
    if-eqz v0, :cond_6

    #@36
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 4965
    if-nez v0, :cond_2

    #@3e
    .line 4968
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 4969
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@45
    goto :goto_0
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4092
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 4093
    return-void

    #@6
    .line 4095
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    .line 4096
    .local v1, "size":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 4097
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    if-ne p1, v2, :cond_1

    #@17
    .line 4098
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@19
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1c
    .line 4099
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@1e
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    .line 4100
    iput-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@23
    .line 4101
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@26
    .line 4102
    const/4 v2, 0x1

    #@27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@2a
    .line 4103
    return-void

    #@2b
    .line 4096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 4091
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 4620
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4621
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@9
    .line 4622
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@d
    .line 4619
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4665
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    #@7
    .line 4666
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@a
    .line 4667
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@e
    .line 4664
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 4637
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    #@3
    .line 4636
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4681
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    #@3
    .line 4682
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@6
    .line 4683
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@a
    .line 4680
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4652
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    #@3
    .line 4651
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x60000

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 726
    return-void

    #@9
    .line 730
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@c
    .line 733
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    if-eq v0, p1, :cond_2

    #@10
    .line 734
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 735
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@16
    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@19
    .line 738
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1b
    .line 740
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 741
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@21
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@24
    .line 721
    :cond_3
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    .line 879
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    const/high16 v2, 0x80000

    #@2
    const/4 v0, 0x0

    #@3
    .line 2740
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    if-ne p1, v0, :cond_1

    #@b
    .line 2742
    return-void

    #@c
    .line 2745
    :cond_1
    if-eqz p1, :cond_3

    #@e
    .line 2746
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@10
    or-int/2addr v0, v2

    #@11
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    .line 2752
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 2753
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@19
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@1c
    .line 2738
    :cond_2
    return-void

    #@1d
    .line 2748
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    const v1, -0x80001

    #@22
    and-int/2addr v0, v1

    #@23
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@25
    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2824
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@3
    move-result v0

    #@4
    .line 2826
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 2838
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2828
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@24
    move-result v2

    #@25
    return v2

    #@26
    .line 2830
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@29
    move-result v1

    #@2a
    .line 2831
    .local v1, "took":Z
    if-eqz v1, :cond_0

    #@2c
    .end local v1    # "took":Z
    :goto_0
    return v1

    #@2d
    .restart local v1    # "took":Z
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    #@30
    move-result v1

    #@31
    goto :goto_0

    #@32
    .line 2834
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    #@35
    move-result v1

    #@36
    .line 2835
    .restart local v1    # "took":Z
    if-eqz v1, :cond_1

    #@38
    .end local v1    # "took":Z
    :goto_1
    return v1

    #@39
    .restart local v1    # "took":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@3c
    move-result v1

    #@3d
    goto :goto_1

    #@3e
    .line 2826
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 884
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@3
    .line 885
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    #@5
    .line 886
    return v2

    #@6
    .line 888
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@9
    move-result v1

    #@a
    .line 889
    .local v1, "propagate":Z
    if-nez v1, :cond_1

    #@c
    .line 890
    return v2

    #@d
    .line 892
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@10
    move-result v2

    #@11
    return v2
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    #@0
    .prologue
    .line 6555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 6556
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@6
    .line 6557
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    #@9
    .line 6554
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6400
    if-eqz p1, :cond_0

    #@2
    .line 6401
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@4
    or-int/lit16 v0, v0, 0x200

    #@6
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@8
    .line 6402
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 6403
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@e
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    #@11
    .line 6399
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    #@0
    .prologue
    .line 6746
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    #@3
    .line 6748
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6749
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6750
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6751
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6752
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    #@17
    .line 6749
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6745
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    #@0
    .prologue
    .line 6682
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    #@3
    .line 6684
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6685
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6686
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6687
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6688
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    #@17
    .line 6685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6681
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    #@0
    .prologue
    .line 6730
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    #@3
    .line 6732
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6733
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6734
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6735
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6736
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    #@17
    .line 6733
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6729
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    #@0
    .prologue
    .line 6714
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    #@3
    .line 6716
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6717
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6718
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6719
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6720
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    #@17
    .line 6717
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6713
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    #@0
    .prologue
    .line 6698
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    #@3
    .line 6700
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6701
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6702
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6703
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6704
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    #@17
    .line 6701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6697
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    #@0
    .prologue
    .line 3109
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    #@3
    .line 3110
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 3111
    .local v1, "children":[Landroid/view/View;
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3112
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 3113
    aget-object v3, v1, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    #@f
    .line 3112
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3108
    :cond_0
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    #@0
    .prologue
    .line 6654
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    #@3
    .line 6655
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6656
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@a
    .line 6657
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6658
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {v0}, Landroid/view/View;->areDrawablesResolved()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 6656
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6659
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    #@20
    goto :goto_1

    #@21
    .line 6653
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    #@0
    .prologue
    .line 6585
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    #@3
    move-result v3

    #@4
    .line 6586
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6587
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6588
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6589
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6590
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6591
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    #@1a
    .line 6588
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6595
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    #@0
    .prologue
    .line 6669
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    #@3
    .line 6670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6671
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 6672
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6673
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    #@11
    .line 6671
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 6668
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    #@0
    .prologue
    .line 6639
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    #@3
    .line 6640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6641
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@a
    .line 6642
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6643
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {v0}, Landroid/view/View;->isPaddingResolved()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 6641
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6644
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    #@20
    goto :goto_1

    #@21
    .line 6638
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    #@0
    .prologue
    .line 6566
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    #@3
    move-result v3

    #@4
    .line 6568
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6569
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6570
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6571
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6572
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6573
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    #@1a
    .line 6570
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6577
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextAlignment()Z
    .locals 5

    #@0
    .prologue
    .line 6621
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    #@3
    move-result v3

    #@4
    .line 6622
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6623
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6624
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6625
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6626
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6627
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    #@1a
    .line 6624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6631
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    #@0
    .prologue
    .line 6603
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    #@3
    move-result v3

    #@4
    .line 6604
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6606
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6607
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6608
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6609
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    #@1a
    .line 6606
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6613
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    #@0
    .prologue
    .line 5614
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    or-int/lit8 v0, v0, 0x8

    #@4
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    .line 5613
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    #@0
    .prologue
    .line 6501
    if-eqz p1, :cond_0

    #@2
    .line 6502
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    or-int/lit16 v0, v0, 0x2000

    #@6
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    .line 6507
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    #@b
    .line 6500
    return-void

    #@c
    .line 6504
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    and-int/lit16 v0, v0, -0x2001

    #@10
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z

    #@0
    .prologue
    .line 5714
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5713
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5673
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5672
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3260
    if-nez p1, :cond_0

    #@2
    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@4
    and-int/lit8 v3, v3, 0x3

    #@6
    const/4 v4, 0x3

    #@7
    if-eq v3, v4, :cond_1

    #@9
    .line 3261
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@b
    .line 3262
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@d
    .line 3263
    .local v1, "count":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@10
    .line 3264
    aget-object v3, v0, v2

    #@12
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@15
    .line 3263
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 3259
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5784
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5783
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5752
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@6
    .line 5751
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 3767
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    and-int/lit8 v4, v4, 0x1

    #@5
    if-ne v4, v3, :cond_1

    #@7
    move v2, v3

    #@8
    .line 3768
    .local v2, "previousValue":Z
    :goto_0
    if-eq p1, v2, :cond_3

    #@a
    .line 3769
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@d
    .line 3770
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@10
    if-ge v1, v4, :cond_2

    #@12
    .line 3771
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    .line 3772
    .local v0, "child":Landroid/view/View;
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 3773
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@1c
    invoke-virtual {v4, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@1f
    .line 3770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_1

    #@22
    .line 3767
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "previousValue":Z
    :cond_1
    const/4 v2, 0x0

    #@23
    goto :goto_0

    #@24
    .line 3776
    .restart local v1    # "i":I
    .restart local v2    # "previousValue":Z
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@27
    .line 3766
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2
    .param p1, "clipToPadding"    # Z

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 3792
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@4
    move-result v0

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 3793
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@a
    .line 3794
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@e
    .line 3791
    :cond_0
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    #@0
    .prologue
    .line 698
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 707
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    const v1, -0x60001

    #@11
    and-int/2addr v0, v1

    #@12
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@14
    .line 708
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    const/high16 v1, 0x60000

    #@18
    and-int/2addr v1, p1

    #@19
    or-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1c
    .line 697
    return-void

    #@1d
    .line 698
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    #@0
    .prologue
    .line 5624
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    .line 5625
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5626
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    or-int/lit8 v0, v0, 0x8

    #@a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    .line 5623
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 6542
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    .line 6541
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    #@0
    .prologue
    .line 5898
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 5899
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    #@7
    .line 5900
    const/4 v0, -0x1

    #@8
    if-eq p1, v0, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@e
    .line 5901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@11
    .line 5897
    :cond_0
    return-void

    #@12
    .line 5900
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    #@0
    .prologue
    .line 4767
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4768
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    .line 4769
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    #@9
    .line 4770
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@b
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    #@e
    .line 4772
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@10
    .line 4773
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 4774
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@16
    iget-object v2, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@18
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    #@1b
    .line 4766
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    #@0
    .prologue
    .line 2681
    if-eqz p1, :cond_0

    #@2
    .line 2682
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v1, 0x200000

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@9
    .line 2677
    :goto_0
    return-void

    #@a
    .line 2684
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    const v1, -0x200001

    #@f
    and-int/2addr v0, v1

    #@10
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@0
    .prologue
    .line 4306
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    .line 4305
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I

    #@0
    .prologue
    .line 5831
    and-int/lit8 v0, p1, 0x3

    #@2
    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@4
    .line 5830
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3912
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 3911
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 4
    .param p1, "touchscreenBlocksFocus"    # Z

    #@0
    .prologue
    .line 1124
    if-eqz p1, :cond_1

    #@2
    .line 1125
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v3, 0x4000000

    #@6
    or-int/2addr v2, v3

    #@7
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@9
    .line 1126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 1128
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 1129
    const/4 v2, 0x2

    #@1a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    .line 1130
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    #@20
    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@23
    .line 1123
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 1136
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@26
    const v3, -0x4000001

    #@29
    and-int/2addr v2, v3

    #@2a
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2c
    goto :goto_0
.end method

.method public setTransitionGroup(Z)V
    .locals 2
    .param p1, "isTransitionGroup"    # Z

    #@0
    .prologue
    .line 2729
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    const/high16 v1, 0x2000000

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 2730
    if-eqz p1, :cond_0

    #@9
    .line 2731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@b
    const/high16 v1, 0x1000000

    #@d
    or-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@10
    .line 2728
    :goto_0
    return-void

    #@11
    .line 2733
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    const v1, -0x1000001

    #@16
    and-int/2addr v0, v1

    #@17
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@19
    goto :goto_0
.end method

.method shouldBlockFocusForTouchscreen()Z
    .locals 2

    #@0
    .prologue
    .line 1148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1149
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "android.hardware.touchscreen"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 1148
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 6767
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 769
    return v0

    #@8
    .line 771
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@e
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    #@11
    move-result v0

    #@12
    :cond_1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    const v2, -0x20000001

    #@3
    .line 784
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    const/high16 v1, 0x20000000

    #@7
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@a
    .line 785
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 786
    const/4 v0, 0x1

    #@11
    .line 789
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    and-int/2addr v1, v2

    #@14
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    .line 786
    return v0

    #@17
    .line 789
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@19
    and-int/2addr v0, v2

    #@1a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1c
    .line 791
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@1e
    if-eqz v0, :cond_1

    #@20
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@22
    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    #@25
    move-result v0

    #@26
    :goto_0
    return v0

    #@27
    .line 788
    :catchall_0
    move-exception v0

    #@28
    .line 789
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2a
    and-int/2addr v1, v2

    #@2b
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2d
    .line 788
    throw v0

    #@2e
    .line 791
    :cond_1
    const/4 v0, 0x0

    #@2f
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const v2, -0x10000001

    #@3
    .line 796
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    const/high16 v1, 0x8000000

    #@7
    and-int/2addr v0, v1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 799
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    const/high16 v1, 0x10000000

    #@e
    or-int/2addr v0, v1

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@11
    .line 800
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v0

    #@16
    .line 802
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@18
    and-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1b
    .line 800
    return-object v0

    #@1c
    .line 801
    :catchall_0
    move-exception v0

    #@1d
    .line 802
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    and-int/2addr v1, v2

    #@20
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@22
    .line 801
    throw v0

    #@23
    .line 806
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    #@25
    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const v4, -0x8000001

    #@4
    .line 813
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    const/high16 v3, 0x10000000

    #@8
    and-int/2addr v2, v3

    #@9
    if-nez v2, :cond_0

    #@b
    .line 814
    if-nez p3, :cond_0

    #@d
    .line 817
    :try_start_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@f
    const/high16 v3, 0x8000000

    #@11
    or-int/2addr v2, v3

    #@12
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@14
    .line 818
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v1

    #@18
    .line 820
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1a
    and-int/2addr v2, v4

    #@1b
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1d
    .line 822
    sget-object v2, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    #@1f
    if-eq v1, v2, :cond_0

    #@21
    .line 823
    return-object v1

    #@22
    .line 819
    .end local v1    # "mode":Landroid/view/ActionMode;
    :catchall_0
    move-exception v2

    #@23
    .line 820
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@25
    and-int/2addr v3, v4

    #@26
    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@28
    .line 819
    throw v2

    #@29
    .line 826
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 828
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2f
    invoke-interface {v2, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 829
    :catch_0
    move-exception v0

    #@35
    .line 831
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@37
    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 834
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    return-object v5
.end method

.method public startLayoutAnimation()V
    .locals 1

    #@0
    .prologue
    .line 5601
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5602
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    or-int/lit8 v0, v0, 0x8

    #@8
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@a
    .line 5603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@d
    .line 5600
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6268
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@2
    if-ne v0, p0, :cond_1

    #@4
    .line 6269
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 6270
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@f
    .line 6272
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 6267
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    #@0
    .prologue
    .line 6342
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@2
    .line 6343
    if-nez p1, :cond_0

    #@4
    .line 6344
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@b
    .line 6346
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@e
    .line 6341
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2577
    const/4 v0, 0x0

    #@1
    aget v1, p1, v0

    #@3
    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@5
    iget v3, p2, Landroid/view/View;->mLeft:I

    #@7
    sub-int/2addr v2, v3

    #@8
    int-to-float v2, v2

    #@9
    add-float/2addr v1, v2

    #@a
    aput v1, p1, v0

    #@c
    .line 2578
    const/4 v0, 0x1

    #@d
    aget v1, p1, v0

    #@f
    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@11
    iget v3, p2, Landroid/view/View;->mTop:I

    #@13
    sub-int/2addr v2, v3

    #@14
    int-to-float v2, v2

    #@15
    add-float/2addr v1, v2

    #@16
    aput v1, p1, v0

    #@18
    .line 2580
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 2581
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@25
    .line 2576
    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "focused"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 995
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 996
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@8
    .line 991
    :goto_0
    return-void

    #@9
    .line 998
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@e
    .line 999
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@10
    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    #@0
    .prologue
    .line 1594
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@3
    move-result v0

    #@4
    .line 1596
    .local v0, "changed":Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@6
    .line 1597
    .local v3, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@8
    .line 1598
    .local v2, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@9
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@b
    .line 1599
    aget-object v1, v2, v4

    #@d
    .line 1600
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@10
    move-result v5

    #@11
    or-int/2addr v0, v5

    #@12
    .line 1598
    add-int/lit8 v4, v4, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1602
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4263
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 4264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid LayoutParams supplied to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 4266
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@22
    if-eq v0, p0, :cond_1

    #@24
    .line 4267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Given view not a child of "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 4269
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@41
    .line 4262
    return-void
.end method
