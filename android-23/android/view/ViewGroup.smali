.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$1;,
        Landroid/view/ViewGroup$2;
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

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

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

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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
    .line 117
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
    .line 437
    sput v3, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    #@11
    .line 512
    new-instance v0, Landroid/view/ViewGroup$1;

    #@13
    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    #@16
    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    #@18
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 561
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 565
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 564
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 569
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 568
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
    .line 573
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@8
    .line 221
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@a
    .line 458
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@c
    .line 463
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@e
    .line 492
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@10
    .line 502
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@12
    .line 503
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@14
    .line 6176
    new-instance v0, Landroid/view/ViewGroup$2;

    #@16
    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    #@19
    .line 6175
    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@1b
    .line 574
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    #@1e
    .line 575
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@21
    .line 572
    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 6068
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2
    .line 6070
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    #@4
    .line 6071
    new-instance v0, Ljava/util/ArrayList;

    #@6
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@b
    .line 6074
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 6067
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
    .line 4385
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3
    .line 4386
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 4387
    .local v1, "count":I
    array-length v2, v0

    #@6
    .line 4388
    .local v2, "size":I
    if-ne p2, v1, :cond_2

    #@8
    .line 4389
    if-ne v2, v1, :cond_0

    #@a
    .line 4390
    add-int/lit8 v3, v2, 0xc

    #@c
    new-array v3, v3, [Landroid/view/View;

    #@e
    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@10
    .line 4391
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@12
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 4392
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@17
    .line 4394
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@19
    add-int/lit8 v4, v3, 0x1

    #@1b
    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1d
    aput-object p1, v0, v3

    #@1f
    .line 4384
    :cond_1
    :goto_0
    return-void

    #@20
    .line 4395
    :cond_2
    if-ge p2, v1, :cond_4

    #@22
    .line 4396
    if-ne v2, v1, :cond_3

    #@24
    .line 4397
    add-int/lit8 v3, v2, 0xc

    #@26
    new-array v3, v3, [Landroid/view/View;

    #@28
    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2a
    .line 4398
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2c
    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    .line 4399
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@31
    add-int/lit8 v4, p2, 0x1

    #@33
    sub-int v5, v1, p2

    #@35
    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 4400
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3a
    .line 4404
    :goto_1
    aput-object p1, v0, p2

    #@3c
    .line 4405
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3e
    add-int/lit8 v3, v3, 0x1

    #@40
    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@42
    .line 4406
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@44
    if-lt v3, p2, :cond_1

    #@46
    .line 4407
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@48
    add-int/lit8 v3, v3, 0x1

    #@4a
    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@4c
    goto :goto_0

    #@4d
    .line 4402
    :cond_3
    add-int/lit8 v3, p2, 0x1

    #@4f
    sub-int v4, v1, p2

    #@51
    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    goto :goto_1

    #@55
    .line 4410
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
    .line 2401
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    #@3
    move-result-object v0

    #@4
    .line 2402
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@6
    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@8
    .line 2403
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@a
    .line 2404
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
    .line 4302
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 4305
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@a
    const/4 v6, 0x3

    #@b
    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@e
    .line 4308
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 4309
    new-instance v5, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v6, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    #@19
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5

    #@1d
    .line 4313
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 4314
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@23
    invoke-virtual {v5, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@26
    .line 4317
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_3

    #@2c
    .line 4318
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@2f
    move-result-object p3

    #@30
    .line 4321
    :cond_3
    if-eqz p4, :cond_d

    #@32
    .line 4322
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@34
    .line 4327
    :goto_0
    if-gez p2, :cond_4

    #@36
    .line 4328
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@38
    .line 4331
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@3b
    .line 4334
    if-eqz p4, :cond_e

    #@3d
    .line 4335
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@40
    .line 4340
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_5

    #@46
    .line 4341
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@4d
    .line 4344
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4f
    .line 4345
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    #@51
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@53
    and-int/2addr v5, v8

    #@54
    if-nez v5, :cond_7

    #@56
    .line 4346
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@58
    .line 4347
    .local v2, "lastKeepOn":Z
    iput-boolean v7, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@5a
    .line 4348
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@5c
    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@5e
    and-int/lit8 v6, v6, 0xc

    #@60
    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@63
    .line 4349
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@65
    if-eqz v5, :cond_6

    #@67
    .line 4350
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@6a
    .line 4352
    :cond_6
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    #@6c
    .line 4355
    .end local v2    # "lastKeepOn":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_8

    #@72
    .line 4356
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    #@75
    .line 4359
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    #@78
    .line 4361
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    #@7a
    and-int/2addr v5, v8

    #@7b
    if-ne v5, v8, :cond_9

    #@7d
    .line 4362
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7f
    const/high16 v6, 0x10000

    #@81
    or-int/2addr v5, v6

    #@82
    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@84
    .line 4365
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_a

    #@8a
    .line 4366
    invoke-virtual {p0, p1, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@8d
    .line 4369
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@90
    move-result v5

    #@91
    const/16 v6, 0x8

    #@93
    if-eq v5, v6, :cond_b

    #@95
    .line 4370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@98
    .line 4373
    :cond_b
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@9a
    if-eqz v5, :cond_f

    #@9c
    .line 4374
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@9e
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a1
    move-result v4

    #@a2
    .line 4375
    .local v4, "transientCount":I
    const/4 v1, 0x0

    #@a3
    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_f

    #@a5
    .line 4376
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
    .line 4377
    .local v3, "oldIndex":I
    if-gt p2, v3, :cond_c

    #@b3
    .line 4378
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
    .line 4375
    :cond_c
    add-int/lit8 v1, v1, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 4324
    .end local v0    # "ai":Landroid/view/View$AttachInfo;
    .end local v1    # "i":I
    .end local v3    # "oldIndex":I
    .end local v4    # "transientCount":I
    :cond_d
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 4337
    :cond_e
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@c8
    goto/16 :goto_1

    #@ca
    .line 4300
    .restart local v0    # "ai":Landroid/view/View$AttachInfo;
    :cond_f
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4472
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    #@5
    move-result-object v0

    #@6
    .line 4473
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    #@9
    .line 4471
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
    .line 2464
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    #@4
    and-int/lit8 v2, v2, 0xc

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2465
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@b
    move-result-object v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2464
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 2465
    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2361
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    if-eqz v2, :cond_2

    #@5
    .line 2362
    const/4 v8, 0x0

    #@6
    .line 2363
    .local v8, "syntheticEvent":Z
    if-nez p1, :cond_0

    #@8
    .line 2364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    .line 2366
    .local v0, "now":J
    const/4 v4, 0x3

    #@d
    const/4 v7, 0x0

    #@e
    move-wide v2, v0

    #@f
    move v6, v5

    #@10
    .line 2365
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@13
    move-result-object p1

    #@14
    .line 2367
    const/16 v2, 0x1002

    #@16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@19
    .line 2368
    const/4 v8, 0x1

    #@1a
    .line 2371
    .end local v0    # "now":J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1c
    .local v9, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    #@1e
    .line 2372
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@20
    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@23
    .line 2373
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@25
    iget v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@27
    const/4 v4, 0x1

    #@28
    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@2b
    .line 2371
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@2d
    goto :goto_0

    #@2e
    .line 2375
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    #@31
    .line 2377
    if-eqz v8, :cond_2

    #@33
    .line 2378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@36
    .line 2360
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
    .line 1891
    const/4 v10, 0x0

    #@2
    .line 1892
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@4
    .line 1893
    .end local v10    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v11, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_2

    #@6
    .line 1894
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@8
    .line 1895
    .local v9, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@a
    if-ne v2, p1, :cond_1

    #@c
    .line 1896
    if-nez v10, :cond_0

    #@e
    .line 1897
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@10
    .line 1901
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    #@13
    .line 1903
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 1905
    .local v0, "now":J
    const/16 v4, 0xa

    #@19
    const/4 v7, 0x0

    #@1a
    move-wide v2, v0

    #@1b
    move v6, v5

    #@1c
    .line 1904
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@1f
    move-result-object v8

    #@20
    .line 1906
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@22
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@25
    .line 1907
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@28
    .line 1908
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@2b
    .line 1909
    return-void

    #@2c
    .line 1899
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@2e
    goto :goto_1

    #@2f
    .line 1911
    :cond_1
    move-object v10, v11

    #@30
    .line 1912
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    move-object v11, v9

    #@31
    goto :goto_0

    #@32
    .line 1890
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
    .line 2434
    const/4 v10, 0x0

    #@2
    .line 2435
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@4
    .line 2436
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v11, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_2

    #@6
    .line 2437
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@8
    .line 2438
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@a
    if-ne v2, p1, :cond_1

    #@c
    .line 2439
    if-nez v10, :cond_0

    #@e
    .line 2440
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@10
    .line 2444
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@13
    .line 2446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 2448
    .local v0, "now":J
    const/4 v4, 0x3

    #@18
    const/4 v7, 0x0

    #@19
    move-wide v2, v0

    #@1a
    move v6, v5

    #@1b
    .line 2447
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@1e
    move-result-object v8

    #@1f
    .line 2449
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@21
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@24
    .line 2450
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@27
    .line 2451
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@2a
    .line 2452
    return-void

    #@2b
    .line 2442
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@2d
    goto :goto_1

    #@2e
    .line 2454
    :cond_1
    move-object v10, v11

    #@2f
    .line 2455
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v11, v9

    #@30
    goto :goto_0

    #@31
    .line 2433
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    #@0
    .prologue
    .line 4234
    const/high16 v0, 0x800000

    #@2
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4235
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@b
    .line 4233
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2346
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .line 2347
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    #@5
    .line 2349
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@7
    .line 2350
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@a
    .line 2351
    move-object v1, v0

    #@b
    .line 2352
    if-nez v1, :cond_0

    #@d
    .line 2353
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@f
    .line 2345
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    #@0
    .prologue
    .line 579
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
    .line 3235
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
    .line 3236
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

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2055
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@2
    iget v5, p2, Landroid/view/View;->mLeft:I

    #@4
    sub-int/2addr v4, v5

    #@5
    int-to-float v1, v4

    #@6
    .line 2056
    .local v1, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@8
    iget v5, p2, Landroid/view/View;->mTop:I

    #@a
    sub-int/2addr v4, v5

    #@b
    int-to-float v2, v4

    #@c
    .line 2059
    .local v2, "offsetY":F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_0

    #@12
    .line 2060
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@15
    move-result-object v3

    #@16
    .line 2061
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@19
    .line 2062
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@20
    .line 2063
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@23
    move-result v0

    #@24
    .line 2064
    .local v0, "handled":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@27
    .line 2070
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return v0

    #@28
    .line 2066
    .end local v0    # "handled":Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@2b
    .line 2067
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@2e
    move-result v0

    #@2f
    .line 2068
    .restart local v0    # "handled":Z
    neg-float v4, v1

    #@30
    neg-float v5, v2

    #@31
    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@34
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
    .line 2517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v4

    #@6
    .line 2518
    .local v4, "oldAction":I
    if-nez p2, :cond_0

    #@8
    if-ne v4, v8, :cond_2

    #@a
    .line 2519
    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    #@d
    .line 2520
    if-nez p3, :cond_1

    #@f
    .line 2521
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    .line 2525
    .local v0, "handled":Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@16
    .line 2526
    return v0

    #@17
    .line 2523
    .end local v0    # "handled":Z
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "handled":Z
    goto :goto_0

    #@1c
    .line 2530
    .end local v0    # "handled":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@1f
    move-result v5

    #@20
    .line 2531
    .local v5, "oldPointerIdBits":I
    and-int v1, v5, p4

    #@22
    .line 2535
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_3

    #@24
    .line 2536
    return v7

    #@25
    .line 2544
    :cond_3
    if-ne v1, v5, :cond_7

    #@27
    .line 2545
    if-eqz p3, :cond_4

    #@29
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_6

    #@2f
    .line 2546
    :cond_4
    if-nez p3, :cond_5

    #@31
    .line 2547
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@34
    move-result v0

    #@35
    .line 2557
    .restart local v0    # "handled":Z
    :goto_1
    return v0

    #@36
    .line 2549
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
    .line 2550
    .local v2, "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@3e
    iget v8, p3, Landroid/view/View;->mTop:I

    #@40
    sub-int/2addr v7, v8

    #@41
    int-to-float v3, v7

    #@42
    .line 2551
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@45
    .line 2553
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@48
    move-result v0

    #@49
    .line 2555
    .restart local v0    # "handled":Z
    neg-float v7, v2

    #@4a
    neg-float v8, v3

    #@4b
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@4e
    goto :goto_1

    #@4f
    .line 2559
    .end local v0    # "handled":Z
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@52
    move-result-object v6

    #@53
    .line 2565
    .local v6, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    #@55
    .line 2566
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@58
    move-result v0

    #@59
    .line 2579
    .restart local v0    # "handled":Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    #@5c
    .line 2580
    return v0

    #@5d
    .line 2561
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
    .line 2568
    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@64
    iget v8, p3, Landroid/view/View;->mLeft:I

    #@66
    sub-int/2addr v7, v8

    #@67
    int-to-float v2, v7

    #@68
    .line 2569
    .restart local v2    # "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@6a
    iget v8, p3, Landroid/view/View;->mTop:I

    #@6c
    sub-int/2addr v7, v8

    #@6d
    int-to-float v3, v7

    #@6e
    .line 2570
    .restart local v3    # "offsetY":F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@71
    .line 2571
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    #@74
    move-result v7

    #@75
    if-nez v7, :cond_9

    #@77
    .line 2572
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@7e
    .line 2575
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
    .line 3230
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
    .line 3231
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
    .line 3229
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
    .line 7750
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7752
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [F

    #@8
    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@a
    .line 7755
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@c
    int-to-float v1, p2

    #@d
    const/4 v2, 0x0

    #@e
    aput v1, v0, v2

    #@10
    .line 7756
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@12
    int-to-float v1, p3

    #@13
    const/4 v2, 0x1

    #@14
    aput v1, v0, v2

    #@16
    .line 7757
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@18
    int-to-float v1, p4

    #@19
    const/4 v2, 0x2

    #@1a
    aput v1, v0, v2

    #@1c
    .line 7758
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@1e
    int-to-float v1, p3

    #@1f
    const/4 v2, 0x3

    #@20
    aput v1, v0, v2

    #@22
    .line 7760
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@24
    int-to-float v1, p4

    #@25
    const/4 v2, 0x4

    #@26
    aput v1, v0, v2

    #@28
    .line 7761
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@2a
    int-to-float v1, p3

    #@2b
    const/4 v2, 0x5

    #@2c
    aput v1, v0, v2

    #@2e
    .line 7762
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@30
    int-to-float v1, p4

    #@31
    const/4 v2, 0x6

    #@32
    aput v1, v0, v2

    #@34
    .line 7763
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@36
    int-to-float v1, p5

    #@37
    const/4 v2, 0x7

    #@38
    aput v1, v0, v2

    #@3a
    .line 7765
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@3c
    int-to-float v1, p4

    #@3d
    const/16 v2, 0x8

    #@3f
    aput v1, v0, v2

    #@41
    .line 7766
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@43
    int-to-float v1, p5

    #@44
    const/16 v2, 0x9

    #@46
    aput v1, v0, v2

    #@48
    .line 7767
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@4a
    int-to-float v1, p2

    #@4b
    const/16 v2, 0xa

    #@4d
    aput v1, v0, v2

    #@4f
    .line 7768
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@51
    int-to-float v1, p5

    #@52
    const/16 v2, 0xb

    #@54
    aput v1, v0, v2

    #@56
    .line 7770
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@58
    int-to-float v1, p2

    #@59
    const/16 v2, 0xc

    #@5b
    aput v1, v0, v2

    #@5d
    .line 7771
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@5f
    int-to-float v1, p5

    #@60
    const/16 v2, 0xd

    #@62
    aput v1, v0, v2

    #@64
    .line 7772
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@66
    int-to-float v1, p2

    #@67
    const/16 v2, 0xe

    #@69
    aput v1, v0, v2

    #@6b
    .line 7773
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@6d
    int-to-float v1, p3

    #@6e
    const/16 v2, 0xf

    #@70
    aput v1, v0, v2

    #@72
    .line 7775
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    #@74
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    #@77
    .line 7749
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
    .line 3241
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    #@a
    .line 3242
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
    .line 3243
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
    .line 3244
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
    .line 3240
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1880
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@3
    if-nez v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 1881
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v0

    #@d
    .line 1883
    .local v0, "now":J
    const/16 v4, 0xa

    #@f
    const/4 v7, 0x0

    #@10
    move-wide v2, v0

    #@11
    move v6, v5

    #@12
    .line 1882
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@15
    move-result-object v8

    #@16
    .line 1884
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    #@18
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    #@1b
    .line 1885
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1e
    .line 1886
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@21
    .line 1879
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
    .line 3250
    sub-int v2, p1, p5

    #@2
    .line 3251
    .local v2, "x1":I
    sub-int v3, p2, p6

    #@4
    .line 3253
    .local v3, "y1":I
    add-int v4, p3, p7

    #@6
    .line 3254
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
    .line 3256
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
    .line 3257
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
    .line 3258
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
    .line 3259
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@30
    .line 3249
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
    .line 3214
    if-eq p2, p4, :cond_2

    #@2
    if-eq p3, p5, :cond_2

    #@4
    .line 3215
    if-le p2, p4, :cond_0

    #@6
    .line 3216
    move v6, p2

    #@7
    .local v6, "tmp":I
    move p2, p4

    #@8
    move p4, v6

    #@9
    .line 3218
    .end local v6    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    #@b
    .line 3219
    move v6, p3

    #@c
    .restart local v6    # "tmp":I
    move p3, p5

    #@d
    move p5, v6

    #@e
    .line 3221
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
    .line 3213
    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2298
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@4
    move-result-object v2

    #@5
    .line 2299
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_0

    #@7
    .line 2300
    return-object v4

    #@8
    .line 2303
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 2304
    .local v0, "current":Landroid/view/View;
    if-nez v0, :cond_1

    #@e
    .line 2305
    return-object v4

    #@f
    .line 2308
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 2309
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 2310
    if-ne v1, p0, :cond_2

    #@19
    .line 2311
    return-object v0

    #@1a
    :cond_2
    move-object v0, v1

    #@1b
    .line 2313
    check-cast v0, Landroid/view/View;

    #@1d
    .line 2314
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object v1

    #@21
    goto :goto_0

    #@22
    .line 2317
    :cond_3
    return-object v4
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
    .line 5974
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result v3

    #@7
    .line 5975
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a
    move-result v4

    #@b
    .line 5977
    .local v4, "specSize":I
    sub-int v5, v4, p1

    #@d
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v2

    #@11
    .line 5979
    .local v2, "size":I
    const/4 v1, 0x0

    #@12
    .line 5980
    .local v1, "resultSize":I
    const/4 v0, 0x0

    #@13
    .line 5982
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_0

    #@16
    .line 6038
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@19
    move-result v5

    #@1a
    return v5

    #@1b
    .line 5985
    :sswitch_0
    if-ltz p2, :cond_1

    #@1d
    .line 5986
    move v1, p2

    #@1e
    .line 5987
    const/high16 v0, 0x40000000    # 2.0f

    #@20
    goto :goto_0

    #@21
    .line 5988
    :cond_1
    if-ne p2, v8, :cond_2

    #@23
    .line 5990
    move v1, v2

    #@24
    .line 5991
    const/high16 v0, 0x40000000    # 2.0f

    #@26
    goto :goto_0

    #@27
    .line 5992
    :cond_2
    if-ne p2, v7, :cond_0

    #@29
    .line 5995
    move v1, v2

    #@2a
    .line 5996
    const/high16 v0, -0x80000000

    #@2c
    goto :goto_0

    #@2d
    .line 6002
    :sswitch_1
    if-ltz p2, :cond_3

    #@2f
    .line 6004
    move v1, p2

    #@30
    .line 6005
    const/high16 v0, 0x40000000    # 2.0f

    #@32
    goto :goto_0

    #@33
    .line 6006
    :cond_3
    if-ne p2, v8, :cond_4

    #@35
    .line 6009
    move v1, v2

    #@36
    .line 6010
    const/high16 v0, -0x80000000

    #@38
    goto :goto_0

    #@39
    .line 6011
    :cond_4
    if-ne p2, v7, :cond_0

    #@3b
    .line 6014
    move v1, v2

    #@3c
    .line 6015
    const/high16 v0, -0x80000000

    #@3e
    goto :goto_0

    #@3f
    .line 6021
    :sswitch_2
    if-ltz p2, :cond_5

    #@41
    .line 6023
    move v1, p2

    #@42
    .line 6024
    const/high16 v0, 0x40000000    # 2.0f

    #@44
    goto :goto_0

    #@45
    .line 6025
    :cond_5
    if-ne p2, v8, :cond_7

    #@47
    .line 6028
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@49
    if-eqz v5, :cond_6

    #@4b
    const/4 v1, 0x0

    #@4c
    .line 6029
    :goto_1
    const/4 v0, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 6028
    :cond_6
    move v1, v2

    #@4f
    goto :goto_1

    #@50
    .line 6030
    :cond_7
    if-ne p2, v7, :cond_0

    #@52
    .line 6033
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@54
    if-eqz v5, :cond_8

    #@56
    const/4 v1, 0x0

    #@57
    .line 6034
    :goto_2
    const/4 v0, 0x0

    #@58
    goto :goto_0

    #@59
    .line 6033
    :cond_8
    move v1, v2

    #@5a
    goto :goto_2

    #@5b
    .line 5982
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
    .line 7742
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7743
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@b
    .line 7744
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@11
    .line 7746
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    #@13
    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    #@0
    .prologue
    .line 1365
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
    .line 1366
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    #@d
    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    #@0
    .prologue
    .line 2469
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2470
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    #@9
    .line 2472
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
    .line 2388
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    #@5
    .line 2389
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 2390
    return-object v0

    #@a
    .line 2388
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@c
    goto :goto_0

    #@d
    .line 2393
    :cond_1
    return-object v2
.end method

.method private hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 5653
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
    .line 3501
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 3502
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
    .line 3501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3504
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
    .line 607
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    #@5
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v1

    #@9
    .line 610
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@c
    move-result v0

    #@d
    .line 611
    .local v0, "N":I
    const/4 v4, 0x0

    #@e
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@10
    .line 612
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@13
    move-result v3

    #@14
    .line 613
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    #@17
    .line 611
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 615
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v6

    #@1e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    #@21
    goto :goto_1

    #@22
    .line 618
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@25
    move-result v6

    #@26
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    #@29
    goto :goto_1

    #@2a
    .line 621
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d
    move-result v6

    #@2e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    #@31
    goto :goto_1

    #@32
    .line 624
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
    .line 627
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3e
    move-result v6

    #@3f
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    #@42
    goto :goto_1

    #@43
    .line 630
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@46
    move-result v6

    #@47
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    #@4a
    goto :goto_1

    #@4b
    .line 633
    :pswitch_6
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4e
    move-result v5

    #@4f
    .line 634
    .local v5, "id":I
    if-lez v5, :cond_0

    #@51
    .line 635
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
    .line 639
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
    .line 642
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6a
    move-result v6

    #@6b
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    #@6e
    goto :goto_1

    #@6f
    .line 645
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@72
    move-result v2

    #@73
    .line 646
    .local v2, "animateLayoutChanges":Z
    if-eqz v2, :cond_0

    #@75
    .line 647
    new-instance v6, Landroid/animation/LayoutTransition;

    #@77
    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    #@7a
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@7d
    goto :goto_1

    #@7e
    .line 651
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
    .line 654
    :pswitch_b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@89
    move-result v6

    #@8a
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    #@8d
    goto :goto_1

    #@8e
    .line 657
    :pswitch_c
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@91
    move-result v6

    #@92
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@95
    goto :goto_1

    #@96
    .line 662
    .end local v3    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@99
    .line 606
    return-void

    #@9a
    .line 613
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
    .line 584
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 585
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    #@b
    .line 587
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@d
    or-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@11
    .line 588
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    or-int/lit8 v0, v0, 0x2

    #@15
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@17
    .line 589
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@19
    or-int/lit8 v0, v0, 0x10

    #@1b
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1d
    .line 590
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    or-int/lit8 v0, v0, 0x40

    #@21
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@23
    .line 591
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@25
    or-int/lit16 v0, v0, 0x4000

    #@27
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@29
    .line 593
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
    .line 594
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@37
    const/high16 v1, 0x200000

    #@39
    or-int/2addr v0, v1

    #@3a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3c
    .line 597
    :cond_1
    const/high16 v0, 0x20000

    #@3e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    #@41
    .line 599
    const/16 v0, 0xc

    #@43
    new-array v0, v0, [Landroid/view/View;

    #@45
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@47
    .line 600
    const/4 v0, 0x0

    #@48
    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4a
    .line 602
    const/4 v0, 0x2

    #@4b
    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@4d
    .line 582
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 2

    #@0
    .prologue
    .line 3543
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v1, v1, -0x201

    #@4
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    .line 3544
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    or-int/lit8 v1, v1, 0x10

    #@a
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    .line 3546
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 3547
    new-instance v0, Landroid/view/ViewGroup$4;

    #@12
    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    #@15
    .line 3552
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@18
    .line 3555
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x1

    #@19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@1c
    .line 3542
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1988
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1989
    return-object p0

    #@7
    .line 1991
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
    .line 3591
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
    .line 3592
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@d
    const v2, 0x7fffffff

    #@10
    and-int/2addr v0, v2

    #@11
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@13
    .line 3593
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    #@16
    .line 3594
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    #@18
    .line 3590
    return-void

    #@19
    :cond_0
    move v0, v1

    #@1a
    .line 3591
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
    .line 4416
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 4417
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
    .line 4418
    aget-object v2, v0, p1

    #@14
    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@16
    .line 4420
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@18
    .line 4421
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    #@1a
    if-ne p1, v2, :cond_3

    #@1c
    .line 4422
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@22
    aput-object v4, v0, v2

    #@24
    .line 4429
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@26
    if-ne v2, p1, :cond_5

    #@28
    .line 4430
    const-wide/16 v2, 0x0

    #@2a
    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    #@2c
    .line 4431
    const/4 v2, -0x1

    #@2d
    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@2f
    .line 4415
    :cond_2
    :goto_1
    return-void

    #@30
    .line 4423
    :cond_3
    if-ltz p1, :cond_4

    #@32
    if-ge p1, v1, :cond_4

    #@34
    .line 4424
    add-int/lit8 v2, p1, 0x1

    #@36
    sub-int v3, v1, p1

    #@38
    add-int/lit8 v3, v3, -0x1

    #@3a
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 4425
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
    .line 4427
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@48
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@4b
    throw v2

    #@4c
    .line 4432
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@4e
    if-le v2, p1, :cond_2

    #@50
    .line 4433
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
    .line 4439
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@3
    .line 4440
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 4442
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    #@6
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result p1

    #@a
    .line 4443
    add-int v4, p1, p2

    #@c
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v2

    #@10
    .line 4445
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    #@12
    .line 4446
    return-void

    #@13
    .line 4449
    :cond_0
    if-ne v2, v1, :cond_1

    #@15
    .line 4450
    move v3, p1

    #@16
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    #@18
    .line 4451
    aget-object v4, v0, v3

    #@1a
    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@1c
    .line 4452
    aput-object v5, v0, v3

    #@1e
    .line 4450
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 4455
    .end local v3    # "i":I
    :cond_1
    move v3, p1

    #@22
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@24
    .line 4456
    aget-object v4, v0, v3

    #@26
    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@28
    .line 4455
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 4461
    :cond_2
    sub-int v4, v1, v2

    #@2d
    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 4463
    sub-int v4, v2, p1

    #@32
    sub-int v3, v1, v4

    #@34
    :goto_2
    if-ge v3, v1, :cond_3

    #@36
    .line 4464
    aput-object v5, v0, v3

    #@38
    .line 4463
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 4468
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3d
    sub-int v5, v2, p1

    #@3f
    sub-int/2addr v4, v5

    #@40
    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@42
    .line 4438
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    #@0
    .prologue
    .line 2411
    const/4 v1, 0x0

    #@1
    .line 2412
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@3
    .line 2413
    .end local v1    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v2, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    #@5
    .line 2414
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@7
    .line 2415
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@9
    and-int/2addr v3, p1

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 2416
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@e
    not-int v4, p1

    #@f
    and-int/2addr v3, v4

    #@10
    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@12
    .line 2417
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@14
    if-nez v3, :cond_1

    #@16
    .line 2418
    if-nez v1, :cond_0

    #@18
    .line 2419
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1a
    .line 2423
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@1d
    .line 2424
    move-object v2, v0

    #@1e
    .line 2425
    goto :goto_0

    #@1f
    .line 2421
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@21
    goto :goto_1

    #@22
    .line 2428
    :cond_1
    move-object v1, v2

    #@23
    .line 2429
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v2, v0

    #@24
    goto :goto_0

    #@25
    .line 2410
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
    .line 4584
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 4585
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@8
    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@b
    .line 4588
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 4589
    .local v0, "clearChildFocus":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    if-ne p2, v4, :cond_1

    #@10
    .line 4590
    invoke-virtual {p2, v5}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@13
    .line 4591
    const/4 v0, 0x1

    #@14
    .line 4594
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    #@17
    .line 4596
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@1a
    .line 4597
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@1d
    .line 4599
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@20
    move-result-object v4

    #@21
    if-nez v4, :cond_2

    #@23
    .line 4600
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
    .line 4599
    if-eqz v4, :cond_8

    #@2f
    .line 4601
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@32
    .line 4606
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_4

    #@38
    .line 4607
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@3b
    .line 4610
    :cond_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@3e
    .line 4612
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@41
    .line 4614
    if-eqz v0, :cond_5

    #@43
    .line 4615
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@46
    .line 4616
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_5

    #@4c
    .line 4617
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@4f
    .line 4621
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@52
    .line 4623
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    #@55
    move-result v4

    #@56
    const/16 v5, 0x8

    #@58
    if-eq v4, v5, :cond_6

    #@5a
    .line 4624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@5d
    .line 4627
    :cond_6
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@5f
    if-nez v4, :cond_9

    #@61
    const/4 v3, 0x0

    #@62
    .line 4628
    .local v3, "transientCount":I
    :goto_1
    const/4 v1, 0x0

    #@63
    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_a

    #@65
    .line 4629
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
    .line 4630
    .local v2, "oldIndex":I
    if-ge p1, v2, :cond_7

    #@73
    .line 4631
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
    .line 4628
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@80
    goto :goto_2

    #@81
    .line 4602
    .end local v1    # "i":I
    .end local v2    # "oldIndex":I
    .end local v3    # "transientCount":I
    :cond_8
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 4603
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@88
    goto :goto_0

    #@89
    .line 4627
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
    .line 4582
    .restart local v1    # "i":I
    :cond_a
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4574
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4
    move-result v0

    #@5
    .line 4575
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 4576
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    #@a
    .line 4577
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 4579
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
    .line 4676
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@4
    .line 4677
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    if-eqz v7, :cond_5

    #@8
    const/4 v2, 0x1

    #@9
    .line 4678
    .local v2, "detach":Z
    :goto_0
    const/4 v1, 0x0

    #@a
    .line 4680
    .local v1, "clearChildFocus":Z
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@c
    .line 4681
    .local v0, "children":[Landroid/view/View;
    add-int v3, p1, p2

    #@e
    .line 4683
    .local v3, "end":I
    move v5, p1

    #@f
    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_7

    #@11
    .line 4684
    aget-object v6, v0, v5

    #@13
    .line 4686
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@15
    if-eqz v7, :cond_0

    #@17
    .line 4687
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@19
    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@1c
    .line 4690
    :cond_0
    if-ne v6, v4, :cond_1

    #@1e
    .line 4691
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@21
    .line 4692
    const/4 v1, 0x1

    #@22
    .line 4695
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    #@25
    .line 4697
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@28
    .line 4698
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@2b
    .line 4700
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@2e
    move-result-object v7

    #@2f
    if-nez v7, :cond_2

    #@31
    .line 4701
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@33
    if-eqz v7, :cond_6

    #@35
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v7

    #@3b
    .line 4700
    if-eqz v7, :cond_6

    #@3d
    .line 4702
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@40
    .line 4707
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_4

    #@46
    .line 4708
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@49
    .line 4711
    :cond_4
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@4c
    .line 4713
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@4f
    .line 4683
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_1

    #@52
    .line 4677
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "clearChildFocus":Z
    .end local v2    # "detach":Z
    .end local v3    # "end":I
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    const/4 v2, 0x0

    #@53
    .restart local v2    # "detach":Z
    goto :goto_0

    #@54
    .line 4703
    .restart local v0    # "children":[Landroid/view/View;
    .restart local v1    # "clearChildFocus":Z
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_3

    #@56
    .line 4704
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@59
    goto :goto_2

    #@5a
    .line 4716
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    #@5d
    .line 4718
    if-eqz v1, :cond_8

    #@5f
    .line 4719
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@62
    .line 4720
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@65
    move-result v7

    #@66
    if-nez v7, :cond_8

    #@68
    .line 4721
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@6b
    .line 4675
    :cond_8
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2335
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@3
    const/high16 v1, 0x4000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2336
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@a
    const v1, -0x4000001

    #@d
    and-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    #@10
    .line 2337
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 2339
    :cond_0
    return v2
.end method

.method private resetTouchState()V
    .locals 2

    #@0
    .prologue
    .line 2324
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    #@3
    .line 2325
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@6
    .line 2326
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    const v1, -0x80001

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    .line 2327
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@11
    .line 2323
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 5657
    if-eqz p2, :cond_0

    #@2
    .line 5658
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 5656
    :goto_0
    return-void

    #@8
    .line 5660
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
    .line 5700
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    .line 5701
    const/high16 v0, 0x800000

    #@4
    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@7
    .line 5699
    return-void
.end method

.method private static sign(I)I
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 3226
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
    .line 1924
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1925
    return-void

    #@7
    .line 1927
    :cond_0
    const/4 v4, 0x1

    #@8
    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    #@b
    move-result-object v1

    #@c
    .line 1929
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    #@f
    move-result v2

    #@10
    .line 1930
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    #@13
    .line 1931
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 1932
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@19
    and-int/lit8 v4, v4, 0xc

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 1933
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 1934
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1930
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1936
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .line 1940
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@2e
    .line 1941
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@31
    .line 1940
    throw v4

    #@32
    .line 1941
    .restart local v2    # "childrenCount":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@35
    .line 1923
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
    .line 1088
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v4

    #@4
    .line 1090
    .local v4, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@7
    move-result v3

    #@8
    .line 1092
    .local v3, "descendantFocusability":I
    const/high16 v6, 0x60000

    #@a
    if-eq v3, v6, :cond_2

    #@c
    .line 1093
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 1094
    or-int/lit8 p3, p3, 0x1

    #@14
    .line 1097
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@16
    .line 1098
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@18
    .line 1100
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    #@1b
    .line 1101
    aget-object v0, v1, v5

    #@1d
    .line 1102
    .local v0, "child":Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    #@1f
    and-int/lit8 v6, v6, 0xc

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1103
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@26
    .line 1100
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1112
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_2
    const/high16 v6, 0x40000

    #@2b
    if-ne v3, v6, :cond_3

    #@2d
    .line 1114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v6

    #@31
    if-ne v4, v6, :cond_4

    #@33
    .line 1115
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
    .line 1087
    :cond_4
    :goto_1
    return-void

    #@40
    .line 1116
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
    .line 6377
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
    .line 1213
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@3
    .line 1215
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1216
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1218
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 1219
    aget-object v0, v1, v3

    #@c
    .line 1220
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@e
    and-int/lit8 v4, v4, 0xc

    #@10
    if-nez v4, :cond_0

    #@12
    .line 1221
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@15
    .line 1218
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1212
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
    .line 3945
    if-gez p2, :cond_0

    #@2
    .line 3946
    return-void

    #@3
    .line 3948
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@5
    if-nez v2, :cond_1

    #@7
    .line 3949
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@e
    .line 3950
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@15
    .line 3952
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@17
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    .line 3953
    .local v1, "oldSize":I
    if-lez v1, :cond_4

    #@1d
    .line 3955
    const/4 v0, 0x0

    #@1e
    .local v0, "insertionIndex":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@20
    .line 3956
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
    .line 3960
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@37
    .line 3961
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@39
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@3c
    .line 3966
    .end local v0    # "insertionIndex":I
    :goto_1
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3e
    .line 3967
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@40
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@42
    and-int/lit8 v3, v3, 0xc

    #@44
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@47
    .line 3968
    const/4 v2, 0x1

    #@48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@4b
    .line 3944
    return-void

    #@4c
    .line 3955
    .restart local v0    # "insertionIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 3963
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
    .line 3964
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
    .line 4059
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@4
    .line 4058
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 4076
    if-nez p1, :cond_0

    #@2
    .line 4077
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Cannot add a null child view to a ViewGroup"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 4079
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v0

    #@f
    .line 4080
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    #@11
    .line 4081
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v0

    #@15
    .line 4082
    if-nez v0, :cond_1

    #@17
    .line 4083
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "generateDefaultLayoutParams() cannot return null"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 4086
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@23
    .line 4075
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 4100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 4101
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    .line 4102
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@8
    .line 4103
    const/4 v1, -0x1

    #@9
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@c
    .line 4099
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4136
    if-nez p1, :cond_0

    #@2
    .line 4137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 4143
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@e
    .line 4144
    const/4 v0, 0x1

    #@f
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@12
    .line 4145
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@16
    .line 4131
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4117
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@4
    .line 4116
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4263
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
    .line 4281
    if-nez p1, :cond_0

    #@3
    .line 4282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 4284
    :cond_0
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@e
    .line 4285
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    #@11
    .line 4286
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
    .line 4287
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
    .line 4488
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@2
    .line 4490
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    #@4
    .line 4491
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@6
    .end local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    #@9
    .line 4492
    .restart local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@b
    .line 4495
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    #@d
    .line 4496
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    #@f
    .line 4487
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/high16 v2, -0x80000000

    #@2
    .line 4882
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@4
    .line 4884
    if-gez p2, :cond_0

    #@6
    .line 4885
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@8
    .line 4888
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@b
    .line 4890
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@d
    .line 4891
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@f
    const v1, -0x600001

    #@12
    and-int/2addr v0, v1

    #@13
    .line 4892
    const v1, -0x8001

    #@16
    .line 4891
    and-int/2addr v0, v1

    #@17
    or-int/lit8 v0, v0, 0x20

    #@19
    or-int/2addr v0, v2

    #@1a
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@1c
    .line 4894
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@1e
    or-int/2addr v0, v2

    #@1f
    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@21
    .line 4896
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 4897
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@2e
    .line 4881
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 1355
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 1356
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@9
    .line 1357
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    #@e
    .line 1358
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@10
    .line 1359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@13
    .line 1360
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@16
    .line 1353
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
    .line 3516
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 3517
    .local v1, "count":I
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
    .line 3519
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@e
    if-nez v7, :cond_1

    #@10
    .line 3520
    new-instance v7, Ljava/util/ArrayList;

    #@12
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    iput-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@17
    .line 3525
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@1a
    move-result v6

    #@1b
    .line 3526
    .local v6, "useCustomOrder":Z
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_1
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1e
    if-ge v3, v7, :cond_4

    #@20
    .line 3528
    if-eqz v6, :cond_2

    #@22
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@24
    invoke-virtual {p0, v7, v3}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@27
    move-result v0

    #@28
    .line 3529
    .local v0, "childIndex":I
    :goto_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2a
    aget-object v5, v7, v0

    #@2c
    .line 3530
    .local v5, "nextChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    #@2f
    move-result v2

    #@30
    .line 3533
    .local v2, "currentZ":F
    move v4, v3

    #@31
    .line 3534
    .local v4, "insertIndex":I
    :goto_3
    if-lez v4, :cond_3

    #@33
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@35
    add-int/lit8 v8, v4, -0x1

    #@37
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, Landroid/view/View;

    #@3d
    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    #@40
    move-result v7

    #@41
    cmpl-float v7, v7, v2

    #@43
    if-lez v7, :cond_3

    #@45
    .line 3535
    add-int/lit8 v4, v4, -0x1

    #@47
    goto :goto_3

    #@48
    .line 3517
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v3    # "i":I
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    .end local v6    # "useCustomOrder":Z
    :cond_0
    return-object v8

    #@49
    .line 3522
    :cond_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 3528
    .restart local v3    # "i":I
    .restart local v6    # "useCustomOrder":Z
    :cond_2
    move v0, v3

    #@50
    .restart local v0    # "childIndex":I
    goto :goto_2

    #@51
    .line 3537
    .restart local v2    # "currentZ":F
    .restart local v4    # "insertIndex":I
    .restart local v5    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v7, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@56
    .line 3526
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_1

    #@59
    .line 3539
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    #@5b
    return-object v7
.end method

.method protected canAnimate()Z
    .locals 1

    #@0
    .prologue
    .line 5458
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
    .line 6713
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 6714
    return-void

    #@7
    .line 6716
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 6717
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 6712
    :cond_1
    return-void

    #@11
    .line 6719
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@14
    move-result v1

    #@15
    .line 6720
    .local v1, "count":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@18
    .line 6721
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    .line 6722
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@1f
    .line 6720
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 4165
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
    .line 6385
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v0, v0, 0x2000

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6386
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    #@9
    .line 6384
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    #@0
    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    #@3
    move-result v2

    #@4
    .line 923
    .local v2, "oldHasTransientState":Z
    if-eqz p2, :cond_1

    #@6
    .line 924
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    #@c
    .line 929
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    #@f
    move-result v1

    #@10
    .line 930
    .local v1, "newHasTransientState":Z
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@12
    if-eqz v3, :cond_0

    #@14
    if-eq v2, v1, :cond_0

    #@16
    .line 932
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@18
    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 921
    :cond_0
    :goto_1
    return-void

    #@1c
    .line 926
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
    .line 933
    .restart local v1    # "newHasTransientState":Z
    :catch_0
    move-exception v0

    #@24
    .line 934
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
    .line 935
    const-string/jumbo v5, " does not fully implement ViewParent"

    #@3d
    .line 934
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
    .line 4296
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@2
    and-int/lit16 v0, v0, -0x1001

    #@4
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@6
    .line 4295
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 962
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    .line 963
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 964
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@9
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    #@c
    .line 957
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    #@0
    .prologue
    .line 6047
    iget-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2
    .line 6048
    .local v1, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    #@4
    .line 6049
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 6050
    .local v0, "count":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 6051
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/View;

    #@11
    .line 6052
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 6053
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@18
    .line 6055
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    #@1b
    .line 6050
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 6057
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 6058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@24
    .line 6046
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
    .line 976
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 977
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    #@8
    .line 972
    :goto_0
    return-void

    #@9
    .line 979
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    .line 980
    .local v0, "focused":Landroid/view/View;
    iput-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@d
    .line 981
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    #@10
    goto :goto_0
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    #@0
    .prologue
    .line 3192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_2

    #@6
    .line 3193
    const/4 v4, 0x0

    #@7
    .line 3194
    .local v4, "left":I
    const/4 v6, 0x0

    #@8
    .line 3195
    .local v6, "top":I
    const/4 v5, 0x0

    #@9
    .line 3196
    .local v5, "right":I
    const/4 v0, 0x0

    #@a
    .line 3197
    .local v0, "bottom":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@d
    if-ge v2, v7, :cond_1

    #@f
    .line 3198
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    .line 3199
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_0

    #@19
    .line 3200
    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    #@1c
    move-result-object v3

    #@1d
    .line 3201
    .local v3, "insets":Landroid/graphics/Insets;
    iget v7, v3, Landroid/graphics/Insets;->left:I

    #@1f
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v4

    #@23
    .line 3202
    iget v7, v3, Landroid/graphics/Insets;->top:I

    #@25
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v6

    #@29
    .line 3203
    iget v7, v3, Landroid/graphics/Insets;->right:I

    #@2b
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v5

    #@2f
    .line 3204
    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    #@31
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v0

    #@35
    .line 3197
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3207
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@3b
    move-result-object v7

    #@3c
    return-object v7

    #@3d
    .line 3209
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

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    #@0
    .prologue
    .line 3161
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 3162
    .local v2, "count":I
    const/4 v4, 0x0

    #@3
    .line 3164
    .local v4, "visibilities":[I
    if-eqz p3, :cond_1

    #@5
    .line 3165
    new-array v4, v2, [I

    #@7
    .line 3166
    .local v4, "visibilities":[I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 3167
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    .line 3168
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v5

    #@12
    aput v5, v4, v3

    #@14
    .line 3169
    aget v5, v4, v3

    #@16
    if-nez v5, :cond_0

    #@18
    .line 3170
    const/4 v5, 0x4

    #@19
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    #@1c
    .line 3166
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3175
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "visibilities":[I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    #@22
    move-result-object v0

    #@23
    .line 3177
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    #@25
    .line 3178
    const/4 v3, 0x0

    #@26
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@28
    .line 3179
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2b
    move-result-object v5

    #@2c
    aget v6, v4, v3

    #@2e
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    #@31
    .line 3178
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_1

    #@34
    .line 3183
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
    .line 5190
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->damageChildDeferred(Landroid/view/View;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 5191
    return-void

    #@8
    .line 5194
    :cond_0
    move-object v3, p0

    #@9
    .line 5196
    .local v3, "parent":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    .line 5197
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    #@d
    .line 5198
    iget v1, p1, Landroid/view/View;->mLeft:I

    #@f
    .line 5199
    .local v1, "left":I
    iget v5, p1, Landroid/view/View;->mTop:I

    #@11
    .line 5200
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
    .line 5201
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    #@1e
    .line 5205
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    #@20
    if-eqz v6, :cond_4

    #@22
    move-object v4, v3

    #@23
    .line 5206
    check-cast v4, Landroid/view/ViewGroup;

    #@25
    .line 5207
    .local v4, "parentVG":Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/ViewGroup;->mLayerType:I

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 5209
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    #@2c
    .line 5210
    const/4 v3, 0x0

    #@2d
    .line 5224
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    #@2f
    .line 5189
    .end local v1    # "left":I
    .end local v5    # "top":I
    :cond_2
    return-void

    #@30
    .line 5212
    .restart local v1    # "left":I
    .restart local v4    # "parentVG":Landroid/view/ViewGroup;
    .restart local v5    # "top":I
    :cond_3
    invoke-virtual {v4, v1, v5, p2}, Landroid/view/ViewGroup;->damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@33
    move-result-object v3

    #@34
    .line 5213
    .restart local v3    # "parent":Landroid/view/ViewParent;
    iget v1, v4, Landroid/view/ViewGroup;->mLeft:I

    #@36
    .line 5214
    iget v5, v4, Landroid/view/ViewGroup;->mTop:I

    #@38
    goto :goto_0

    #@39
    .line 5219
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@3b
    .line 5220
    .local v2, "location":[I
    aput v1, v2, v7

    #@3d
    .line 5221
    const/4 v6, 0x1

    #@3e
    aput v5, v2, v6

    #@40
    .line 5222
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
    .line 5168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 5169
    :goto_0
    if-eqz v0, :cond_2

    #@6
    .line 5170
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5171
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    #@f
    .line 5172
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 5173
    check-cast v0, Landroid/view/ViewRootImpl;

    #@15
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@18
    .line 5174
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 5176
    :cond_1
    const/4 v0, 0x0

    #@1b
    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    #@1c
    .line 5179
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
    .line 5235
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@3
    and-int/lit8 v0, v0, 0x20

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5236
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@9
    const v1, 0x8000

    #@c
    and-int/2addr v0, v1

    #@d
    if-eqz v0, :cond_4

    #@f
    .line 5237
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
    .line 5238
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1c
    and-int/lit8 v0, v0, 0x1

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 5239
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
    .line 5242
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2f
    and-int/lit8 v0, v0, 0x1

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 5243
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
    .line 5242
    if-eqz v0, :cond_4

    #@43
    .line 5245
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
    .line 5246
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    #@50
    .line 5249
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@52
    return-object v0

    #@53
    .line 5253
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
    .line 5816
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    #@3
    .line 5819
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 5820
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 5821
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
    .line 5822
    const-string/jumbo v4, "View"

    #@22
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 5824
    .end local v3    # "output":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 5825
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 5826
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
    .line 5827
    const-string/jumbo v4, "View"

    #@44
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 5829
    .end local v3    # "output":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@49
    .line 5830
    .local v1, "count":I
    const/4 v2, 0x0

    #@4a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@4c
    .line 5831
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4e
    aget-object v0, v4, v2

    #@50
    .line 5832
    .local v0, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    #@52
    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    #@55
    .line 5830
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 5835
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5a
    if-eqz v4, :cond_3

    #@5c
    .line 5836
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 5837
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
    .line 5838
    const-string/jumbo v4, "View"

    #@77
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 5815
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
    .line 4981
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 4982
    .local v1, "count":I
    if-gtz v1, :cond_0

    #@6
    .line 4983
    return-void

    #@7
    .line 4986
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 4987
    .local v0, "children":[Landroid/view/View;
    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    .line 4989
    add-int/lit8 v2, v1, -0x1

    #@d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@f
    .line 4990
    aget-object v3, v0, v2

    #@11
    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@13
    .line 4991
    aput-object v4, v0, v2

    #@15
    .line 4989
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 4980
    :cond_1
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4940
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@3
    .line 4939
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4919
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    #@7
    .line 4918
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4962
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    #@3
    .line 4961
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
    .line 827
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 828
    return v4

    #@8
    .line 830
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v1

    #@c
    .line 831
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 832
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 833
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 834
    return v4

    #@1a
    .line 831
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 837
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
    .line 6270
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@3
    move-result-object p1

    #@4
    .line 6271
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 6272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 6273
    .local v0, "count":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 6274
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@18
    move-result-object p1

    #@19
    .line 6275
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 6280
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object p1

    #@20
    .line 6273
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
    .line 2835
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    const/high16 v7, 0x400000

    #@4
    or-int/2addr v6, v7

    #@5
    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 2836
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@a
    .line 2837
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    const v7, -0x400001

    #@f
    and-int/2addr v6, v7

    #@10
    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    .line 2839
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@14
    .line 2840
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@16
    .line 2841
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@19
    .line 2842
    aget-object v0, v1, v3

    #@1b
    .line 2844
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1e
    move-result v6

    #@1f
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    #@22
    move-result v6

    #@23
    .line 2843
    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@26
    .line 2841
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2846
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@2b
    if-nez v6, :cond_1

    #@2d
    const/4 v4, 0x0

    #@2e
    .line 2847
    .local v4, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    #@2f
    :goto_2
    if-ge v3, v4, :cond_2

    #@31
    .line 2848
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@33
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Landroid/view/View;

    #@39
    .line 2850
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@3c
    move-result v6

    #@3d
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    #@40
    move-result v6

    #@41
    .line 2849
    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    #@44
    .line 2847
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_2

    #@47
    .line 2846
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
    .line 2834
    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    #@0
    .prologue
    .line 3776
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    #@3
    .line 3778
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 3779
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3780
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 3781
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    #@f
    .line 3780
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3775
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 1338
    and-int/lit8 v4, p2, 0xc

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1339
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@7
    .line 1340
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@9
    .line 1341
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@b
    .line 1342
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 1343
    aget-object v0, v1, v3

    #@10
    .line 1345
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@12
    and-int/lit8 v4, v4, 0xc

    #@14
    or-int/2addr v4, p2

    #@15
    .line 1344
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    #@18
    .line 1342
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1337
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
    .line 1318
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 1319
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1320
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1321
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1322
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@f
    .line 1321
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1317
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3045
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    #@4
    .line 3048
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    #@7
    .line 3051
    const/4 v5, 0x0

    #@8
    iput-boolean v5, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@a
    .line 3054
    iput-object v6, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@c
    .line 3055
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 3056
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@12
    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    #@15
    .line 3057
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@17
    .line 3060
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@19
    .line 3061
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1b
    .line 3062
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@1e
    .line 3063
    aget-object v5, v0, v2

    #@20
    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@23
    .line 3062
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 3065
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    #@29
    .line 3066
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@2b
    if-nez v5, :cond_2

    #@2d
    const/4 v3, 0x0

    #@2e
    .line 3067
    .local v3, "transientCount":I
    :goto_1
    const/4 v2, 0x0

    #@2f
    :goto_2
    if-ge v2, v3, :cond_3

    #@31
    .line 3068
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@33
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Landroid/view/View;

    #@39
    .line 3069
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@3c
    .line 3067
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_2

    #@3f
    .line 3066
    .end local v3    # "transientCount":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@41
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@44
    move-result v3

    #@45
    .restart local v3    # "transientCount":I
    goto :goto_1

    #@46
    .line 3071
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@49
    .line 3039
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 1244
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    #@3
    .line 1245
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1246
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1247
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1248
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    #@f
    .line 1247
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1243
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 1375
    const/4 v11, 0x0

    #@1
    .line 1376
    .local v11, "retval":Z
    move-object/from16 v0, p1

    #@3
    iget v14, v0, Landroid/view/DragEvent;->mX:F

    #@5
    .line 1377
    .local v14, "tx":F
    move-object/from16 v0, p1

    #@7
    iget v15, v0, Landroid/view/DragEvent;->mY:F

    #@9
    .line 1379
    .local v15, "ty":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@c
    move-result-object v12

    #@d
    .line 1382
    .local v12, "root":Landroid/view/ViewRootImpl;
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    #@10
    move-result-object v10

    #@11
    .line 1384
    .local v10, "localPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    #@13
    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    #@15
    move/from16 v17, v0

    #@17
    packed-switch v17, :pswitch_data_0

    #@1a
    .line 1530
    .end local v11    # "retval":Z
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    #@1c
    .line 1532
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@1f
    move-result v11

    #@20
    .line 1534
    :cond_1
    return v11

    #@21
    .line 1387
    .restart local v11    # "retval":Z
    :pswitch_1
    const/16 v17, 0x0

    #@23
    move-object/from16 v0, v17

    #@25
    move-object/from16 v1, p0

    #@27
    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@29
    .line 1390
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    #@2c
    move-result-object v17

    #@2d
    move-object/from16 v0, v17

    #@2f
    move-object/from16 v1, p0

    #@31
    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@33
    .line 1391
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@37
    move-object/from16 v17, v0

    #@39
    if-nez v17, :cond_3

    #@3b
    .line 1392
    new-instance v17, Ljava/util/HashSet;

    #@3d
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    #@40
    move-object/from16 v0, v17

    #@42
    move-object/from16 v1, p0

    #@44
    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@46
    .line 1398
    :goto_1
    const/16 v17, 0x0

    #@48
    move/from16 v0, v17

    #@4a
    move-object/from16 v1, p0

    #@4c
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    #@4e
    .line 1399
    move-object/from16 v0, p0

    #@50
    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@52
    .line 1400
    .local v7, "count":I
    move-object/from16 v0, p0

    #@54
    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@56
    .line 1401
    .local v6, "children":[Landroid/view/View;
    const/4 v9, 0x0

    #@57
    .local v9, "i":I
    :goto_2
    if-ge v9, v7, :cond_4

    #@59
    .line 1402
    aget-object v4, v6, v9

    #@5b
    .line 1403
    .local v4, "child":Landroid/view/View;
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    #@5d
    move/from16 v17, v0

    #@5f
    and-int/lit8 v17, v17, -0x4

    #@61
    move/from16 v0, v17

    #@63
    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    #@65
    .line 1404
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@68
    move-result v17

    #@69
    if-nez v17, :cond_2

    #@6b
    .line 1405
    aget-object v17, v6, v9

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v17

    #@71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    #@74
    move-result v8

    #@75
    .line 1406
    .local v8, "handled":Z
    if-eqz v8, :cond_2

    #@77
    .line 1407
    const/16 v17, 0x1

    #@79
    move/from16 v0, v17

    #@7b
    move-object/from16 v1, p0

    #@7d
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    #@7f
    .line 1401
    .end local v8    # "handled":Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@81
    goto :goto_2

    #@82
    .line 1394
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "children":[Landroid/view/View;
    .end local v7    # "count":I
    .end local v9    # "i":I
    :cond_3
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@86
    move-object/from16 v17, v0

    #@88
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    #@8b
    goto :goto_1

    #@8c
    .line 1413
    .restart local v6    # "children":[Landroid/view/View;
    .restart local v7    # "count":I
    .restart local v9    # "i":I
    :cond_4
    move-object/from16 v0, p0

    #@8e
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    #@90
    move/from16 v17, v0

    #@92
    if-eqz v17, :cond_0

    #@94
    .line 1414
    const/4 v11, 0x1

    #@95
    goto :goto_0

    #@96
    .line 1420
    .end local v6    # "children":[Landroid/view/View;
    .end local v7    # "count":I
    .end local v9    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@9a
    move-object/from16 v17, v0

    #@9c
    if-eqz v17, :cond_6

    #@9e
    .line 1421
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@a2
    move-object/from16 v17, v0

    #@a4
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a7
    move-result-object v5

    #@a8
    .local v5, "child$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@ab
    move-result v17

    #@ac
    if-eqz v17, :cond_5

    #@ae
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b1
    move-result-object v4

    #@b2
    check-cast v4, Landroid/view/View;

    #@b4
    .line 1423
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@b9
    .line 1424
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    #@bb
    move/from16 v17, v0

    #@bd
    and-int/lit8 v17, v17, -0x4

    #@bf
    move/from16 v0, v17

    #@c1
    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    #@c3
    .line 1425
    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    #@c6
    goto :goto_3

    #@c7
    .line 1428
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@cb
    move-object/from16 v17, v0

    #@cd
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    #@d0
    .line 1429
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@d4
    move-object/from16 v17, v0

    #@d6
    if-eqz v17, :cond_6

    #@d8
    .line 1430
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@dc
    move-object/from16 v17, v0

    #@de
    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    #@e1
    .line 1431
    const/16 v17, 0x0

    #@e3
    move-object/from16 v0, v17

    #@e5
    move-object/from16 v1, p0

    #@e7
    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@e9
    .line 1437
    .end local v5    # "child$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@eb
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    #@ed
    move/from16 v17, v0

    #@ef
    if-eqz v17, :cond_0

    #@f1
    .line 1438
    const/4 v11, 0x1

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1444
    :pswitch_3
    move-object/from16 v0, p1

    #@f6
    iget v0, v0, Landroid/view/DragEvent;->mX:F

    #@f8
    move/from16 v17, v0

    #@fa
    move-object/from16 v0, p1

    #@fc
    iget v0, v0, Landroid/view/DragEvent;->mY:F

    #@fe
    move/from16 v18, v0

    #@100
    move-object/from16 v0, p0

    #@102
    move/from16 v1, v17

    #@104
    move/from16 v2, v18

    #@106
    invoke-virtual {v0, v1, v2, v10}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    #@109
    move-result-object v13

    #@10a
    .line 1452
    .local v13, "target":Landroid/view/View;
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@10e
    move-object/from16 v17, v0

    #@110
    move-object/from16 v0, v17

    #@112
    if-eq v0, v13, :cond_9

    #@114
    .line 1453
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    #@117
    .line 1455
    move-object/from16 v0, p1

    #@119
    iget v3, v0, Landroid/view/DragEvent;->mAction:I

    #@11b
    .line 1457
    .local v3, "action":I
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@11f
    move-object/from16 v17, v0

    #@121
    if-eqz v17, :cond_7

    #@123
    .line 1458
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@127
    move-object/from16 v16, v0

    #@129
    .line 1459
    .local v16, "view":Landroid/view/View;
    const/16 v17, 0x6

    #@12b
    move/from16 v0, v17

    #@12d
    move-object/from16 v1, p1

    #@12f
    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    #@131
    .line 1460
    move-object/from16 v0, v16

    #@133
    move-object/from16 v1, p1

    #@135
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@138
    .line 1461
    move-object/from16 v0, v16

    #@13a
    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    #@13c
    move/from16 v17, v0

    #@13e
    and-int/lit8 v17, v17, -0x3

    #@140
    move/from16 v0, v17

    #@142
    move-object/from16 v1, v16

    #@144
    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    #@146
    .line 1462
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    #@149
    .line 1464
    .end local v16    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    #@14b
    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@14d
    .line 1467
    if-eqz v13, :cond_8

    #@14f
    .line 1468
    const/16 v17, 0x5

    #@151
    move/from16 v0, v17

    #@153
    move-object/from16 v1, p1

    #@155
    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    #@157
    .line 1469
    move-object/from16 v0, p1

    #@159
    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@15c
    .line 1470
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    #@15e
    move/from16 v17, v0

    #@160
    or-int/lit8 v17, v17, 0x2

    #@162
    move/from16 v0, v17

    #@164
    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    #@166
    .line 1471
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    #@169
    .line 1473
    :cond_8
    move-object/from16 v0, p1

    #@16b
    iput v3, v0, Landroid/view/DragEvent;->mAction:I

    #@16d
    .line 1477
    .end local v3    # "action":I
    :cond_9
    if-eqz v13, :cond_0

    #@16f
    .line 1478
    iget v0, v10, Landroid/graphics/PointF;->x:F

    #@171
    move/from16 v17, v0

    #@173
    move/from16 v0, v17

    #@175
    move-object/from16 v1, p1

    #@177
    iput v0, v1, Landroid/view/DragEvent;->mX:F

    #@179
    .line 1479
    iget v0, v10, Landroid/graphics/PointF;->y:F

    #@17b
    move/from16 v17, v0

    #@17d
    move/from16 v0, v17

    #@17f
    move-object/from16 v1, p1

    #@181
    iput v0, v1, Landroid/view/DragEvent;->mY:F

    #@183
    .line 1481
    move-object/from16 v0, p1

    #@185
    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@188
    move-result v11

    #@189
    .line 1483
    .local v11, "retval":Z
    move-object/from16 v0, p1

    #@18b
    iput v14, v0, Landroid/view/DragEvent;->mX:F

    #@18d
    .line 1484
    move-object/from16 v0, p1

    #@18f
    iput v15, v0, Landroid/view/DragEvent;->mY:F

    #@191
    goto/16 :goto_0

    #@193
    .line 1501
    .end local v13    # "target":Landroid/view/View;
    .local v11, "retval":Z
    :pswitch_4
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@197
    move-object/from16 v17, v0

    #@199
    if-eqz v17, :cond_0

    #@19b
    .line 1502
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@19f
    move-object/from16 v16, v0

    #@1a1
    .line 1503
    .restart local v16    # "view":Landroid/view/View;
    move-object/from16 v0, v16

    #@1a3
    move-object/from16 v1, p1

    #@1a5
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@1a8
    .line 1504
    move-object/from16 v0, v16

    #@1aa
    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    #@1ac
    move/from16 v17, v0

    #@1ae
    and-int/lit8 v17, v17, -0x3

    #@1b0
    move/from16 v0, v17

    #@1b2
    move-object/from16 v1, v16

    #@1b4
    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    #@1b6
    .line 1505
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    #@1b9
    .line 1507
    const/16 v17, 0x0

    #@1bb
    move-object/from16 v0, v17

    #@1bd
    move-object/from16 v1, p0

    #@1bf
    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    #@1c1
    goto/16 :goto_0

    #@1c3
    .line 1513
    .end local v16    # "view":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    #@1c5
    iget v0, v0, Landroid/view/DragEvent;->mX:F

    #@1c7
    move/from16 v17, v0

    #@1c9
    move-object/from16 v0, p1

    #@1cb
    iget v0, v0, Landroid/view/DragEvent;->mY:F

    #@1cd
    move/from16 v18, v0

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v17

    #@1d3
    move/from16 v2, v18

    #@1d5
    invoke-virtual {v0, v1, v2, v10}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    #@1d8
    move-result-object v13

    #@1d9
    .line 1514
    .restart local v13    # "target":Landroid/view/View;
    if-eqz v13, :cond_0

    #@1db
    .line 1516
    iget v0, v10, Landroid/graphics/PointF;->x:F

    #@1dd
    move/from16 v17, v0

    #@1df
    move/from16 v0, v17

    #@1e1
    move-object/from16 v1, p1

    #@1e3
    iput v0, v1, Landroid/view/DragEvent;->mX:F

    #@1e5
    .line 1517
    iget v0, v10, Landroid/graphics/PointF;->y:F

    #@1e7
    move/from16 v17, v0

    #@1e9
    move/from16 v0, v17

    #@1eb
    move-object/from16 v1, p1

    #@1ed
    iput v0, v1, Landroid/view/DragEvent;->mY:F

    #@1ef
    .line 1518
    move-object/from16 v0, p1

    #@1f1
    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@1f4
    move-result v11

    #@1f5
    .line 1519
    .local v11, "retval":Z
    move-object/from16 v0, p1

    #@1f7
    iput v14, v0, Landroid/view/DragEvent;->mX:F

    #@1f9
    .line 1520
    move-object/from16 v0, p1

    #@1fb
    iput v15, v0, Landroid/view/DragEvent;->mY:F

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 1384
    nop

    #@200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 3327
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
    .line 3328
    .local v28, "usingRenderNodeProperties":Z
    move-object/from16 v0, p0

    #@10
    iget v10, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@12
    .line 3329
    .local v10, "childrenCount":I
    move-object/from16 v0, p0

    #@14
    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@16
    .line 3330
    .local v9, "children":[Landroid/view/View;
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1a
    move/from16 v20, v0

    #@1c
    .line 3332
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
    .line 3333
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    #@29
    move-result v29

    #@2a
    if-eqz v29, :cond_1

    #@2c
    const/4 v6, 0x0

    #@2d
    .line 3334
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
    .line 3335
    aget-object v7, v9, v21

    #@35
    .line 3336
    .local v7, "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    #@37
    move/from16 v29, v0

    #@39
    and-int/lit8 v29, v29, 0xc

    #@3b
    if-nez v29, :cond_0

    #@3d
    .line 3337
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40
    move-result-object v23

    #@41
    .line 3338
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, v23

    #@45
    move/from16 v2, v21

    #@47
    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    #@4a
    .line 3339
    move-object/from16 v0, p0

    #@4c
    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    #@4f
    .line 3334
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    #@51
    goto :goto_1

    #@52
    .line 3333
    .end local v6    # "buildCache":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "i":I
    :cond_1
    const/4 v6, 0x1

    #@53
    .restart local v6    # "buildCache":Z
    goto :goto_0

    #@54
    .line 3343
    .restart local v21    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@56
    iget-object v13, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@58
    .line 3344
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    #@5b
    move-result v29

    #@5c
    if-eqz v29, :cond_3

    #@5e
    .line 3345
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
    .line 3348
    :cond_3
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    #@73
    .line 3350
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
    .line 3351
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
    .line 3353
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@93
    move-object/from16 v29, v0

    #@95
    if-eqz v29, :cond_4

    #@97
    .line 3354
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
    .line 3358
    .end local v6    # "buildCache":Z
    .end local v13    # "controller":Landroid/view/animation/LayoutAnimationController;
    .end local v21    # "i":I
    :cond_4
    const/4 v11, 0x0

    #@a5
    .line 3359
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
    .line 3360
    .local v12, "clipToPadding":Z
    :goto_2
    if-eqz v12, :cond_5

    #@b2
    .line 3361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@b5
    move-result v11

    #@b6
    .line 3362
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
    .line 3363
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
    .line 3364
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
    .line 3362
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
    .line 3368
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
    .line 3369
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
    .line 3371
    const/16 v22, 0x0

    #@139
    .line 3372
    .local v22, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    #@13c
    move-result-wide v18

    #@13d
    .line 3374
    .local v18, "drawingTime":J
    if-eqz v28, :cond_6

    #@13f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    #@142
    .line 3375
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
    .line 3376
    .local v26, "transientCount":I
    :goto_3
    if-eqz v26, :cond_c

    #@14e
    const/16 v27, 0x0

    #@150
    .line 3379
    .local v27, "transientIndex":I
    :goto_4
    if-eqz v28, :cond_d

    #@152
    .line 3380
    const/16 v24, 0x0

    #@154
    .line 3381
    :goto_5
    if-nez v24, :cond_e

    #@156
    .line 3382
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@159
    move-result v14

    #@15a
    .line 3383
    :goto_6
    const/16 v21, 0x0

    #@15c
    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :goto_7
    move/from16 v0, v21

    #@15e
    if-ge v0, v10, :cond_14

    #@160
    .line 3384
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
    .line 3385
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
    .line 3386
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
    .line 3387
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@199
    move-result-object v29

    #@19a
    if-eqz v29, :cond_9

    #@19c
    .line 3388
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
    .line 3390
    :cond_9
    add-int/lit8 v27, v27, 0x1

    #@1ac
    .line 3391
    move/from16 v0, v27

    #@1ae
    move/from16 v1, v26

    #@1b0
    if-lt v0, v1, :cond_7

    #@1b2
    .line 3392
    const/16 v27, -0x1

    #@1b4
    goto :goto_8

    #@1b5
    .line 3359
    .end local v12    # "clipToPadding":Z
    .end local v18    # "drawingTime":J
    .end local v21    # "i":I
    .end local v25    # "transientChild":Landroid/view/View;
    .end local v26    # "transientCount":I
    .end local v27    # "transientIndex":I
    :cond_a
    const/4 v12, 0x0

    #@1b6
    .restart local v12    # "clipToPadding":Z
    goto/16 :goto_2

    #@1b8
    .line 3375
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
    .restart local v26    # "transientCount":I
    goto :goto_3

    #@1c3
    .line 3376
    :cond_c
    const/16 v27, -0x1

    #@1c5
    .restart local v27    # "transientIndex":I
    goto :goto_4

    #@1c6
    .line 3380
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@1c9
    move-result-object v24

    #@1ca
    .local v24, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_5

    #@1cb
    .line 3381
    .end local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_e
    const/4 v14, 0x0

    #@1cc
    .local v14, "customOrder":Z
    goto :goto_6

    #@1cd
    .line 3395
    .end local v14    # "customOrder":Z
    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :cond_f
    if-eqz v14, :cond_12

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v21

    #@1d3
    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@1d6
    move-result v8

    #@1d7
    .line 3396
    .local v8, "childIndex":I
    :goto_9
    if-nez v24, :cond_13

    #@1d9
    .line 3397
    aget-object v7, v9, v8

    #@1db
    .line 3398
    .restart local v7    # "child":Landroid/view/View;
    :goto_a
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
    .line 3399
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
    .line 3383
    :cond_11
    add-int/lit8 v21, v21, 0x1

    #@1f7
    goto/16 :goto_7

    #@1f9
    .line 3395
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_12
    move/from16 v8, v21

    #@1fb
    .restart local v8    # "childIndex":I
    goto :goto_9

    #@1fc
    .line 3397
    :cond_13
    move-object/from16 v0, v24

    #@1fe
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@201
    move-result-object v7

    #@202
    check-cast v7, Landroid/view/View;

    #@204
    .restart local v7    # "child":Landroid/view/View;
    goto :goto_a

    #@205
    .line 3402
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_14
    if-ltz v27, :cond_17

    #@207
    .line 3404
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@20b
    move-object/from16 v29, v0

    #@20d
    move-object/from16 v0, v29

    #@20f
    move/from16 v1, v27

    #@211
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@214
    move-result-object v25

    #@215
    check-cast v25, Landroid/view/View;

    #@217
    .line 3405
    .restart local v25    # "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    #@219
    iget v0, v0, Landroid/view/View;->mViewFlags:I

    #@21b
    move/from16 v29, v0

    #@21d
    and-int/lit8 v29, v29, 0xc

    #@21f
    if-eqz v29, :cond_15

    #@221
    .line 3406
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@224
    move-result-object v29

    #@225
    if-eqz v29, :cond_16

    #@227
    .line 3407
    :cond_15
    move-object/from16 v0, p0

    #@229
    move-object/from16 v1, p1

    #@22b
    move-object/from16 v2, v25

    #@22d
    move-wide/from16 v3, v18

    #@22f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@232
    move-result v29

    #@233
    or-int v22, v22, v29

    #@235
    .line 3409
    :cond_16
    add-int/lit8 v27, v27, 0x1

    #@237
    .line 3410
    move/from16 v0, v27

    #@239
    move/from16 v1, v26

    #@23b
    if-lt v0, v1, :cond_14

    #@23d
    .line 3414
    .end local v25    # "transientChild":Landroid/view/View;
    :cond_17
    if-eqz v24, :cond_18

    #@23f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    #@242
    .line 3417
    :cond_18
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@246
    move-object/from16 v29, v0

    #@248
    if-eqz v29, :cond_19

    #@24a
    .line 3418
    move-object/from16 v0, p0

    #@24c
    iget-object v15, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@24e
    .line 3419
    .local v15, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@251
    move-result v29

    #@252
    add-int/lit8 v16, v29, -0x1

    #@254
    .line 3421
    .local v16, "disappearingCount":I
    move/from16 v21, v16

    #@256
    :goto_b
    if-ltz v21, :cond_19

    #@258
    .line 3422
    move/from16 v0, v21

    #@25a
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25d
    move-result-object v7

    #@25e
    check-cast v7, Landroid/view/View;

    #@260
    .line 3423
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@262
    move-object/from16 v1, p1

    #@264
    move-wide/from16 v2, v18

    #@266
    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@269
    move-result v29

    #@26a
    or-int v22, v22, v29

    #@26c
    .line 3421
    .local v22, "more":Z
    add-int/lit8 v21, v21, -0x1

    #@26e
    goto :goto_b

    #@26f
    .line 3426
    .end local v7    # "child":Landroid/view/View;
    .end local v15    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "disappearingCount":I
    .end local v22    # "more":Z
    :cond_19
    if-eqz v28, :cond_1a

    #@271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    #@274
    .line 3428
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    #@277
    move-result v29

    #@278
    if-eqz v29, :cond_1b

    #@27a
    .line 3429
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    #@27d
    .line 3432
    :cond_1b
    if-eqz v12, :cond_1c

    #@27f
    .line 3433
    move-object/from16 v0, p1

    #@281
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@284
    .line 3437
    :cond_1c
    move-object/from16 v0, p0

    #@286
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@288
    move/from16 v20, v0

    #@28a
    .line 3439
    and-int/lit8 v29, v20, 0x4

    #@28c
    const/16 v30, 0x4

    #@28e
    move/from16 v0, v29

    #@290
    move/from16 v1, v30

    #@292
    if-ne v0, v1, :cond_1d

    #@294
    .line 3440
    const/16 v29, 0x1

    #@296
    move-object/from16 v0, p0

    #@298
    move/from16 v1, v29

    #@29a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@29d
    .line 3443
    :cond_1d
    and-int/lit8 v29, v20, 0x10

    #@29f
    if-nez v29, :cond_1e

    #@2a1
    move/from16 v0, v20

    #@2a3
    and-int/lit16 v0, v0, 0x200

    #@2a5
    move/from16 v29, v0

    #@2a7
    if-nez v29, :cond_1e

    #@2a9
    .line 3444
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2ad
    move-object/from16 v29, v0

    #@2af
    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    #@2b2
    move-result v29

    #@2b3
    .line 3443
    if-eqz v29, :cond_1e

    #@2b5
    .line 3444
    if-eqz v22, :cond_1f

    #@2b7
    .line 3326
    :cond_1e
    :goto_c
    return-void

    #@2b8
    .line 3448
    :cond_1f
    move-object/from16 v0, p0

    #@2ba
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2bc
    move/from16 v29, v0

    #@2be
    move/from16 v0, v29

    #@2c0
    or-int/lit16 v0, v0, 0x200

    #@2c2
    move/from16 v29, v0

    #@2c4
    move/from16 v0, v29

    #@2c6
    move-object/from16 v1, p0

    #@2c8
    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2ca
    .line 3449
    new-instance v17, Landroid/view/ViewGroup$3;

    #@2cc
    move-object/from16 v0, v17

    #@2ce
    move-object/from16 v1, p0

    #@2d0
    invoke-direct {v0, v1}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    #@2d3
    .line 3454
    .local v17, "end":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@2d5
    move-object/from16 v1, v17

    #@2d7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@2da
    goto :goto_c
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
    .line 3752
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3753
    .local v2, "count":I
    if-nez v2, :cond_0

    #@6
    .line 3754
    return-void

    #@7
    .line 3757
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3758
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    #@c
    .line 3759
    aget-object v0, v1, v4

    #@e
    .line 3762
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
    .line 3763
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
    .line 3764
    .local v3, "duplicatesState":Z
    :goto_2
    if-nez v5, :cond_2

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 3765
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    #@2a
    move-result-object v6

    #@2b
    .line 3766
    .local v6, "point":[F
    aput p1, v6, v9

    #@2d
    .line 3767
    aput p2, v6, v10

    #@2f
    .line 3768
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    #@32
    .line 3769
    aget v7, v6, v9

    #@34
    aget v8, v6, v10

    #@36
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@39
    .line 3758
    .end local v6    # "point":[F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3762
    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_4
    const/4 v5, 0x1

    #@3d
    .restart local v5    # "nonActionable":Z
    goto :goto_1

    #@3e
    .line 3763
    :cond_5
    const/4 v3, 0x0

    #@3f
    .restart local v3    # "duplicatesState":Z
    goto :goto_2

    #@40
    .line 3751
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
    .line 2822
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@3
    .line 2823
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2824
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2825
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2826
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@f
    .line 2825
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2821
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
    .line 3113
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@3
    .line 3112
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2036
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 2037
    const/16 v1, 0x12

    #@6
    .line 2036
    if-ne v0, v1, :cond_0

    #@8
    .line 2038
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 2039
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
    .line 2040
    const/16 v1, 0x10

    #@19
    .line 2039
    if-ne v0, v1, :cond_1

    #@1b
    .line 2041
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 2043
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
    .line 2000
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 2001
    .local v3, "childrenCount":I
    if-eqz v3, :cond_6

    #@5
    .line 2002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v7

    #@9
    .line 2003
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v8

    #@d
    .line 2005
    .local v8, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@10
    move-result-object v6

    #@11
    .line 2006
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_1

    #@13
    .line 2007
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@16
    move-result v4

    #@17
    .line 2008
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@19
    .line 2009
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    #@1b
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    #@1d
    .line 2010
    if-eqz v4, :cond_2

    #@1f
    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@22
    move-result v1

    #@23
    .line 2011
    .local v1, "childIndex":I
    :goto_2
    if-nez v6, :cond_3

    #@25
    .line 2012
    aget-object v0, v2, v1

    #@27
    .line 2013
    .local v0, "child":Landroid/view/View;
    :goto_3
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_4

    #@2d
    .line 2014
    invoke-virtual {p0, v7, v8, v0, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_4

    #@33
    .line 2018
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_4

    #@39
    .line 2019
    if-eqz v6, :cond_0

    #@3b
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@3e
    .line 2020
    :cond_0
    const/4 v9, 0x1

    #@3f
    return v9

    #@40
    .line 2006
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@41
    .local v4, "customOrder":Z
    goto :goto_0

    #@42
    .line 2010
    .end local v4    # "customOrder":Z
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    :cond_2
    move v1, v5

    #@43
    .restart local v1    # "childIndex":I
    goto :goto_2

    #@44
    .line 2012
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/view/View;

    #@4a
    .restart local v0    # "child":Landroid/view/View;
    goto :goto_3

    #@4b
    .line 2009
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@4d
    goto :goto_1

    #@4e
    .line 2023
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_5
    if-eqz v6, :cond_6

    #@50
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@53
    .line 2027
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    #@56
    move-result v9

    #@57
    return v9
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    #@0
    .prologue
    .line 3568
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 3569
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 3570
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    #@5
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    #@7
    .line 3571
    aget-object v0, v1, v5

    #@9
    .line 3572
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
    .line 3573
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@18
    .line 3570
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3576
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@1d
    if-eqz v7, :cond_3

    #@1f
    .line 3577
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@21
    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    #@24
    move-result-object v6

    #@25
    .line 3578
    .local v6, "overlayView":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@28
    .line 3580
    .end local v6    # "overlayView":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2a
    if-eqz v7, :cond_4

    #@2c
    .line 3581
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@2e
    .line 3582
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    .line 3583
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    #@33
    :goto_1
    if-ge v5, v4, :cond_4

    #@35
    .line 3584
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/view/View;

    #@3b
    .line 3585
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    #@3e
    .line 3583
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_1

    #@41
    .line 3567
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
    .line 1699
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v4

    #@4
    .line 1702
    .local v4, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v15

    #@8
    .line 1703
    .local v15, "interceptHover":Z
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@d
    .line 1705
    move-object/from16 v10, p1

    #@f
    .line 1706
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v12, 0x0

    #@10
    .line 1710
    .local v12, "handled":Z
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@14
    .line 1711
    .local v11, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x0

    #@16
    move-object/from16 v0, v24

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@1c
    .line 1712
    if-nez v15, :cond_2

    #@1e
    const/16 v24, 0xa

    #@20
    move/from16 v0, v24

    #@22
    if-eq v4, v0, :cond_2

    #@24
    .line 1713
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@27
    move-result v22

    #@28
    .line 1714
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v23

    #@2c
    .line 1715
    .local v23, "y":F
    move-object/from16 v0, p0

    #@2e
    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@30
    .line 1716
    .local v8, "childrenCount":I
    if-eqz v8, :cond_2

    #@32
    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@35
    move-result-object v20

    #@36
    .line 1718
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v20, :cond_3

    #@38
    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@3b
    move-result v9

    #@3c
    .line 1720
    :goto_0
    move-object/from16 v0, p0

    #@3e
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@40
    .line 1721
    .local v7, "children":[Landroid/view/View;
    const/16 v16, 0x0

    #@42
    .line 1722
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v14, v8, -0x1

    #@44
    .end local v12    # "handled":Z
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_1

    #@46
    .line 1723
    if-eqz v9, :cond_4

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v8, v14}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@4d
    move-result v6

    #@4e
    .line 1724
    .local v6, "childIndex":I
    :goto_2
    if-nez v20, :cond_5

    #@50
    .line 1725
    aget-object v5, v7, v6

    #@52
    .line 1726
    .local v5, "child":Landroid/view/View;
    :goto_3
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@55
    move-result v24

    #@56
    if-eqz v24, :cond_c

    #@58
    .line 1727
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
    if-eqz v24, :cond_c

    #@68
    .line 1733
    move-object v13, v11

    #@69
    .line 1735
    .local v13, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v19, 0x0

    #@6b
    .line 1736
    :goto_4
    if-nez v13, :cond_6

    #@6d
    .line 1737
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    #@70
    move-result-object v13

    #@71
    .line 1738
    const/16 v21, 0x0

    #@73
    .line 1758
    .local v21, "wasHovered":Z
    :goto_5
    if-eqz v16, :cond_9

    #@75
    .line 1759
    move-object/from16 v0, v16

    #@77
    iput-object v13, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@79
    .line 1763
    :goto_6
    move-object/from16 v16, v13

    #@7b
    .line 1766
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x9

    #@7d
    move/from16 v0, v24

    #@7f
    if-ne v4, v0, :cond_a

    #@81
    .line 1767
    if-nez v21, :cond_0

    #@83
    .line 1769
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
    .line 1788
    :cond_0
    :goto_7
    if-eqz v12, :cond_c

    #@8f
    .line 1792
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
    .line 1797
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_2
    :goto_8
    if-eqz v11, :cond_f

    #@96
    .line 1798
    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@98
    .line 1801
    .restart local v5    # "child":Landroid/view/View;
    const/16 v24, 0xa

    #@9a
    move/from16 v0, v24

    #@9c
    if-ne v4, v0, :cond_d

    #@9e
    .line 1803
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
    .line 1819
    :goto_9
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@aa
    move-object/from16 v18, v0

    #@ac
    .line 1820
    .local v18, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    #@af
    .line 1821
    move-object/from16 v11, v18

    #@b1
    goto :goto_8

    #@b2
    .line 1718
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
    .line 1723
    .end local v9    # "customOrder":Z
    .end local v12    # "handled":Z
    .restart local v7    # "children":[Landroid/view/View;
    .restart local v14    # "i":I
    :cond_4
    move v6, v14

    #@b5
    .restart local v6    # "childIndex":I
    goto :goto_2

    #@b6
    .line 1725
    :cond_5
    move-object/from16 v0, v20

    #@b8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v5

    #@bc
    check-cast v5, Landroid/view/View;

    #@be
    .restart local v5    # "child":Landroid/view/View;
    goto :goto_3

    #@bf
    .line 1742
    .restart local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_6
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    #@c1
    move-object/from16 v24, v0

    #@c3
    move-object/from16 v0, v24

    #@c5
    if-ne v0, v5, :cond_8

    #@c7
    .line 1743
    if-eqz v19, :cond_7

    #@c9
    .line 1744
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@cb
    move-object/from16 v24, v0

    #@cd
    move-object/from16 v0, v24

    #@cf
    move-object/from16 v1, v19

    #@d1
    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@d3
    .line 1748
    :goto_a
    const/16 v24, 0x0

    #@d5
    move-object/from16 v0, v24

    #@d7
    iput-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@d9
    .line 1749
    const/16 v21, 0x1

    #@db
    .line 1750
    .restart local v21    # "wasHovered":Z
    goto :goto_5

    #@dc
    .line 1746
    .end local v21    # "wasHovered":Z
    :cond_7
    iget-object v11, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@de
    goto :goto_a

    #@df
    .line 1753
    :cond_8
    move-object/from16 v19, v13

    #@e1
    .line 1754
    .local v19, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v13, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    #@e3
    goto :goto_4

    #@e4
    .line 1761
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v21    # "wasHovered":Z
    :cond_9
    move-object/from16 v0, p0

    #@e6
    iput-object v13, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    #@e8
    goto :goto_6

    #@e9
    .line 1772
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_a
    const/16 v24, 0x7

    #@eb
    move/from16 v0, v24

    #@ed
    if-ne v4, v0, :cond_0

    #@ef
    .line 1773
    if-nez v21, :cond_b

    #@f1
    .line 1775
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@f4
    move-result-object v10

    #@f5
    .line 1776
    const/16 v24, 0x9

    #@f7
    move/from16 v0, v24

    #@f9
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@fc
    .line 1777
    move-object/from16 v0, p0

    #@fe
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@101
    move-result v24

    #@102
    or-int v12, v12, v24

    #@104
    .line 1779
    .local v12, "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@107
    .line 1781
    move-object/from16 v0, p0

    #@109
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@10c
    move-result v24

    #@10d
    or-int v12, v12, v24

    #@10f
    goto/16 :goto_7

    #@111
    .line 1785
    .end local v12    # "handled":Z
    :cond_b
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, p1

    #@115
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@118
    move-result v24

    #@119
    or-int v12, v12, v24

    #@11b
    .restart local v12    # "handled":Z
    goto/16 :goto_7

    #@11d
    .line 1722
    .end local v12    # "handled":Z
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    #@11f
    goto/16 :goto_1

    #@121
    .line 1808
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_d
    const/16 v24, 0x7

    #@123
    move/from16 v0, v24

    #@125
    if-ne v4, v0, :cond_e

    #@127
    .line 1809
    move-object/from16 v0, p0

    #@129
    move-object/from16 v1, p1

    #@12b
    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@12e
    .line 1812
    :cond_e
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@131
    move-result-object v10

    #@132
    .line 1813
    const/16 v24, 0xa

    #@134
    move/from16 v0, v24

    #@136
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@139
    .line 1814
    move-object/from16 v0, p0

    #@13b
    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@13e
    .line 1816
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@141
    goto/16 :goto_9

    #@143
    .line 1825
    .end local v5    # "child":Landroid/view/View;
    :cond_f
    if-eqz v12, :cond_12

    #@145
    const/16 v17, 0x0

    #@147
    .line 1826
    .local v17, "newHoveredSelf":Z
    :goto_b
    move-object/from16 v0, p0

    #@149
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@14b
    move/from16 v24, v0

    #@14d
    move/from16 v0, v17

    #@14f
    move/from16 v1, v24

    #@151
    if-ne v0, v1, :cond_13

    #@153
    .line 1827
    if-eqz v17, :cond_10

    #@155
    .line 1829
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@158
    move-result v24

    #@159
    or-int v12, v12, v24

    #@15b
    .line 1871
    :cond_10
    :goto_c
    move-object/from16 v0, p1

    #@15d
    if-eq v10, v0, :cond_11

    #@15f
    .line 1872
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    #@162
    .line 1876
    :cond_11
    return v12

    #@163
    .line 1825
    .end local v17    # "newHoveredSelf":Z
    :cond_12
    const/16 v17, 0x1

    #@165
    .restart local v17    # "newHoveredSelf":Z
    goto :goto_b

    #@166
    .line 1832
    :cond_13
    move-object/from16 v0, p0

    #@168
    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@16a
    move/from16 v24, v0

    #@16c
    if-eqz v24, :cond_14

    #@16e
    .line 1834
    const/16 v24, 0xa

    #@170
    move/from16 v0, v24

    #@172
    if-ne v4, v0, :cond_15

    #@174
    .line 1836
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@177
    move-result v24

    #@178
    or-int v12, v12, v24

    #@17a
    .line 1848
    :goto_d
    const/16 v24, 0x0

    #@17c
    move/from16 v0, v24

    #@17e
    move-object/from16 v1, p0

    #@180
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@182
    .line 1851
    :cond_14
    if-eqz v17, :cond_10

    #@184
    .line 1853
    const/16 v24, 0x9

    #@186
    move/from16 v0, v24

    #@188
    if-ne v4, v0, :cond_17

    #@18a
    .line 1855
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@18d
    move-result v24

    #@18e
    or-int v12, v12, v24

    #@190
    .line 1856
    .restart local v12    # "handled":Z
    const/16 v24, 0x1

    #@192
    move/from16 v0, v24

    #@194
    move-object/from16 v1, p0

    #@196
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@198
    goto :goto_c

    #@199
    .line 1840
    .end local v12    # "handled":Z
    :cond_15
    const/16 v24, 0x7

    #@19b
    move/from16 v0, v24

    #@19d
    if-ne v4, v0, :cond_16

    #@19f
    .line 1841
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1a2
    .line 1843
    :cond_16
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1a5
    move-result-object v10

    #@1a6
    .line 1844
    const/16 v24, 0xa

    #@1a8
    move/from16 v0, v24

    #@1aa
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@1ad
    .line 1845
    move-object/from16 v0, p0

    #@1af
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1b2
    .line 1846
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@1b5
    goto :goto_d

    #@1b6
    .line 1857
    :cond_17
    const/16 v24, 0x7

    #@1b8
    move/from16 v0, v24

    #@1ba
    if-ne v4, v0, :cond_10

    #@1bc
    .line 1859
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1bf
    move-result-object v10

    #@1c0
    .line 1860
    const/16 v24, 0x9

    #@1c2
    move/from16 v0, v24

    #@1c4
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@1c7
    .line 1861
    move-object/from16 v0, p0

    #@1c9
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1cc
    move-result v24

    #@1cd
    or-int v12, v12, v24

    #@1cf
    .line 1862
    .restart local v12    # "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@1d2
    .line 1864
    move-object/from16 v0, p0

    #@1d4
    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@1d7
    move-result v24

    #@1d8
    or-int v12, v12, v24

    #@1da
    .line 1865
    const/16 v24, 0x1

    #@1dc
    move/from16 v0, v24

    #@1de
    move-object/from16 v1, p0

    #@1e0
    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    #@1e2
    goto/16 :goto_c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1629
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1630
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@a
    .line 1633
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@c
    and-int/lit8 v0, v0, 0x12

    #@e
    .line 1634
    const/16 v1, 0x12

    #@10
    .line 1633
    if-ne v0, v1, :cond_1

    #@12
    .line 1635
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1636
    return v2

    #@19
    .line 1638
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
    .line 1639
    const/16 v1, 0x10

    #@25
    .line 1638
    if-ne v0, v1, :cond_2

    #@27
    .line 1640
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@29
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 1641
    return v2

    #@30
    .line 1645
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 1646
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@36
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@39
    .line 1648
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
    .line 1614
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 1615
    const/16 v1, 0x12

    #@6
    .line 1614
    if-ne v0, v1, :cond_0

    #@8
    .line 1616
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1617
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
    .line 1618
    const/16 v1, 0x10

    #@19
    .line 1617
    if-ne v0, v1, :cond_1

    #@1b
    .line 1619
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1621
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
    .line 1656
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@2
    and-int/lit8 v0, v0, 0x12

    #@4
    .line 1657
    const/16 v1, 0x12

    #@6
    .line 1656
    if-ne v0, v1, :cond_0

    #@8
    .line 1658
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1659
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
    .line 1660
    const/16 v1, 0x10

    #@19
    .line 1659
    if-ne v0, v1, :cond_1

    #@1b
    .line 1661
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1663
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
    .line 2868
    const/4 v3, 0x0

    #@2
    .line 2869
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 2870
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@b
    move-result v3

    #@c
    .line 2871
    .local v3, "handled":Z
    if-eqz v3, :cond_0

    #@e
    .line 2872
    return v3

    #@f
    .line 2876
    .end local v3    # "handled":Z
    :cond_0
    const/4 v5, 0x1

    #@10
    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    #@13
    move-result-object v2

    #@14
    .line 2878
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    #@17
    move-result v1

    #@18
    .line 2879
    .local v1, "childCount":I
    const/4 v4, 0x0

    #@19
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@1b
    .line 2880
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    .line 2881
    .local v0, "child":Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    #@21
    and-int/lit8 v5, v5, 0xc

    #@23
    if-nez v5, :cond_1

    #@25
    .line 2882
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    .line 2883
    .restart local v3    # "handled":Z
    if-eqz v3, :cond_1

    #@2b
    .line 2889
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@2e
    .line 2884
    return v3

    #@2f
    .line 2879
    .end local v3    # "handled":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2889
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@35
    .line 2891
    return v6

    #@36
    .line 2888
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    #@37
    .line 2889
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    #@3a
    .line 2888
    throw v5
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 17
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 2900
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    #@3
    .line 2901
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    #@6
    move-result v14

    #@7
    if-nez v14, :cond_8

    #@9
    .line 2902
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    #@c
    move-result v14

    #@d
    if-nez v14, :cond_8

    #@f
    .line 2903
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v4

    #@13
    .line 2904
    .local v4, "childrenCount":I
    if-lez v4, :cond_8

    #@15
    .line 2905
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setChildCount(I)V

    #@1a
    .line 2906
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@1d
    move-result-object v12

    #@1e
    .line 2907
    .local v12, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v12, :cond_1

    #@20
    .line 2908
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@23
    move-result v6

    #@24
    .line 2909
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@28
    .line 2910
    .local v3, "children":[Landroid/view/View;
    const/4 v8, 0x0

    #@29
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_8

    #@2b
    .line 2913
    if-eqz v6, :cond_2

    #@2d
    :try_start_0
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result v2

    #@33
    .line 2958
    .local v2, "childIndex":I
    :cond_0
    :goto_2
    if-nez v12, :cond_7

    #@35
    .line 2959
    aget-object v1, v3, v2

    #@37
    .line 2960
    .local v1, "child":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p1

    #@39
    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    #@3c
    move-result-object v5

    #@3d
    .line 2961
    .local v5, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    #@40
    .line 2910
    add-int/lit8 v8, v8, 0x1

    #@42
    goto :goto_1

    #@43
    .line 2907
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v5    # "cstructure":Landroid/view/ViewStructure;
    .end local v8    # "i":I
    :cond_1
    const/4 v6, 0x0

    #@44
    .local v6, "customOrder":Z
    goto :goto_0

    #@45
    .end local v6    # "customOrder":Z
    .restart local v3    # "children":[Landroid/view/View;
    .restart local v8    # "i":I
    :cond_2
    move v2, v8

    #@46
    .line 2913
    goto :goto_2

    #@47
    .line 2914
    :catch_0
    move-exception v7

    #@48
    .line 2915
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v8

    #@49
    .line 2916
    .restart local v2    # "childIndex":I
    move-object/from16 v0, p0

    #@4b
    iget-object v14, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@50
    move-result-object v14

    #@51
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@53
    .line 2917
    const/16 v15, 0x17

    #@55
    .line 2916
    if-ge v14, v15, :cond_6

    #@57
    .line 2918
    const-string/jumbo v14, "ViewGroup"

    #@5a
    new-instance v15, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v16, "Bad getChildDrawingOrder while collecting assist @ "

    #@62
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v15

    #@6a
    .line 2919
    const-string/jumbo v16, " of "

    #@6d
    .line 2918
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v15

    #@71
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v15

    #@75
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v15

    #@79
    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    .line 2923
    const/4 v6, 0x0

    #@7d
    .line 2924
    .restart local v6    # "customOrder":Z
    if-lez v8, :cond_0

    #@7f
    .line 2931
    new-array v11, v4, [I

    #@81
    .line 2932
    .local v11, "permutation":[I
    new-instance v13, Landroid/util/SparseBooleanArray;

    #@83
    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    #@86
    .line 2934
    .local v13, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x0

    #@87
    .local v9, "j":I
    :goto_4
    if-ge v9, v8, :cond_3

    #@89
    .line 2935
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@8e
    move-result v14

    #@8f
    aput v14, v11, v9

    #@91
    .line 2936
    aget v14, v11, v9

    #@93
    const/4 v15, 0x1

    #@94
    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@97
    .line 2934
    add-int/lit8 v9, v9, 0x1

    #@99
    goto :goto_4

    #@9a
    .line 2940
    :cond_3
    const/4 v10, 0x0

    #@9b
    .line 2941
    .local v10, "nextIndex":I
    move v9, v8

    #@9c
    :goto_5
    if-ge v9, v4, :cond_5

    #@9e
    .line 2942
    :goto_6
    const/4 v14, 0x0

    #@9f
    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@a2
    move-result v14

    #@a3
    if-eqz v14, :cond_4

    #@a5
    .line 2943
    add-int/lit8 v10, v10, 0x1

    #@a7
    goto :goto_6

    #@a8
    .line 2945
    :cond_4
    aput v10, v11, v9

    #@aa
    .line 2946
    add-int/lit8 v10, v10, 0x1

    #@ac
    .line 2941
    add-int/lit8 v9, v9, 0x1

    #@ae
    goto :goto_5

    #@af
    .line 2949
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    #@b1
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@b4
    .line 2950
    .restart local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    #@b5
    :goto_7
    if-ge v9, v4, :cond_0

    #@b7
    .line 2951
    aget v14, v11, v9

    #@b9
    aget-object v14, v3, v14

    #@bb
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@be
    .line 2950
    add-int/lit8 v9, v9, 0x1

    #@c0
    goto :goto_7

    #@c1
    .line 2955
    .end local v6    # "customOrder":Z
    .end local v9    # "j":I
    .end local v10    # "nextIndex":I
    .end local v11    # "permutation":[I
    .end local v13    # "usedIndices":Landroid/util/SparseBooleanArray;
    :cond_6
    throw v7

    #@c2
    .line 2959
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c5
    move-result-object v1

    #@c6
    check-cast v1, Landroid/view/View;

    #@c8
    .restart local v1    # "child":Landroid/view/View;
    goto/16 :goto_3

    #@ca
    .line 2899
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v4    # "childrenCount":I
    .end local v8    # "i":I
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
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
    .line 3121
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@5
    .line 3122
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3123
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3124
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@c
    .line 3125
    aget-object v0, v1, v3

    #@e
    .line 3126
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@10
    and-int/2addr v4, v5

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 3127
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@16
    .line 3124
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 3120
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
    .line 3093
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@5
    .line 3094
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3095
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 3096
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@c
    .line 3097
    aget-object v0, v1, v3

    #@e
    .line 3098
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@10
    and-int/2addr v4, v5

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 3099
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@16
    .line 3096
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 3092
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 2856
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    #@3
    .line 2858
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2859
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2860
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2861
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    #@f
    .line 2860
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2855
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 3714
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3715
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3716
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 3717
    aget-object v3, v0, v2

    #@9
    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    #@c
    .line 3716
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3713
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    #@0
    .prologue
    .line 3723
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3724
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3725
    .local v2, "count":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@7
    .line 3726
    aget-object v0, v1, v3

    #@9
    .line 3730
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
    .line 3725
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3731
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    #@1d
    goto :goto_1

    #@1e
    .line 3722
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 3702
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@2
    .line 3703
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 3704
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 3705
    aget-object v3, v0, v2

    #@9
    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    #@c
    .line 3704
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3701
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    #@0
    .prologue
    .line 2807
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@3
    .line 2808
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 2809
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 2810
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 2811
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@f
    .line 2810
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2806
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 1586
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@3
    .line 1588
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1589
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1590
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@a
    .line 1591
    aget-object v0, v1, v3

    #@c
    .line 1592
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    #@f
    .line 1590
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1585
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
    .line 3141
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    #@3
    .line 3140
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2078
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@4
    move-object/from16 v31, v0

    #@6
    if-eqz v31, :cond_0

    #@8
    .line 2079
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
    .line 2084
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
    .line 2085
    const/16 v31, 0x0

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v31

    #@2b
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@2e
    .line 2088
    :cond_1
    const/16 v17, 0x0

    #@30
    .line 2089
    .local v17, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    #@33
    move-result v31

    #@34
    if-eqz v31, :cond_9

    #@36
    .line 2090
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@39
    move-result v4

    #@3a
    .line 2091
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    #@3c
    .line 2094
    .local v6, "actionMasked":I
    if-nez v6, :cond_2

    #@3e
    .line 2098
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    #@41
    .line 2099
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    #@44
    .line 2104
    :cond_2
    if-eqz v6, :cond_3

    #@46
    .line 2105
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@4a
    move-object/from16 v31, v0

    #@4c
    if-eqz v31, :cond_d

    #@4e
    .line 2106
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
    .line 2107
    .local v16, "disallowIntercept":Z
    :goto_0
    if-nez v16, :cond_c

    #@5e
    .line 2108
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@61
    move-result v21

    #@62
    .line 2109
    .local v21, "intercepted":Z
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    #@67
    .line 2121
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
    .line 2122
    :cond_4
    const/16 v31, 0x0

    #@73
    move-object/from16 v0, p1

    #@75
    move/from16 v1, v31

    #@77
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@7a
    .line 2126
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@7d
    move-result v31

    #@7e
    if-nez v31, :cond_e

    #@80
    .line 2127
    const/16 v31, 0x3

    #@82
    move/from16 v0, v31

    #@84
    if-ne v6, v0, :cond_f

    #@86
    const/4 v9, 0x1

    #@87
    .line 2130
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
    .line 2131
    .local v27, "split":Z
    :goto_3
    const/16 v23, 0x0

    #@97
    .line 2132
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    #@98
    .line 2133
    .local v7, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v9, :cond_6

    #@9a
    if-eqz v21, :cond_11

    #@9c
    .line 2238
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@a0
    move-object/from16 v31, v0

    #@a2
    if-nez v31, :cond_24

    #@a4
    .line 2240
    const/16 v31, 0x0

    #@a6
    .line 2241
    const/16 v32, -0x1

    #@a8
    .line 2240
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
    .line 2275
    .end local v17    # "handled":Z
    :cond_7
    if-nez v9, :cond_8

    #@b6
    .line 2276
    const/16 v31, 0x1

    #@b8
    move/from16 v0, v31

    #@ba
    if-ne v6, v0, :cond_2a

    #@bc
    .line 2278
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    #@bf
    .line 2286
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
    .line 2287
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
    .line 2289
    :cond_a
    return v17

    #@db
    .line 2106
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v17    # "handled":Z
    :cond_b
    const/16 v16, 0x0

    #@dd
    .restart local v16    # "disallowIntercept":Z
    goto/16 :goto_0

    #@df
    .line 2111
    :cond_c
    const/16 v21, 0x0

    #@e1
    .local v21, "intercepted":Z
    goto :goto_1

    #@e2
    .line 2116
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :cond_d
    const/16 v21, 0x1

    #@e4
    .restart local v21    # "intercepted":Z
    goto :goto_1

    #@e5
    .line 2126
    .end local v21    # "intercepted":Z
    :cond_e
    const/4 v9, 0x1

    #@e6
    .restart local v9    # "canceled":Z
    goto :goto_2

    #@e7
    .line 2127
    .end local v9    # "canceled":Z
    :cond_f
    const/4 v9, 0x0

    #@e8
    .restart local v9    # "canceled":Z
    goto :goto_2

    #@e9
    .line 2130
    :cond_10
    const/16 v27, 0x0

    #@eb
    .restart local v27    # "split":Z
    goto :goto_3

    #@ec
    .line 2140
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    #@ef
    move-result v31

    #@f0
    if-eqz v31, :cond_13

    #@f2
    .line 2141
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    #@f5
    move-result-object v12

    #@f6
    .line 2143
    :goto_6
    if-eqz v6, :cond_12

    #@f8
    .line 2144
    if-eqz v27, :cond_14

    #@fa
    const/16 v31, 0x5

    #@fc
    move/from16 v0, v31

    #@fe
    if-ne v6, v0, :cond_14

    #@100
    .line 2146
    :cond_12
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@103
    move-result v5

    #@104
    .line 2147
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
    .line 2152
    .local v19, "idBitsToAssign":I
    :goto_8
    move-object/from16 v0, p0

    #@112
    move/from16 v1, v19

    #@114
    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    #@117
    .line 2154
    move-object/from16 v0, p0

    #@119
    iget v14, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@11b
    .line 2155
    .local v14, "childrenCount":I
    if-eqz v14, :cond_1c

    #@11d
    .line 2156
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@122
    move-result v29

    #@123
    .line 2157
    .local v29, "x":F
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@128
    move-result v30

    #@129
    .line 2160
    .local v30, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    #@12c
    move-result-object v26

    #@12d
    .line 2161
    .local v26, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v26, :cond_16

    #@12f
    .line 2162
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@132
    move-result v15

    #@133
    .line 2163
    :goto_9
    move-object/from16 v0, p0

    #@135
    iget-object v13, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@137
    .line 2164
    .local v13, "children":[Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    #@139
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v18, "i":I
    :goto_a
    if-ltz v18, :cond_1b

    #@13b
    .line 2165
    if-eqz v15, :cond_17

    #@13d
    .line 2166
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, v18

    #@141
    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    #@144
    move-result v11

    #@145
    .line 2167
    .local v11, "childIndex":I
    :goto_b
    if-nez v26, :cond_18

    #@147
    .line 2168
    aget-object v10, v13, v11

    #@149
    .line 2174
    .local v10, "child":Landroid/view/View;
    :goto_c
    if-eqz v12, :cond_1a

    #@14b
    .line 2175
    if-eq v12, v10, :cond_19

    #@14d
    .line 2164
    :goto_d
    add-int/lit8 v18, v18, -0x1

    #@14f
    goto :goto_a

    #@150
    .line 2141
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
    .line 2145
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
    .line 2148
    .restart local v5    # "actionIndex":I
    :cond_15
    const/16 v19, -0x1

    #@15b
    .restart local v19    # "idBitsToAssign":I
    goto :goto_8

    #@15c
    .line 2161
    .restart local v14    # "childrenCount":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_16
    const/4 v15, 0x0

    #@15d
    .local v15, "customOrder":Z
    goto :goto_9

    #@15e
    .line 2166
    .end local v15    # "customOrder":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    :cond_17
    move/from16 v11, v18

    #@160
    .restart local v11    # "childIndex":I
    goto :goto_b

    #@161
    .line 2168
    :cond_18
    move-object/from16 v0, v26

    #@163
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@166
    move-result-object v10

    #@167
    check-cast v10, Landroid/view/View;

    #@169
    .restart local v10    # "child":Landroid/view/View;
    goto :goto_c

    #@16a
    .line 2178
    :cond_19
    const/4 v12, 0x0

    #@16b
    .line 2179
    .restart local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    #@16d
    .line 2182
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_1a
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    #@170
    move-result v31

    #@171
    if-eqz v31, :cond_1d

    #@173
    .line 2183
    const/16 v31, 0x0

    #@175
    move-object/from16 v0, p0

    #@177
    move/from16 v1, v29

    #@179
    move/from16 v2, v30

    #@17b
    move-object/from16 v3, v31

    #@17d
    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@180
    move-result v31

    #@181
    if-eqz v31, :cond_1d

    #@183
    .line 2188
    move-object/from16 v0, p0

    #@185
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    #@188
    move-result-object v23

    #@189
    .line 2189
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v23, :cond_1e

    #@18b
    .line 2192
    move-object/from16 v0, v23

    #@18d
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@18f
    move/from16 v31, v0

    #@191
    or-int v31, v31, v19

    #@193
    move/from16 v0, v31

    #@195
    move-object/from16 v1, v23

    #@197
    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@199
    .line 2222
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1b
    :goto_e
    if-eqz v26, :cond_1c

    #@19b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    #@19e
    .line 2225
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_1c
    if-nez v23, :cond_6

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1a4
    move-object/from16 v31, v0

    #@1a6
    if-eqz v31, :cond_6

    #@1a8
    .line 2228
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@1ac
    move-object/from16 v23, v0

    #@1ae
    .line 2229
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_f
    move-object/from16 v0, v23

    #@1b0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@1b2
    move-object/from16 v31, v0

    #@1b4
    if-eqz v31, :cond_23

    #@1b6
    .line 2230
    move-object/from16 v0, v23

    #@1b8
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@1ba
    move-object/from16 v23, v0

    #@1bc
    goto :goto_f

    #@1bd
    .line 2184
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_1d
    const/16 v31, 0x0

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    move/from16 v1, v31

    #@1c3
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@1c6
    goto :goto_d

    #@1c7
    .line 2196
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1e
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@1ca
    .line 2197
    const/16 v31, 0x0

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    move-object/from16 v1, p1

    #@1d0
    move/from16 v2, v31

    #@1d2
    move/from16 v3, v19

    #@1d4
    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@1d7
    move-result v31

    #@1d8
    if-eqz v31, :cond_22

    #@1da
    .line 2199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@1dd
    move-result-wide v32

    #@1de
    move-wide/from16 v0, v32

    #@1e0
    move-object/from16 v2, p0

    #@1e2
    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    #@1e4
    .line 2200
    if-eqz v26, :cond_21

    #@1e6
    .line 2202
    const/16 v22, 0x0

    #@1e8
    .local v22, "j":I
    :goto_10
    move/from16 v0, v22

    #@1ea
    if-ge v0, v14, :cond_1f

    #@1ec
    .line 2203
    aget-object v31, v13, v11

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1f2
    move-object/from16 v32, v0

    #@1f4
    aget-object v32, v32, v22

    #@1f6
    move-object/from16 v0, v31

    #@1f8
    move-object/from16 v1, v32

    #@1fa
    if-ne v0, v1, :cond_20

    #@1fc
    .line 2204
    move/from16 v0, v22

    #@1fe
    move-object/from16 v1, p0

    #@200
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@202
    .line 2211
    .end local v22    # "j":I
    :cond_1f
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@205
    move-result v31

    #@206
    move/from16 v0, v31

    #@208
    move-object/from16 v1, p0

    #@20a
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    #@20c
    .line 2212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@20f
    move-result v31

    #@210
    move/from16 v0, v31

    #@212
    move-object/from16 v1, p0

    #@214
    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    #@216
    .line 2213
    move-object/from16 v0, p0

    #@218
    move/from16 v1, v19

    #@21a
    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    #@21d
    move-result-object v23

    #@21e
    .line 2214
    const/4 v7, 0x1

    #@21f
    .line 2215
    goto/16 :goto_e

    #@221
    .line 2202
    .restart local v22    # "j":I
    :cond_20
    add-int/lit8 v22, v22, 0x1

    #@223
    goto :goto_10

    #@224
    .line 2209
    .end local v22    # "j":I
    :cond_21
    move-object/from16 v0, p0

    #@226
    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    #@228
    goto :goto_11

    #@229
    .line 2220
    :cond_22
    const/16 v31, 0x0

    #@22b
    move-object/from16 v0, p1

    #@22d
    move/from16 v1, v31

    #@22f
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    #@232
    goto/16 :goto_d

    #@234
    .line 2232
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_23
    move-object/from16 v0, v23

    #@236
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@238
    move/from16 v31, v0

    #@23a
    or-int v31, v31, v19

    #@23c
    move/from16 v0, v31

    #@23e
    move-object/from16 v1, v23

    #@240
    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@242
    goto/16 :goto_4

    #@244
    .line 2245
    .end local v5    # "actionIndex":I
    .end local v14    # "childrenCount":I
    .end local v19    # "idBitsToAssign":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_24
    const/16 v25, 0x0

    #@246
    .line 2246
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@24a
    move-object/from16 v28, v0

    #@24c
    .line 2247
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v28, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_12
    if-eqz v28, :cond_7

    #@24e
    .line 2248
    move-object/from16 v0, v28

    #@250
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@252
    move-object/from16 v24, v0

    #@254
    .line 2249
    .local v24, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_26

    #@256
    move-object/from16 v0, v28

    #@258
    move-object/from16 v1, v23

    #@25a
    if-ne v0, v1, :cond_26

    #@25c
    .line 2250
    const/16 v17, 0x1

    #@25e
    .line 2269
    :cond_25
    move-object/from16 v25, v28

    #@260
    .line 2270
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v28, v24

    #@262
    goto :goto_12

    #@263
    .line 2252
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_26
    move-object/from16 v0, v28

    #@265
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@267
    move-object/from16 v31, v0

    #@269
    invoke-static/range {v31 .. v31}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    #@26c
    move-result v31

    #@26d
    if-nez v31, :cond_28

    #@26f
    .line 2253
    move/from16 v8, v21

    #@271
    .line 2255
    :goto_13
    move-object/from16 v0, v28

    #@273
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    #@275
    move-object/from16 v31, v0

    #@277
    move-object/from16 v0, v28

    #@279
    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    #@27b
    move/from16 v32, v0

    #@27d
    .line 2254
    move-object/from16 v0, p0

    #@27f
    move-object/from16 v1, p1

    #@281
    move-object/from16 v2, v31

    #@283
    move/from16 v3, v32

    #@285
    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    #@288
    move-result v31

    #@289
    if-eqz v31, :cond_27

    #@28b
    .line 2256
    const/16 v17, 0x1

    #@28d
    .line 2258
    :cond_27
    if-eqz v8, :cond_25

    #@28f
    .line 2259
    if-nez v25, :cond_29

    #@291
    .line 2260
    move-object/from16 v0, v24

    #@293
    move-object/from16 v1, p0

    #@295
    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    #@297
    .line 2264
    :goto_14
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    #@29a
    .line 2265
    move-object/from16 v28, v24

    #@29c
    .line 2266
    goto :goto_12

    #@29d
    .line 2252
    :cond_28
    const/4 v8, 0x1

    #@29e
    .local v8, "cancelChild":Z
    goto :goto_13

    #@29f
    .line 2262
    .end local v8    # "cancelChild":Z
    :cond_29
    move-object/from16 v0, v24

    #@2a1
    move-object/from16 v1, v25

    #@2a3
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    #@2a5
    goto :goto_14

    #@2a6
    .line 2277
    .end local v17    # "handled":Z
    .end local v24    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2a
    const/16 v31, 0x7

    #@2a8
    move/from16 v0, v31

    #@2aa
    if-eq v6, v0, :cond_8

    #@2ac
    .line 2279
    if-eqz v27, :cond_9

    #@2ae
    const/16 v31, 0x6

    #@2b0
    move/from16 v0, v31

    #@2b2
    if-ne v6, v0, :cond_9

    #@2b4
    .line 2280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@2b7
    move-result v5

    #@2b8
    .line 2281
    .restart local v5    # "actionIndex":I
    move-object/from16 v0, p1

    #@2ba
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2bd
    move-result v31

    #@2be
    const/16 v32, 0x1

    #@2c0
    shl-int v20, v32, v31

    #@2c2
    .line 2282
    .local v20, "idBitsToRemove":I
    move-object/from16 v0, p0

    #@2c4
    move/from16 v1, v20

    #@2c6
    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    #@2c9
    goto/16 :goto_5
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1671
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1672
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    #@a
    .line 1675
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@c
    and-int/lit8 v0, v0, 0x12

    #@e
    .line 1676
    const/16 v1, 0x12

    #@10
    .line 1675
    if-ne v0, v1, :cond_1

    #@12
    .line 1677
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1678
    return v2

    #@19
    .line 1680
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
    .line 1681
    const/16 v1, 0x10

    #@25
    .line 1680
    if-ne v0, v1, :cond_2

    #@27
    .line 1682
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@29
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 1683
    return v2

    #@30
    .line 1687
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 1688
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@36
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@39
    .line 1690
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
    .line 950
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 951
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    #@9
    move-result v0

    #@a
    .line 950
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
    .line 4202
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 4203
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4204
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@9
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    #@c
    .line 4201
    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4218
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 4219
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4220
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@9
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    #@c
    .line 4217
    :cond_0
    return-void
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 1292
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 1293
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1294
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1295
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1296
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    #@f
    .line 1295
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1291
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 1200
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@3
    .line 1201
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1202
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1203
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1204
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@f
    .line 1203
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1199
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 1574
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@3
    .line 1576
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1577
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1578
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@a
    .line 1579
    aget-object v0, v1, v3

    #@c
    .line 1580
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    #@f
    .line 1578
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1573
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1305
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@3
    .line 1306
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1307
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1308
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 1309
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    #@f
    .line 1308
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1304
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
    .line 3609
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
    .line 6295
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 6297
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    const/high16 v5, 0x10000

    #@7
    and-int/2addr v4, v5

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 6298
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    and-int/lit16 v4, v4, 0x2000

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 6299
    new-instance v4, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 6303
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1b
    .line 6304
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1d
    .line 6306
    .local v2, "count":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@20
    .line 6307
    aget-object v0, v1, v3

    #@22
    .line 6308
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@24
    const/high16 v5, 0x400000

    #@26
    and-int/2addr v4, v5

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 6309
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    #@2c
    .line 6306
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 6294
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
    .line 7781
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 7783
    const-string/jumbo v2, "focus:descendantFocusability"

    #@6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 7784
    const-string/jumbo v2, "drawing:clipChildren"

    #@10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    #@13
    move-result v3

    #@14
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@17
    .line 7785
    const-string/jumbo v2, "drawing:clipToPadding"

    #@1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    #@1d
    move-result v3

    #@1e
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@21
    .line 7786
    const-string/jumbo v2, "drawing:childrenDrawingOrderEnabled"

    #@24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    #@27
    move-result v3

    #@28
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@2b
    .line 7787
    const-string/jumbo v2, "drawing:persistentDrawingCache"

    #@2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    #@31
    move-result v3

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@35
    .line 7789
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@38
    move-result v1

    #@39
    .line 7790
    .local v1, "n":I
    const-string/jumbo v2, "meta:__childCount__"

    #@3c
    int-to-short v3, v1

    #@3d
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    #@40
    .line 7791
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@43
    .line 7792
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
    .line 7793
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    #@61
    .line 7791
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 7780
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
    .line 6154
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 6155
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 6156
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@c
    .line 6157
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 6158
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 6159
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 6160
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 6159
    if-eqz v1, :cond_2

    #@23
    .line 6161
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@28
    .line 6170
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@2b
    .line 6153
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    #@2c
    .line 6163
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 6164
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@33
    .line 6166
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 6167
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
    .line 1044
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1045
    return-object p0

    #@8
    .line 1048
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1049
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 1051
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
    .line 1540
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 1541
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 1542
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    #@6
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@8
    .line 1543
    aget-object v0, v1, v3

    #@a
    .line 1544
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1542
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@12
    goto :goto_0

    #@13
    .line 1548
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1549
    return-object v0

    #@1a
    .line 1552
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
    .line 6730
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
    .line 6731
    return-void

    #@b
    .line 6733
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@e
    .line 6734
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@11
    move-result v1

    #@12
    .line 6735
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@15
    .line 6736
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 6737
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@1c
    .line 6735
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 6729
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
    .line 1173
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    #@4
    move-result-object v3

    #@5
    .line 1174
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_0

    #@7
    .line 1175
    return-object v3

    #@8
    .line 1178
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@b
    move-result-object v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1179
    return-object v6

    #@f
    .line 1182
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@11
    .line 1183
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@13
    .line 1184
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@14
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@16
    .line 1185
    aget-object v0, v1, v4

    #@18
    .line 1186
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    #@1b
    move-result-object v3

    #@1c
    .line 1187
    if-eqz v3, :cond_2

    #@1e
    .line 1188
    return-object v3

    #@1f
    .line 1184
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1192
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
    .line 3885
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 3886
    return-object p0

    #@8
    .line 3889
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@a
    .line 3890
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@c
    .line 3892
    .local v1, "len":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 3893
    aget-object v2, v3, v0

    #@11
    .line 3895
    .local v2, "v":Landroid/view/View;
    if-eq v2, p2, :cond_1

    #@13
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@15
    and-int/lit8 v4, v4, 0x8

    #@17
    if-nez v4, :cond_1

    #@19
    .line 3896
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    .line 3898
    if-eqz v2, :cond_1

    #@1f
    .line 3899
    return-object v2

    #@20
    .line 3892
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3904
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
    .line 3831
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    #@3
    if-ne p1, v4, :cond_0

    #@5
    .line 3832
    return-object p0

    #@6
    .line 3835
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@8
    .line 3836
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@a
    .line 3838
    .local v1, "len":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@d
    .line 3839
    aget-object v2, v3, v0

    #@f
    .line 3841
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@11
    and-int/lit8 v4, v4, 0x8

    #@13
    if-nez v4, :cond_1

    #@15
    .line 3842
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    .line 3844
    if-eqz v2, :cond_1

    #@1b
    .line 3845
    return-object v2

    #@1c
    .line 3838
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3850
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
    .line 3858
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
    .line 3859
    return-object p0

    #@c
    .line 3862
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@e
    .line 3863
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@10
    .line 3865
    .local v1, "len":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 3866
    aget-object v2, v3, v0

    #@15
    .line 3868
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    #@17
    and-int/lit8 v4, v4, 0x8

    #@19
    if-nez v4, :cond_1

    #@1b
    .line 3869
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 3871
    if-eqz v2, :cond_1

    #@21
    .line 3872
    return-object v2

    #@22
    .line 3865
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3877
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
    .line 1158
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@3
    .line 1159
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@5
    .line 1160
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@7
    .line 1161
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@a
    .line 1162
    aget-object v0, v1, v3

    #@c
    .line 1163
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@e
    and-int/lit8 v4, v4, 0xc

    #@10
    if-nez v4, :cond_0

    #@12
    .line 1164
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    #@14
    and-int/lit8 v4, v4, 0x8

    #@16
    if-nez v4, :cond_0

    #@18
    .line 1165
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@1b
    .line 1161
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1157
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
    .line 6085
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    #@4
    .line 6086
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    #@6
    .line 6087
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 6088
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    .line 6090
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 6091
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@16
    .line 6094
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@19
    .line 6095
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1b
    or-int/lit8 v1, v1, 0x4

    #@1d
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    .line 6099
    :cond_1
    if-eqz p2, :cond_2

    #@21
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_4

    #@27
    .line 6103
    :cond_2
    :goto_0
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@29
    and-int/2addr v1, v2

    #@2a
    if-ne v1, v2, :cond_3

    #@2c
    .line 6104
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    #@2f
    .line 6107
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@31
    const v2, -0x10001

    #@34
    and-int/2addr v1, v2

    #@35
    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    #@37
    .line 6109
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@39
    or-int/lit8 v1, v1, 0x4

    #@3b
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3d
    .line 6084
    :cond_3
    return-void

    #@3e
    .line 6100
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
    .line 849
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 853
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
    .line 854
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 855
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@16
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 857
    :cond_1
    return-object v1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@7
    move-result v0

    #@8
    const/high16 v1, 0x60000

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 752
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
    .line 747
    :cond_0
    :goto_0
    return-void

    #@19
    .line 760
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
    .line 761
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@29
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    #@2c
    goto :goto_0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 8
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 6236
    iget v7, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@3
    and-int/lit16 v7, v7, 0x200

    #@5
    if-nez v7, :cond_0

    #@7
    const/4 v4, 0x1

    #@8
    .line 6237
    .local v4, "meOpaque":Z
    :goto_0
    if-eqz v4, :cond_1

    #@a
    if-nez p1, :cond_1

    #@c
    .line 6239
    return v6

    #@d
    .line 6236
    .end local v4    # "meOpaque":Z
    :cond_0
    const/4 v4, 0x0

    #@e
    .restart local v4    # "meOpaque":Z
    goto :goto_0

    #@f
    .line 6241
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@12
    .line 6242
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@14
    .line 6243
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@16
    .line 6244
    .local v2, "count":I
    const/4 v5, 0x1

    #@17
    .line 6245
    .local v5, "noneOfTheChildrenAreTransparent":Z
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    #@1a
    .line 6246
    aget-object v0, v1, v3

    #@1c
    .line 6247
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    #@1e
    and-int/lit8 v7, v7, 0xc

    #@20
    if-eqz v7, :cond_2

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@25
    move-result-object v7

    #@26
    if-eqz v7, :cond_3

    #@28
    .line 6248
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@2b
    move-result v7

    #@2c
    if-nez v7, :cond_3

    #@2e
    .line 6249
    const/4 v5, 0x0

    #@2f
    .line 6245
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_1

    #@32
    .line 6253
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    #@34
    .end local v5    # "noneOfTheChildrenAreTransparent":Z
    :goto_2
    return v5

    #@35
    .restart local v5    # "noneOfTheChildrenAreTransparent":Z
    :cond_5
    move v5, v6

    #@36
    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 5808
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
    .line 5779
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
    .line 5797
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2990
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
    .line 5878
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 5879
    :cond_0
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 5881
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
    .line 5867
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
    .line 3497
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 3816
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    #@0
    .prologue
    .line 3820
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3821
    new-instance v0, Landroid/view/animation/Transformation;

    #@6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@b
    .line 3823
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    #@d
    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 5373
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2
    if-eqz v7, :cond_8

    #@4
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@8
    .line 5374
    .local v4, "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v4, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@b
    .line 5376
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_0

    #@11
    .line 5377
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@18
    .line 5380
    :cond_0
    iget v7, p1, Landroid/view/View;->mLeft:I

    #@1a
    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@1c
    sub-int v0, v7, v8

    #@1e
    .line 5381
    .local v0, "dx":I
    iget v7, p1, Landroid/view/View;->mTop:I

    #@20
    iget v8, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@22
    sub-int v1, v7, v8

    #@24
    .line 5383
    .local v1, "dy":I
    int-to-float v7, v0

    #@25
    int-to-float v8, v1

    #@26
    invoke-virtual {v4, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    #@29
    .line 5385
    if-eqz p3, :cond_2

    #@2b
    .line 5386
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    #@2e
    move-result v7

    #@2f
    if-nez v7, :cond_1

    #@31
    .line 5387
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@33
    if-eqz v7, :cond_9

    #@35
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@37
    iget-object v3, v7, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    #@39
    .line 5389
    .local v3, "position":[F
    :goto_1
    iget v7, p3, Landroid/graphics/Point;->x:I

    #@3b
    int-to-float v7, v7

    #@3c
    const/4 v8, 0x0

    #@3d
    aput v7, v3, v8

    #@3f
    .line 5390
    iget v7, p3, Landroid/graphics/Point;->y:I

    #@41
    int-to-float v7, v7

    #@42
    const/4 v8, 0x1

    #@43
    aput v7, v3, v8

    #@45
    .line 5391
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@4c
    .line 5392
    const/4 v7, 0x0

    #@4d
    aget v7, v3, v7

    #@4f
    const/high16 v8, 0x3f000000    # 0.5f

    #@51
    add-float/2addr v7, v8

    #@52
    float-to-int v7, v7

    #@53
    iput v7, p3, Landroid/graphics/Point;->x:I

    #@55
    .line 5393
    const/4 v7, 0x1

    #@56
    aget v7, v3, v7

    #@58
    const/high16 v8, 0x3f000000    # 0.5f

    #@5a
    add-float/2addr v7, v8

    #@5b
    float-to-int v7, v7

    #@5c
    iput v7, p3, Landroid/graphics/Point;->y:I

    #@5e
    .line 5395
    .end local v3    # "position":[F
    :cond_1
    iget v7, p3, Landroid/graphics/Point;->x:I

    #@60
    add-int/2addr v7, v0

    #@61
    iput v7, p3, Landroid/graphics/Point;->x:I

    #@63
    .line 5396
    iget v7, p3, Landroid/graphics/Point;->y:I

    #@65
    add-int/2addr v7, v1

    #@66
    iput v7, p3, Landroid/graphics/Point;->y:I

    #@68
    .line 5399
    :cond_2
    iget v7, p0, Landroid/view/ViewGroup;->mRight:I

    #@6a
    iget v8, p0, Landroid/view/ViewGroup;->mLeft:I

    #@6c
    sub-int v6, v7, v8

    #@6e
    .line 5400
    .local v6, "width":I
    iget v7, p0, Landroid/view/ViewGroup;->mBottom:I

    #@70
    iget v8, p0, Landroid/view/ViewGroup;->mTop:I

    #@72
    sub-int v2, v7, v8

    #@74
    .line 5402
    .local v2, "height":I
    const/4 v5, 0x1

    #@75
    .line 5403
    .local v5, "rectIsVisible":Z
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@77
    if-eqz v7, :cond_3

    #@79
    .line 5404
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@7b
    instance-of v7, v7, Landroid/view/ViewGroup;

    #@7d
    if-eqz v7, :cond_4

    #@7f
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@81
    check-cast v7, Landroid/view/ViewGroup;

    #@83
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getClipChildren()Z

    #@86
    move-result v7

    #@87
    .line 5403
    if-eqz v7, :cond_4

    #@89
    .line 5406
    :cond_3
    const/4 v7, 0x0

    #@8a
    const/4 v8, 0x0

    #@8b
    int-to-float v9, v6

    #@8c
    int-to-float v10, v2

    #@8d
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@90
    move-result v5

    #@91
    .line 5409
    .end local v5    # "rectIsVisible":Z
    :cond_4
    if-eqz v5, :cond_5

    #@93
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@95
    and-int/lit8 v7, v7, 0x22

    #@97
    const/16 v8, 0x22

    #@99
    if-ne v7, v8, :cond_5

    #@9b
    .line 5411
    iget v7, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@9d
    int-to-float v7, v7

    #@9e
    iget v8, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@a0
    int-to-float v8, v8

    #@a1
    .line 5412
    iget v9, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@a3
    sub-int v9, v6, v9

    #@a5
    int-to-float v9, v9

    #@a6
    iget v10, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@a8
    sub-int v10, v2, v10

    #@aa
    int-to-float v10, v10

    #@ab
    .line 5411
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@ae
    move-result v5

    #@af
    .line 5415
    :cond_5
    if-eqz v5, :cond_6

    #@b1
    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@b3
    if-eqz v7, :cond_6

    #@b5
    .line 5417
    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@b7
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@b9
    int-to-float v7, v7

    #@ba
    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@bc
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@be
    int-to-float v8, v8

    #@bf
    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@c1
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@c3
    int-to-float v9, v9

    #@c4
    .line 5418
    iget-object v10, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    #@c6
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@c8
    int-to-float v10, v10

    #@c9
    .line 5417
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@cc
    move-result v5

    #@cd
    .line 5420
    :cond_6
    iget v7, v4, Landroid/graphics/RectF;->left:F

    #@cf
    const/high16 v8, 0x3f000000    # 0.5f

    #@d1
    add-float/2addr v7, v8

    #@d2
    float-to-int v7, v7

    #@d3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    #@d5
    const/high16 v9, 0x3f000000    # 0.5f

    #@d7
    add-float/2addr v8, v9

    #@d8
    float-to-int v8, v8

    #@d9
    iget v9, v4, Landroid/graphics/RectF;->right:F

    #@db
    const/high16 v10, 0x3f000000    # 0.5f

    #@dd
    add-float/2addr v9, v10

    #@de
    float-to-int v9, v9

    #@df
    .line 5421
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    #@e1
    const/high16 v11, 0x3f000000    # 0.5f

    #@e3
    add-float/2addr v10, v11

    #@e4
    float-to-int v10, v10

    #@e5
    .line 5420
    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    #@e8
    .line 5422
    if-eqz v5, :cond_7

    #@ea
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@ec
    if-eqz v7, :cond_7

    #@ee
    .line 5423
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@f0
    invoke-interface {v7, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@f3
    move-result v5

    #@f4
    .line 5425
    :cond_7
    return v5

    #@f5
    .line 5373
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "height":I
    .end local v4    # "rect":Landroid/graphics/RectF;
    .end local v6    # "width":I
    :cond_8
    new-instance v4, Landroid/graphics/RectF;

    #@f7
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    #@fa
    .restart local v4    # "rect":Landroid/graphics/RectF;
    goto/16 :goto_0

    #@fc
    .line 5388
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    :cond_9
    const/4 v7, 0x2

    #@fd
    new-array v3, v7, [F

    #@ff
    .restart local v3    # "position":[F
    goto/16 :goto_1
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
    .line 3637
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
    .line 3694
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
    .line 1012
    move-object v0, p0

    #@2
    .line 1013
    :goto_0
    if-eqz v0, :cond_2

    #@4
    .line 1014
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1015
    return-object v0

    #@b
    .line 1017
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
    .line 1019
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
    .line 680
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
    .line 1008
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    #@0
    .prologue
    .line 5502
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    #@0
    .prologue
    .line 6290
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method public getLayoutMode()I
    .locals 3

    #@0
    .prologue
    .line 5744
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 5745
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@7
    instance-of v1, v1, Landroid/view/ViewGroup;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 5746
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@d
    check-cast v1, Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    #@12
    move-result v0

    #@13
    .line 5747
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    #@14
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@17
    .line 5749
    .end local v0    # "inheritedLayoutMode":I
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@19
    return v1

    #@1a
    .line 5746
    :cond_1
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    #@1c
    .restart local v0    # "inheritedLayoutMode":I
    goto :goto_0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    #@0
    .prologue
    .line 4672
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    #@0
    .prologue
    .line 6703
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@2
    return v0
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    #@0
    .prologue
    .line 3476
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3477
    new-instance v0, Landroid/view/ViewGroupOverlay;

    #@6
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@b
    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    #@d
    .line 3479
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
    .line 3475
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
    .line 5681
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@2
    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3614
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    #@3
    .line 3618
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
    .line 3619
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    #@e
    .line 3620
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@10
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@12
    add-int/2addr v1, v2

    #@13
    iput v1, p1, Landroid/graphics/Rect;->left:I

    #@15
    .line 3621
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@17
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@19
    sub-int/2addr v1, v2

    #@1a
    iput v1, p1, Landroid/graphics/Rect;->right:I

    #@1c
    .line 3622
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@1e
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@20
    add-int/2addr v1, v2

    #@21
    iput v1, p1, Landroid/graphics/Rect;->top:I

    #@23
    .line 3623
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@25
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@27
    sub-int/2addr v1, v2

    #@28
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 3613
    :cond_0
    return-void

    #@2b
    .line 3618
    .end local v0    # "clipToPadding":Z
    :cond_1
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "clipToPadding":Z
    goto :goto_0
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1148
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
    .line 4040
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
    .line 4041
    :cond_0
    return-object v1

    #@e
    .line 4043
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
    .line 4007
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
    .line 4022
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 4023
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 4022
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d
    move-result v0

    #@e
    if-ge p1, v0, :cond_0

    #@10
    .line 4025
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
    .line 710
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 711
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@7
    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@a
    .line 712
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@c
    .line 714
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    #@f
    .line 709
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
    .line 1029
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
    .line 1059
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    #@4
    and-int/lit8 v5, v5, 0xc

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1060
    return v6

    #@9
    .line 1063
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 1064
    return v7

    #@10
    .line 1067
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@13
    move-result v3

    #@14
    .line 1068
    .local v3, "descendantFocusability":I
    const/high16 v5, 0x60000

    #@16
    if-eq v3, v5, :cond_3

    #@18
    .line 1069
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@1a
    .line 1070
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@1c
    .line 1072
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@1f
    .line 1073
    aget-object v0, v1, v4

    #@21
    .line 1074
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 1075
    return v7

    #@28
    .line 1072
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1080
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
    .line 1919
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
    .line 942
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
    .line 5850
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 5851
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 5852
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 5853
    aget-object v3, v0, v2

    #@9
    if-ne v3, p1, :cond_0

    #@b
    .line 5854
    return v2

    #@c
    .line 5852
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 5857
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
    .line 3079
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    #@3
    .line 3081
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
    .line 3082
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@12
    or-int/lit8 v0, v0, 0x20

    #@14
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    .line 3078
    :goto_0
    return-void

    #@17
    .line 3084
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
    .locals 23
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 5000
    move-object/from16 v13, p0

    #@2
    .line 5002
    .local v13, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    #@4
    iget-object v5, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6
    .line 5003
    .local v5, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_a

    #@8
    .line 5007
    move-object/from16 v0, p1

    #@a
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@c
    move/from16 v18, v0

    #@e
    and-int/lit8 v18, v18, 0x40

    #@10
    .line 5008
    const/16 v19, 0x40

    #@12
    .line 5007
    move/from16 v0, v18

    #@14
    move/from16 v1, v19

    #@16
    if-ne v0, v1, :cond_b

    #@18
    const/4 v8, 0x1

    #@19
    .line 5013
    .local v8, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@1c
    move-result-object v7

    #@1d
    .line 5014
    .local v7, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    #@20
    move-result v18

    #@21
    if-eqz v18, :cond_0

    #@23
    if-eqz v8, :cond_c

    #@25
    :cond_0
    const/4 v9, 0x0

    #@26
    .line 5018
    :goto_1
    if-eqz v9, :cond_d

    #@28
    const/high16 v12, 0x400000

    #@2a
    .line 5020
    .local v12, "opaqueFlag":I
    :goto_2
    move-object/from16 v0, p1

    #@2c
    iget v0, v0, Landroid/view/View;->mLayerType:I

    #@2e
    move/from16 v18, v0

    #@30
    if-eqz v18, :cond_1

    #@32
    .line 5021
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@36
    move/from16 v18, v0

    #@38
    const/high16 v19, -0x80000000

    #@3a
    or-int v18, v18, v19

    #@3c
    move/from16 v0, v18

    #@3e
    move-object/from16 v1, p0

    #@40
    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@42
    .line 5022
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@46
    move/from16 v18, v0

    #@48
    const v19, -0x8001

    #@4b
    and-int v18, v18, v19

    #@4d
    move/from16 v0, v18

    #@4f
    move-object/from16 v1, p0

    #@51
    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@53
    .line 5025
    :cond_1
    iget-object v10, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@55
    .line 5026
    .local v10, "location":[I
    move-object/from16 v0, p1

    #@57
    iget v0, v0, Landroid/view/View;->mLeft:I

    #@59
    move/from16 v18, v0

    #@5b
    const/16 v19, 0x0

    #@5d
    aput v18, v10, v19

    #@5f
    .line 5027
    move-object/from16 v0, p1

    #@61
    iget v0, v0, Landroid/view/View;->mTop:I

    #@63
    move/from16 v18, v0

    #@65
    const/16 v19, 0x1

    #@67
    aput v18, v10, v19

    #@69
    .line 5028
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    #@6c
    move-result v18

    #@6d
    if-eqz v18, :cond_2

    #@6f
    .line 5029
    move-object/from16 v0, p0

    #@71
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@73
    move/from16 v18, v0

    #@75
    move/from16 v0, v18

    #@77
    and-int/lit16 v0, v0, 0x800

    #@79
    move/from16 v18, v0

    #@7b
    if-eqz v18, :cond_4

    #@7d
    .line 5030
    :cond_2
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@7f
    .line 5031
    .local v6, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@84
    .line 5033
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@88
    move/from16 v18, v0

    #@8a
    move/from16 v0, v18

    #@8c
    and-int/lit16 v0, v0, 0x800

    #@8e
    move/from16 v18, v0

    #@90
    if-eqz v18, :cond_f

    #@92
    .line 5034
    iget-object v14, v5, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    #@94
    .line 5035
    .local v14, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    #@96
    move-object/from16 v1, p1

    #@98
    invoke-virtual {v0, v1, v14}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    #@9b
    move-result v16

    #@9c
    .line 5036
    .local v16, "transformed":Z
    if-eqz v16, :cond_e

    #@9e
    .line 5037
    iget-object v15, v5, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    #@a0
    .line 5038
    .local v15, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@a3
    move-result-object v18

    #@a4
    move-object/from16 v0, v18

    #@a6
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@a9
    .line 5039
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    #@ac
    move-result v18

    #@ad
    if-nez v18, :cond_3

    #@af
    .line 5040
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@b2
    .line 5048
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v16    # "transformed":Z
    :cond_3
    :goto_3
    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@b5
    .line 5049
    iget v0, v6, Landroid/graphics/RectF;->left:F

    #@b7
    move/from16 v18, v0

    #@b9
    const/high16 v19, 0x3f000000    # 0.5f

    #@bb
    sub-float v18, v18, v19

    #@bd
    move/from16 v0, v18

    #@bf
    float-to-int v0, v0

    #@c0
    move/from16 v18, v0

    #@c2
    .line 5050
    iget v0, v6, Landroid/graphics/RectF;->top:F

    #@c4
    move/from16 v19, v0

    #@c6
    const/high16 v20, 0x3f000000    # 0.5f

    #@c8
    sub-float v19, v19, v20

    #@ca
    move/from16 v0, v19

    #@cc
    float-to-int v0, v0

    #@cd
    move/from16 v19, v0

    #@cf
    .line 5051
    iget v0, v6, Landroid/graphics/RectF;->right:F

    #@d1
    move/from16 v20, v0

    #@d3
    const/high16 v21, 0x3f000000    # 0.5f

    #@d5
    add-float v20, v20, v21

    #@d7
    move/from16 v0, v20

    #@d9
    float-to-int v0, v0

    #@da
    move/from16 v20, v0

    #@dc
    .line 5052
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    #@de
    move/from16 v21, v0

    #@e0
    const/high16 v22, 0x3f000000    # 0.5f

    #@e2
    add-float v21, v21, v22

    #@e4
    move/from16 v0, v21

    #@e6
    float-to-int v0, v0

    #@e7
    move/from16 v21, v0

    #@e9
    .line 5049
    move-object/from16 v0, p2

    #@eb
    move/from16 v1, v18

    #@ed
    move/from16 v2, v19

    #@ef
    move/from16 v3, v20

    #@f1
    move/from16 v4, v21

    #@f3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@f6
    .line 5056
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_4
    const/16 v17, 0x0

    #@f8
    .line 5057
    .local v17, "view":Landroid/view/View;
    instance-of v0, v13, Landroid/view/View;

    #@fa
    move/from16 v18, v0

    #@fc
    if-eqz v18, :cond_5

    #@fe
    move-object/from16 v17, v13

    #@100
    .line 5058
    check-cast v17, Landroid/view/View;

    #@102
    .line 5061
    .end local v17    # "view":Landroid/view/View;
    :cond_5
    if-eqz v8, :cond_6

    #@104
    .line 5062
    if-eqz v17, :cond_10

    #@106
    .line 5063
    move-object/from16 v0, v17

    #@108
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@10a
    move/from16 v18, v0

    #@10c
    or-int/lit8 v18, v18, 0x40

    #@10e
    move/from16 v0, v18

    #@110
    move-object/from16 v1, v17

    #@112
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    #@114
    .line 5071
    :cond_6
    :goto_4
    if-eqz v17, :cond_8

    #@116
    .line 5072
    move-object/from16 v0, v17

    #@118
    iget v0, v0, Landroid/view/View;->mViewFlags:I

    #@11a
    move/from16 v18, v0

    #@11c
    move/from16 v0, v18

    #@11e
    and-int/lit16 v0, v0, 0x3000

    #@120
    move/from16 v18, v0

    #@122
    if-eqz v18, :cond_7

    #@124
    .line 5073
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSolidColor()I

    #@127
    move-result v18

    #@128
    if-nez v18, :cond_7

    #@12a
    .line 5074
    const/high16 v12, 0x200000

    #@12c
    .line 5076
    :cond_7
    move-object/from16 v0, v17

    #@12e
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@130
    move/from16 v18, v0

    #@132
    const/high16 v19, 0x600000

    #@134
    and-int v18, v18, v19

    #@136
    const/high16 v19, 0x200000

    #@138
    move/from16 v0, v18

    #@13a
    move/from16 v1, v19

    #@13c
    if-eq v0, v1, :cond_8

    #@13e
    .line 5077
    move-object/from16 v0, v17

    #@140
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    #@142
    move/from16 v18, v0

    #@144
    const v19, -0x600001

    #@147
    and-int v18, v18, v19

    #@149
    or-int v18, v18, v12

    #@14b
    move/from16 v0, v18

    #@14d
    move-object/from16 v1, v17

    #@14f
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    #@151
    .line 5081
    :cond_8
    move-object/from16 v0, p2

    #@153
    invoke-interface {v13, v10, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@156
    move-result-object v13

    #@157
    .line 5082
    if-eqz v17, :cond_9

    #@159
    .line 5084
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@15c
    move-result-object v11

    #@15d
    .line 5085
    .local v11, "m":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    #@160
    move-result v18

    #@161
    if-nez v18, :cond_9

    #@163
    .line 5086
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@165
    .line 5087
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@16a
    .line 5088
    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@16d
    .line 5089
    iget v0, v6, Landroid/graphics/RectF;->left:F

    #@16f
    move/from16 v18, v0

    #@171
    const/high16 v19, 0x3f000000    # 0.5f

    #@173
    sub-float v18, v18, v19

    #@175
    move/from16 v0, v18

    #@177
    float-to-int v0, v0

    #@178
    move/from16 v18, v0

    #@17a
    .line 5090
    iget v0, v6, Landroid/graphics/RectF;->top:F

    #@17c
    move/from16 v19, v0

    #@17e
    const/high16 v20, 0x3f000000    # 0.5f

    #@180
    sub-float v19, v19, v20

    #@182
    move/from16 v0, v19

    #@184
    float-to-int v0, v0

    #@185
    move/from16 v19, v0

    #@187
    .line 5091
    iget v0, v6, Landroid/graphics/RectF;->right:F

    #@189
    move/from16 v20, v0

    #@18b
    const/high16 v21, 0x3f000000    # 0.5f

    #@18d
    add-float v20, v20, v21

    #@18f
    move/from16 v0, v20

    #@191
    float-to-int v0, v0

    #@192
    move/from16 v20, v0

    #@194
    .line 5092
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    #@196
    move/from16 v21, v0

    #@198
    const/high16 v22, 0x3f000000    # 0.5f

    #@19a
    add-float v21, v21, v22

    #@19c
    move/from16 v0, v21

    #@19e
    float-to-int v0, v0

    #@19f
    move/from16 v21, v0

    #@1a1
    .line 5089
    move-object/from16 v0, p2

    #@1a3
    move/from16 v1, v18

    #@1a5
    move/from16 v2, v19

    #@1a7
    move/from16 v3, v20

    #@1a9
    move/from16 v4, v21

    #@1ab
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@1ae
    .line 5095
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v11    # "m":Landroid/graphics/Matrix;
    :cond_9
    if-nez v13, :cond_4

    #@1b0
    .line 4999
    .end local v7    # "childMatrix":Landroid/graphics/Matrix;
    .end local v8    # "drawAnimation":Z
    .end local v10    # "location":[I
    .end local v12    # "opaqueFlag":I
    :cond_a
    return-void

    #@1b1
    .line 5007
    :cond_b
    const/4 v8, 0x0

    #@1b2
    .restart local v8    # "drawAnimation":Z
    goto/16 :goto_0

    #@1b4
    .line 5015
    .restart local v7    # "childMatrix":Landroid/graphics/Matrix;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@1b7
    move-result-object v18

    #@1b8
    if-nez v18, :cond_0

    #@1ba
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    #@1bd
    move-result v9

    #@1be
    .local v9, "isOpaque":Z
    goto/16 :goto_1

    #@1c0
    .line 5018
    .end local v9    # "isOpaque":Z
    :cond_d
    const/high16 v12, 0x200000

    #@1c2
    .restart local v12    # "opaqueFlag":I
    goto/16 :goto_2

    #@1c4
    .line 5043
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    .restart local v10    # "location":[I
    .restart local v14    # "t":Landroid/view/animation/Transformation;
    .restart local v16    # "transformed":Z
    :cond_e
    move-object v15, v7

    #@1c5
    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    #@1c7
    .line 5046
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v16    # "transformed":Z
    :cond_f
    move-object v15, v7

    #@1c8
    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    #@1ca
    .line 5064
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_10
    instance-of v0, v13, Landroid/view/ViewRootImpl;

    #@1cc
    move/from16 v18, v0

    #@1ce
    if-eqz v18, :cond_6

    #@1d0
    move-object/from16 v18, v13

    #@1d2
    .line 5065
    check-cast v18, Landroid/view/ViewRootImpl;

    #@1d4
    const/16 v19, 0x1

    #@1d6
    move/from16 v0, v19

    #@1d8
    move-object/from16 v1, v18

    #@1da
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    #@1dc
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
    .line 5108
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@9
    and-int/lit8 v2, v2, 0x20

    #@b
    const/16 v3, 0x20

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 5109
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@11
    and-int/2addr v2, v4

    #@12
    if-ne v2, v4, :cond_7

    #@14
    .line 5110
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@16
    and-int/lit16 v2, v2, 0x90

    #@18
    .line 5111
    const/16 v3, 0x80

    #@1a
    .line 5110
    if-eq v2, v3, :cond_4

    #@1c
    .line 5112
    aget v2, p1, v5

    #@1e
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    #@20
    sub-int/2addr v2, v3

    #@21
    .line 5113
    aget v3, p1, v6

    #@23
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    #@25
    sub-int/2addr v3, v4

    #@26
    .line 5112
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@29
    .line 5114
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2b
    and-int/lit8 v2, v2, 0x1

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 5115
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
    .line 5118
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    #@3e
    .line 5119
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    #@40
    .line 5121
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@42
    and-int/lit8 v2, v2, 0x1

    #@44
    if-ne v2, v6, :cond_2

    #@46
    .line 5122
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
    .line 5123
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@55
    .line 5126
    :cond_2
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@57
    const v3, -0x8001

    #@5a
    and-int/2addr v2, v3

    #@5b
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@5d
    .line 5128
    aput v0, p1, v5

    #@5f
    .line 5129
    aput v1, p1, v6

    #@61
    .line 5131
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    #@63
    if-eqz v2, :cond_3

    #@65
    .line 5132
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@67
    or-int/2addr v2, v7

    #@68
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@6a
    .line 5135
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@6c
    return-object v2

    #@6d
    .line 5138
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
    .line 5140
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    #@77
    aput v2, p1, v5

    #@79
    .line 5141
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    #@7b
    aput v2, p1, v6

    #@7d
    .line 5142
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7f
    and-int/lit8 v2, v2, 0x1

    #@81
    if-ne v2, v6, :cond_6

    #@83
    .line 5143
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
    .line 5149
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    #@92
    if-eqz v2, :cond_5

    #@94
    .line 5150
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@96
    or-int/2addr v2, v7

    #@97
    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    #@99
    .line 5153
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@9b
    return-object v2

    #@9c
    .line 5146
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
    .line 5157
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
    .line 5718
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 5719
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@7
    if-ne v2, p1, :cond_1

    #@9
    .line 5721
    :cond_0
    return-void

    #@a
    .line 5720
    :cond_1
    const/high16 v2, 0x800000

    #@c
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@f
    move-result v2

    #@10
    .line 5718
    if-nez v2, :cond_0

    #@12
    .line 5723
    const/4 v2, 0x0

    #@13
    invoke-direct {p0, v3, v2}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@16
    .line 5726
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
    .line 5727
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    #@24
    .line 5726
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 5717
    :cond_2
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 5555
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
    .line 5520
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
    .line 5632
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
    .line 5596
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
    .line 3188
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
    .line 6227
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
    .line 2614
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
    .line 2483
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    #@5
    move-result-object v1

    #@6
    .line 2484
    .local v1, "point":[F
    aput p1, v1, v4

    #@8
    .line 2485
    aput p2, v1, v5

    #@a
    .line 2486
    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    #@d
    .line 2487
    aget v2, v1, v4

    #@f
    aget v3, v1, v5

    #@11
    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    #@14
    move-result v0

    #@15
    .line 2488
    .local v0, "isInView":Z
    if-eqz v0, :cond_0

    #@17
    if-eqz p4, :cond_0

    #@19
    .line 2489
    aget v2, v1, v4

    #@1b
    aget v3, v1, v5

    #@1d
    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    #@20
    .line 2491
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
    .line 2630
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v4, 0x2000000

    #@6
    and-int/2addr v3, v4

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 2631
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
    .line 2633
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    #@16
    move-result-object v0

    #@17
    .line 2634
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
    .line 2635
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
    .line 6119
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
    .line 6317
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 6318
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 6319
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 6320
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 6321
    aget-object v3, v0, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@f
    .line 6320
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 6316
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
    .line 5433
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
    .line 5440
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@13
    .line 5432
    :goto_0
    return-void

    #@14
    .line 5434
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 5435
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1a
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    #@1d
    .line 5437
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    #@20
    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    #@0
    .prologue
    .line 1231
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

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
    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

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

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    #@0
    .prologue
    .line 5915
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    .line 5918
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    #@6
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    #@8
    add-int/2addr v3, v4

    #@9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b
    .line 5917
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@e
    move-result v1

    #@f
    .line 5920
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    #@11
    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    #@13
    add-int/2addr v3, v4

    #@14
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    .line 5919
    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@19
    move-result v0

    #@1a
    .line 5922
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@1d
    .line 5914
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
    .line 5942
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 5945
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
    .line 5946
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@14
    .line 5944
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@17
    move-result v1

    #@18
    .line 5948
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
    .line 5949
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@26
    .line 5947
    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@29
    move-result v0

    #@2a
    .line 5951
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@2d
    .line 5941
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 5894
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@2
    .line 5895
    .local v3, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@4
    .line 5896
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    .line 5897
    aget-object v0, v1, v2

    #@9
    .line 5898
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    #@b
    and-int/lit8 v4, v4, 0xc

    #@d
    const/16 v5, 0x8

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 5899
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    #@14
    .line 5896
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 5893
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1560
    const/4 v0, 0x0

    #@1
    .line 1561
    .local v0, "canAccept":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1562
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 1563
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@10
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    #@13
    move-result v0

    #@14
    .line 1564
    .local v0, "canAccept":Z
    if-eqz v0, :cond_0

    #@16
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1569
    .end local v0    # "canAccept":Z
    :cond_0
    :goto_0
    return v0

    #@1d
    .line 1565
    .restart local v0    # "canAccept":Z
    :cond_1
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    #@1f
    or-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    #@23
    .line 1566
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    #@26
    goto :goto_0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    #@0
    .prologue
    .line 2997
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2998
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@9
    .line 2994
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2999
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3001
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@10
    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 3002
    :catch_0
    move-exception v0

    #@15
    .line 3003
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
    .line 3004
    const-string/jumbo v3, " does not fully implement ViewParent"

    #@2e
    .line 3003
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
    .line 5346
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 5347
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 5348
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    #@6
    .line 5350
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 5351
    aget-object v4, v0, v2

    #@b
    .line 5352
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    #@d
    add-int/2addr v5, p1

    #@e
    iput v5, v4, Landroid/view/View;->mTop:I

    #@10
    .line 5353
    iget v5, v4, Landroid/view/View;->mBottom:I

    #@12
    add-int/2addr v5, p1

    #@13
    iput v5, v4, Landroid/view/View;->mBottom:I

    #@15
    .line 5354
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 5355
    const/4 v3, 0x1

    #@1a
    .line 5356
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@1c
    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    #@1f
    .line 5350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 5360
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_2

    #@24
    .line 5361
    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    #@27
    .line 5363
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    #@2a
    .line 5345
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 5263
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@5
    .line 5262
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
    .line 5284
    if-ne p1, p0, :cond_0

    #@3
    .line 5285
    return-void

    #@4
    .line 5288
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@6
    .line 5291
    .local v2, "theParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_4

    #@8
    .line 5292
    instance-of v3, v2, Landroid/view/View;

    #@a
    .line 5291
    if-eqz v3, :cond_4

    #@c
    .line 5293
    if-eq v2, p0, :cond_4

    #@e
    .line 5295
    if-eqz p3, :cond_2

    #@10
    .line 5296
    iget v3, p1, Landroid/view/View;->mLeft:I

    #@12
    iget v4, p1, Landroid/view/View;->mScrollX:I

    #@14
    sub-int/2addr v3, v4

    #@15
    .line 5297
    iget v4, p1, Landroid/view/View;->mTop:I

    #@17
    iget v5, p1, Landroid/view/View;->mScrollY:I

    #@19
    sub-int/2addr v4, v5

    #@1a
    .line 5296
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@1d
    .line 5298
    if-eqz p4, :cond_1

    #@1f
    move-object v1, v2

    #@20
    .line 5299
    check-cast v1, Landroid/view/View;

    #@22
    .line 5300
    .local v1, "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    #@24
    iget v4, v1, Landroid/view/View;->mLeft:I

    #@26
    sub-int/2addr v3, v4

    #@27
    .line 5301
    iget v4, v1, Landroid/view/View;->mBottom:I

    #@29
    iget v5, v1, Landroid/view/View;->mTop:I

    #@2b
    sub-int/2addr v4, v5

    #@2c
    .line 5300
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@2f
    move-result v0

    #@30
    .line 5302
    .local v0, "intersected":Z
    if-nez v0, :cond_1

    #@32
    .line 5303
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@35
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_1
    :goto_1
    move-object p1, v2

    #@36
    .line 5319
    check-cast p1, Landroid/view/View;

    #@38
    .line 5320
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@3a
    goto :goto_0

    #@3b
    .line 5307
    :cond_2
    if-eqz p4, :cond_3

    #@3d
    move-object v1, v2

    #@3e
    .line 5308
    check-cast v1, Landroid/view/View;

    #@40
    .line 5309
    .restart local v1    # "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    #@42
    iget v4, v1, Landroid/view/View;->mLeft:I

    #@44
    sub-int/2addr v3, v4

    #@45
    .line 5310
    iget v4, v1, Landroid/view/View;->mBottom:I

    #@47
    iget v5, v1, Landroid/view/View;->mTop:I

    #@49
    sub-int/2addr v4, v5

    #@4a
    .line 5309
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@4d
    move-result v0

    #@4e
    .line 5311
    .restart local v0    # "intersected":Z
    if-nez v0, :cond_3

    #@50
    .line 5312
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@53
    .line 5315
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    #@55
    iget v4, p1, Landroid/view/View;->mLeft:I

    #@57
    sub-int/2addr v3, v4

    #@58
    .line 5316
    iget v4, p1, Landroid/view/View;->mScrollY:I

    #@5a
    iget v5, p1, Landroid/view/View;->mTop:I

    #@5c
    sub-int/2addr v4, v5

    #@5d
    .line 5315
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@60
    goto :goto_1

    #@61
    .line 5325
    :cond_4
    if-ne v2, p0, :cond_6

    #@63
    .line 5326
    if-eqz p3, :cond_5

    #@65
    .line 5327
    iget v3, p1, Landroid/view/View;->mLeft:I

    #@67
    iget v4, p1, Landroid/view/View;->mScrollX:I

    #@69
    sub-int/2addr v3, v4

    #@6a
    .line 5328
    iget v4, p1, Landroid/view/View;->mTop:I

    #@6c
    iget v5, p1, Landroid/view/View;->mScrollY:I

    #@6e
    sub-int/2addr v4, v5

    #@6f
    .line 5327
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@72
    .line 5281
    :goto_2
    return-void

    #@73
    .line 5330
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    #@75
    iget v4, p1, Landroid/view/View;->mLeft:I

    #@77
    sub-int/2addr v3, v4

    #@78
    .line 5331
    iget v4, p1, Landroid/view/View;->mScrollY:I

    #@7a
    iget v5, p1, Landroid/view/View;->mTop:I

    #@7c
    sub-int/2addr v4, v5

    #@7d
    .line 5330
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@80
    goto :goto_2

    #@81
    .line 5334
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
    .line 5273
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@4
    .line 5272
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 4241
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 4242
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    #@6
    .line 4240
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    #@0
    .prologue
    .line 1262
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1263
    if-nez p3, :cond_2

    #@6
    .line 1264
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@8
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@b
    .line 1280
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1281
    if-nez p3, :cond_1

    #@11
    .line 1282
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    #@14
    .line 1261
    :cond_1
    return-void

    #@15
    .line 1266
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@17
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@1a
    .line 1267
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 1270
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2f
    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@31
    .line 1273
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 1274
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@39
    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 6327
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    and-int/lit16 v5, v5, 0x2000

    #@4
    if-nez v5, :cond_0

    #@6
    .line 6328
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@9
    move-result-object v5

    #@a
    return-object v5

    #@b
    .line 6331
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 6332
    .local v3, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v2

    #@10
    .line 6333
    .local v2, "n":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@13
    .line 6334
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    #@1a
    move-result-object v0

    #@1b
    .line 6336
    .local v0, "childState":[I
    if-eqz v0, :cond_1

    #@1d
    .line 6337
    array-length v5, v0

    #@1e
    add-int/2addr v3, v5

    #@1f
    .line 6333
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 6341
    .end local v0    # "childState":[I
    :cond_2
    add-int v5, p1, v3

    #@24
    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@27
    move-result-object v4

    #@28
    .line 6343
    .local v4, "state":[I
    const/4 v1, 0x0

    #@29
    :goto_1
    if-ge v1, v2, :cond_4

    #@2b
    .line 6344
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    #@32
    move-result-object v0

    #@33
    .line 6346
    .restart local v0    # "childState":[I
    if-eqz v0, :cond_3

    #@35
    .line 6347
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    #@38
    move-result-object v4

    #@39
    .line 6343
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 6351
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
    .line 3276
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    #@9
    move-result-object v1

    #@a
    .line 3280
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    #@c
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@f
    .line 3281
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@11
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@14
    .line 3283
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
    .line 3284
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v10

    #@1f
    .line 3285
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@22
    move-result v0

    #@23
    if-eq v0, v13, :cond_0

    #@25
    .line 3286
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    #@28
    move-result-object v12

    #@29
    .line 3289
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    #@2c
    move-result v0

    #@2d
    iget v2, v12, Landroid/graphics/Insets;->left:I

    #@2f
    add-int/2addr v2, v0

    #@30
    .line 3290
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@33
    move-result v0

    #@34
    iget v3, v12, Landroid/graphics/Insets;->top:I

    #@36
    add-int/2addr v3, v0

    #@37
    .line 3291
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
    .line 3292
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
    .line 3288
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    #@4d
    .line 3283
    .end local v12    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 3299
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
    .line 3300
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@5a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@5d
    .line 3302
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@60
    .line 3307
    const/16 v0, 0x7f

    #@62
    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    #@65
    move-result v0

    #@66
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@69
    .line 3308
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@6b
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6e
    .line 3310
    invoke-direct {p0, v13}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    #@71
    move-result v8

    #@72
    .line 3311
    .local v8, "lineLength":I
    const/4 v0, 0x1

    #@73
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    #@76
    move-result v9

    #@77
    .line 3312
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
    .line 3313
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@81
    move-result-object v10

    #@82
    .line 3314
    .restart local v10    # "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@85
    move-result v0

    #@86
    if-eq v0, v13, :cond_2

    #@88
    .line 3315
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
    .line 3312
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 3275
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
    .line 3266
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
    .line 3267
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 3268
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@12
    .line 3266
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 3265
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 4247
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@3
    .line 4248
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    #@6
    .line 4246
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2971
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2972
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@6
    move-result-object v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 2973
    return-void

    #@a
    .line 2975
    :cond_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 2976
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@10
    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    #@12
    .line 2977
    .local v1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@15
    .line 2978
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    #@18
    .line 2979
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    .line 2980
    .local v2, "childrenForAccessibilityCount":I
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@1f
    .line 2981
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/View;

    #@25
    .line 2982
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    #@28
    .line 2980
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2984
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@2e
    .line 2970
    .end local v1    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "childrenForAccessibilityCount":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1984
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2718
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 6680
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 6688
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3032
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    .line 6671
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 6663
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 6642
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@2
    .line 6641
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
    .line 2778
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@3
    .line 2779
    .local v2, "count":I
    and-int/lit8 v7, p1, 0x2

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 2780
    const/4 v6, 0x0

    #@8
    .line 2781
    .local v6, "index":I
    const/4 v5, 0x1

    #@9
    .line 2782
    .local v5, "increment":I
    move v3, v2

    #@a
    .line 2788
    .local v3, "end":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@c
    .line 2789
    .local v1, "children":[Landroid/view/View;
    move v4, v6

    #@d
    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    #@f
    .line 2790
    aget-object v0, v1, v4

    #@11
    .line 2791
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    #@13
    and-int/lit8 v7, v7, 0xc

    #@15
    if-nez v7, :cond_1

    #@17
    .line 2792
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 2793
    const/4 v7, 0x1

    #@1e
    return v7

    #@1f
    .line 2784
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    #@21
    .line 2785
    .restart local v6    # "index":I
    const/4 v5, -0x1

    #@22
    .line 2786
    .restart local v5    # "increment":I
    const/4 v3, -0x1

    #@23
    .restart local v3    # "end":I
    goto :goto_0

    #@24
    .line 2789
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v4    # "i":I
    :cond_1
    add-int/2addr v4, v5

    #@25
    goto :goto_1

    #@26
    .line 2797
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
    .line 900
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 901
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    #@6
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 903
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
    .line 915
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 6707
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 6634
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6654
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    #@3
    .line 6655
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    #@6
    .line 6652
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4214
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 4230
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1330
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
    .line 1329
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1331
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@d
    .line 1332
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
    .line 4735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    #@3
    .line 4736
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@6
    .line 4737
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@a
    .line 4734
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
    .line 4754
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@4
    .line 4755
    .local v2, "count":I
    if-gtz v2, :cond_0

    #@6
    .line 4756
    return-void

    #@7
    .line 4759
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@9
    .line 4760
    .local v0, "children":[Landroid/view/View;
    iput v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@b
    .line 4762
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@d
    .line 4763
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f
    if-eqz v7, :cond_6

    #@11
    const/4 v3, 0x1

    #@12
    .line 4764
    .local v3, "detach":Z
    :goto_0
    const/4 v1, 0x0

    #@13
    .line 4766
    .local v1, "clearChildFocus":Z
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    #@16
    .line 4768
    add-int/lit8 v5, v2, -0x1

    #@18
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    #@1a
    .line 4769
    aget-object v6, v0, v5

    #@1c
    .line 4771
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@1e
    if-eqz v7, :cond_1

    #@20
    .line 4772
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@22
    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@25
    .line 4775
    :cond_1
    if-ne v6, v4, :cond_2

    #@27
    .line 4776
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@2a
    .line 4777
    const/4 v1, 0x1

    #@2b
    .line 4780
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    #@2e
    .line 4782
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@31
    .line 4783
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@34
    .line 4785
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@37
    move-result-object v7

    #@38
    if-nez v7, :cond_3

    #@3a
    .line 4786
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
    .line 4785
    if-eqz v7, :cond_7

    #@46
    .line 4787
    :cond_3
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@49
    .line 4792
    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_5

    #@4f
    .line 4793
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@52
    .line 4796
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@55
    .line 4798
    iput-object v8, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@57
    .line 4799
    aput-object v8, v0, v5

    #@59
    .line 4768
    add-int/lit8 v5, v5, -0x1

    #@5b
    goto :goto_1

    #@5c
    .line 4763
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
    .line 4788
    .restart local v1    # "clearChildFocus":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_4

    #@60
    .line 4789
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@63
    goto :goto_2

    #@64
    .line 4802
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_9

    #@66
    .line 4803
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    #@69
    .line 4804
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    #@6c
    move-result v7

    #@6d
    if-nez v7, :cond_9

    #@6f
    .line 4805
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    #@72
    .line 4753
    :cond_9
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 4831
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4832
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@9
    .line 4835
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    if-ne p1, v0, :cond_1

    #@d
    .line 4836
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    #@10
    .line 4839
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    #@13
    .line 4841
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    #@16
    .line 4842
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    #@19
    .line 4844
    if-eqz p2, :cond_5

    #@1b
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_5

    #@21
    .line 4846
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    #@24
    .line 4851
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 4852
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    #@2e
    .line 4855
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    #@31
    .line 4830
    return-void

    #@32
    .line 4845
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
    .line 4844
    if-nez v0, :cond_2

    #@3e
    .line 4847
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 4848
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
    .line 3980
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 3981
    return-void

    #@6
    .line 3983
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    .line 3984
    .local v1, "size":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 3985
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    if-ne p1, v2, :cond_1

    #@17
    .line 3986
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    #@19
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1c
    .line 3987
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    #@1e
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    .line 3988
    iput-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@23
    .line 3989
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    #@26
    .line 3990
    const/4 v2, 0x1

    #@27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@2a
    .line 3991
    return-void

    #@2b
    .line 3984
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 3979
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 4507
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4508
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@9
    .line 4509
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@d
    .line 4506
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4552
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    #@7
    .line 4553
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@a
    .line 4554
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@e
    .line 4551
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 4524
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    #@3
    .line 4523
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4568
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    #@3
    .line 4569
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@6
    .line 4570
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@a
    .line 4567
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4539
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    #@3
    .line 4538
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x60000

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 725
    return-void

    #@9
    .line 729
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@c
    .line 732
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@e
    if-eq v0, p1, :cond_2

    #@10
    .line 733
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 734
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@16
    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@19
    .line 737
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@1b
    .line 739
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 740
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@21
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@24
    .line 720
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
    .line 864
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
    .line 2663
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
    .line 2665
    return-void

    #@c
    .line 2668
    :cond_1
    if-eqz p1, :cond_3

    #@e
    .line 2669
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@10
    or-int/2addr v0, v2

    #@11
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@13
    .line 2675
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 2676
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@19
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@1c
    .line 2661
    :cond_2
    return-void

    #@1d
    .line 2671
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
    .line 2741
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@3
    move-result v0

    #@4
    .line 2743
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 2755
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
    .line 2745
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@24
    move-result v2

    #@25
    return v2

    #@26
    .line 2747
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@29
    move-result v1

    #@2a
    .line 2748
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
    .line 2751
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    #@35
    move-result v1

    #@36
    .line 2752
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
    .line 2743
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
    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@3
    .line 873
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    #@5
    .line 874
    return v2

    #@6
    .line 876
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@9
    move-result v1

    #@a
    .line 877
    .local v1, "propagate":Z
    if-nez v1, :cond_1

    #@c
    .line 878
    return v2

    #@d
    .line 880
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
    .line 6414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 6415
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@6
    .line 6416
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    #@9
    .line 6413
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 6260
    if-eqz p1, :cond_0

    #@2
    .line 6261
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@4
    or-int/lit16 v0, v0, 0x200

    #@6
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    #@8
    .line 6262
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 6263
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@e
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    #@11
    .line 6259
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    #@0
    .prologue
    .line 6605
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    #@3
    .line 6607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6608
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6609
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6610
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6611
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    #@17
    .line 6608
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6604
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    #@0
    .prologue
    .line 6541
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    #@3
    .line 6543
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6544
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6545
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6546
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6547
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    #@17
    .line 6544
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6540
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    #@0
    .prologue
    .line 6589
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    #@3
    .line 6591
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6592
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6593
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6594
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6595
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    #@17
    .line 6592
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6588
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    #@0
    .prologue
    .line 6573
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    #@3
    .line 6575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6576
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6577
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6578
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6579
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    #@17
    .line 6576
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6572
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    #@0
    .prologue
    .line 6557
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    #@3
    .line 6559
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6560
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 6561
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6562
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 6563
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    #@17
    .line 6560
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6556
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    #@0
    .prologue
    .line 3011
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    #@3
    .line 3012
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@5
    .line 3013
    .local v1, "children":[Landroid/view/View;
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@7
    .line 3014
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 3015
    aget-object v3, v1, v2

    #@c
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    #@f
    .line 3014
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3010
    :cond_0
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    #@0
    .prologue
    .line 6513
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    #@3
    .line 6514
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6515
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@a
    .line 6516
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6517
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
    .line 6515
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6518
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    #@20
    goto :goto_1

    #@21
    .line 6512
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    #@0
    .prologue
    .line 6444
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    #@3
    move-result v3

    #@4
    .line 6445
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6447
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6448
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6449
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6450
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    #@1a
    .line 6447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6454
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
    .line 6528
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    #@3
    .line 6529
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6530
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 6531
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6532
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    #@11
    .line 6530
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 6527
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    #@0
    .prologue
    .line 6498
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    #@3
    .line 6499
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@6
    move-result v1

    #@7
    .line 6500
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@a
    .line 6501
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 6502
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
    .line 6500
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6503
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    #@20
    goto :goto_1

    #@21
    .line 6497
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    #@0
    .prologue
    .line 6425
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    #@3
    move-result v3

    #@4
    .line 6427
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6429
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6430
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6431
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6432
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    #@1a
    .line 6429
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6436
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
    .line 6480
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    #@3
    move-result v3

    #@4
    .line 6481
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6482
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6483
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6484
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6485
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6486
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    #@1a
    .line 6483
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6490
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
    .line 6462
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    #@3
    move-result v3

    #@4
    .line 6463
    .local v3, "result":Z
    if-eqz v3, :cond_1

    #@6
    .line 6464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 6465
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 6466
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 6467
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 6468
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    #@1a
    .line 6465
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6472
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
    .line 5479
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    or-int/lit8 v0, v0, 0x8

    #@4
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    .line 5478
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    #@0
    .prologue
    .line 6361
    if-eqz p1, :cond_0

    #@2
    .line 6362
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    or-int/lit16 v0, v0, 0x2000

    #@6
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    .line 6367
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    #@b
    .line 6360
    return-void

    #@c
    .line 6364
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
    .line 5579
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5578
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5538
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5537
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3150
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
    .line 3151
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@b
    .line 3152
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@d
    .line 3153
    .local v1, "count":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@10
    .line 3154
    aget-object v3, v0, v2

    #@12
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@15
    .line 3153
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 3149
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
    .line 5649
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 5648
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5617
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@6
    .line 5616
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3649
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@3
    and-int/lit8 v3, v3, 0x1

    #@5
    if-ne v3, v4, :cond_1

    #@7
    const/4 v2, 0x1

    #@8
    .line 3650
    .local v2, "previousValue":Z
    :goto_0
    if-eq p1, v2, :cond_3

    #@a
    .line 3651
    invoke-direct {p0, v4, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@d
    .line 3652
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@10
    if-ge v1, v3, :cond_2

    #@12
    .line 3653
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    .line 3654
    .local v0, "child":Landroid/view/View;
    iget-object v3, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 3655
    iget-object v3, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@1c
    invoke-virtual {v3, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@1f
    .line 3652
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_1

    #@22
    .line 3649
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "previousValue":Z
    :cond_1
    const/4 v2, 0x0

    #@23
    .restart local v2    # "previousValue":Z
    goto :goto_0

    #@24
    .line 3658
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@27
    .line 3648
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
    .line 3674
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    #@4
    move-result v0

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 3675
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@a
    .line 3676
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@e
    .line 3673
    :cond_0
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    #@0
    .prologue
    .line 692
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 701
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@e
    const v1, -0x60001

    #@11
    and-int/2addr v0, v1

    #@12
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@14
    .line 702
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
    .line 691
    return-void

    #@1d
    .line 692
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
    .line 5489
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    .line 5490
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5491
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@8
    or-int/lit8 v0, v0, 0x8

    #@a
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    .line 5488
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 6401
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    .line 6400
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    #@0
    .prologue
    .line 5763
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 5764
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    #@7
    .line 5765
    const/4 v0, -0x1

    #@8
    if-eq p1, v0, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    #@e
    .line 5766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@11
    .line 5762
    :cond_0
    return-void

    #@12
    .line 5765
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
    .line 4651
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4652
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@6
    .line 4653
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    #@9
    .line 4654
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@b
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    #@e
    .line 4656
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@10
    .line 4657
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 4658
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    #@16
    iget-object v2, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    #@18
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    #@1b
    .line 4650
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    #@0
    .prologue
    .line 2602
    if-eqz p1, :cond_0

    #@2
    .line 2603
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v1, 0x200000

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@9
    .line 2598
    :goto_0
    return-void

    #@a
    .line 2605
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
    .line 4198
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    .line 4197
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I

    #@0
    .prologue
    .line 5696
    and-int/lit8 v0, p1, 0x3

    #@2
    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    #@4
    .line 5695
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3800
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    #@5
    .line 3799
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 4
    .param p1, "touchscreenBlocksFocus"    # Z

    #@0
    .prologue
    .line 1128
    if-eqz p1, :cond_1

    #@2
    .line 1129
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4
    const/high16 v3, 0x4000000

    #@6
    or-int/2addr v2, v3

    #@7
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@9
    .line 1130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 1132
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 1133
    const/4 v2, 0x2

    #@1a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    .line 1134
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    #@20
    .line 1135
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@23
    .line 1127
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 1140
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
    .line 2650
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@2
    const/high16 v1, 0x2000000

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@7
    .line 2651
    if-eqz p1, :cond_0

    #@9
    .line 2652
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@b
    const/high16 v1, 0x1000000

    #@d
    or-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@10
    .line 2649
    :goto_0
    return-void

    #@11
    .line 2654
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
    .line 1152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1153
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
    .line 1152
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
    .line 6626
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@6
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

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

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const v2, -0x10000001

    #@3
    .line 777
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@5
    const/high16 v1, 0x8000000

    #@7
    and-int/2addr v0, v1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 780
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@c
    const/high16 v1, 0x10000000

    #@e
    or-int/2addr v0, v1

    #@f
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@11
    .line 781
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v0

    #@16
    .line 783
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@18
    and-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1b
    .line 781
    return-object v0

    #@1c
    .line 782
    :catchall_0
    move-exception v0

    #@1d
    .line 783
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1f
    and-int/2addr v1, v2

    #@20
    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@22
    .line 782
    throw v0

    #@23
    .line 787
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
    .line 797
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    const/high16 v3, 0x10000000

    #@8
    and-int/2addr v2, v3

    #@9
    if-nez v2, :cond_0

    #@b
    .line 798
    if-nez p3, :cond_0

    #@d
    .line 801
    :try_start_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@f
    const/high16 v3, 0x8000000

    #@11
    or-int/2addr v2, v3

    #@12
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@14
    .line 802
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v1

    #@18
    .line 804
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1a
    and-int/2addr v2, v4

    #@1b
    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@1d
    .line 806
    sget-object v2, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    #@1f
    if-eq v1, v2, :cond_0

    #@21
    .line 807
    return-object v1

    #@22
    .line 803
    .end local v1    # "mode":Landroid/view/ActionMode;
    :catchall_0
    move-exception v2

    #@23
    .line 804
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@25
    and-int/2addr v3, v4

    #@26
    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@28
    .line 803
    throw v2

    #@29
    .line 810
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 812
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
    .line 813
    :catch_0
    move-exception v0

    #@35
    .line 815
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    #@37
    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 818
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    return-object v5
.end method

.method public startLayoutAnimation()V
    .locals 1

    #@0
    .prologue
    .line 5466
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5467
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@6
    or-int/lit8 v0, v0, 0x8

    #@8
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@a
    .line 5468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@d
    .line 5465
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6135
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@2
    if-ne v0, p0, :cond_1

    #@4
    .line 6136
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 6137
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@f
    .line 6139
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 6134
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    #@0
    .prologue
    .line 6209
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    #@2
    .line 6210
    if-nez p1, :cond_0

    #@4
    .line 6211
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@b
    .line 6213
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    #@e
    .line 6208
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2498
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
    .line 2499
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
    .line 2501
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 2502
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@25
    .line 2497
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
    .line 993
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 994
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@8
    .line 989
    :goto_0
    return-void

    #@9
    .line 996
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    #@b
    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    #@e
    .line 997
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
    .line 1598
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@3
    move-result v0

    #@4
    .line 1600
    .local v0, "changed":Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    #@6
    .line 1601
    .local v3, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    #@8
    .line 1602
    .local v2, "children":[Landroid/view/View;
    const/4 v4, 0x0

    #@9
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@b
    .line 1603
    aget-object v1, v2, v4

    #@d
    .line 1604
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    #@10
    move-result v5

    #@11
    or-int/2addr v0, v5

    #@12
    .line 1602
    add-int/lit8 v4, v4, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1606
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
    .line 4152
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 4153
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
    .line 4155
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@22
    if-eq v0, p0, :cond_1

    #@24
    .line 4156
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
    .line 4158
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@41
    .line 4151
    return-void
.end method
