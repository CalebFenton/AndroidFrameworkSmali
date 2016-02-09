.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$1;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

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
    .line 80
    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@9
    .line 588
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@b
    const/16 v1, 0x32

    #@d
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@10
    .line 587
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@12
    .line 4101
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    #@14
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    #@17
    .line 4100
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    .line 66
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
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 593
    const v0, 0x7fffffff

    #@8
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@a
    .line 594
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@c
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@e
    .line 595
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@10
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@12
    .line 596
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@14
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@16
    .line 597
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@18
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@1a
    .line 598
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@1c
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@1e
    .line 599
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@20
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@22
    .line 602
    new-instance v0, Landroid/graphics/Rect;

    #@24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@29
    .line 603
    new-instance v0, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@30
    .line 615
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@32
    .line 618
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@34
    .line 619
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@36
    .line 620
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@38
    .line 621
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@3a
    .line 625
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@3c
    .line 634
    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1018
    if-nez p1, :cond_0

    #@2
    .line 1019
    return-void

    #@3
    .line 1022
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@e
    .line 1026
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@13
    .line 1027
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1017
    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    #@0
    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 899
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 900
    new-instance v3, Landroid/util/LongArray;

    #@9
    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    #@c
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@e
    .line 903
    :cond_0
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@13
    move-result v2

    #@14
    .line 904
    .local v2, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@17
    move-result-wide v0

    #@18
    .line 906
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
    .line 907
    return-void

    #@23
    .line 903
    .end local v0    # "childNodeId":J
    .end local v2    # "rootAccessibilityViewId":I
    :cond_1
    const v2, 0x7fffffff

    #@26
    .restart local v2    # "rootAccessibilityViewId":I
    goto :goto_0

    #@27
    .line 909
    .restart local v0    # "childNodeId":J
    :cond_2
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@29
    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    #@2c
    .line 897
    return-void
.end method

.method private addLegacyStandardActions(I)V
    .locals 5
    .param p1, "actionMask"    # I

    #@0
    .prologue
    .line 2987
    move v2, p1

    #@1
    .line 2988
    .local v2, "remainingIds":I
    :goto_0
    if-lez v2, :cond_0

    #@3
    .line 2989
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@6
    move-result v3

    #@7
    const/4 v4, 0x1

    #@8
    shl-int v1, v4, v3

    #@a
    .line 2990
    .local v1, "id":I
    not-int v3, v1

    #@b
    and-int/2addr v2, v3

    #@c
    .line 2991
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@f
    move-result-object v0

    #@10
    .line 2992
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@13
    goto :goto_0

    #@14
    .line 2986
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
    .line 3069
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 3070
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@b
    move-result v1

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 3071
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@10
    const/4 v2, -0x1

    #@11
    if-eq v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 3069
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
    .line 2922
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@5
    .line 2923
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@7
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@9
    .line 2924
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@b
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@d
    .line 2925
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@f
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@11
    .line 2926
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@13
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@15
    .line 2927
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@17
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@19
    .line 2928
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@1b
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1d
    .line 2929
    const v0, 0x7fffffff

    #@20
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@22
    .line 2930
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@24
    .line 2931
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@26
    .line 2932
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@28
    .line 2933
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 2934
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2e
    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    #@31
    .line 2936
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@36
    .line 2937
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@3b
    .line 2938
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@3d
    .line 2939
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@3f
    .line 2940
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@41
    .line 2941
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@43
    .line 2942
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@45
    .line 2943
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@47
    .line 2944
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@49
    .line 2945
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@4b
    if-eqz v0, :cond_1

    #@4d
    .line 2946
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@52
    .line 2948
    :cond_1
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@54
    .line 2949
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@56
    .line 2950
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@58
    .line 2951
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@5a
    .line 2952
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@5c
    if-eqz v0, :cond_2

    #@5e
    .line 2953
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@60
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@63
    .line 2955
    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@65
    if-eqz v0, :cond_3

    #@67
    .line 2956
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@69
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    #@6c
    .line 2957
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@6e
    .line 2959
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@70
    if-eqz v0, :cond_4

    #@72
    .line 2960
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@74
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    #@77
    .line 2961
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@79
    .line 2963
    :cond_4
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@7b
    if-eqz v0, :cond_5

    #@7d
    .line 2964
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@7f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    #@82
    .line 2965
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@84
    .line 2921
    :cond_5
    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 2526
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2535
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
    .line 2533
    :sswitch_0
    return-void

    #@1e
    .line 2526
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
    .line 2540
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2545
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
    .line 2543
    :pswitch_0
    return-void

    #@1e
    .line 2540
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
    .line 546
    long-to-int v0, p0

    #@1
    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4
    .param p0, "actionId"    # I

    #@0
    .prologue
    .line 2975
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->-get0()Landroid/util/ArraySet;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@7
    move-result v0

    #@8
    .line 2976
    .local v0, "actions":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 2977
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
    .line 2978
    .local v1, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@18
    move-result v3

    #@19
    if-ne p0, v3, :cond_0

    #@1b
    .line 2979
    return-object v1

    #@1c
    .line 2976
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2983
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
    .line 3003
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 3041
    const-string/jumbo v0, "ACTION_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 3005
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    #@a
    return-object v0

    #@b
    .line 3007
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    #@e
    return-object v0

    #@f
    .line 3009
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    #@12
    return-object v0

    #@13
    .line 3011
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    #@16
    return-object v0

    #@17
    .line 3013
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    #@1a
    return-object v0

    #@1b
    .line 3015
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    #@1e
    return-object v0

    #@1f
    .line 3017
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    #@22
    return-object v0

    #@23
    .line 3019
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    #@26
    return-object v0

    #@27
    .line 3021
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    #@2a
    return-object v0

    #@2b
    .line 3023
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    #@2e
    return-object v0

    #@2f
    .line 3025
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    #@32
    return-object v0

    #@33
    .line 3027
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    #@36
    return-object v0

    #@37
    .line 3029
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    #@3a
    return-object v0

    #@3b
    .line 3031
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    #@3e
    return-object v0

    #@3f
    .line 3033
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    #@42
    return-object v0

    #@43
    .line 3035
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    #@46
    return-object v0

    #@47
    .line 3037
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    #@4a
    return-object v0

    #@4b
    .line 3039
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    #@4e
    return-object v0

    #@4f
    .line 3003
    nop

    #@50
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
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2437
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
    .line 3052
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 3064
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
    .line 3054
    :sswitch_0
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_CHARACTER"

    #@20
    return-object v0

    #@21
    .line 3056
    :sswitch_1
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_WORD"

    #@24
    return-object v0

    #@25
    .line 3058
    :sswitch_2
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_LINE"

    #@28
    return-object v0

    #@29
    .line 3060
    :sswitch_3
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    #@2c
    return-object v0

    #@2d
    .line 3062
    :sswitch_4
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PAGE"

    #@30
    return-object v0

    #@31
    .line 3052
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
    .line 3171
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3172
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 3174
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@b
    move-result-object v1

    #@c
    .line 3175
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@e
    .line 3176
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x7

    #@12
    move-wide v4, p1

    #@13
    .line 3175
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
    .line 559
    const-wide v0, -0x100000000L

    #@5
    and-long/2addr v0, p0

    #@6
    .line 560
    const/16 v2, 0x20

    #@8
    .line 559
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
    .line 2761
    iget-boolean v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@3
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@5
    .line 2762
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@7
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@9
    .line 2763
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@b
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@d
    .line 2764
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@f
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@11
    .line 2765
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@13
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@15
    .line 2766
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@17
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@19
    .line 2767
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1b
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@1d
    .line 2768
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@1f
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@21
    .line 2769
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@23
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@25
    .line 2770
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@27
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2c
    .line 2771
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2e
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@33
    .line 2772
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@35
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@37
    .line 2773
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@39
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@3b
    .line 2774
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@3d
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@3f
    .line 2775
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@41
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@43
    .line 2776
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@45
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@47
    .line 2777
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@49
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@4b
    .line 2779
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@4d
    .line 2780
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_0

    #@4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v2

    #@53
    if-lez v2, :cond_0

    #@55
    .line 2781
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@57
    if-nez v2, :cond_4

    #@59
    .line 2782
    new-instance v2, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5e
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@60
    .line 2789
    :cond_0
    :goto_0
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@62
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@64
    .line 2790
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@66
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@68
    .line 2791
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@6a
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@6c
    .line 2793
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6e
    .line 2794
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_1

    #@70
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@73
    move-result v2

    #@74
    if-lez v2, :cond_1

    #@76
    .line 2795
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@78
    if-nez v2, :cond_5

    #@7a
    .line 2796
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@80
    .line 2803
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@82
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@84
    .line 2804
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@86
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@88
    .line 2805
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@8a
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@8c
    .line 2806
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@8e
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@90
    .line 2807
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@92
    if-eqz v2, :cond_2

    #@94
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@96
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_6

    #@9c
    .line 2810
    :cond_2
    :goto_2
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@9e
    if-eqz v2, :cond_7

    #@a0
    .line 2811
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@a2
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@a5
    move-result-object v2

    #@a6
    .line 2810
    :goto_3
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@a8
    .line 2812
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@aa
    if-eqz v2, :cond_8

    #@ac
    .line 2813
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@ae
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b1
    move-result-object v2

    #@b2
    .line 2812
    :goto_4
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b4
    .line 2814
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@b6
    if-eqz v2, :cond_3

    #@b8
    .line 2815
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@ba
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@bd
    move-result-object v3

    #@be
    .line 2814
    :cond_3
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@c0
    .line 2760
    return-void

    #@c1
    .line 2784
    .end local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@c3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@c6
    .line 2785
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@c8
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@ca
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@cd
    goto :goto_0

    #@ce
    .line 2798
    .restart local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_5
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@d0
    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    #@d3
    .line 2799
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@d5
    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    #@d8
    goto :goto_1

    #@d9
    .line 2808
    :cond_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    #@dc
    move-result-object v2

    #@dd
    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@df
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@e2
    goto :goto_2

    #@e3
    :cond_7
    move-object v2, v3

    #@e4
    .line 2811
    goto :goto_3

    #@e5
    :cond_8
    move-object v2, v3

    #@e6
    .line 2813
    goto :goto_4
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2824
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
    .line 2825
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
    .line 2826
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v2

    #@15
    move-object/from16 v0, p0

    #@17
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@19
    .line 2827
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@1c
    move-result-wide v2

    #@1d
    move-object/from16 v0, p0

    #@1f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@21
    .line 2828
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v2

    #@25
    move-object/from16 v0, p0

    #@27
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@29
    .line 2829
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@2c
    move-result-wide v2

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@31
    .line 2830
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@34
    move-result-wide v2

    #@35
    move-object/from16 v0, p0

    #@37
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@39
    .line 2831
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v2

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@41
    .line 2833
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v2

    #@45
    move-object/from16 v0, p0

    #@47
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@49
    .line 2835
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v12

    #@4d
    .line 2836
    .local v12, "childrenSize":I
    if-gtz v12, :cond_2

    #@4f
    .line 2837
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@54
    .line 2846
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
    .line 2847
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
    .line 2848
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
    .line 2849
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
    .line 2851
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
    .line 2852
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
    .line 2853
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
    .line 2854
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
    .line 2856
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v9

    #@a8
    .line 2857
    .local v9, "actionCount":I
    if-lez v9, :cond_3

    #@aa
    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v14

    #@ae
    .line 2859
    .local v14, "legacyStandardActions":I
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    #@b3
    .line 2860
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    #@b6
    move-result v2

    #@b7
    sub-int v15, v9, v2

    #@b9
    .line 2861
    .local v15, "nonLegacyActionCount":I
    const/4 v13, 0x0

    #@ba
    .local v13, "i":I
    :goto_1
    if-ge v13, v15, :cond_3

    #@bc
    .line 2862
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@be
    .line 2863
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v2

    #@c2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@c5
    move-result-object v3

    #@c6
    .line 2862
    invoke-direct {v8, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    #@c9
    .line 2864
    .local v8, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    move-object/from16 v0, p0

    #@cb
    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@ce
    .line 2861
    add-int/lit8 v13, v13, 0x1

    #@d0
    goto :goto_1

    #@d1
    .line 2824
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
    .line 2839
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
    .line 2840
    const/4 v13, 0x0

    #@df
    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v12, :cond_0

    #@e1
    .line 2841
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@e4
    move-result-wide v10

    #@e5
    .line 2842
    .local v10, "childId":J
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@e9
    invoke-virtual {v2, v10, v11}, Landroid/util/LongArray;->add(J)V

    #@ec
    .line 2840
    add-int/lit8 v13, v13, 0x1

    #@ee
    goto :goto_2

    #@ef
    .line 2868
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
    .line 2869
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v2

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@ff
    .line 2870
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v2

    #@103
    move-object/from16 v0, p0

    #@105
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@107
    .line 2872
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@10a
    move-result-object v2

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@10f
    .line 2873
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@112
    move-result-object v2

    #@113
    move-object/from16 v0, p0

    #@115
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@117
    .line 2874
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@11a
    move-result-object v2

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@11f
    .line 2875
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@122
    move-result-object v2

    #@123
    move-object/from16 v0, p0

    #@125
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@127
    .line 2876
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@12a
    move-result-object v2

    #@12b
    move-object/from16 v0, p0

    #@12d
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@12f
    .line 2877
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@132
    move-result-object v2

    #@133
    move-object/from16 v0, p0

    #@135
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@137
    .line 2879
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v2

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@13f
    .line 2880
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v2

    #@143
    move-object/from16 v0, p0

    #@145
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@147
    .line 2882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v2

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@14f
    .line 2883
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v2

    #@153
    move-object/from16 v0, p0

    #@155
    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@157
    .line 2885
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v2

    #@15b
    const/4 v3, 0x1

    #@15c
    if-ne v2, v3, :cond_4

    #@15e
    .line 2886
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    #@161
    move-result-object v2

    #@162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@169
    .line 2889
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v2

    #@16d
    const/4 v3, 0x1

    #@16e
    if-ne v2, v3, :cond_5

    #@170
    .line 2891
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v2

    #@174
    .line 2892
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@177
    move-result v3

    #@178
    .line 2893
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@17b
    move-result v4

    #@17c
    .line 2894
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    #@17f
    move-result v5

    #@180
    .line 2890
    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@183
    move-result-object v2

    #@184
    move-object/from16 v0, p0

    #@186
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@188
    .line 2897
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v2

    #@18c
    const/4 v3, 0x1

    #@18d
    if-ne v2, v3, :cond_6

    #@18f
    .line 2899
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v3

    #@193
    .line 2900
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v4

    #@197
    .line 2901
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@19a
    move-result v2

    #@19b
    const/4 v5, 0x1

    #@19c
    if-ne v2, v5, :cond_8

    #@19e
    const/4 v2, 0x1

    #@19f
    .line 2902
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1a2
    move-result v5

    #@1a3
    .line 2898
    invoke-static {v3, v4, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@1a6
    move-result-object v2

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@1ab
    .line 2905
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v2

    #@1af
    const/4 v3, 0x1

    #@1b0
    if-ne v2, v3, :cond_7

    #@1b2
    .line 2907
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v2

    #@1b6
    .line 2908
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1b9
    move-result v3

    #@1ba
    .line 2909
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1bd
    move-result v4

    #@1be
    .line 2910
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v5

    #@1c2
    .line 2911
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v6

    #@1c6
    const/4 v7, 0x1

    #@1c7
    if-ne v6, v7, :cond_9

    #@1c9
    const/4 v6, 0x1

    #@1ca
    .line 2912
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v7

    #@1ce
    const/16 v17, 0x1

    #@1d0
    move/from16 v0, v17

    #@1d2
    if-ne v7, v0, :cond_a

    #@1d4
    const/4 v7, 0x1

    #@1d5
    .line 2906
    :goto_5
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1d8
    move-result-object v2

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1dd
    .line 2915
    :cond_7
    move/from16 v0, v16

    #@1df
    move-object/from16 v1, p0

    #@1e1
    iput-boolean v0, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@1e3
    .line 2823
    return-void

    #@1e4
    .line 2901
    :cond_8
    const/4 v2, 0x0

    #@1e5
    goto :goto_3

    #@1e6
    .line 2911
    :cond_9
    const/4 v6, 0x0

    #@1e7
    goto :goto_4

    #@1e8
    .line 2912
    :cond_a
    const/4 v7, 0x0

    #@1e9
    goto :goto_5
.end method

.method private static isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 2
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 2970
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x200000

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2971
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    .line 2970
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
    .line 579
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 580
    const p1, 0x7fffffff

    #@6
    .line 582
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
    .line 2600
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    .line 2601
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
    .line 2573
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2574
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    #@7
    .line 2575
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2589
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2590
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@7
    .line 2591
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2613
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 2614
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@7
    .line 2615
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2449
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2450
    if-eqz p2, :cond_0

    #@5
    .line 2451
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@7
    or-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@a
    .line 2448
    :goto_0
    return-void

    #@b
    .line 2453
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
    .line 1047
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1049
    const/high16 v0, -0x1000000

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1050
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
    .line 1054
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    #@25
    .line 1046
    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1014
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@6
    .line 1011
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 848
    const v0, 0x7fffffff

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@7
    .line 847
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 894
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@4
    .line 893
    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 858
    const v0, 0x7fffffff

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    #@7
    .line 857
    return-void
.end method

.method public canOpenPopup()Z
    .locals 1

    #@0
    .prologue
    .line 2039
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
    .line 2475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected enforceNotSealed()V
    .locals 2

    #@0
    .prologue
    .line 2557
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2558
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2556
    :cond_0
    return-void
.end method

.method protected enforceSealed()V
    .locals 2

    #@0
    .prologue
    .line 2519
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2520
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2518
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
    .line 3076
    if-ne p0, p1, :cond_0

    #@4
    .line 3077
    return v7

    #@5
    .line 3079
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 3080
    return v6

    #@8
    .line 3082
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
    .line 3083
    return v6

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 3085
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    .line 3086
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@18
    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 3087
    return v6

    #@1f
    .line 3089
    :cond_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@21
    iget v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@23
    if-eq v1, v2, :cond_4

    #@25
    .line 3090
    return v6

    #@26
    .line 3092
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
    .line 1338
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1339
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1342
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    .line 1343
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
    .line 1369
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1370
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1373
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    .line 1374
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
    .line 691
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 692
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    #@6
    .line 693
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 694
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 696
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    .line 697
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move v6, p1

    #@1b
    .line 696
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
    .line 715
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 716
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    #@6
    .line 717
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 718
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 720
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    .line 721
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@1a
    move v6, p1

    #@1b
    .line 720
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
    .line 943
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 947
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
    .line 974
    const/4 v3, 0x0

    #@1
    .line 976
    .local v3, "returnValue":I
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 977
    return v3

    #@6
    .line 980
    :cond_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 981
    .local v1, "actionSize":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 982
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
    .line 983
    .local v0, "actionId":I
    const/high16 v4, 0x200000

    #@1d
    if-gt v0, v4, :cond_1

    #@1f
    .line 984
    or-int/2addr v3, v0

    #@20
    .line 981
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 988
    .end local v0    # "actionId":I
    :cond_2
    return v3
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1466
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@6
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@8
    .line 1467
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 1466
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@13
    .line 1465
    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1503
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@6
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@8
    .line 1494
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 1493
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@13
    .line 1492
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 822
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@4
    .line 823
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 824
    return-object v6

    #@9
    .line 826
    :cond_0
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@b
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 827
    return-object v6

    #@12
    .line 829
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@14
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    #@17
    move-result-wide v4

    #@18
    .line 830
    .local v4, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@1b
    move-result-object v1

    #@1c
    .line 831
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@1e
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@20
    .line 832
    const/4 v6, 0x0

    #@21
    const/4 v7, 0x4

    #@22
    .line 831
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
    .line 804
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
    .line 792
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 793
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 795
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
    .line 781
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@2
    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2112
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    #@0
    .prologue
    .line 1855
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@2
    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    #@0
    .prologue
    .line 1881
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2190
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2181
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 2424
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2425
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@b
    .line 2427
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 2389
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@2
    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 2258
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 2259
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
    .line 2310
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 2311
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
    .line 1990
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@2
    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    #@0
    .prologue
    .line 1249
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@2
    return v0
.end method

.method public getMovementGranularities()I
    .locals 1

    #@0
    .prologue
    .line 1275
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2086
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 1405
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1406
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
    .line 1415
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@2
    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    #@0
    .prologue
    .line 1904
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@2
    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    #@0
    .prologue
    .line 2486
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@2
    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2138
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 2361
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@2
    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 2352
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@2
    return v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    .line 1173
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1174
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
    .line 1112
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1113
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
    .line 2343
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    #@0
    .prologue
    .line 1386
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1387
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1388
    const/4 v1, 0x0

    #@c
    return-object v1

    #@d
    .line 1390
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v0

    #@11
    .line 1391
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
    .line 730
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 3097
    const/16 v0, 0x1f

    #@2
    .line 3099
    .local v0, "prime":I
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@4
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 3100
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
    .line 3101
    mul-int/lit8 v2, v1, 0x1f

    #@16
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@18
    add-int v1, v2, v3

    #@1a
    .line 3102
    return v1
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    #@0
    .prologue
    .line 1654
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
    .line 1529
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
    .line 1554
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
    .line 1704
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
    .line 1929
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
    .line 1953
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
    .line 2063
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
    .line 1829
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
    .line 1754
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
    .line 1579
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
    .line 1604
    const/16 v0, 0x8

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
    .line 1729
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
    .line 2016
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
    .line 1779
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
    .line 1804
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
    .line 2508
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@2
    return v0
.end method

.method public isSelected()Z
    .locals 1

    #@0
    .prologue
    .line 1679
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
    .line 1629
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
    .line 1291
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1292
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1293
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1295
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 1296
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    .line 1297
    const/4 v7, 0x0

    #@18
    move v6, p1

    #@19
    .line 1296
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
    .line 1314
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@3
    .line 1315
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1316
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1318
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 1319
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
    .line 2626
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    #@3
    .line 2627
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 2625
    return-void
.end method

.method public refresh()Z
    .locals 1

    #@0
    .prologue
    .line 772
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
    .line 747
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    #@4
    .line 748
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@6
    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 749
    return v7

    #@d
    .line 751
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@10
    move-result-object v1

    #@11
    .line 753
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@13
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@15
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    move v6, p1

    #@18
    .line 752
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1b
    move-result-object v0

    #@1c
    .line 754
    .local v0, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    #@1e
    .line 755
    return v7

    #@1f
    .line 757
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@22
    .line 758
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@25
    .line 759
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
    .line 1073
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1075
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@a
    .line 1072
    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@0
    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1095
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    if-nez p1, :cond_1

    #@9
    .line 1096
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1099
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
    .line 876
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
    .line 923
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@4
    .line 924
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@6
    .line 925
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_0

    #@8
    .line 926
    return v5

    #@9
    .line 929
    :cond_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@e
    move-result v4

    #@f
    .line 930
    .local v4, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v4, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@12
    move-result-wide v2

    #@13
    .line 931
    .local v2, "childNodeId":J
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    #@16
    move-result v1

    #@17
    .line 932
    .local v1, "index":I
    if-gez v1, :cond_2

    #@19
    .line 933
    return v5

    #@1a
    .line 929
    .end local v1    # "index":I
    .end local v2    # "childNodeId":J
    .end local v4    # "rootAccessibilityViewId":I
    :cond_1
    const v4, 0x7fffffff

    #@1d
    .restart local v4    # "rootAccessibilityViewId":I
    goto :goto_0

    #@1e
    .line 935
    .restart local v1    # "index":I
    .restart local v2    # "childNodeId":J
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    #@21
    .line 936
    const/4 v5, 0x1

    #@22
    return v5
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 1670
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1669
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1483
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1484
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
    .line 1482
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1519
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1520
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
    .line 1518
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 1
    .param p1, "opensPopup"    # Z

    #@0
    .prologue
    .line 2053
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2054
    const/16 v0, 0x2000

    #@5
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@8
    .line 2052
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    #@0
    .prologue
    .line 1545
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1544
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 1570
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1569
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2128
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2129
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@5
    .line 2127
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    #@0
    .prologue
    .line 1720
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1719
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@0
    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1871
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@5
    .line 1869
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@0
    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1895
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@5
    .line 1893
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    #@0
    .prologue
    .line 2466
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2467
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@5
    .line 2465
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2207
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@5
    .line 2205
    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 1
    .param p1, "contentInvalid"    # Z

    #@0
    .prologue
    .line 1944
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1943
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 1
    .param p1, "contextClickable"    # Z

    #@0
    .prologue
    .line 1968
    const/high16 v0, 0x20000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1967
    return-void
.end method

.method public setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    #@0
    .prologue
    .line 2077
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 2076
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    #@0
    .prologue
    .line 1845
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1844
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1770
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1769
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2171
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2172
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@5
    .line 2170
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .line 1595
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@4
    .line 1594
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 1620
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1619
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    #@0
    .prologue
    .line 2406
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2407
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@5
    .line 2405
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 1
    .param p1, "labeled"    # Landroid/view/View;

    #@0
    .prologue
    .line 2217
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    #@6
    .line 2216
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2240
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2241
    if-eqz p1, :cond_0

    #@5
    .line 2242
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 2243
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@f
    .line 2239
    return-void

    #@10
    .line 2242
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_0
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 1
    .param p1, "label"    # Landroid/view/View;

    #@0
    .prologue
    .line 2269
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    #@6
    .line 2268
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 2292
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2293
    if-eqz p1, :cond_0

    #@5
    .line 2294
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 2295
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@f
    .line 2291
    return-void

    #@10
    .line 2294
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_0
.end method

.method public setLiveRegion(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2006
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2007
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@5
    .line 2005
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    #@0
    .prologue
    .line 1745
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1744
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 1238
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1239
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@5
    .line 1237
    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 0
    .param p1, "granularities"    # I

    #@0
    .prologue
    .line 1265
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1266
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@5
    .line 1264
    return-void
.end method

.method public setMultiLine(Z)V
    .locals 1
    .param p1, "multiLine"    # Z

    #@0
    .prologue
    .line 2030
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@6
    .line 2029
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2103
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@5
    .line 2101
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 1431
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    #@6
    .line 1430
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1454
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1456
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1457
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@f
    .line 1453
    return-void

    #@10
    .line 1456
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_0
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "password"    # Z

    #@0
    .prologue
    .line 1795
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1794
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@0
    .prologue
    .line 1918
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1919
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@5
    .line 1917
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    #@0
    .prologue
    .line 1820
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1819
    return-void
.end method

.method public setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    #@0
    .prologue
    .line 2497
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    #@2
    .line 2496
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 1695
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1694
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    #@0
    .prologue
    .line 649
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@6
    .line 648
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 673
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    #@8
    move-result v1

    #@9
    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@b
    .line 675
    if-eqz p1, :cond_1

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@10
    move-result v0

    #@11
    .line 676
    .local v0, "rootAccessibilityViewId":I
    :goto_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@17
    .line 671
    return-void

    #@18
    .line 673
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v1, 0x7fffffff

    #@1b
    goto :goto_0

    #@1c
    .line 675
    :cond_1
    const v0, 0x7fffffff

    #@1f
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2154
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2155
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@5
    .line 2153
    return-void
.end method

.method public setTextSelection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2378
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2379
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@5
    .line 2380
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@7
    .line 2377
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1192
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    #@6
    .line 1191
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1216
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1217
    if-eqz p1, :cond_0

    #@5
    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1219
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@f
    .line 1215
    return-void

    #@10
    .line 1218
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_0
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1131
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    #@6
    .line 1130
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    .line 1156
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 1157
    if-eqz p1, :cond_0

    #@5
    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@8
    move-result v0

    #@9
    .line 1159
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@f
    .line 1155
    return-void

    #@10
    .line 1158
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    #@13
    .restart local v0    # "rootAccessibilityViewId":I
    goto :goto_0
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewIdResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2326
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    #@3
    .line 2327
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@5
    .line 2325
    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 1
    .param p1, "visibleToUser"    # Z

    #@0
    .prologue
    .line 1645
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    #@5
    .line 1644
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3108
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 3143
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
    .line 3144
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
    .line 3146
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
    .line 3147
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
    .line 3148
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
    .line 3149
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
    .line 3150
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
    .line 3151
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
    .line 3152
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
    .line 3154
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
    .line 3155
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
    .line 3156
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
    .line 3157
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
    .line 3158
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
    .line 3159
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
    .line 3160
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
    .line 3161
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
    .line 3162
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
    .line 3163
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
    .line 3164
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
    .line 3165
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
    .line 3167
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
    .line 2639
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
    .line 2640
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    #@e
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 2641
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    #@13
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 2642
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    #@18
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 2643
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    #@1d
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 2644
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    #@22
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@25
    .line 2645
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    #@27
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@2a
    .line 2646
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    #@2c
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@2f
    .line 2648
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    #@31
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 2650
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    #@36
    .line 2651
    .local v2, "childIds":Landroid/util/LongArray;
    if-nez v2, :cond_4

    #@38
    .line 2652
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 2661
    :cond_0
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@3d
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@3f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 2662
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@44
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@46
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 2663
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@4b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 2664
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    #@52
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@54
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 2666
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@59
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@5b
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 2667
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@60
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@62
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 2668
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@67
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@69
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 2669
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@6e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@70
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 2671
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
    .line 2692
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 2695
    :cond_2
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    #@84
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 2696
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    #@89
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 2697
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    #@8e
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 2699
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    #@93
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@96
    .line 2700
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    #@98
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@9b
    .line 2701
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    #@9d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a0
    .line 2702
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    #@a2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a5
    .line 2703
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    #@a7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@aa
    .line 2704
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    #@ac
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@af
    .line 2706
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    #@b1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 2707
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    #@b6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b9
    .line 2708
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    #@bb
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 2709
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    #@c0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 2711
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@c5
    if-eqz v6, :cond_9

    #@c7
    .line 2712
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 2713
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    #@cc
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@cf
    .line 2718
    :goto_1
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@d1
    if-eqz v6, :cond_a

    #@d3
    .line 2719
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    .line 2720
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@d8
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    #@db
    move-result v6

    #@dc
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@df
    .line 2721
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@e1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    #@e4
    move-result v6

    #@e5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@e8
    .line 2722
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@ea
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    #@ed
    move-result v6

    #@ee
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@f1
    .line 2723
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@f3
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    #@f6
    move-result v6

    #@f7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    #@fa
    .line 2728
    :goto_2
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@fc
    if-eqz v6, :cond_c

    #@fe
    .line 2729
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@101
    .line 2730
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@103
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    #@106
    move-result v6

    #@107
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10a
    .line 2731
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@10c
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    #@10f
    move-result v6

    #@110
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@113
    .line 2732
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@115
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    #@118
    move-result v6

    #@119
    if-eqz v6, :cond_b

    #@11b
    move v6, v7

    #@11c
    :goto_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11f
    .line 2733
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@121
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    #@124
    move-result v6

    #@125
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@128
    .line 2738
    :goto_4
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@12a
    if-eqz v6, :cond_f

    #@12c
    .line 2739
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    .line 2740
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@131
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    #@134
    move-result v6

    #@135
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@138
    .line 2741
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@13a
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    #@13d
    move-result v6

    #@13e
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@141
    .line 2742
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@143
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    #@146
    move-result v6

    #@147
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 2743
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@14c
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    #@14f
    move-result v6

    #@150
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@153
    .line 2744
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@155
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    #@158
    move-result v6

    #@159
    if-eqz v6, :cond_d

    #@15b
    move v6, v7

    #@15c
    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15f
    .line 2745
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@161
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    #@164
    move-result v6

    #@165
    if-eqz v6, :cond_e

    #@167
    :goto_6
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@16a
    .line 2752
    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@16d
    .line 2638
    return-void

    #@16e
    .end local v2    # "childIds":Landroid/util/LongArray;
    :cond_3
    move v6, v8

    #@16f
    .line 2639
    goto/16 :goto_0

    #@171
    .line 2654
    .restart local v2    # "childIds":Landroid/util/LongArray;
    :cond_4
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    #@174
    move-result v3

    #@175
    .line 2655
    .local v3, "childIdsSize":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@178
    .line 2656
    const/4 v5, 0x0

    #@179
    .local v5, "i":I
    :goto_8
    if-ge v5, v3, :cond_0

    #@17b
    .line 2657
    invoke-virtual {v2, v5}, Landroid/util/LongArray;->get(I)J

    #@17e
    move-result-wide v10

    #@17f
    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@182
    .line 2656
    add-int/lit8 v5, v5, 0x1

    #@184
    goto :goto_8

    #@185
    .line 2672
    .end local v3    # "childIdsSize":I
    .end local v5    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@187
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18a
    move-result v1

    #@18b
    .line 2673
    .local v1, "actionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18e
    .line 2675
    const/4 v4, 0x0

    #@18f
    .line 2676
    .local v4, "defaultLegacyStandardActions":I
    const/4 v5, 0x0

    #@190
    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v1, :cond_7

    #@192
    .line 2677
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@194
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@197
    move-result-object v0

    #@198
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@19a
    .line 2678
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@19d
    move-result v6

    #@19e
    if-eqz v6, :cond_6

    #@1a0
    .line 2679
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@1a3
    move-result v6

    #@1a4
    or-int/2addr v4, v6

    #@1a5
    .line 2676
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@1a7
    goto :goto_9

    #@1a8
    .line 2682
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ab
    .line 2684
    const/4 v5, 0x0

    #@1ac
    :goto_a
    if-ge v5, v1, :cond_2

    #@1ae
    .line 2685
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    #@1b0
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b3
    move-result-object v0

    #@1b4
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1b6
    .line 2686
    .restart local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@1b9
    move-result v6

    #@1ba
    if-nez v6, :cond_8

    #@1bc
    .line 2687
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@1bf
    move-result v6

    #@1c0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1c3
    .line 2688
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    #@1c6
    move-result-object v6

    #@1c7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@1ca
    .line 2684
    :cond_8
    add-int/lit8 v5, v5, 0x1

    #@1cc
    goto :goto_a

    #@1cd
    .line 2715
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1d0
    goto/16 :goto_1

    #@1d2
    .line 2725
    :cond_a
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5
    goto/16 :goto_2

    #@1d7
    :cond_b
    move v6, v8

    #@1d8
    .line 2732
    goto/16 :goto_3

    #@1da
    .line 2735
    :cond_c
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1dd
    goto/16 :goto_4

    #@1df
    :cond_d
    move v6, v8

    #@1e0
    .line 2744
    goto/16 :goto_5

    #@1e2
    :cond_e
    move v7, v8

    #@1e3
    .line 2745
    goto :goto_6

    #@1e4
    .line 2747
    :cond_f
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@1e7
    goto :goto_7
.end method
