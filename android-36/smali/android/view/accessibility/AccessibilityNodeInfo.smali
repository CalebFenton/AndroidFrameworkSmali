.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$Selection;,
        Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CheckedState;,
        Landroid/view/accessibility/AccessibilityNodeInfo$ExpandedState;,
        Landroid/view/accessibility/AccessibilityNodeInfo$PrefetchingStrategy;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final greylist-max-o ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN:Ljava/lang/String; = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

.field public static final whitelist ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final whitelist ACTION_ARGUMENT_DIRECTION_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

.field public static final whitelist ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final whitelist ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final whitelist ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final whitelist ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT"

.field public static final whitelist ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final whitelist ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final whitelist ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT"

.field public static final whitelist ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final blacklist ACTION_ARGUMENT_SELECTION_PARCELABLE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_SELECTION_PARCELABLE"

.field public static final whitelist ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final whitelist ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final whitelist ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final whitelist ACTION_CLEAR_FOCUS:I = 0x2

.field public static final whitelist ACTION_CLEAR_SELECTION:I = 0x8

.field public static final whitelist ACTION_CLICK:I = 0x10

.field public static final whitelist ACTION_COLLAPSE:I = 0x80000

.field public static final whitelist ACTION_COPY:I = 0x4000

.field public static final whitelist ACTION_CUT:I = 0x10000

.field public static final whitelist ACTION_DISMISS:I = 0x100000

.field public static final whitelist ACTION_EXPAND:I = 0x40000

.field public static final whitelist ACTION_FOCUS:I = 0x1

.field public static final whitelist ACTION_LONG_CLICK:I = 0x20

.field public static final whitelist ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final whitelist ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final whitelist ACTION_PASTE:I = 0x8000

.field public static final whitelist ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final whitelist ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final whitelist ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final whitelist ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final whitelist ACTION_SELECT:I = 0x4

.field public static final whitelist ACTION_SET_SELECTION:I = 0x20000

.field public static final whitelist ACTION_SET_TEXT:I = 0x200000

.field private static final blacklist BOOLEAN_PROPERTY_ACCESSIBILITY_DATA_SENSITIVE:I = 0x2000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final greylist-max-o BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final greylist-max-o BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final greylist-max-o BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final greylist-max-o BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final greylist-max-o BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final greylist-max-o BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final greylist-max-o BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final blacklist BOOLEAN_PROPERTY_FIELD_REQUIRED:I = 0x8000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final greylist-max-o BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final greylist-max-o BOOLEAN_PROPERTY_IS_HEADING:I = 0x200000

.field private static final greylist-max-o BOOLEAN_PROPERTY_IS_SHOWING_HINT:I = 0x100000

.field private static final blacklist BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY:I = 0x400000

.field private static final blacklist BOOLEAN_PROPERTY_IS_TEXT_SELECTABLE:I = 0x800000

.field private static final greylist-max-o BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final greylist-max-o BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final greylist-max-o BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final greylist-max-o BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final blacklist BOOLEAN_PROPERTY_REQUEST_INITIAL_ACCESSIBILITY_FOCUS:I = 0x1000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE:I = 0x80000

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final greylist-max-o BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final blacklist BOOLEAN_PROPERTY_SUPPORTS_GRANULAR_SCROLLING:I = 0x4000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final whitelist CHECKED_STATE_FALSE:I = 0x0

.field public static final whitelist CHECKED_STATE_PARTIAL:I = 0x2

.field public static final whitelist CHECKED_STATE_TRUE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public static final whitelist EXPANDED_STATE_COLLAPSED:I = 0x1

.field public static final whitelist EXPANDED_STATE_FULL:I = 0x3

.field public static final whitelist EXPANDED_STATE_PARTIAL:I = 0x2

.field public static final whitelist EXPANDED_STATE_UNDEFINED:I = 0x0

.field public static final whitelist EXTRA_DATA_RENDERING_INFO_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

.field public static final greylist-max-o EXTRA_DATA_REQUESTED_KEY:Ljava/lang/String; = "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH:I = 0x4e20

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_IN_WINDOW_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_IN_WINDOW_KEY"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

.field public static final whitelist FLAG_PREFETCH_ANCESTORS:I = 0x1

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_BREADTH_FIRST:I = 0x10

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_DEPTH_FIRST:I = 0x8

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_HYBRID:I = 0x4

.field public static final blacklist FLAG_PREFETCH_DESCENDANTS_MASK:I = 0x1c

.field public static final blacklist FLAG_PREFETCH_MASK:I = 0x3f

.field public static final whitelist FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final whitelist FLAG_PREFETCH_UNINTERRUPTIBLE:I = 0x20

.field public static final blacklist FLAG_REPORT_MASK:I = 0x380

.field public static final blacklist FLAG_SERVICE_IS_ACCESSIBILITY_TOOL:I = 0x200

.field public static final blacklist FLAG_SERVICE_REQUESTS_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x80

.field public static final blacklist FLAG_SERVICE_REQUESTS_REPORT_VIEW_IDS:I = 0x100

.field public static final whitelist FOCUS_ACCESSIBILITY:I = 0x2

.field public static final whitelist FOCUS_INPUT:I = 0x1

.field private static final blacklist INVALID_ACTIONS_MASK:I = -0x400000

.field public static final greylist-max-o LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field public static final blacklist LEASHED_ITEM_ID:I = 0x7ffffffd

.field public static final blacklist LEASHED_NODE_ID:J

.field public static final whitelist MAX_NUMBER_OF_PREFETCHED_NODES:I = 0x32

.field public static final whitelist MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final whitelist MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final whitelist MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final whitelist MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final whitelist MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final greylist-max-o ROOT_ITEM_ID:I = 0x7ffffffe

.field public static final greylist-max-o ROOT_NODE_ID:J

.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityNodeInfo"

.field public static final greylist-max-o UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final greylist-max-o UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final greylist-max-o UNDEFINED_NODE_ID:J

.field public static final greylist-max-o UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final greylist-max-o VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final greylist-max-o VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20


# instance fields
.field private greylist-max-o mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBooleanProperties:I

.field private final greylist-max-o mBoundsInParent:Landroid/graphics/Rect;

.field private final greylist-max-o mBoundsInScreen:Landroid/graphics/Rect;

.field private final blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private blacklist mChecked:I

.field private greylist mChildNodeIds:Landroid/util/LongArray;

.field private greylist-max-o mClassName:Ljava/lang/CharSequence;

.field private greylist-max-o mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private greylist-max-o mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private greylist-max-o mConnectionId:I

.field private blacklist mContainerTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDrawingOrderInParent:I

.field private greylist-max-o mError:Ljava/lang/CharSequence;

.field private blacklist mExpandedState:I

.field private greylist-max-o mExtraDataKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mHintText:Ljava/lang/CharSequence;

.field private greylist-max-o mInputType:I

.field private greylist-max-o mLabelForId:J

.field private greylist-max-o mLabeledById:J

.field private blacklist mLabeledByIds:Landroid/util/LongArray;

.field private blacklist mLeashedChild:Landroid/os/IBinder;

.field private blacklist mLeashedParent:Landroid/os/IBinder;

.field private blacklist mLeashedParentNodeId:J

.field private greylist-max-o mLiveRegion:I

.field private greylist-max-o mMaxTextLength:I

.field private blacklist mMinDurationBetweenContentChanges:J

.field private greylist-max-o mMovementGranularities:I

.field private greylist-max-o mOriginalText:Ljava/lang/CharSequence;

.field private greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mPaneTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mParentNodeId:J

.field private greylist-max-o mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private greylist-max-r mSealed:Z

.field private blacklist mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

.field private greylist mSourceNodeId:J

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mSupplementalDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextSelectionEnd:I

.field private greylist-max-o mTextSelectionStart:I

.field private greylist-max-o mTooltipText:Ljava/lang/CharSequence;

.field private blacklist mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

.field private greylist-max-o mTraversalAfter:J

.field private greylist-max-o mTraversalBefore:J

.field private blacklist mUniqueId:Ljava/lang/String;

.field private greylist-max-o mViewIdResourceName:Ljava/lang/String;

.field private greylist-max-o mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowId(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetActionSymbolicName(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 115
    const-string v0, "AccessibilityNodeInfo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    .line 133
    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    .line 136
    const v0, 0x7ffffffe

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    sput-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 140
    const v0, 0x7ffffffd

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    .line 1104
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8137
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1111
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1113
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 1114
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 1115
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 1117
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1118
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 1123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 1124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 1125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 1149
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1156
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 1157
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 1158
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 1159
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 1163
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 1177
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 1187
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "source"    # Landroid/view/View;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1111
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1113
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 1114
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 1115
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 1117
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1118
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 1123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 1124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 1125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 1149
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1156
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 1157
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 1158
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 1159
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 1163
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 1177
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 1195
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 1196
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1111
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1113
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 1114
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 1115
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 1117
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1118
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 1123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 1124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 1125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 1149
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1156
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 1157
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 1158
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 1159
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 1163
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 1177
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 1205
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1206
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1111
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1113
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 1114
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 1115
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 1117
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1118
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 1123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 1124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 1125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 1149
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1156
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 1157
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 1158
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 1159
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 1163
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 1177
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 1215
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1216
    return-void
.end method

.method private greylist-max-o addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1729
    if-nez p1, :cond_3

    .line 1730
    return-void

    .line 1733
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 1737
    :cond_e
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1738
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    return-void
.end method

.method private greylist-max-o addChildInternal(Landroid/view/View;IZ)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    .line 1605
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1606
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_e

    .line 1607
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1610
    :cond_e
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_18

    :cond_15
    const v0, 0x7fffffff

    .line 1611
    .local v0, "rootAccessibilityViewId":I
    :goto_18
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    .line 1612
    .local v1, "childNodeId":J
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2a

    .line 1613
    const-string v3, "AccessibilityNodeInfo"

    const-string v4, "Rejecting attempt to make a View its own child"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    return-void

    .line 1618
    :cond_2a
    if-eqz p3, :cond_35

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_35

    .line 1619
    return-void

    .line 1621
    :cond_35
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 1622
    return-void
.end method

.method private greylist-max-o addStandardActions(J)V
    .registers 9
    .param p1, "serializationIdMask"    # J

    .line 5505
    move-wide v0, p1

    .line 5506
    .local v0, "remainingIds":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 5507
    const-wide/16 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shl-long/2addr v2, v4

    .line 5508
    .local v2, "id":J
    not-long v4, v2

    and-long/2addr v0, v4

    .line 5509
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    .line 5510
    .local v4, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5511
    .end local v2    # "id":J
    .end local v4    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_1

    .line 5512
    :cond_18
    return-void
.end method

.method private static blacklist canPerformRequestOverConnection(IIJ)Z
    .registers 10
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .line 5644
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    move v3, v0

    goto :goto_8

    :cond_7
    move v3, v1

    .line 5645
    .local v3, "hasWindowId":Z
    :goto_8
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->usingDirectConnection(I)Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_1c

    .line 5646
    :cond_10
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_1c

    if-eq p0, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 5645
    :goto_1d
    return v0
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 5473
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5474
    return-void
.end method

.method private blacklist enforceValidExpandedState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 4702
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yExpansionStateApi()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4703
    packed-switch p1, :pswitch_data_24

    .line 4710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown expanded state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4708
    :pswitch_22
    return-void

    .line 4713
    :cond_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private greylist-max-o enforceValidFocusDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 4678
    sparse-switch p1, :sswitch_data_1e

    .line 4687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4685
    :sswitch_1c
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method private greylist-max-o enforceValidFocusType(I)V
    .registers 5
    .param p1, "focusType"    # I

    .line 4692
    packed-switch p1, :pswitch_data_1e

    .line 4697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4695
    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static greylist-max-r getAccessibilityViewId(J)I
    .registers 3
    .param p0, "accessibilityNodeId"    # J

    .line 1071
    long-to-int v0, p0

    return v0
.end method

.method private static greylist-max-o getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 5
    .param p0, "actionId"    # I

    .line 5481
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 5482
    .local v0, "actions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 5483
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5484
    .local v2, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_18

    .line 5485
    return-object v2

    .line 5482
    .end local v2    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5489
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 7
    .param p0, "flag"    # J

    .line 5493
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 5494
    .local v0, "actions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 5495
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5496
    .local v2, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    iget-wide v3, v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_18

    .line 5497
    return-object v2

    .line 5494
    .end local v2    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5501
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSymbolicName(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 5521
    sparse-switch p0, :sswitch_data_98

    .line 5605
    const v0, 0x1020058

    if-ne p0, v0, :cond_86

    .line 5606
    const-string v0, "ACTION_SHOW_TEXT_SUGGESTIONS"

    return-object v0

    .line 5601
    :sswitch_b
    const-string v0, "ACTION_CANCEL_DRAG"

    return-object v0

    .line 5603
    :sswitch_e
    const-string v0, "ACTION_DROP"

    return-object v0

    .line 5599
    :sswitch_11
    const-string v0, "ACTION_DRAG"

    return-object v0

    .line 5597
    :sswitch_14
    const-string v0, "ACTION_IME_ENTER"

    return-object v0

    .line 5595
    :sswitch_17
    const-string v0, "ACTION_PRESS_AND_HOLD"

    return-object v0

    .line 5585
    :sswitch_1a
    const-string v0, "ACTION_PAGE_RIGHT"

    return-object v0

    .line 5583
    :sswitch_1d
    const-string v0, "ACTION_PAGE_LEFT"

    return-object v0

    .line 5579
    :sswitch_20
    const-string v0, "ACTION_PAGE_DOWN"

    return-object v0

    .line 5581
    :sswitch_23
    const-string v0, "ACTION_PAGE_UP"

    return-object v0

    .line 5593
    :sswitch_26
    const-string v0, "ACTION_HIDE_TOOLTIP"

    return-object v0

    .line 5591
    :sswitch_29
    const-string v0, "ACTION_SHOW_TOOLTIP"

    return-object v0

    .line 5587
    :sswitch_2c
    const-string v0, "ACTION_SET_PROGRESS"

    return-object v0

    .line 5589
    :sswitch_2f
    const-string v0, "ACTION_CONTEXT_CLICK"

    return-object v0

    .line 5577
    :sswitch_32
    const-string v0, "ACTION_SCROLL_RIGHT"

    return-object v0

    .line 5575
    :sswitch_35
    const-string v0, "ACTION_SCROLL_DOWN"

    return-object v0

    .line 5573
    :sswitch_38
    const-string v0, "ACTION_SCROLL_LEFT"

    return-object v0

    .line 5571
    :sswitch_3b
    const-string v0, "ACTION_SCROLL_UP"

    return-object v0

    .line 5569
    :sswitch_3e
    const-string v0, "ACTION_SCROLL_TO_POSITION"

    return-object v0

    .line 5567
    :sswitch_41
    const-string v0, "ACTION_SHOW_ON_SCREEN"

    return-object v0

    .line 5565
    :sswitch_44
    const-string v0, "ACTION_SET_TEXT"

    return-object v0

    .line 5563
    :sswitch_47
    const-string v0, "ACTION_DISMISS"

    return-object v0

    .line 5561
    :sswitch_4a
    const-string v0, "ACTION_COLLAPSE"

    return-object v0

    .line 5559
    :sswitch_4d
    const-string v0, "ACTION_EXPAND"

    return-object v0

    .line 5557
    :sswitch_50
    const-string v0, "ACTION_SET_SELECTION"

    return-object v0

    .line 5551
    :sswitch_53
    const-string v0, "ACTION_CUT"

    return-object v0

    .line 5555
    :sswitch_56
    const-string v0, "ACTION_PASTE"

    return-object v0

    .line 5553
    :sswitch_59
    const-string v0, "ACTION_COPY"

    return-object v0

    .line 5549
    :sswitch_5c
    const-string v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    .line 5547
    :sswitch_5f
    const-string v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    .line 5545
    :sswitch_62
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    .line 5543
    :sswitch_65
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    .line 5541
    :sswitch_68
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 5539
    :sswitch_6b
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 5537
    :sswitch_6e
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 5535
    :sswitch_71
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 5533
    :sswitch_74
    const-string v0, "ACTION_LONG_CLICK"

    return-object v0

    .line 5531
    :sswitch_77
    const-string v0, "ACTION_CLICK"

    return-object v0

    .line 5529
    :sswitch_7a
    const-string v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    .line 5527
    :sswitch_7d
    const-string v0, "ACTION_SELECT"

    return-object v0

    .line 5525
    :sswitch_80
    const-string v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    .line 5523
    :sswitch_83
    const-string v0, "ACTION_FOCUS"

    return-object v0

    .line 5608
    :cond_86
    const v0, 0x102005e

    if-ne p0, v0, :cond_8e

    .line 5609
    const-string v0, "ACTION_SCROLL_IN_DIRECTION"

    return-object v0

    .line 5611
    :cond_8e
    sget v0, Lcom/android/internal/R$id;->accessibilityActionSetExtendedSelection:I

    if-ne p0, v0, :cond_95

    .line 5612
    const-string v0, "ACTION_SET_EXTENDED_SELECTION"

    return-object v0

    .line 5614
    :cond_95
    const-string v0, "ACTION_UNKNOWN"

    return-object v0

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_83
        0x2 -> :sswitch_80
        0x4 -> :sswitch_7d
        0x8 -> :sswitch_7a
        0x10 -> :sswitch_77
        0x20 -> :sswitch_74
        0x40 -> :sswitch_71
        0x80 -> :sswitch_6e
        0x100 -> :sswitch_6b
        0x200 -> :sswitch_68
        0x400 -> :sswitch_65
        0x800 -> :sswitch_62
        0x1000 -> :sswitch_5f
        0x2000 -> :sswitch_5c
        0x4000 -> :sswitch_59
        0x8000 -> :sswitch_56
        0x10000 -> :sswitch_53
        0x20000 -> :sswitch_50
        0x40000 -> :sswitch_4d
        0x80000 -> :sswitch_4a
        0x100000 -> :sswitch_47
        0x200000 -> :sswitch_44
        0x1020036 -> :sswitch_41
        0x1020037 -> :sswitch_3e
        0x1020038 -> :sswitch_3b
        0x1020039 -> :sswitch_38
        0x102003a -> :sswitch_35
        0x102003b -> :sswitch_32
        0x102003c -> :sswitch_2f
        0x102003d -> :sswitch_2c
        0x1020044 -> :sswitch_29
        0x1020045 -> :sswitch_26
        0x1020046 -> :sswitch_23
        0x1020047 -> :sswitch_20
        0x1020048 -> :sswitch_1d
        0x1020049 -> :sswitch_1a
        0x102004a -> :sswitch_17
        0x1020054 -> :sswitch_14
        0x1020055 -> :sswitch_11
        0x1020056 -> :sswitch_e
        0x1020057 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .line 4399
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "granularity"    # I

    .line 5626
    sparse-switch p0, :sswitch_data_2c

    .line 5638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5636
    :sswitch_1c
    const-string v0, "MOVEMENT_GRANULARITY_PAGE"

    return-object v0

    .line 5634
    :sswitch_1f
    const-string v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object v0

    .line 5632
    :sswitch_22
    const-string v0, "MOVEMENT_GRANULARITY_LINE"

    return-object v0

    .line 5630
    :sswitch_25
    const-string v0, "MOVEMENT_GRANULARITY_WORD"

    return-object v0

    .line 5628
    :sswitch_28
    const-string v0, "MOVEMENT_GRANULARITY_CHARACTER"

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_25
        0x4 -> :sswitch_22
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityId"    # J

    .line 5761
    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 14
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityId"    # J
    .param p4, "prefetchingStrategy"    # I

    .line 5768
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5769
    const/4 v0, 0x0

    return-object v0

    .line 5771
    :cond_8
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 5772
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v7, p4

    .end local p0    # "connectionId":I
    .end local p1    # "windowId":I
    .end local p2    # "accessibilityId":J
    .end local p4    # "prefetchingStrategy":I
    .local v2, "connectionId":I
    .local v3, "windowId":I
    .local v4, "accessibilityId":J
    .local v7, "prefetchingStrategy":I
    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getNodeForAccessibilityId(ILandroid/os/IBinder;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .param p0, "connectionId"    # I
    .param p1, "leashToken"    # Landroid/os/IBinder;
    .param p2, "accessibilityId"    # J

    .line 5778
    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 14
    .param p0, "connectionId"    # I
    .param p1, "leashToken"    # Landroid/os/IBinder;
    .param p2, "accessibilityId"    # J
    .param p4, "prefetchingStrategy"    # I

    .line 5786
    if-eqz p1, :cond_27

    .line 5787
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_22

    const/4 v0, -0x1

    if-ne p0, v0, :cond_13

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    goto :goto_2b

    .line 5791
    :cond_13
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 5792
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    .end local p0    # "connectionId":I
    .end local p1    # "leashToken":Landroid/os/IBinder;
    .end local p2    # "accessibilityId":J
    .end local p4    # "prefetchingStrategy":I
    .local v2, "connectionId":I
    .local v3, "leashToken":Landroid/os/IBinder;
    .local v4, "accessibilityId":J
    .local v7, "prefetchingStrategy":I
    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 5787
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local v2    # "connectionId":I
    .end local v3    # "leashToken":Landroid/os/IBinder;
    .end local v4    # "accessibilityId":J
    .end local v7    # "prefetchingStrategy":I
    .restart local p0    # "connectionId":I
    .restart local p1    # "leashToken":Landroid/os/IBinder;
    .restart local p2    # "accessibilityId":J
    .restart local p4    # "prefetchingStrategy":I
    :cond_22
    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    .end local p0    # "connectionId":I
    .end local p1    # "leashToken":Landroid/os/IBinder;
    .end local p2    # "accessibilityId":J
    .end local p4    # "prefetchingStrategy":I
    .restart local v2    # "connectionId":I
    .restart local v3    # "leashToken":Landroid/os/IBinder;
    .restart local v4    # "accessibilityId":J
    .restart local v7    # "prefetchingStrategy":I
    goto :goto_2b

    .line 5786
    .end local v2    # "connectionId":I
    .end local v3    # "leashToken":Landroid/os/IBinder;
    .end local v4    # "accessibilityId":J
    .end local v7    # "prefetchingStrategy":I
    .restart local p0    # "connectionId":I
    .restart local p1    # "leashToken":Landroid/os/IBinder;
    .restart local p2    # "accessibilityId":J
    .restart local p4    # "prefetchingStrategy":I
    :cond_27
    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    .line 5789
    .end local p0    # "connectionId":I
    .end local p1    # "leashToken":Landroid/os/IBinder;
    .end local p2    # "accessibilityId":J
    .end local p4    # "prefetchingStrategy":I
    .restart local v2    # "connectionId":I
    .restart local v3    # "leashToken":Landroid/os/IBinder;
    .restart local v4    # "accessibilityId":J
    .restart local v7    # "prefetchingStrategy":I
    :goto_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist-max-r getVirtualDescendantId(J)I
    .registers 5
    .param p0, "accessibilityNodeId"    # J

    .line 1085
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static greylist-max-o idItemToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "item"    # I

    .line 5806
    sparse-switch p0, :sswitch_data_20

    .line 5810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5808
    :sswitch_17
    const-string v0, "UNDEFINED"

    return-object v0

    .line 5807
    :sswitch_1a
    const-string v0, "ROOT"

    return-object v0

    .line 5809
    :sswitch_1d
    const-string v0, "HOST"

    return-object v0

    :sswitch_data_20
    .sparse-switch
        -0x1 -> :sswitch_1d
        0x7ffffffe -> :sswitch_1a
        0x7fffffff -> :sswitch_17
    .end sparse-switch
.end method

.method public static greylist-max-o idToString(J)Ljava/lang/String;
    .registers 6
    .param p0, "accessibilityId"    # J

    .line 5798
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 5799
    .local v0, "accessibilityViewId":I
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 5800
    .local v1, "virtualDescendantId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 5801
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 5802
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5800
    :goto_2f
    return-object v2
.end method

.method private greylist-max-o init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5178
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 5179
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 5180
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 5181
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 5182
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 5183
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    .line 5184
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 5185
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 5186
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 5187
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 5188
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 5189
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 5190
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5191
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5192
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5193
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 5194
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 5195
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 5196
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 5197
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 5198
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 5199
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 5200
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 5201
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    .line 5202
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 5203
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 5204
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    .line 5205
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 5207
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5208
    :cond_82
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 5209
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9f

    .line 5210
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_98

    .line 5211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    goto :goto_9f

    .line 5213
    :cond_98
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5217
    :cond_9f
    :goto_9f
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 5218
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 5219
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 5222
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clear()V

    .line 5223
    :cond_b4
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 5224
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_ce

    .line 5225
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_c9

    .line 5226
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_ce

    .line 5228
    :cond_c9
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 5232
    :cond_ce
    :goto_ce
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 5233
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 5234
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 5235
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 5236
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 5238
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 5240
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_f3

    new-instance v2, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_f4

    :cond_f3
    move-object v2, v3

    :goto_f4
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 5242
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5244
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 5245
    .local v2, "otherInfo":Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    if-eqz v2, :cond_108

    .line 5246
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$fgetmTargetMap(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Landroid/util/ArrayMap;Z)V

    goto :goto_109

    :cond_108
    nop

    :goto_109
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 5248
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 5249
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 5250
    iget-wide v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 5251
    iget v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    .line 5252
    iget v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    .line 5253
    return-void
.end method

.method private blacklist initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5256
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 5257
    .local v0, "ri":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_1c

    .line 5258
    :cond_7
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmType(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I

    move-result v3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmMin(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v4

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmMax(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v5

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmCurrent(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    :goto_1c
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 5259
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5260
    .local v2, "ci":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    if-nez v2, :cond_24

    move-object v3, v1

    goto :goto_41

    .line 5261
    :cond_24
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v5

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z

    move-result v6

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v7

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v9

    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    :goto_41
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5264
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 5265
    .local v3, "cii":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    invoke-direct {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;-><init>()V

    .line 5266
    .local v4, "builder":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    if-nez v3, :cond_4e

    move-object v5, v1

    goto :goto_92

    .line 5270
    :cond_4e
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 5267
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;

    move-result-object v6

    .line 5268
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    .line 5269
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setHeading(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    .line 5270
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setSelected(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    :goto_92
    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 5271
    iget-object v5, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 5272
    .local v5, "ti":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    if-nez v5, :cond_9a

    move-object v6, v1

    goto :goto_9f

    .line 5273
    :cond_9a
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v6, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V

    :goto_9f
    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 5275
    invoke-static {}, Landroid/view/accessibility/Flags;->a11ySelectionApi()Z

    move-result v6

    if-eqz v6, :cond_de

    .line 5276
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    move-result-object v6

    if-eqz v6, :cond_de

    .line 5277
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v6

    .line 5278
    .local v6, "sps":Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v7

    .line 5279
    .local v7, "spe":Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)J

    move-result-wide v10

    .line 5281
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v12

    invoke-direct {v9, v10, v11, v12, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JILandroid/view/accessibility/AccessibilityNodeInfo-IA;)V

    new-instance v10, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)J

    move-result-wide v11

    .line 5282
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v13

    invoke-direct {v10, v11, v12, v13, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JILandroid/view/accessibility/AccessibilityNodeInfo-IA;)V

    invoke-direct {v8, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V

    iput-object v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 5285
    .end local v6    # "sps":Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .end local v7    # "spe":Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    :cond_de
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5295
    .local v2, "nonDefaultFields":J
    const/4 v4, 0x0

    .line 5296
    .local v4, "fieldIndex":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "fieldIndex":I
    .local v5, "fieldIndex":I
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1d

    .line 5297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_1b

    move v4, v7

    goto :goto_21

    :cond_1b
    move v4, v6

    goto :goto_21

    .line 5298
    :cond_1d
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-boolean v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    :goto_21
    nop

    .line 5299
    .local v4, "sealed":Z
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v8, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 5300
    :cond_30
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 5301
    :cond_3e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 5302
    :cond_4c
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 5303
    :cond_5a
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 5304
    :cond_68
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_90

    .line 5305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 5306
    .local v8, "labeledByIdsSize":I
    if-gtz v8, :cond_7a

    .line 5307
    iput-object v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    goto :goto_90

    .line 5309
    :cond_7a
    new-instance v10, Landroid/util/LongArray;

    invoke-direct {v10, v8}, Landroid/util/LongArray;-><init>(I)V

    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    .line 5310
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_82
    if-ge v10, v8, :cond_90

    .line 5311
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 5312
    .local v11, "labeledById":J
    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 5310
    .end local v11    # "labeledById":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 5316
    .end local v8    # "labeledByIdsSize":I
    .end local v10    # "i":I
    :cond_90
    :goto_90
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v8, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 5317
    :cond_9e
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_ac

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 5318
    :cond_ac
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 5319
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 5322
    :cond_ba
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_c8

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 5324
    :cond_c8
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 5325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5326
    .local v5, "childrenSize":I
    if-gtz v5, :cond_d9

    .line 5327
    iput-object v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_ef

    .line 5329
    :cond_d9
    new-instance v10, Landroid/util/LongArray;

    invoke-direct {v10, v5}, Landroid/util/LongArray;-><init>(I)V

    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 5330
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_e1
    if-ge v10, v5, :cond_ef

    .line 5331
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 5332
    .local v11, "childId":J
    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 5330
    .end local v11    # "childId":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_e1

    .line 5337
    .end local v5    # "childrenSize":I
    .end local v10    # "i":I
    :cond_ef
    :goto_ef
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .local v5, "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_117

    .line 5338
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 5339
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5340
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 5341
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 5344
    :cond_117
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 5345
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 5346
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 5347
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 5348
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 5351
    :cond_13f
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_167

    .line 5352
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 5353
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5354
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 5355
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 5358
    :cond_167
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 5359
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 5360
    .local v10, "standardActions":J
    invoke-direct {v0, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    .line 5361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5362
    .local v5, "nonStandardActionCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17b
    if-ge v12, v5, :cond_18b

    .line 5363
    sget-object v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5364
    invoke-interface {v13, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5365
    .local v13, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-direct {v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5362
    .end local v13    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    add-int/lit8 v12, v12, 0x1

    goto :goto_17b

    .line 5369
    .end local v5    # "nonStandardActionCount":I
    .end local v10    # "standardActions":J
    .end local v12    # "i":I
    :cond_18b
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .local v5, "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_199

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 5370
    :cond_199
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 5371
    :cond_1a7
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1b5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 5373
    :cond_1b5
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1c3

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 5374
    :cond_1c3
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1d1

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 5375
    :cond_1d1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1df

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 5376
    :cond_1df
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1ed

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 5377
    :cond_1ed
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1fb

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 5378
    :cond_1fb
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_209

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 5379
    :cond_209
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_217

    .line 5380
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 5382
    :cond_217
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_225

    .line 5383
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    .line 5385
    :cond_225
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_233

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 5386
    :cond_233
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_241

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 5387
    :cond_241
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_24f

    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    .line 5388
    :cond_24f
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_25d

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 5389
    :cond_25d
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_26b

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 5391
    :cond_26b
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_279

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 5392
    :cond_279
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_287

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 5394
    :cond_287
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_295

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 5395
    :cond_295
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2a3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 5396
    :cond_2a3
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_2b1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 5398
    :cond_2b1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2be

    .line 5399
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2bf

    .line 5400
    :cond_2be
    move-object v5, v9

    :goto_2bf
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 5402
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_2ce

    .line 5403
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_2cf

    .line 5404
    :cond_2ce
    move-object v8, v9

    :goto_2cf
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 5406
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2ef

    .line 5407
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 5408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 5409
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 5410
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 5411
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    goto :goto_2f0

    .line 5412
    :cond_2ef
    move-object v5, v9

    :goto_2f0
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 5414
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_31d

    .line 5415
    new-instance v10, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 5417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 5418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_30c

    move v13, v7

    goto :goto_30d

    :cond_30c
    move v13, v6

    .line 5419
    :goto_30d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 5420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 5421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-direct/range {v10 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    goto :goto_31e

    .line 5422
    :cond_31d
    move-object v10, v9

    :goto_31e
    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5424
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_35c

    .line 5425
    new-instance v10, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 5426
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 5428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 5429
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 5431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 5432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_34b

    move/from16 v17, v7

    goto :goto_34d

    :cond_34b
    move/from16 v17, v6

    .line 5433
    :goto_34d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_356

    move/from16 v18, v7

    goto :goto_358

    :cond_356
    move/from16 v18, v6

    :goto_358
    invoke-direct/range {v10 .. v18}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    goto :goto_35d

    .line 5434
    :cond_35c
    move-object v10, v9

    :goto_35d
    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 5436
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_371

    .line 5437
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 5440
    :cond_371
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v6, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_39d

    .line 5441
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v5, v9, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 5442
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmLayoutSize(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)V

    .line 5443
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeInPx(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)V

    .line 5444
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeUnit(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)V

    .line 5447
    :cond_39d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_3ab

    .line 5448
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 5450
    :cond_3ab
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_3b9

    .line 5451
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 5453
    :cond_3b9
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_3c7

    .line 5454
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 5456
    :cond_3c7
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_3d9

    .line 5457
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 5459
    :cond_3d9
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_3e7

    .line 5460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    .line 5462
    :cond_3e7
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_3f5

    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    .line 5466
    :cond_3f5
    iput-boolean v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 5467
    return-void
.end method

.method private static greylist-max-o isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 5
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5477
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static greylist-max-o makeNodeId(II)J
    .registers 6
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    .line 1101
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4772
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "source"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4742
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4760
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4786
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private blacklist replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3680
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 3681
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 3682
    .local v0, "clickableSpans":[Landroid/text/style/ClickableSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3683
    .local v1, "spannable":Landroid/text/Spannable;
    array-length v2, v0

    if-nez v2, :cond_19

    .line 3684
    return-object p1

    .line 3686
    :cond_19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_57

    .line 3687
    aget-object v3, v0, v2

    .line 3688
    .local v3, "span":Landroid/text/style/ClickableSpan;
    instance-of v4, v3, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v4, :cond_57

    instance-of v4, v3, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v4, :cond_28

    .line 3691
    goto :goto_57

    .line 3693
    :cond_28
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3694
    .local v4, "spanToReplaceStart":I
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3695
    .local v5, "spanToReplaceEnd":I
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 3696
    .local v6, "spanToReplaceFlags":I
    if-gez v4, :cond_37

    .line 3697
    goto :goto_54

    .line 3699
    :cond_37
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3700
    instance-of v7, v3, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_47

    .line 3701
    new-instance v7, Landroid/text/style/AccessibilityURLSpan;

    move-object v8, v3

    check-cast v8, Landroid/text/style/URLSpan;

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    goto :goto_50

    .line 3702
    :cond_47
    new-instance v7, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v3}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    :goto_50
    nop

    .line 3703
    .local v7, "replacementSpan":Landroid/text/style/ClickableSpan;
    invoke-interface {v1, v7, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3686
    .end local v3    # "span":Landroid/text/style/ClickableSpan;
    .end local v4    # "spanToReplaceStart":I
    .end local v5    # "spanToReplaceEnd":I
    .end local v6    # "spanToReplaceFlags":I
    .end local v7    # "replacementSpan":Landroid/text/style/ClickableSpan;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 3706
    .end local v2    # "i":I
    :cond_57
    :goto_57
    return-object v1
.end method

.method private blacklist replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3717
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 3718
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 3719
    .local v0, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3720
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    array-length v2, v0

    if-nez v2, :cond_19

    .line 3721
    return-object p1

    .line 3723
    :cond_19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_48

    .line 3724
    aget-object v3, v0, v2

    .line 3725
    .local v3, "span":Landroid/text/style/ReplacementSpan;
    invoke-virtual {v3}, Landroid/text/style/ReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 3726
    .local v4, "replacementText":Ljava/lang/CharSequence;
    instance-of v5, v3, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v5, :cond_28

    .line 3728
    goto :goto_48

    .line 3730
    :cond_28
    if-nez v4, :cond_2b

    .line 3731
    goto :goto_45

    .line 3733
    :cond_2b
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3734
    .local v5, "spanToReplaceStart":I
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3735
    .local v6, "spanToReplaceEnd":I
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 3736
    .local v7, "spanToReplaceFlags":I
    if-gez v5, :cond_3a

    .line 3737
    goto :goto_45

    .line 3739
    :cond_3a
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 3740
    new-instance v8, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v8, v4}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    .line 3741
    .local v8, "replacementSpan":Landroid/text/style/ReplacementSpan;
    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3723
    .end local v3    # "span":Landroid/text/style/ReplacementSpan;
    .end local v4    # "replacementText":Ljava/lang/CharSequence;
    .end local v5    # "spanToReplaceStart":I
    .end local v6    # "spanToReplaceEnd":I
    .end local v7    # "spanToReplaceFlags":I
    .end local v8    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 3744
    .end local v2    # "i":I
    :cond_48
    :goto_48
    return-object v1
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 4411
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4412
    if-eqz p2, :cond_b

    .line 4413
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_11

    .line 4415
    :cond_b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 4417
    :goto_11
    return-void
.end method

.method private static blacklist usingDirectConnection(I)Z
    .registers 2
    .param p0, "connectionId"    # I

    .line 4658
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    instance-of v0, v0, Landroid/view/accessibility/DirectAccessibilityConnection;

    return v0
.end method


# virtual methods
.method public whitelist addAction(I)V
    .registers 5
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1760
    const/high16 v0, -0x400000

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    .line 1765
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    .line 1766
    return-void

    .line 1761
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 2
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1723
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1725
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1726
    return-void
.end method

.method public blacklist addChild(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1508
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1509
    if-nez p1, :cond_6

    .line 1510
    return-void

    .line 1512
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_11

    .line 1513
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1516
    :cond_11
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 1519
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 1520
    return-void

    .line 1522
    :cond_1e
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 1523
    return-void
.end method

.method public whitelist addChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1485
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1486
    return-void
.end method

.method public whitelist addChild(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1601
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1602
    return-void
.end method

.method public greylist-max-o addChildUnchecked(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1532
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1533
    return-void
.end method

.method public whitelist addLabeledBy(Landroid/view/View;)V
    .registers 3
    .param p1, "label"    # Landroid/view/View;

    .line 4013
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLabeledBy(Landroid/view/View;I)V

    .line 4014
    return-void
.end method

.method public whitelist addLabeledBy(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 4045
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4046
    const-string v0, "%s must not be null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    if-nez v0, :cond_17

    .line 4048
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    .line 4050
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 4051
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 4052
    return-void
.end method

.method public whitelist canOpenPopup()Z
    .registers 2

    .line 3368
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4448
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o enforceNotSealed()V
    .registers 3

    .line 4723
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4727
    return-void

    .line 4724
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o enforceSealed()V
    .registers 3

    .line 4671
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->usingDirectConnection(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 4672
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4675
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 5652
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 5653
    return v0

    .line 5655
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 5656
    return v1

    .line 5658
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 5659
    return v1

    .line 5661
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5662
    .local v2, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v5, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    .line 5663
    return v1

    .line 5665
    :cond_1f
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v4, :cond_26

    .line 5666
    return v1

    .line 5668
    :cond_26
    return v0
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2180
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2181
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2184
    :cond_14
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2185
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v6, "text":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2213
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2214
    if-nez p1, :cond_12

    .line 2215
    const-string v0, "AccessibilityNodeInfo"

    const-string/jumbo v1, "returns empty list due to null viewId."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2218
    :cond_12
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2221
    :cond_23
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2222
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    .end local p1    # "viewId":Ljava/lang/String;
    .local v6, "viewId":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "focus"    # I

    .line 1280
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1281
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    .line 1282
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1283
    const/4 v0, 0x0

    return-object v0

    .line 1285
    :cond_14
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .end local p1    # "focus":I
    .local v6, "focus":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "direction"    # I

    .line 1312
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1313
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    .line 1314
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1315
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :cond_14
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .end local p1    # "direction":I
    .local v6, "direction":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActions()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1682
    const/4 v0, 0x0

    .line 1684
    .local v0, "returnValue":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 1685
    return v0

    .line 1688
    :cond_6
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1689
    .local v1, "actionSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_23

    .line 1690
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    .line 1691
    .local v3, "actionId":I
    const/high16 v4, 0x200000

    if-gt v3, v4, :cond_20

    .line 1692
    or-int/2addr v0, v3

    .line 1689
    .end local v3    # "actionId":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1696
    .end local v2    # "i":I
    :cond_23
    return v0
.end method

.method public whitelist getAvailableExtraData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1956
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1957
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_b
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2366
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2368
    return-void
.end method

.method public greylist-max-o getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    .line 2416
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 2406
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2408
    return-void
.end method

.method public blacklist getBoundsInWindow()Landroid/graphics/Rect;
    .registers 2

    .line 2456
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getBoundsInWindow(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 2445
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2447
    return-void
.end method

.method public whitelist getChecked()I
    .registers 2

    .line 2556
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    return v0
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "index"    # I

    .line 1434
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 19
    .param p1, "index"    # I
    .param p2, "prefetchingStrategy"    # I

    .line 1453
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1454
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1455
    return-object v2

    .line 1457
    :cond_b
    iget v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1458
    return-object v2

    .line 1460
    :cond_18
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    .line 1461
    .local v6, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    .line 1462
    .local v3, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eqz v1, :cond_3e

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_3e

    .line 1463
    iget v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    sget-wide v11, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v14, p2

    move-object v8, v3

    .end local v3    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .local v8, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-virtual/range {v8 .. v15}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .end local v8    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local v3    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    return-object v1

    .line 1467
    :cond_3e
    iget v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 1421
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o getChildId(I)J
    .registers 4
    .param p1, "index"    # I

    .line 1409
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_b

    .line 1412
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 1410
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getChildNodeIds()Landroid/util/LongArray;
    .registers 2

    .line 1398
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 3583
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 2

    .line 3153
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public whitelist getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 2

    .line 3179
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public greylist-max-o getConnectionId()I
    .registers 2

    .line 4440
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return v0
.end method

.method public whitelist getContainerTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 4538
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 3814
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDrawingOrder()I
    .registers 2

    .line 3127
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public whitelist getError()Ljava/lang/CharSequence;
    .registers 2

    .line 3796
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExpandedState()I
    .registers 2

    .line 2078
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    return v0
.end method

.method public whitelist getExtraRenderingInfo()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .registers 2

    .line 3231
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 4341
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 4342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 4344
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 3753
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 4306
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public whitelist getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3993
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 3994
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4190
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 4191
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLabeledByList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 4062
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 4063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4064
    .local v0, "labels":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    if-nez v1, :cond_d

    .line 4065
    return-object v0

    .line 4067
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 4068
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    invoke-virtual {v4, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4067
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4070
    .end local v1    # "i":I
    :cond_2a
    return-object v0
.end method

.method public blacklist getLeashedParent()Landroid/os/IBinder;
    .registers 2

    .line 4562
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getLeashedParentNodeId()J
    .registers 3

    .line 4572
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-wide v0
.end method

.method public whitelist getLiveRegion()I
    .registers 2

    .line 3319
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .registers 2

    .line 2011
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public whitelist getMinDurationBetweenContentChanges()Ljava/time/Duration;
    .registers 3

    .line 2111
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMovementGranularities()I
    .registers 2

    .line 2037
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public greylist-max-o getOriginalText()Ljava/lang/CharSequence;
    .registers 2

    .line 3644
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 3557
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPaneTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 3112
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6

    .line 2251
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2252
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 2253
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2256
    :cond_1b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParent(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .param p1, "prefetchingStrategy"    # I

    .line 2288
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2289
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 2290
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2293
    :cond_1a
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getParentNodeId()J
    .registers 3

    .line 2303
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public whitelist getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 2

    .line 3202
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public blacklist getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    .registers 3

    .line 2720
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    if-eqz v0, :cond_30

    .line 2721
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V

    .line 2722
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V

    .line 2723
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V

    .line 2724
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V

    .line 2726
    :cond_30
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-object v0
.end method

.method public greylist getSourceNodeId()J
    .registers 3

    .line 4475
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 3805
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSupplementalDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 3836
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 6

    .line 3623
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3f

    .line 3624
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 3625
    .local v0, "spanned":Landroid/text/Spanned;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3626
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AccessibilityClickableSpan;

    .line 3627
    .local v1, "clickableSpans":[Landroid/text/style/AccessibilityClickableSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v4, v1

    if-ge v2, v4, :cond_25

    .line 3628
    aget-object v4, v1, v2

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3627
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 3630
    .end local v2    # "i":I
    :cond_25
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3631
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Landroid/text/style/AccessibilityURLSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AccessibilityURLSpan;

    .line 3632
    .local v2, "urlSpans":[Landroid/text/style/AccessibilityURLSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    array-length v4, v2

    if-ge v3, v4, :cond_3f

    .line 3633
    aget-object v4, v2, v3

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityURLSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3632
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3636
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "clickableSpans":[Landroid/text/style/AccessibilityClickableSpan;
    .end local v2    # "urlSpans":[Landroid/text/style/AccessibilityURLSpan;
    .end local v3    # "i":I
    :cond_3f
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .registers 3

    .line 4262
    invoke-static {}, Landroid/view/accessibility/Flags;->a11ySelectionApi()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4263
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    move-result-object v0

    .line 4264
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    if-eqz v0, :cond_29

    .line 4265
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4266
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4267
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v1

    return v1

    .line 4269
    :cond_29
    const/4 v1, -0x1

    return v1

    .line 4271
    .end local v0    # "current":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    :cond_2b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .registers 3

    .line 4238
    invoke-static {}, Landroid/view/accessibility/Flags;->a11ySelectionApi()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4239
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSelection()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    move-result-object v0

    .line 4240
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    if-eqz v0, :cond_29

    .line 4241
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4242
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->-$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4243
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v1

    return v1

    .line 4245
    :cond_29
    const/4 v1, -0x1

    return v1

    .line 4247
    .end local v0    # "current":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    :cond_2b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public whitelist getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 3911
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .registers 3

    .line 4366
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz v0, :cond_12

    .line 4367
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 4368
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 4370
    :cond_12
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public whitelist getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .line 1895
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1896
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .line 1834
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1835
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 4497
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViewIdResourceName()Ljava/lang/String;
    .registers 2

    .line 4223
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 2234
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2235
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2236
    const/4 v0, 0x0

    return-object v0

    .line 2238
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 2239
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getWindowId()I
    .registers 2

    .line 1327
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public greylist-max-o hasExtras()Z
    .registers 2

    .line 4352
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist hasRequestInitialAccessibilityFocus()Z
    .registers 2

    .line 3009
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 5673
    const/16 v0, 0x1f

    .line 5674
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 5675
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 5676
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 5677
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int/2addr v2, v3

    .line 5678
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist isAccessibilityDataSensitive()Z
    .registers 2

    .line 3067
    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .registers 2

    .line 2768
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCheckable()Z
    .registers 2

    .line 2482
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isChecked()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2512
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isClickable()Z
    .registers 2

    .line 2821
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContentInvalid()Z
    .registers 2

    .line 3258
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContextClickable()Z
    .registers 2

    .line 3282
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDismissable()Z
    .registers 2

    .line 3392
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEditable()Z
    .registers 2

    .line 3041
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 2871
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFieldRequired()Z
    .registers 2

    .line 2606
    const/high16 v0, 0x8000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocusable()Z
    .registers 2

    .line 2631
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .registers 2

    .line 2661
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isGranularScrollingSupported()Z
    .registers 2

    .line 2948
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHeading()Z
    .registers 4

    .line 3507
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 3508
    :cond_a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 3509
    .local v0, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    if-eqz v0, :cond_17

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public whitelist isImportantForAccessibility()Z
    .registers 2

    .line 3418
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLongClickable()Z
    .registers 2

    .line 2846
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiLine()Z
    .registers 2

    .line 3345
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .registers 2

    .line 2896
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenReaderFocusable()Z
    .registers 2

    .line 3449
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .registers 2

    .line 2921
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist isSealed()Z
    .registers 2

    .line 4654
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2

    .line 2796
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isShowingHintText()Z
    .registers 2

    .line 3479
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextEntryKey()Z
    .registers 2

    .line 3533
    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextSelectable()Z
    .registers 2

    .line 2984
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVisibleToUser()Z
    .registers 2

    .line 2741
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performAction(I)Z
    .registers 10
    .param p1, "action"    # I

    .line 2127
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2128
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2129
    const/4 v0, 0x0

    return v0

    .line 2131
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2132
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    const/4 v0, 0x0

    .line 2133
    .local v0, "arguments":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_1e

    .line 2134
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    move-object v7, v0

    goto :goto_1f

    .line 2133
    :cond_1e
    move-object v7, v0

    .line 2136
    .end local v0    # "arguments":Landroid/os/Bundle;
    .local v7, "arguments":Landroid/os/Bundle;
    :goto_1f
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .end local p1    # "action":I
    .local v6, "action":I
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist performAction(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2154
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2155
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2156
    const/4 v0, 0x0

    return v0

    .line 2158
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2159
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    move-object v7, p2

    .end local p1    # "action":I
    .end local p2    # "arguments":Landroid/os/Bundle;
    .local v6, "action":I
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4796
    return-void
.end method

.method public whitelist refresh()Z
    .registers 3

    .line 1361
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r refresh(Landroid/os/Bundle;Z)Z
    .registers 13
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "bypassCache"    # Z

    .line 1340
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1341
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1342
    return v1

    .line 1344
    :cond_11
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 1345
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    const/4 v8, 0x0

    move-object v9, p1

    move v7, p2

    .end local p1    # "arguments":Landroid/os/Bundle;
    .end local p2    # "bypassCache":Z
    .local v7, "bypassCache":Z
    .local v9, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 1347
    .local p1, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez p1, :cond_25

    .line 1348
    return v1

    .line 1350
    :cond_25
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1351
    const/4 p2, 0x1

    return p2
.end method

.method public whitelist refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "extraDataKey"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1382
    const/4 v0, -0x1

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x4e20

    if-le v0, v2, :cond_e

    .line 1384
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1388
    :cond_e
    const-string v0, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAction(I)V
    .registers 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1786
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1787
    return-void
.end method

.method public whitelist removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1804
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1806
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    if-nez p1, :cond_a

    goto :goto_11

    .line 1810
    :cond_a
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1807
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o removeAllActions()V
    .registers 2

    .line 1819
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1820
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1822
    :cond_9
    return-void
.end method

.method public blacklist removeChild(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1569
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1570
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 1573
    :cond_d
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1574
    return v1

    .line 1576
    :cond_16
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    .line 1577
    .local v0, "index":I
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 1578
    if-gez v0, :cond_24

    .line 1579
    return v1

    .line 1581
    :cond_24
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->remove(I)V

    .line 1582
    const/4 v1, 0x1

    return v1

    .line 1571
    .end local v0    # "index":I
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist removeChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1550
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeChild(Landroid/view/View;I)Z
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1635
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1636
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1637
    .local v0, "childIds":Landroid/util/LongArray;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 1638
    return v1

    .line 1641
    :cond_9
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_13

    :cond_10
    const v2, 0x7fffffff

    .line 1642
    .local v2, "rootAccessibilityViewId":I
    :goto_13
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v3

    .line 1643
    .local v3, "childNodeId":J
    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->indexOf(J)I

    move-result v5

    .line 1644
    .local v5, "index":I
    if-gez v5, :cond_1e

    .line 1645
    return v1

    .line 1647
    :cond_1e
    invoke-virtual {v0, v5}, Landroid/util/LongArray;->remove(I)V

    .line 1648
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist removeLabeledBy(Landroid/view/View;)Z
    .registers 3
    .param p1, "label"    # Landroid/view/View;

    .line 4088
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeLabeledBy(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeLabeledBy(Landroid/view/View;I)Z
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 4105
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4106
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    .line 4107
    .local v0, "labeledByIds":Landroid/util/LongArray;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 4108
    return v1

    .line 4111
    :cond_9
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_13

    :cond_10
    const v2, 0x7fffffff

    .line 4112
    .local v2, "rootAccessibilityViewId":I
    :goto_13
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v3

    .line 4113
    .local v3, "labeledById":J
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_21

    .line 4114
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 4116
    :cond_21
    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->indexOf(J)I

    move-result v5

    .line 4117
    .local v5, "index":I
    if-gez v5, :cond_28

    .line 4118
    return v1

    .line 4120
    :cond_28
    invoke-virtual {v0, v5}, Landroid/util/LongArray;->remove(I)V

    .line 4121
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setAccessibilityDataSensitive(Z)V
    .registers 3
    .param p1, "accessibilityDataSensitive"    # Z

    .line 3084
    const/high16 v0, 0x2000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3086
    return-void
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 2787
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2788
    return-void
.end method

.method public whitelist setAvailableExtraData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1980
    .local p1, "extraDataKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 1982
    return-void
.end method

.method public whitelist setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2390
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2391
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2392
    return-void
.end method

.method public whitelist setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2432
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2433
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2434
    return-void
.end method

.method public whitelist setBoundsInWindow(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2472
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2473
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2474
    return-void
.end method

.method public whitelist setCanOpenPopup(Z)V
    .registers 3
    .param p1, "opensPopup"    # Z

    .line 3382
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3383
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3384
    return-void
.end method

.method public whitelist setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .line 2498
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2499
    return-void
.end method

.method public whitelist setChecked(I)V
    .registers 5
    .param p1, "checked"    # I

    .line 2585
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2586
    packed-switch p1, :pswitch_data_2c

    .line 2593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown checked argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2590
    :pswitch_1f
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    .line 2591
    nop

    .line 2595
    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2596
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public whitelist setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2533
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2534
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2535
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    .line 2537
    :cond_c
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 3599
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3600
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 3601
    return-void
.end method

.method public whitelist setClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .line 2837
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2838
    return-void
.end method

.method public whitelist setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .registers 2
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3168
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3169
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3170
    return-void
.end method

.method public whitelist setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .registers 2
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3192
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3193
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3194
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 4428
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4429
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 4430
    return-void
.end method

.method public whitelist setContainerTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "containerTitle"    # Ljava/lang/CharSequence;

    .line 4526
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4527
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 4528
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    .line 4529
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 3870
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3871
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 3872
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 3873
    return-void
.end method

.method public whitelist setContentInvalid(Z)V
    .registers 3
    .param p1, "contentInvalid"    # Z

    .line 3273
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3274
    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .registers 3
    .param p1, "contextClickable"    # Z

    .line 3297
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3298
    return-void
.end method

.method public whitelist setDismissable(Z)V
    .registers 3
    .param p1, "dismissable"    # Z

    .line 3406
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3407
    return-void
.end method

.method public whitelist setDrawingOrder(I)V
    .registers 2
    .param p1, "drawingOrderInParent"    # I

    .line 3142
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3143
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 3144
    return-void
.end method

.method public whitelist setEditable(Z)V
    .registers 3
    .param p1, "editable"    # Z

    .line 3057
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3058
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2887
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2888
    return-void
.end method

.method public whitelist setError(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 3786
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3787
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 3788
    return-void
.end method

.method public whitelist setExpandedState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 2060
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidExpandedState(I)V

    .line 2061
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2062
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    .line 2063
    return-void
.end method

.method public blacklist setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .registers 2
    .param p1, "extraRenderingInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 3247
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3248
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 3249
    return-void
.end method

.method public whitelist setFieldRequired(Z)V
    .registers 3
    .param p1, "required"    # Z

    .line 2621
    const/high16 v0, 0x8000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2622
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .line 2649
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2650
    return-void
.end method

.method public whitelist setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 2677
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2678
    return-void
.end method

.method public whitelist setGranularScrollingSupported(Z)V
    .registers 3
    .param p1, "granularScrollingSupported"    # Z

    .line 2967
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2969
    return-void
.end method

.method public whitelist setHeading(Z)V
    .registers 3
    .param p1, "isHeading"    # Z

    .line 3524
    const/high16 v0, 0x200000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3525
    return-void
.end method

.method public whitelist setHintText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 3769
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3770
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 3771
    return-void
.end method

.method public whitelist setImportantForAccessibility(Z)V
    .registers 3
    .param p1, "important"    # Z

    .line 3433
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3434
    return-void
.end method

.method public whitelist setInputType(I)V
    .registers 2
    .param p1, "inputType"    # I

    .line 4323
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4324
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 4325
    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;)V
    .registers 3
    .param p1, "labeled"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3945
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    .line 3946
    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3974
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3975
    if-eqz p1, :cond_a

    .line 3976
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_d

    :cond_a
    const v0, 0x7fffffff

    .line 3977
    .local v0, "rootAccessibilityViewId":I
    :goto_d
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 3978
    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;)V
    .registers 3
    .param p1, "label"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4135
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    .line 4136
    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4163
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4164
    if-eqz p1, :cond_a

    .line 4165
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_d

    :cond_a
    const v0, 0x7fffffff

    .line 4166
    .local v0, "rootAccessibilityViewId":I
    :goto_d
    invoke-static {}, Landroid/view/accessibility/Flags;->supportMultipleLabeledby()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4167
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    if-nez v1, :cond_1f

    .line 4168
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    goto :goto_24

    .line 4170
    :cond_1f
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clear()V

    .line 4173
    :cond_24
    :goto_24
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 4174
    invoke-static {}, Landroid/view/accessibility/Flags;->supportMultipleLabeledby()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4175
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 4177
    :cond_37
    return-void
.end method

.method public blacklist setLeashedParent(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I

    .line 4550
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4551
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 4552
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 4553
    return-void
.end method

.method public whitelist setLiveRegion(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 3335
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3336
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 3337
    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .registers 3
    .param p1, "longClickable"    # Z

    .line 2862
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2863
    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .registers 2
    .param p1, "max"    # I

    .line 2000
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2001
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 2002
    return-void
.end method

.method public whitelist setMinDurationBetweenContentChanges(Ljava/time/Duration;)V
    .registers 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 2102
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2103
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 2104
    return-void
.end method

.method public whitelist setMovementGranularities(I)V
    .registers 2
    .param p1, "granularities"    # I

    .line 2027
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2028
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 2029
    return-void
.end method

.method public whitelist setMultiLine(Z)V
    .registers 3
    .param p1, "multiLine"    # Z

    .line 3359
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3360
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 3573
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3574
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 3575
    return-void
.end method

.method public whitelist setPaneTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "paneTitle"    # Ljava/lang/CharSequence;

    .line 3100
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3101
    if-nez p1, :cond_7

    .line 3102
    const/4 v0, 0x0

    goto :goto_10

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 3103
    return-void
.end method

.method public whitelist setParent(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .line 2319
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 2320
    return-void
.end method

.method public whitelist setParent(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 2342
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2344
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_d

    :cond_a
    const v0, 0x7fffffff

    .line 2345
    .local v0, "rootAccessibilityViewId":I
    :goto_d
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 2346
    return-void
.end method

.method public whitelist setPassword(Z)V
    .registers 3
    .param p1, "password"    # Z

    .line 2912
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2913
    return-void
.end method

.method public whitelist setQueryFromAppProcessEnabled(Landroid/view/View;Z)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 4614
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4616
    const/4 v0, -0x1

    if-nez p2, :cond_a

    .line 4617
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 4618
    return-void

    .line 4621
    :cond_a
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v1, v0, :cond_f

    .line 4622
    return-void

    .line 4625
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4626
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1d

    .line 4630
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getDirectAccessibilityConnectionId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 4631
    return-void

    .line 4627
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot link a node to a view that is not attached to a window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .registers 2
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 3216
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3217
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 3218
    return-void
.end method

.method public whitelist setRequestInitialAccessibilityFocus(Z)V
    .registers 3
    .param p1, "requestInitialAccessibilityFocus"    # Z

    .line 3031
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3033
    return-void
.end method

.method public whitelist setScreenReaderFocusable(Z)V
    .registers 3
    .param p1, "screenReaderFocusable"    # Z

    .line 3468
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3469
    return-void
.end method

.method public whitelist setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .line 2937
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2938
    return-void
.end method

.method public greylist setSealed(Z)V
    .registers 2
    .param p1, "sealed"    # Z

    .line 4642
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 4643
    return-void
.end method

.method public whitelist setSelected(Z)V
    .registers 3
    .param p1, "selected"    # Z

    .line 2812
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2813
    return-void
.end method

.method public blacklist setSelection(Landroid/view/accessibility/AccessibilityNodeInfo$Selection;)V
    .registers 2
    .param p1, "selection"    # Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 2702
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2703
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 2704
    return-void
.end method

.method public whitelist setShowingHintText(Z)V
    .registers 3
    .param p1, "showingHintText"    # Z

    .line 3495
    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3496
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .line 1229
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1230
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1252
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1253
    const v0, 0x7fffffff

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1255
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1256
    .local v0, "rootAccessibilityViewId":I
    :cond_16
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1257
    return-void
.end method

.method public greylist-max-o setSourceNodeId(JI)V
    .registers 4
    .param p1, "sourceId"    # J
    .param p3, "windowId"    # I

    .line 4460
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4461
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4462
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 4463
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 3852
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3853
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 3854
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 3855
    return-void
.end method

.method public whitelist setSupplementalDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "supplementalDescription"    # Ljava/lang/CharSequence;

    .line 3899
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3900
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 3901
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    .line 3902
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3660
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3661
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 3662
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_15

    .line 3663
    move-object v0, p1

    .line 3664
    .local v0, "tmpText":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3665
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3666
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3667
    return-void

    .line 3669
    .end local v0    # "tmpText":Ljava/lang/CharSequence;
    :cond_15
    if-nez p1, :cond_19

    const/4 v0, 0x0

    goto :goto_22

    :cond_19
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3670
    return-void
.end method

.method public whitelist setTextEntryKey(Z)V
    .registers 3
    .param p1, "isTextEntryKey"    # Z

    .line 3548
    const/high16 v0, 0x400000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3549
    return-void
.end method

.method public whitelist setTextSelectable(Z)V
    .registers 3
    .param p1, "selectableText"    # Z

    .line 3000
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 3001
    return-void
.end method

.method public whitelist setTextSelection(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 4288
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4289
    invoke-static {}, Landroid/view/accessibility/Flags;->a11ySelectionApi()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4290
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-direct {v1, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-direct {v2, p0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V

    .line 4293
    .local v0, "selection":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo$Selection;)V

    .line 4294
    return-void

    .line 4296
    .end local v0    # "selection":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    :cond_1c
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 4297
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 4298
    return-void
.end method

.method public whitelist setTooltipText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 3927
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3928
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 3929
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 3930
    return-void
.end method

.method public whitelist setTouchDelegateInfo(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)V
    .registers 2
    .param p1, "delegatedInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 4388
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4389
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 4390
    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1914
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 1915
    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1938
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1939
    if-eqz p1, :cond_a

    .line 1940
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_d

    :cond_a
    const v0, 0x7fffffff

    .line 1941
    .local v0, "rootAccessibilityViewId":I
    :goto_d
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1942
    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1853
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1854
    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1878
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1879
    if-eqz p1, :cond_a

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_d

    :cond_a
    const v0, 0x7fffffff

    .line 1881
    .local v0, "rootAccessibilityViewId":I
    :goto_d
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1882
    return-void
.end method

.method public whitelist setUniqueId(Ljava/lang/String;)V
    .registers 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 4486
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4487
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 4488
    return-void
.end method

.method public whitelist setViewIdResourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewIdResName"    # Ljava/lang/String;

    .line 4206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 4207
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 4208
    return-void
.end method

.method public whitelist setVisibleToUser(Z)V
    .registers 3
    .param p1, "visibleToUser"    # Z

    .line 2757
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2758
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 5683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5684
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5686
    sget-boolean v1, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v1, :cond_e3

    .line 5687
    const-string v1, "; sourceNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5688
    const-string v1, "; windowId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    const-string v1, "; accessibilityViewId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 5690
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5691
    const-string v1, "; virtualDescendantId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 5692
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5693
    const-string v1, "; mParentNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5694
    const-string v1, "; traversalBefore: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5695
    const-string v1, "; traversalAfter: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5696
    const-string v1, "; minDurationBetweenContentChanges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    .line 5697
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5699
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 5700
    .local v1, "granularities":I
    const-string v2, "; MovementGranularities: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5701
    :goto_96
    const-string v2, ", "

    if-eqz v1, :cond_b0

    .line 5702
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 5703
    .local v3, "granularity":I
    not-int v4, v3

    and-int/2addr v1, v4

    .line 5704
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularitySymbolicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5705
    if-eqz v1, :cond_af

    .line 5706
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5708
    .end local v3    # "granularity":I
    :cond_af
    goto :goto_96

    .line 5709
    :cond_b0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    const-string v4, "; childAccessibilityIds: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5712
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 5713
    .local v4, "childIds":Landroid/util/LongArray;
    if-eqz v4, :cond_e0

    .line 5714
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v6

    .local v6, "count":I
    :goto_c3
    if-ge v5, v6, :cond_e0

    .line 5715
    const-string v7, "0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5716
    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_dd

    .line 5717
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5714
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    .line 5721
    .end local v5    # "i":I
    .end local v6    # "count":I
    :cond_e0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5724
    .end local v1    # "granularities":I
    .end local v4    # "childIds":Landroid/util/LongArray;
    :cond_e3
    const-string v1, "; boundsInParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5725
    const-string v1, "; boundsInScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5726
    const-string v1, "; boundsInWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5728
    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5729
    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5730
    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5731
    const-string v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5732
    const-string v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5733
    const-string v1, "; stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5734
    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5735
    const-string v1, "; tooltipText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5736
    const-string v1, "; containerTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5737
    const-string v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5738
    const-string v1, "; uniqueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5739
    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5740
    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5741
    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5742
    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5743
    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5744
    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5745
    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5746
    const-string v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5747
    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5748
    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5749
    const-string v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5750
    const-string v1, "; granularScrollingSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isGranularScrollingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5751
    const-string v1, "; importantForAccessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5752
    const-string v1, "; visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5753
    const-string v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5754
    const-string v1, "; isTextSelectable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isTextSelectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4807
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcelNoRecycle(Landroid/os/Parcel;I)V

    .line 4810
    return-void
.end method

.method public blacklist writeToParcelNoRecycle(Landroid/os/Parcel;I)V
    .registers 15
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4816
    const-wide/16 v0, 0x0

    .line 4817
    .local v0, "nonDefaultFields":J
    const/4 v2, 0x0

    .line 4818
    .local v2, "fieldIndex":I
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v3

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v4

    if-eq v3, v4, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4819
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 4820
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4821
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 4822
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v4, :cond_34

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4823
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 4824
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_45

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4825
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 4826
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_56

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4827
    :cond_56
    add-int/lit8 v2, v2, 0x1

    .line 4828
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_67

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4829
    :cond_67
    add-int/lit8 v2, v2, 0x1

    .line 4830
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    invoke-static {v3, v4}, Landroid/util/LongArray;->elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 4831
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4833
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    .line 4834
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4835
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    .line 4836
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4837
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    .line 4838
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_ad

    .line 4840
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4842
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    .line 4843
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v3, v4, :cond_bc

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4844
    :cond_bc
    add-int/lit8 v2, v2, 0x1

    .line 4845
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-static {v3, v4}, Landroid/util/LongArray;->elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z

    move-result v3

    if-nez v3, :cond_cf

    .line 4846
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4848
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    .line 4849
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e2

    .line 4850
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4852
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    .line 4853
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f5

    .line 4854
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4856
    :cond_f5
    add-int/lit8 v2, v2, 0x1

    .line 4857
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 4858
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4860
    :cond_108
    add-int/lit8 v2, v2, 0x1

    .line 4862
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4863
    :cond_11b
    add-int/lit8 v2, v2, 0x1

    .line 4864
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    if-eq v3, v4, :cond_12a

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4865
    :cond_12a
    add-int/lit8 v2, v2, 0x1

    .line 4866
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    if-eq v3, v4, :cond_139

    .line 4867
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4869
    :cond_139
    add-int/lit8 v2, v2, 0x1

    .line 4870
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    if-eq v3, v4, :cond_148

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4871
    :cond_148
    add-int/lit8 v2, v2, 0x1

    .line 4872
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15b

    .line 4873
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4875
    :cond_15b
    add-int/lit8 v2, v2, 0x1

    .line 4876
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16e

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4877
    :cond_16e
    add-int/lit8 v2, v2, 0x1

    .line 4878
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_181

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4879
    :cond_181
    add-int/lit8 v2, v2, 0x1

    .line 4880
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_194

    .line 4881
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4883
    :cond_194
    add-int/lit8 v2, v2, 0x1

    .line 4884
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a7

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4885
    :cond_1a7
    add-int/lit8 v2, v2, 0x1

    .line 4886
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ba

    .line 4887
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4889
    :cond_1ba
    add-int/lit8 v2, v2, 0x1

    .line 4890
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cd

    .line 4891
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4893
    :cond_1cd
    add-int/lit8 v2, v2, 0x1

    .line 4894
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e0

    .line 4895
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4897
    :cond_1e0
    add-int/lit8 v2, v2, 0x1

    .line 4898
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 4899
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4901
    :cond_1f3
    add-int/lit8 v2, v2, 0x1

    .line 4902
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_206

    .line 4903
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4905
    :cond_206
    add-int/lit8 v2, v2, 0x1

    .line 4906
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    .line 4907
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4909
    :cond_219
    add-int/lit8 v2, v2, 0x1

    .line 4910
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22c

    .line 4911
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4913
    :cond_22c
    add-int/lit8 v2, v2, 0x1

    .line 4914
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23f

    .line 4915
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4917
    :cond_23f
    add-int/lit8 v2, v2, 0x1

    .line 4918
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    if-eq v3, v4, :cond_24e

    .line 4919
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4921
    :cond_24e
    add-int/lit8 v2, v2, 0x1

    .line 4922
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    if-eq v3, v4, :cond_25d

    .line 4923
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4925
    :cond_25d
    add-int/lit8 v2, v2, 0x1

    .line 4926
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    if-eq v3, v4, :cond_26c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4927
    :cond_26c
    add-int/lit8 v2, v2, 0x1

    .line 4928
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    if-eq v3, v4, :cond_27b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4929
    :cond_27b
    add-int/lit8 v2, v2, 0x1

    .line 4930
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    if-eq v3, v4, :cond_28a

    .line 4931
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4933
    :cond_28a
    add-int/lit8 v2, v2, 0x1

    .line 4934
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29d

    .line 4935
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4937
    :cond_29d
    add-int/lit8 v2, v2, 0x1

    .line 4938
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b0

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4939
    :cond_2b0
    add-int/lit8 v2, v2, 0x1

    .line 4940
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c3

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4941
    :cond_2c3
    add-int/lit8 v2, v2, 0x1

    .line 4942
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d6

    .line 4943
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4945
    :cond_2d6
    add-int/lit8 v2, v2, 0x1

    .line 4946
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e9

    .line 4947
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4949
    :cond_2e9
    add-int/lit8 v2, v2, 0x1

    .line 4950
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2fc

    .line 4951
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4953
    :cond_2fc
    add-int/lit8 v2, v2, 0x1

    .line 4954
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30f

    .line 4955
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4957
    :cond_30f
    add-int/lit8 v2, v2, 0x1

    .line 4958
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eq v3, v4, :cond_31e

    .line 4959
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4961
    :cond_31e
    add-int/lit8 v2, v2, 0x1

    .line 4962
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eq v3, v4, :cond_32d

    .line 4963
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4965
    :cond_32d
    add-int/lit8 v2, v2, 0x1

    .line 4966
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33e

    .line 4967
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4969
    :cond_33e
    add-int/lit8 v2, v2, 0x1

    .line 4970
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_351

    .line 4971
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4973
    :cond_351
    add-int/lit8 v2, v2, 0x1

    .line 4974
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    if-eq v3, v4, :cond_360

    .line 4975
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4977
    :cond_360
    add-int/lit8 v2, v2, 0x1

    .line 4978
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    if-eq v3, v4, :cond_36f

    .line 4979
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 4982
    :cond_36f
    move v3, v2

    .line 4983
    .local v3, "totalFields":I
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4985
    const/4 v2, 0x0

    .line 4986
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v4, "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_383

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4987
    :cond_383
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_390

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 4988
    :cond_390
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_39d

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4989
    :cond_39d
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3aa

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 4990
    :cond_3aa
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_3b7

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 4991
    :cond_3b7
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3c4

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 4992
    :cond_3c4
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3e9

    .line 4993
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledByIds:Landroid/util/LongArray;

    .line 4994
    .local v2, "labeledByIds":Landroid/util/LongArray;
    if-nez v2, :cond_3d5

    .line 4995
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e9

    .line 4997
    :cond_3d5
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v6

    .line 4998
    .local v6, "labeledByIdsSize":I
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4999
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3dd
    if-ge v7, v6, :cond_3e9

    .line 5000
    invoke-virtual {v2, v7}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 4999
    add-int/lit8 v7, v7, 0x1

    goto :goto_3dd

    .line 5004
    .end local v2    # "labeledByIds":Landroid/util/LongArray;
    .end local v6    # "labeledByIdsSize":I
    .end local v7    # "i":I
    :cond_3e9
    :goto_3e9
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .local v2, "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3f6

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5005
    :cond_3f6
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_403

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5006
    :cond_403
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_410

    .line 5007
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5010
    :cond_410
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_41d

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5012
    :cond_41d
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_441

    .line 5013
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 5014
    .local v4, "childIds":Landroid/util/LongArray;
    if-nez v4, :cond_42d

    .line 5015
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_441

    .line 5017
    :cond_42d
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v6

    .line 5018
    .local v6, "childIdsSize":I
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5019
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_435
    if-ge v7, v6, :cond_441

    .line 5020
    invoke-virtual {v4, v7}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 5019
    add-int/lit8 v7, v7, 0x1

    goto :goto_435

    .line 5025
    .end local v4    # "childIds":Landroid/util/LongArray;
    .end local v6    # "childIdsSize":I
    .end local v7    # "i":I
    :cond_441
    :goto_441
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v4, "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_465

    .line 5026
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5027
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5028
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5029
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5032
    :cond_465
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_489

    .line 5033
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5034
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5035
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5036
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5039
    :cond_489
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4ad

    .line 5040
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5041
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5043
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5046
    :cond_4ad
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_50a

    .line 5047
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v4, :cond_502

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_502

    .line 5048
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5050
    .local v4, "actionCount":I
    const/4 v5, 0x0

    .line 5051
    .local v5, "nonStandardActionCount":I
    const-wide/16 v6, 0x0

    .line 5052
    .local v6, "defaultStandardActions":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4cb
    if-ge v8, v4, :cond_4e4

    .line 5053
    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5054
    .local v9, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-eqz v10, :cond_4df

    .line 5055
    iget-wide v10, v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    or-long/2addr v6, v10

    goto :goto_4e1

    .line 5057
    :cond_4df
    add-int/lit8 v5, v5, 0x1

    .line 5052
    .end local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :goto_4e1
    add-int/lit8 v8, v8, 0x1

    goto :goto_4cb

    .line 5060
    .end local v8    # "i":I
    :cond_4e4
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5062
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5063
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4eb
    if-ge v8, v4, :cond_501

    .line 5064
    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5065
    .restart local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-nez v10, :cond_4fe

    .line 5066
    invoke-virtual {v9, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5063
    .end local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_4fe
    add-int/lit8 v8, v8, 0x1

    goto :goto_4eb

    .line 5069
    .end local v4    # "actionCount":I
    .end local v5    # "nonStandardActionCount":I
    .end local v6    # "defaultStandardActions":J
    .end local v8    # "i":I
    :cond_501
    goto :goto_50a

    .line 5070
    :cond_502
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5071
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5075
    :cond_50a
    :goto_50a
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v4, "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_517

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5076
    :cond_517
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_524

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5077
    :cond_524
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_531

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5079
    :cond_531
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_53e

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5080
    :cond_53e
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_54b

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5081
    :cond_54b
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_558

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5082
    :cond_558
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_565

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5083
    :cond_565
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_572

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5084
    :cond_572
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_57f

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5085
    :cond_57f
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_58c

    .line 5086
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5088
    :cond_58c
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_599

    .line 5089
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSupplementalDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5091
    :cond_599
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5a6

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5092
    :cond_5a6
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5b3

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5093
    :cond_5b3
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5c0

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5095
    :cond_5c0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5cd

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5096
    :cond_5cd
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5da

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5097
    :cond_5da
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5e7

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5098
    :cond_5e7
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5f4

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5099
    :cond_5f4
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_601

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5100
    :cond_601
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_60e

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5101
    :cond_60e
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_61b

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5103
    :cond_61b
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_628

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5105
    :cond_628
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_635

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5107
    :cond_635
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_661

    .line 5108
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5109
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5110
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5111
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5114
    :cond_661
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_69f

    .line 5115
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5116
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5117
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5118
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5119
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getItemCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5120
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getImportantForAccessibilityItemCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5123
    :cond_69f
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_6ef

    .line 5124
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5125
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5126
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5127
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5128
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5129
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5130
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5131
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5134
    :cond_6ef
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_6fc

    .line 5135
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v2, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5138
    :cond_6fc
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_71f

    .line 5139
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getLayoutSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 5140
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeInPx()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5141
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeUnit()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5144
    :cond_71f
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_72c

    .line 5145
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5147
    :cond_72c
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_739

    .line 5148
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5150
    :cond_739
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_746

    .line 5151
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 5153
    :cond_746
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_753

    .line 5154
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {v4, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5156
    :cond_753
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_760

    .line 5157
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChecked:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5159
    :cond_760
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_76d

    .line 5160
    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExpandedState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5163
    :cond_76d
    sget-boolean v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v4, :cond_799

    .line 5164
    add-int/lit8 v2, v2, -0x1

    .line 5165
    if-ne v3, v2, :cond_776

    goto :goto_799

    .line 5166
    :cond_776
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of fields mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5170
    :cond_799
    :goto_799
    return-void
.end method
