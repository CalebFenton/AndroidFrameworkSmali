.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$1;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_NODE_ID:J

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDrawingOrderInParent:I

.field private mError:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mTraversalAfter:J

.field private mTraversalBefore:J

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 81
    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@9
    .line 607
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@b
    const/16 v1, 0x32

    #@d
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@10
    .line 606
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@12
    .line 4255
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    #@14
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    #@17
    .line 4254
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 612
    const v0, 0x7fffffff

    #@8
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@a
    .line 613
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@c
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@e
    .line 614
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@10
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@12
    .line 615
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@14
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@16
    .line 616
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@18
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@1a
    .line 617
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@1c
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@1e
    .line 618
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@20
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@22
    .line 621
    new-instance v0, Landroid/graphics/Rect;

    #@24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@29
    .line 622
    new-instance v0, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@30
    .line 635
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@32
    .line 638
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@34
    .line 639
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@36
    .line 640
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@38
    .line 641
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@3a
    .line 645
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@3c
    .line 654
    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1038
    if-nez p1, :cond_0

    #@2
    .line 1039
    return-void

    #@3
    .line 1042
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@e
    .line 1046
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@13
    .line 1047
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1037
    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    #@0
    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 919
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 920
    new-instance v3, Landroid/util/LongArray;

    #@9
    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    #@c
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@e
    .line 923
    :cond_0
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@13
    move-result v2

    #@14
    .line 924
    .local v2, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@17
    move-result-wide v0

    #@18
    .line 926
    .local v0, "childNodeId":J
    if-eqz p3, :cond_2

    #@1a
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@1c
    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    #@1f
    move-result v3

    #@20
    if-ltz v3, :cond_2

    #@22
    .line 927
    return-void

    #@23
    .line 923
    .end local v0    # "childNodeId":J
    .end local v2    # "rootAccessibilityViewId":I
    :cond_1
    const v2, 0x7fffffff

    #@26
    goto :goto_0

    #@27
    .line 929
    .restart local v0    # "childNodeId":J
    .restart local v2    # "rootAccessibilityViewId":I
    :cond_2
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@29
    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    #@2c
    .line 917
    return-void
.end method

.method private addLegacyStandardActions(I)V
    .locals 5
    .param p1, "actionMask"    # I

    #@0
    .prologue
    .line 3083
    move v2, p1

    #@1
    .line 3084
    .local v2, "remainingIds":I
    :goto_0
    if-lez v2, :cond_0

    #@3
    .line 3085
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@6
    move-result v3

    #@7
    const/4 v4, 0x1

    #@8
    shl-int v1, v4, v3

    #@a
    .line 3086
    .local v1, "id":I
    not-int v3, v1

    #@b
    and-int/2addr v2, v3

    #@c
    .line 3087
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@f
    move-result-object v0

    #@10
    .line 3088
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@13
    goto :goto_0

    #@14
    .line 3082
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method private canPerformRequestOverConnection(J)Z
    .locals 3
    .param p1, "accessibilityNodeId"    # J

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    const/4 v0, 0x0

    #@4
    .line 3189
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 3190
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@b
    move-result v1

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 3191
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@10
    const/4 v2, -0x1

    #@11
    if-eq v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 3189
    :cond_0
    return v0
.end method

.method private clear()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 3019
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@5
    .line 3020
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@7
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@9
    .line 3021
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@b
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@d
    .line 3022
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@f
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@11
    .line 3023
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@13
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@15
    .line 3024
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@17
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@19
    .line 3025
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@1b
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1d
    .line 3026
    const v0, 0x7fffffff

    #@20
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@22
    .line 3027
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@24
    .line 3028
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@26
    .line 3029
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@28
    .line 3030
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 3031
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2e
    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    #@31
    .line 3033
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@36
    .line 3034
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@3b
    .line 3035
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@3d
    .line 3036
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@3f
    .line 3037
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@41
    .line 3038
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@43
    .line 3039
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@45
    .line 3040
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@47
    .line 3041
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@49
    .line 3042
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@4b
    .line 3043
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@4d
    if-eqz v0, :cond_1

    #@4f
    .line 3044
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@54
    .line 3046
    :cond_1
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@56
    .line 3047
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@58
    .line 3048
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@5a
    .line 3049
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@5c
    .line 3050
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@5e
    .line 3051
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@60
    if-eqz v0, :cond_2

    #@62
    .line 3052
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@64
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    #@67
    .line 3053
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@69
    .line 3055
    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@6b
    if-eqz v0, :cond_3

    #@6d
    .line 3056
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@6f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    #@72
    .line 3057
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@74
    .line 3059
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@76
    if-eqz v0, :cond_4

    #@78
    .line 3060
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@7a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    #@7d
    .line 3061
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@7f
    .line 3018
    :cond_4
    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 2616
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown direction: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 2623
    :sswitch_0
    return-void

    #@1e
    .line 2616
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private enforceValidFocusType(I)V
    .locals 3
    .param p1, "focusType"    # I

    #@0
    .prologue
    .line 2630
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown focus type: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 2633
    :pswitch_0
    return-void

    #@1e
    .line 2630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAccessibilityViewId(J)I
    .locals 2
    .param p0, "accessibilityNodeId"    # J

    #@0
    .prologue
    .line 565
    long-to-int v0, p0

    #@1
    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4
    .param p0, "actionId"    # I

    #@0
    .prologue
    .line 3071
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->-get0()Landroid/util/ArraySet;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@7
    move-result v0

    #@8
    .line 3072
    .local v0, "actions":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 3073
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->-get0()Landroid/util/ArraySet;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@15
    .line 3074
    .local v1, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@18
    move-result v3

    #@19
    if-ne p0, v3, :cond_0

    #@1b
    .line 3075
    return-object v1

    #@1c
    .line 3072
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3079
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    #@0
    .prologue
    .line 3099
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 3161
    const-string/jumbo v0, "ACTION_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 3101
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    #@a
    return-object v0

    #@b
    .line 3103
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    #@e
    return-object v0

    #@f
    .line 3105
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    #@12
    return-object v0

    #@13
    .line 3107
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    #@16
    return-object v0

    #@17
    .line 3109
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    #@1a
    return-object v0

    #@1b
    .line 3111
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    #@1e
    return-object v0

    #@1f
    .line 3113
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    #@22
    return-object v0

    #@23
    .line 3115
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    #@26
    return-object v0

    #@27
    .line 3117
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    #@2a
    return-object v0

    #@2b
    .line 3119
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    #@2e
    return-object v0

    #@2f
    .line 3121
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    #@32
    return-object v0

    #@33
    .line 3123
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    #@36
    return-object v0

    #@37
    .line 3125
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    #@3a
    return-object v0

    #@3b
    .line 3127
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    #@3e
    return-object v0

    #@3f
    .line 3129
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    #@42
    return-object v0

    #@43
    .line 3131
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    #@46
    return-object v0

    #@47
    .line 3133
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    #@4a
    return-object v0

    #@4b
    .line 3135
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    #@4e
    return-object v0

    #@4f
    .line 3137
    :sswitch_12
    const-string/jumbo v0, "ACTION_EXPAND"

    #@52
    return-object v0

    #@53
    .line 3139
    :sswitch_13
    const-string/jumbo v0, "ACTION_COLLAPSE"

    #@56
    return-object v0

    #@57
    .line 3141
    :sswitch_14
    const-string/jumbo v0, "ACTION_DISMISS"

    #@5a
    return-object v0

    #@5b
    .line 3143
    :sswitch_15
    const-string/jumbo v0, "ACTION_SET_TEXT"

    #@5e
    return-object v0

    #@5f
    .line 3145
    :sswitch_16
    const-string/jumbo v0, "ACTION_SHOW_ON_SCREEN"

    #@62
    return-object v0

    #@63
    .line 3147
    :sswitch_17
    const-string/jumbo v0, "ACTION_SCROLL_TO_POSITION"

    #@66
    return-object v0

    #@67
    .line 3149
    :sswitch_18
    const-string/jumbo v0, "ACTION_SCROLL_UP"

    #@6a
    return-object v0

    #@6b
    .line 3151
    :sswitch_19
    const-string/jumbo v0, "ACTION_SCROLL_LEFT"

    #@6e
    return-object v0

    #@6f
    .line 3153
    :sswitch_1a
    const-string/jumbo v0, "ACTION_SCROLL_DOWN"

    #@72
    return-object v0

    #@73
    .line 3155
    :sswitch_1b
    const-string/jumbo v0, "ACTION_SCROLL_RIGHT"

    #@76
    return-object v0

    #@77
    .line 3157
    :sswitch_1c
    const-string/jumbo v0, "ACTION_SET_PROGRESS"

    #@7a
    return-object v0

    #@7b
    .line 3159
    :sswitch_1d
    const-string/jumbo v0, "ACTION_CONTEXT_CLICK"

    #@7e
    return-object v0

    #@7f
    .line 3099
    nop

    #@80
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
        0x1020036 -> :sswitch_16
        0x1020037 -> :sswitch_17
        0x1020038 -> :sswitch_18
        0x1020039 -> :sswitch_19
        0x102003a -> :sswitch_1a
        0x102003b -> :sswitch_1b
        0x102003c -> :sswitch_1d
        0x102003d -> :sswitch_1c
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2527
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "granularity"    # I

    #@0
    .prologue
    .line 3172
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 3184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown movement granularity: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 3174
    :sswitch_0
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_CHARACTER"

    #@20
    return-object v0

    #@21
    .line 3176
    :sswitch_1
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_WORD"

    #@24
    return-object v0

    #@25
    .line 3178
    :sswitch_2
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_LINE"

    #@28
    return-object v0

    #@29
    .line 3180
    :sswitch_3
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    #@2c
    return-object v0

    #@2d
    .line 3182
    :sswitch_4
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PAGE"

    #@30
    return-object v0

    #@31
    .line 3172
    nop

    #@32
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "accessibilityId"    # J

    #@0
    .prologue
    .line 3291
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3292
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 3294
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@b
    move-result-object v1

    #@c
    .line 3295
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@e
    .line 3296
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x7

    #@12
    move-wide v4, p1

    #@13
    .line 3295
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getVirtualDescendantId(J)I
    .locals 4
    .param p0, "accessibilityNodeId"    # J

    #@0
    .prologue
    .line 578
    const-wide v0, -0x100000000L

    #@5
    and-long/2addr v0, p0

    #@6
    .line 579
    const/16 v2, 0x20

    #@8
    .line 578
    shr-long/2addr v0, v2

    #@9
    long-to-int v0, v0

    #@a
    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2852
    iget-boolean v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@3
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@5
    .line 2853
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@7
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@9
    .line 2854
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@b
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@d
    .line 2855
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@f
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@11
    .line 2856
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@13
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@15
    .line 2857
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@17
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@19
    .line 2858
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1b
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1d
    .line 2859
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@1f
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@21
    .line 2860
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@23
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@25
    .line 2861
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@27
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2c
    .line 2862
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2e
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@33
    .line 2863
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@35
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@37
    .line 2864
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@39
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@3b
    .line 2865
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@3d
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@3f
    .line 2866
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@41
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@43
    .line 2867
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@45
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@47
    .line 2868
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@49
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@4b
    .line 2870
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@4d
    .line 2871
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_0

    #@4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v2

    #@53
    if-lez v2, :cond_0

    #@55
    .line 2872
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@57
    if-nez v2, :cond_3

    #@59
    .line 2873
    new-instance v2, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5e
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@60
    .line 2880
    :cond_0
    :goto_0
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@62
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@64
    .line 2881
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@66
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@68
    .line 2882
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@6a
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@6c
    .line 2884
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6e
    .line 2885
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_1

    #@70
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@73
    move-result v2

    #@74
    if-lez v2, :cond_1

    #@76
    .line 2886
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@78
    if-nez v2, :cond_4

    #@7a
    .line 2887
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@80
    .line 2894
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@82
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@84
    .line 2895
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@86
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@88
    .line 2896
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@8a
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@8c
    .line 2897
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@8e
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@90
    .line 2898
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@92
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@94
    .line 2899
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@96
    if-eqz v2, :cond_5

    #@98
    .line 2900
    new-instance v2, Landroid/os/Bundle;

    #@9a
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@9c
    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@9f
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@a1
    .line 2904
    :goto_2
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@a3
    if-eqz v2, :cond_6

    #@a5
    .line 2905
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@a7
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@aa
    move-result-object v2

    #@ab
    .line 2904
    :goto_3
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@ad
    .line 2906
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@af
    if-eqz v2, :cond_7

    #@b1
    .line 2907
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b3
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b6
    move-result-object v2

    #@b7
    .line 2906
    :goto_4
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b9
    .line 2908
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@bb
    if-eqz v2, :cond_2

    #@bd
    .line 2909
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@bf
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@c2
    move-result-object v3

    #@c3
    .line 2908
    :cond_2
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@c5
    .line 2851
    return-void

    #@c6
    .line 2875
    .end local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@c8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@cb
    .line 2876
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@cd
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@cf
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@d2
    goto :goto_0

    #@d3
    .line 2889
    .restart local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@d5
    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    #@d8
    .line 2890
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@da
    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    #@dd
    goto :goto_1

    #@de
    .line 2902
    :cond_5
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@e0
    goto :goto_2

    #@e1
    :cond_6
    move-object v2, v3

    #@e2
    .line 2905
    goto :goto_3

    #@e3
    :cond_7
    move-object v2, v3

    #@e4
    .line 2907
    goto :goto_4
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2918
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_1

    #@7
    const/16 v16, 0x1

    #@9
    .line 2919
    .local v16, "sealed":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v2

    #@d
    move-object/from16 v0, p0

    #@f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@11
    .line 2920
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v2

    #@15
    move-object/from16 v0, p0

    #@17
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@19
    .line 2921
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@1c
    move-result-wide v2

    #@1d
    move-object/from16 v0, p0

    #@1f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@21
    .line 2922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v2

    #@25
    move-object/from16 v0, p0

    #@27
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@29
    .line 2923
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@2c
    move-result-wide v2

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@31
    .line 2924
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@34
    move-result-wide v2

    #@35
    move-object/from16 v0, p0

    #@37
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@39
    .line 2925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v2

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@41
    .line 2927
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v2

    #@45
    move-object/from16 v0, p0

    #@47
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@49
    .line 2929
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v12

    #@4d
    .line 2930
    .local v12, "childrenSize":I
    if-gtz v12, :cond_2

    #@4f
    .line 2931
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@54
    .line 2940
    :cond_0
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v3

    #@5c
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@5e
    .line 2941
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v3

    #@66
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@68
    .line 2942
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v3

    #@70
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@72
    .line 2943
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@76
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v3

    #@7a
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@7c
    .line 2945
    move-object/from16 v0, p0

    #@7e
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@80
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v3

    #@84
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@86
    .line 2946
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@8a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v3

    #@8e
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@90
    .line 2947
    move-object/from16 v0, p0

    #@92
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@94
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v3

    #@98
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@9a
    .line 2948
    move-object/from16 v0, p0

    #@9c
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@9e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v3

    #@a2
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@a4
    .line 2950
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v9

    #@a8
    .line 2951
    .local v9, "actionCount":I
    if-lez v9, :cond_3

    #@aa
    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v14

    #@ae
    .line 2953
    .local v14, "legacyStandardActions":I
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    #@b3
    .line 2954
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    #@b6
    move-result v2

    #@b7
    sub-int v15, v9, v2

    #@b9
    .line 2955
    .local v15, "nonLegacyActionCount":I
    const/4 v13, 0x0

    #@ba
    .local v13, "i":I
    :goto_1
    if-ge v13, v15, :cond_3

    #@bc
    .line 2956
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@be
    .line 2957
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v2

    #@c2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@c5
    move-result-object v3

    #@c6
    .line 2956
    invoke-direct {v8, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    #@c9
    .line 2958
    .local v8, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    move-object/from16 v0, p0

    #@cb
    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@ce
    .line 2955
    add-int/lit8 v13, v13, 0x1

    #@d0
    goto :goto_1

    #@d1
    .line 2918
    .end local v8    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v9    # "actionCount":I
    .end local v12    # "childrenSize":I
    .end local v13    # "i":I
    .end local v14    # "legacyStandardActions":I
    .end local v15    # "nonLegacyActionCount":I
    .end local v16    # "sealed":Z
    :cond_1
    const/16 v16, 0x0

    #@d3
    .restart local v16    # "sealed":Z
    goto/16 :goto_0

    #@d5
    .line 2933
    .restart local v12    # "childrenSize":I
    :cond_2
    new-instance v2, Landroid/util/LongArray;

    #@d7
    invoke-direct {v2, v12}, Landroid/util/LongArray;-><init>(I)V

    #@da
    move-object/from16 v0, p0

    #@dc
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@de
    .line 2934
    const/4 v13, 0x0

    #@df
    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v12, :cond_0

    #@e1
    .line 2935
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@e4
    move-result-wide v10

    #@e5
    .line 2936
    .local v10, "childId":J
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@e9
    invoke-virtual {v2, v10, v11}, Landroid/util/LongArray;->add(J)V

    #@ec
    .line 2934
    add-int/lit8 v13, v13, 0x1

    #@ee
    goto :goto_2

    #@ef
    .line 2962
    .end local v10    # "childId":J
    .end local v13    # "i":I
    .restart local v9    # "actionCount":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v2

    #@f3
    move-object/from16 v0, p0

    #@f5
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@f7
    .line 2963
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v2

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@ff
    .line 2964
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v2

    #@103
    move-object/from16 v0, p0

    #@105
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@107
    .line 2966
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@10a
    move-result-object v2

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@10f
    .line 2967
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@112
    move-result-object v2

    #@113
    move-object/from16 v0, p0

    #@115
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@117
    .line 2968
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@11a
    move-result-object v2

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@11f
    .line 2969
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@122
    move-result-object v2

    #@123
    move-object/from16 v0, p0

    #@125
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@127
    .line 2970
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@12a
    move-result-object v2

    #@12b
    move-object/from16 v0, p0

    #@12d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@12f
    .line 2971
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@132
    move-result-object v2

    #@133
    move-object/from16 v0, p0

    #@135
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@137
    .line 2973
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v2

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@13f
    .line 2974
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v2

    #@143
    move-object/from16 v0, p0

    #@145
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@147
    .line 2976
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v2

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@14f
    .line 2977
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v2

    #@153
    move-object/from16 v0, p0

    #@155
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@157
    .line 2978
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v2

    #@15b
    move-object/from16 v0, p0

    #@15d
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@15f
    .line 2980
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v2

    #@163
    const/4 v3, 0x1

    #@164
    if-ne v2, v3, :cond_7

    #@166
    .line 2981
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@169
    move-result-object v2

    #@16a
    move-object/from16 v0, p0

    #@16c
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@16e
    .line 2986
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v2

    #@172
    const/4 v3, 0x1

    #@173
    if-ne v2, v3, :cond_4

    #@175
    .line 2988
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@178
    move-result v2

    #@179
    .line 2989
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@17c
    move-result v3

    #@17d
    .line 2990
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@180
    move-result v4

    #@181
    .line 2991
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@184
    move-result v5

    #@185
    .line 2987
    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@188
    move-result-object v2

    #@189
    move-object/from16 v0, p0

    #@18b
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@18d
    .line 2994
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@190
    move-result v2

    #@191
    const/4 v3, 0x1

    #@192
    if-ne v2, v3, :cond_5

    #@194
    .line 2996
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v3

    #@198
    .line 2997
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v4

    #@19c
    .line 2998
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v2

    #@1a0
    const/4 v5, 0x1

    #@1a1
    if-ne v2, v5, :cond_8

    #@1a3
    const/4 v2, 0x1

    #@1a4
    .line 2999
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v5

    #@1a8
    .line 2995
    invoke-static {v3, v4, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@1ab
    move-result-object v2

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@1b0
    .line 3002
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1b3
    move-result v2

    #@1b4
    const/4 v3, 0x1

    #@1b5
    if-ne v2, v3, :cond_6

    #@1b7
    .line 3004
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1ba
    move-result v2

    #@1bb
    .line 3005
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v3

    #@1bf
    .line 3006
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1c2
    move-result v4

    #@1c3
    .line 3007
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v5

    #@1c7
    .line 3008
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v6

    #@1cb
    const/4 v7, 0x1

    #@1cc
    if-ne v6, v7, :cond_9

    #@1ce
    const/4 v6, 0x1

    #@1cf
    .line 3009
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v7

    #@1d3
    const/16 v17, 0x1

    #@1d5
    move/from16 v0, v17

    #@1d7
    if-ne v7, v0, :cond_a

    #@1d9
    const/4 v7, 0x1

    #@1da
    .line 3003
    :goto_6
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1dd
    move-result-object v2

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1e2
    .line 3012
    :cond_6
    move/from16 v0, v16

    #@1e4
    move-object/from16 v1, p0

    #@1e6
    iput-boolean v0, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@1e8
    .line 2917
    return-void

    #@1e9
    .line 2983
    :cond_7
    const/4 v2, 0x0

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@1ee
    goto :goto_3

    #@1ef
    .line 2998
    :cond_8
    const/4 v2, 0x0

    #@1f0
    goto :goto_4

    #@1f1
    .line 3008
    :cond_9
    const/4 v6, 0x0

    #@1f2
    goto :goto_5

    #@1f3
    .line 3009
    :cond_a
    const/4 v7, 0x0

    #@1f4
    goto :goto_6
.end method

.method private static isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 2
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 3066
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x200000

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 3067
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    .line 3066
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public static makeNodeId(II)J
    .locals 4
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 598
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 599
    const p1, 0x7fffffff

    #@6
    .line 601
    :cond_0
    int-to-long v0, p1

    #@7
    const/16 v2, 0x20

    #@9
    shl-long/2addr v0, v2

    #@a
    int-to-long v2, p0

    #@b
    or-long/2addr v0, v2

    #@c
    return-wide v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 2690
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    .line 2691
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    #@10
    goto :goto_0
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "source"    # Landroid/view/View;

    #@0
    .prologue
    .line 2663
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2664
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    #@7
    .line 2665
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2679
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2680
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@7
    .line 2681
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2703
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2704
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@7
    .line 2705
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2539
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2540
    if-eqz p2, :cond_0

    #@5
    .line 2541
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@7
    or-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@a
    .line 2538
    :goto_0
    return-void

    #@b
    .line 2543
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@d
    not-int v1, p1

    #@e
    and-int/2addr v0, v1

    #@f
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@11
    goto :goto_0
.end method


# virtual methods
.method public addAction(I)V
    .locals 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1069
    const/high16 v0, -0x1000000

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1070
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Action is not a combination of the standard actions: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 1074
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    #@25
    .line 1066
    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1034
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@6
    .line 1031
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 868
    const v0, 0x7fffffff

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@7
    .line 867
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 914
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@4
    .line 913
    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 878
    const v0, 0x7fffffff

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@7
    .line 877
    return-void
.end method

.method public canOpenPopup()Z
    .locals 1

    #@0
    .prologue
    .line 2090
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2565
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected enforceNotSealed()V
    .locals 2

    #@0
    .prologue
    .line 2647
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2648
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2646
    :cond_0
    return-void
.end method

.method protected enforceSealed()V
    .locals 2

    #@0
    .prologue
    .line 2609
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2610
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2608
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3196
    if-ne p0, p1, :cond_0

    #@4
    .line 3197
    return v7

    #@5
    .line 3199
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 3200
    return v6

    #@8
    .line 3202
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 3203
    return v6

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 3205
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    .line 3206
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@18
    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 3207
    return v6

    #@1f
    .line 3209
    :cond_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@21
    iget v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@23
    if-eq v1, v2, :cond_4

    #@25
    .line 3210
    return v6

    #@26
    .line 3212
    :cond_4
    return v7
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1359
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1362
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    .line 1363
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move-object v6, p1

    #@1b
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1389
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1390
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1393
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    .line 1394
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move-object v6, p1

    #@1b
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    #@0
    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 712
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    #@6
    .line 713
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 714
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 716
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    .line 717
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move v6, p1

    #@1b
    .line 716
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 736
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    #@6
    .line 737
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 738
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 740
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    .line 741
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move v6, p1

    #@1b
    .line 740
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 967
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@b
    return-object v0
.end method

.method public getActions()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 994
    const/4 v3, 0x0

    #@1
    .line 996
    .local v3, "returnValue":I
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 997
    return v3

    #@6
    .line 1000
    :cond_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1001
    .local v1, "actionSize":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 1002
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@17
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@1a
    move-result v0

    #@1b
    .line 1003
    .local v0, "actionId":I
    const/high16 v4, 0x200000

    #@1d
    if-gt v0, v4, :cond_1

    #@1f
    .line 1004
    or-int/2addr v3, v0

    #@20
    .line 1001
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1008
    .end local v0    # "actionId":I
    :cond_2
    return v3
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1486
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@6
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@8
    .line 1487
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 1486
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@13
    .line 1485
    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1523
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@6
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@8
    .line 1514
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 1513
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@13
    .line 1512
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 842
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@4
    .line 843
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 844
    return-object v6

    #@9
    .line 846
    :cond_0
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@b
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 847
    return-object v6

    #@12
    .line 849
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@14
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    #@17
    move-result-wide v4

    #@18
    .line 850
    .local v4, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@1b
    move-result-object v1

    #@1c
    .line 851
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@1e
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@20
    .line 852
    const/4 v6, 0x0

    #@21
    const/4 v7, 0x4

    #@22
    .line 851
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@8
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getChildId(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 813
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 815
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .locals 1

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2
    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2190
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    #@0
    .prologue
    .line 1906
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@2
    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    #@0
    .prologue
    .line 1932
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2268
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDrawingOrder()I
    .locals 1

    #@0
    .prologue
    .line 1880
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@2
    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2259
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 2514
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2515
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@b
    .line 2517
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 2479
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@2
    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 2336
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 2337
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 2388
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 2389
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getLiveRegion()I
    .locals 1

    #@0
    .prologue
    .line 2041
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@2
    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    #@0
    .prologue
    .line 1269
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@2
    return v0
.end method

.method public getMovementGranularities()I
    .locals 1

    #@0
    .prologue
    .line 1295
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2164
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 1425
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1426
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getParentNodeId()J
    .locals 2

    #@0
    .prologue
    .line 1435
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@2
    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    #@0
    .prologue
    .line 1955
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@2
    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    #@0
    .prologue
    .line 2576
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@2
    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2216
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 2451
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@2
    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 2436
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@2
    return v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 1193
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1194
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 1132
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1133
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2421
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    #@0
    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1407
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1408
    const/4 v1, 0x0

    #@c
    return-object v1

    #@d
    .line 1410
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v0

    #@11
    .line 1411
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public getWindowId()I
    .locals 1

    #@0
    .prologue
    .line 750
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 3217
    const/16 v0, 0x1f

    #@2
    .line 3219
    .local v0, "prime":I
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@4
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 3220
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@e
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@11
    move-result v3

    #@12
    add-int v1, v2, v3

    #@14
    .line 3221
    mul-int/lit8 v2, v1, 0x1f

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    add-int v1, v2, v3

    #@1a
    .line 3222
    return v1
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    #@0
    .prologue
    .line 1674
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCheckable()Z
    .locals 1

    #@0
    .prologue
    .line 1549
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isChecked()Z
    .locals 1

    #@0
    .prologue
    .line 1574
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isClickable()Z
    .locals 1

    #@0
    .prologue
    .line 1724
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isContentInvalid()Z
    .locals 1

    #@0
    .prologue
    .line 1980
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    #@0
    .prologue
    .line 2004
    const/high16 v0, 0x20000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDismissable()Z
    .locals 1

    #@0
    .prologue
    .line 2114
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEditable()Z
    .locals 1

    #@0
    .prologue
    .line 1849
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1774
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 1599
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isFocused()Z
    .locals 1

    #@0
    .prologue
    .line 1624
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    #@0
    .prologue
    .line 2140
    const/high16 v0, 0x40000

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    #@0
    .prologue
    .line 1749
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMultiLine()Z
    .locals 1

    #@0
    .prologue
    .line 2067
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isPassword()Z
    .locals 1

    #@0
    .prologue
    .line 1799
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isScrollable()Z
    .locals 1

    #@0
    .prologue
    .line 1824
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSealed()Z
    .locals 1

    #@0
    .prologue
    .line 2598
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@2
    return v0
.end method

.method public isSelected()Z
    .locals 1

    #@0
    .prologue
    .line 1699
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    #@0
    .prologue
    .line 1649
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public performAction(I)Z
    .locals 8
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1312
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1313
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1315
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 1316
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    .line 1317
    const/4 v7, 0x0

    #@18
    move v6, p1

    #@19
    .line 1316
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1334
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1335
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1336
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1338
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 1339
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    move v6, p1

    #@18
    move-object v7, p2

    #@19
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 2716
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    #@3
    .line 2717
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 2715
    return-void
.end method

.method public refresh()Z
    .locals 1

    #@0
    .prologue
    .line 792
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public refresh(Z)Z
    .locals 8
    .param p1, "bypassCache"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 767
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@4
    .line 768
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@6
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 769
    return v7

    #@d
    .line 771
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 773
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    move v6, p1

    #@18
    .line 772
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1b
    move-result-object v0

    #@1c
    .line 774
    .local v0, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    #@1e
    .line 775
    return v7

    #@1f
    .line 777
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@22
    .line 778
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@25
    .line 779
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method public removeAction(I)V
    .locals 1
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1095
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@a
    .line 1092
    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1113
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1115
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    if-nez p1, :cond_1

    #@9
    .line 1116
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1119
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public removeChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 896
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 943
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@4
    .line 944
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6
    .line 945
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_0

    #@8
    .line 946
    return v5

    #@9
    .line 949
    :cond_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@e
    move-result v4

    #@f
    .line 950
    .local v4, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v4, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@12
    move-result-wide v2

    #@13
    .line 951
    .local v2, "childNodeId":J
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    #@16
    move-result v1

    #@17
    .line 952
    .local v1, "index":I
    if-gez v1, :cond_2

    #@19
    .line 953
    return v5

    #@1a
    .line 949
    .end local v1    # "index":I
    .end local v2    # "childNodeId":J
    .end local v4    # "rootAccessibilityViewId":I
    :cond_1
    const v4, 0x7fffffff

    #@1d
    goto :goto_0

    #@1e
    .line 955
    .restart local v1    # "index":I
    .restart local v2    # "childNodeId":J
    .restart local v4    # "rootAccessibilityViewId":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    #@21
    .line 956
    const/4 v5, 0x1

    #@22
    return v5
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 1690
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1689
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1503
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1504
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@7
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@9
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@b
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@10
    .line 1502
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1539
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1540
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@7
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@9
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@b
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@10
    .line 1538
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 1
    .param p1, "opensPopup"    # Z

    #@0
    .prologue
    .line 2104
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2105
    const/16 v0, 0x2000

    #@5
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@8
    .line 2103
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    #@0
    .prologue
    .line 1565
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1564
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 1590
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1589
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2207
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@5
    .line 2205
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    #@0
    .prologue
    .line 1740
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1739
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@0
    .prologue
    .line 1921
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1922
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@5
    .line 1920
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@0
    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1946
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@5
    .line 1944
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    #@0
    .prologue
    .line 2556
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2557
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@5
    .line 2555
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2284
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2285
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@5
    .line 2283
    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 1
    .param p1, "contentInvalid"    # Z

    #@0
    .prologue
    .line 1995
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1994
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 1
    .param p1, "contextClickable"    # Z

    #@0
    .prologue
    .line 2019
    const/high16 v0, 0x20000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 2018
    return-void
.end method

.method public setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    #@0
    .prologue
    .line 2128
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 2127
    return-void
.end method

.method public setDrawingOrder(I)V
    .locals 0
    .param p1, "drawingOrderInParent"    # I

    #@0
    .prologue
    .line 1895
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1896
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@5
    .line 1894
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    #@0
    .prologue
    .line 1865
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1864
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1790
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1789
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2249
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2250
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@5
    .line 2248
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .line 1615
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1614
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 1640
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1639
    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "important"    # Z

    #@0
    .prologue
    .line 2155
    const/high16 v0, 0x40000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 2154
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    #@0
    .prologue
    .line 2496
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2497
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@5
    .line 2495
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 1
    .param p1, "labeled"    # Landroid/view/View;

    #@0
    .prologue
    .line 2295
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    #@6
    .line 2294
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2318
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2319
    if-eqz p1, :cond_0

    #@5
    .line 2320
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 2321
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@f
    .line 2317
    return-void

    #@10
    .line 2320
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    goto :goto_0
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 1
    .param p1, "label"    # Landroid/view/View;

    #@0
    .prologue
    .line 2347
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    #@6
    .line 2346
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2370
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2371
    if-eqz p1, :cond_0

    #@5
    .line 2372
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 2373
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@f
    .line 2369
    return-void

    #@10
    .line 2372
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    goto :goto_0
.end method

.method public setLiveRegion(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2057
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2058
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@5
    .line 2056
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    #@0
    .prologue
    .line 1765
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1764
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 1258
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1259
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@5
    .line 1257
    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 0
    .param p1, "granularities"    # I

    #@0
    .prologue
    .line 1285
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1286
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@5
    .line 1284
    return-void
.end method

.method public setMultiLine(Z)V
    .locals 1
    .param p1, "multiLine"    # Z

    #@0
    .prologue
    .line 2081
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@6
    .line 2080
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2180
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2181
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@5
    .line 2179
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 1451
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    #@6
    .line 1450
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1474
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1476
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1477
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@f
    .line 1473
    return-void

    #@10
    .line 1476
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    goto :goto_0
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "password"    # Z

    #@0
    .prologue
    .line 1815
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1814
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@0
    .prologue
    .line 1969
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1970
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@5
    .line 1968
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    #@0
    .prologue
    .line 1840
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1839
    return-void
.end method

.method public setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    #@0
    .prologue
    .line 2587
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@2
    .line 2586
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 1715
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1714
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    #@0
    .prologue
    .line 669
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@6
    .line 668
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    .line 692
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@6
    .line 693
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    #@b
    move-result v1

    #@c
    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@e
    .line 695
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@13
    move-result v0

    #@14
    .line 696
    .local v0, "rootAccessibilityViewId":I
    :goto_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    .line 691
    return-void

    #@1b
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    move v1, v2

    #@1c
    .line 693
    goto :goto_0

    #@1d
    :cond_1
    move v0, v2

    #@1e
    .line 695
    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2233
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@5
    .line 2231
    return-void
.end method

.method public setTextSelection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2468
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2469
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@5
    .line 2470
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@7
    .line 2467
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1212
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    #@6
    .line 1211
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1236
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1237
    if-eqz p1, :cond_0

    #@5
    .line 1238
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1239
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@f
    .line 1235
    return-void

    #@10
    .line 1238
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    goto :goto_0
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1151
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    #@6
    .line 1150
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1177
    if-eqz p1, :cond_0

    #@5
    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1179
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@f
    .line 1175
    return-void

    #@10
    .line 1178
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    goto :goto_0
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewIdResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2404
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2405
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@5
    .line 2403
    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 1
    .param p1, "visibleToUser"    # Z

    #@0
    .prologue
    .line 1665
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1664
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3227
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3228
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 3263
    const-string/jumbo v1, "; boundsInParent: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    .line 3264
    const-string/jumbo v1, "; boundsInScreen: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 3266
    const-string/jumbo v1, "; packageName: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@30
    .line 3267
    const-string/jumbo v1, "; className: "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3c
    .line 3268
    const-string/jumbo v1, "; text: "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@48
    .line 3269
    const-string/jumbo v1, "; error: "

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@54
    .line 3270
    const-string/jumbo v1, "; maxTextLength: "

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    .line 3271
    const-string/jumbo v1, "; contentDescription: "

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6c
    .line 3272
    const-string/jumbo v1, "; viewIdResName: "

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 3274
    const-string/jumbo v1, "; checkable: "

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    #@82
    move-result v2

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@86
    .line 3275
    const-string/jumbo v1, "; checked: "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    #@90
    move-result v2

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@94
    .line 3276
    const-string/jumbo v1, "; focusable: "

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    #@9e
    move-result v2

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    .line 3277
    const-string/jumbo v1, "; focused: "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@ac
    move-result v2

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b0
    .line 3278
    const-string/jumbo v1, "; selected: "

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    #@ba
    move-result v2

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@be
    .line 3279
    const-string/jumbo v1, "; clickable: "

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@c8
    move-result v2

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cc
    .line 3280
    const-string/jumbo v1, "; longClickable: "

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    #@d6
    move-result v2

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@da
    .line 3281
    const-string/jumbo v1, "; contextClickable: "

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    #@e4
    move-result v2

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e8
    .line 3282
    const-string/jumbo v1, "; enabled: "

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@f2
    move-result v2

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f6
    .line 3283
    const-string/jumbo v1, "; password: "

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    #@100
    move-result v2

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@104
    .line 3284
    const-string/jumbo v1, "; scrollable: "

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@10e
    move-result v2

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@112
    .line 3285
    const-string/jumbo v1, "; actions: "

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@11b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    .line 3287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2729
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_3

    #@8
    move v6, v7

    #@9
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2730
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@e
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 2731
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@13
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 2732
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@18
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 2733
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@1d
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 2734
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@22
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@25
    .line 2735
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@27
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@2a
    .line 2736
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@2c
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@2f
    .line 2738
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@31
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 2740
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@36
    .line 2741
    .local v2, "childIds":Landroid/util/LongArray;
    if-nez v2, :cond_4

    #@38
    .line 2742
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 2751
    :cond_0
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@3d
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@3f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 2752
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@44
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@46
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 2753
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@4b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 2754
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@52
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@54
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 2756
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@59
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@5b
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 2757
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@60
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@62
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 2758
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@67
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@69
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 2759
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@6e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@70
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 2761
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@75
    if-eqz v6, :cond_1

    #@77
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_5

    #@7f
    .line 2782
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 2785
    :cond_2
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@84
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 2786
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@89
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 2787
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@8e
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 2789
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@93
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@96
    .line 2790
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@98
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@9b
    .line 2791
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@9d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a0
    .line 2792
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@a2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a5
    .line 2793
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@a7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@aa
    .line 2794
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@ac
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@af
    .line 2796
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@b1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 2797
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@b6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b9
    .line 2798
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@bb
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 2799
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@c0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 2800
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    #@c5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c8
    .line 2802
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@ca
    if-eqz v6, :cond_9

    #@cc
    .line 2803
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@cf
    .line 2804
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@d1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@d4
    .line 2809
    :goto_1
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@d6
    if-eqz v6, :cond_a

    #@d8
    .line 2810
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    .line 2811
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@dd
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    #@e0
    move-result v6

    #@e1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e4
    .line 2812
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@e6
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    #@e9
    move-result v6

    #@ea
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@ed
    .line 2813
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@ef
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    #@f2
    move-result v6

    #@f3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@f6
    .line 2814
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@f8
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    #@fb
    move-result v6

    #@fc
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@ff
    .line 2819
    :goto_2
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@101
    if-eqz v6, :cond_c

    #@103
    .line 2820
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@106
    .line 2821
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@108
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    #@10b
    move-result v6

    #@10c
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10f
    .line 2822
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@111
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    #@114
    move-result v6

    #@115
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    .line 2823
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@11a
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    #@11d
    move-result v6

    #@11e
    if-eqz v6, :cond_b

    #@120
    move v6, v7

    #@121
    :goto_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@124
    .line 2824
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@126
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    #@129
    move-result v6

    #@12a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@12d
    .line 2829
    :goto_4
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@12f
    if-eqz v6, :cond_f

    #@131
    .line 2830
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    .line 2831
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@136
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    #@139
    move-result v6

    #@13a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    .line 2832
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@13f
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    #@142
    move-result v6

    #@143
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    .line 2833
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@148
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    #@14b
    move-result v6

    #@14c
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14f
    .line 2834
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@151
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    #@154
    move-result v6

    #@155
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@158
    .line 2835
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@15a
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    #@15d
    move-result v6

    #@15e
    if-eqz v6, :cond_d

    #@160
    move v6, v7

    #@161
    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 2836
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@166
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    #@169
    move-result v6

    #@16a
    if-eqz v6, :cond_e

    #@16c
    :goto_6
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@16f
    .line 2843
    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@172
    .line 2728
    return-void

    #@173
    .end local v2    # "childIds":Landroid/util/LongArray;
    :cond_3
    move v6, v8

    #@174
    .line 2729
    goto/16 :goto_0

    #@176
    .line 2744
    .restart local v2    # "childIds":Landroid/util/LongArray;
    :cond_4
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    #@179
    move-result v3

    #@17a
    .line 2745
    .local v3, "childIdsSize":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17d
    .line 2746
    const/4 v5, 0x0

    #@17e
    .local v5, "i":I
    :goto_8
    if-ge v5, v3, :cond_0

    #@180
    .line 2747
    invoke-virtual {v2, v5}, Landroid/util/LongArray;->get(I)J

    #@183
    move-result-wide v10

    #@184
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@187
    .line 2746
    add-int/lit8 v5, v5, 0x1

    #@189
    goto :goto_8

    #@18a
    .line 2762
    .end local v3    # "childIdsSize":I
    .end local v5    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@18c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18f
    move-result v1

    #@190
    .line 2763
    .local v1, "actionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@193
    .line 2765
    const/4 v4, 0x0

    #@194
    .line 2766
    .local v4, "defaultLegacyStandardActions":I
    const/4 v5, 0x0

    #@195
    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v1, :cond_7

    #@197
    .line 2767
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@199
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19c
    move-result-object v0

    #@19d
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@19f
    .line 2768
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@1a2
    move-result v6

    #@1a3
    if-eqz v6, :cond_6

    #@1a5
    .line 2769
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@1a8
    move-result v6

    #@1a9
    or-int/2addr v4, v6

    #@1aa
    .line 2766
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@1ac
    goto :goto_9

    #@1ad
    .line 2772
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b0
    .line 2774
    const/4 v5, 0x0

    #@1b1
    :goto_a
    if-ge v5, v1, :cond_2

    #@1b3
    .line 2775
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@1b5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b8
    move-result-object v0

    #@1b9
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1bb
    .line 2776
    .restart local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@1be
    move-result v6

    #@1bf
    if-nez v6, :cond_8

    #@1c1
    .line 2777
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@1c4
    move-result v6

    #@1c5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1c8
    .line 2778
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    #@1cb
    move-result-object v6

    #@1cc
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@1cf
    .line 2774
    :cond_8
    add-int/lit8 v5, v5, 0x1

    #@1d1
    goto :goto_a

    #@1d2
    .line 2806
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5
    goto/16 :goto_1

    #@1d7
    .line 2816
    :cond_a
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1da
    goto/16 :goto_2

    #@1dc
    :cond_b
    move v6, v8

    #@1dd
    .line 2823
    goto/16 :goto_3

    #@1df
    .line 2826
    :cond_c
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1e2
    goto/16 :goto_4

    #@1e4
    :cond_d
    move v6, v8

    #@1e5
    .line 2835
    goto/16 :goto_5

    #@1e7
    :cond_e
    move v7, v8

    #@1e8
    .line 2836
    goto :goto_6

    #@1e9
    .line 2838
    :cond_f
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    goto :goto_7
.end method
