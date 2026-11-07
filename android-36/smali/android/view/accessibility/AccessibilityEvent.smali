.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityEvent$EventType;,
        Landroid/view/accessibility/AccessibilityEvent$SpeechStateChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$ContentChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$WindowsChangeTypes;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_CHANGE_TYPE_CHECKED:I = 0x2000

.field public static final whitelist CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final whitelist CONTENT_CHANGE_TYPE_CONTENT_INVALID:I = 0x400

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_CANCELLED:I = 0x200

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_DROPPED:I = 0x100

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_STARTED:I = 0x80

.field public static final whitelist CONTENT_CHANGE_TYPE_ENABLED:I = 0x1000

.field public static final whitelist CONTENT_CHANGE_TYPE_ERROR:I = 0x800

.field public static final whitelist CONTENT_CHANGE_TYPE_EXPANDED:I = 0x4000

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_APPEARED:I = 0x10

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_DISAPPEARED:I = 0x20

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_TITLE:I = 0x8

.field public static final whitelist CONTENT_CHANGE_TYPE_STATE_DESCRIPTION:I = 0x40

.field public static final whitelist CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final whitelist CONTENT_CHANGE_TYPE_SUPPLEMENTAL_DESCRIPTION:I = 0x8000

.field public static final whitelist CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final whitelist CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o DEBUG_ORIGIN:Z = false

.field public static final whitelist INVALID_POSITION:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AccessibilityEvent"

.field public static final whitelist MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SPEECH_STATE_LISTENING_END:I = 0x8

.field public static final whitelist SPEECH_STATE_LISTENING_START:I = 0x4

.field public static final whitelist SPEECH_STATE_SPEAKING_END:I = 0x2

.field public static final whitelist SPEECH_STATE_SPEAKING_START:I = 0x1

.field public static final whitelist TYPES_ALL_MASK:I = -0x1

.field public static final whitelist TYPE_ANNOUNCEMENT:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final whitelist TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final whitelist TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final whitelist TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final whitelist TYPE_SPEECH_STATE_CHANGE:I = 0x2000000

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final whitelist TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final whitelist TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final whitelist TYPE_VIEW_CLICKED:I = 0x1

.field public static final whitelist TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final whitelist TYPE_VIEW_FOCUSED:I = 0x8

.field public static final whitelist TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final whitelist TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final whitelist TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final whitelist TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final whitelist TYPE_VIEW_SELECTED:I = 0x4

.field public static final whitelist TYPE_VIEW_TARGETED_BY_SCROLL:I = 0x4000000

.field public static final whitelist TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final whitelist TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final whitelist TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final whitelist TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final whitelist TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final whitelist TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED:I = 0x80

.field public static final whitelist WINDOWS_CHANGE_ACTIVE:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ADDED:I = 0x1

.field public static final whitelist WINDOWS_CHANGE_BOUNDS:I = 0x8

.field public static final whitelist WINDOWS_CHANGE_CHILDREN:I = 0x200

.field public static final whitelist WINDOWS_CHANGE_FOCUSED:I = 0x40

.field public static final whitelist WINDOWS_CHANGE_LAYER:I = 0x10

.field public static final whitelist WINDOWS_CHANGE_PARENT:I = 0x100

.field public static final whitelist WINDOWS_CHANGE_PIP:I = 0x400

.field public static final whitelist WINDOWS_CHANGE_REMOVED:I = 0x2

.field public static final whitelist WINDOWS_CHANGE_TITLE:I = 0x4


# instance fields
.field greylist-max-p mAction:I

.field greylist-max-o mContentChangeTypes:I

.field private greylist-max-o mEventTime:J

.field private greylist mEventType:I

.field greylist-max-o mMovementGranularity:I

.field private greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSpeechStateChangeTypes:I

.field greylist-max-o mWindowChangeTypes:I

.field public greylist-max-o originStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public static synthetic blacklist $r8$lambda$bDpQ3VsVX0uCtXxOVtmj_ZNvG4A(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleWindowChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pNltjfSOiK09zGxmdNCOQHn-WME(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleSpeechStateChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vm7Ok5WaRv7iy3dODsTmiTCFU9k(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleContentChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 435
    const-string v0, "AccessibilityEvent"

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
    sput-boolean v0, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    .line 1906
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1078
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1080
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "eventType"    # I

    .line 1088
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1089
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1091
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1099
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1100
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1101
    return-void
.end method

.method private static greylist-max-o contentChangeTypesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "types"    # I

    .line 1222
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist eventTypeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "eventType"    # I

    .line 1840
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 1841
    const-string v0, "TYPES_ALL_MASK"

    return-object v0

    .line 1843
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1844
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1845
    .local v1, "eventTypeCount":I
    :goto_c
    const/4 v2, 0x1

    if-eqz p0, :cond_28

    .line 1846
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 1847
    .local v2, "eventTypeFlag":I
    not-int v3, v2

    and-int/2addr p0, v3

    .line 1849
    if-lez v1, :cond_1d

    .line 1850
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    :cond_1d
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->singleEventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    nop

    .end local v2    # "eventTypeFlag":I
    add-int/lit8 v1, v1, 0x1

    .line 1855
    goto :goto_c

    .line 1856
    :cond_28
    if-le v1, v2, :cond_35

    .line 1857
    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1858
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1860
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityEvent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1606
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2
    .param p0, "eventType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1575
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1576
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1577
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1592
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1593
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1594
    return-object v0
.end method

.method public static blacklist obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;
    .registers 5
    .param p0, "displayId"    # I
    .param p1, "windowId"    # I
    .param p2, "windowChangeTypes"    # I

    .line 1557
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 1558
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    .line 1559
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1560
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowChanges(I)V

    .line 1561
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 1562
    return-object v0
.end method

.method private greylist-max-o readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .registers 6
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 1701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1706
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1707
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1708
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1709
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1710
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1712
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 1713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 1714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_94

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    iput-boolean v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1715
    return-void
.end method

.method private static greylist-max-o singleContentChangeTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1226
    sparse-switch p0, :sswitch_data_5a

    .line 1246
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1247
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_3a

    .line 1248
    const-string v0, "CONTENT_CHANGE_TYPE_CHECKED"

    return-object v0

    .line 1244
    :sswitch_10
    const-string v0, "CONTENT_CHANGE_TYPE_ENABLED"

    return-object v0

    .line 1243
    :sswitch_13
    const-string v0, "CONTENT_CHANGE_TYPE_ERROR"

    return-object v0

    .line 1242
    :sswitch_16
    const-string v0, "CONTENT_CHANGE_TYPE_CONTENT_INVALID"

    return-object v0

    .line 1240
    :sswitch_19
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_CANCELLED"

    return-object v0

    .line 1239
    :sswitch_1c
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_DROPPED"

    return-object v0

    .line 1238
    :sswitch_1f
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_STARTED"

    return-object v0

    .line 1230
    :sswitch_22
    const-string v0, "CONTENT_CHANGE_TYPE_STATE_DESCRIPTION"

    return-object v0

    .line 1237
    :sswitch_25
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_DISAPPEARED"

    return-object v0

    .line 1235
    :sswitch_28
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_APPEARED"

    return-object v0

    .line 1233
    :sswitch_2b
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_TITLE"

    return-object v0

    .line 1228
    :sswitch_2e
    const-string v0, "CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION"

    return-object v0

    .line 1232
    :sswitch_31
    const-string v0, "CONTENT_CHANGE_TYPE_TEXT"

    return-object v0

    .line 1231
    :sswitch_34
    const-string v0, "CONTENT_CHANGE_TYPE_SUBTREE"

    return-object v0

    .line 1234
    :sswitch_37
    const-string v0, "CONTENT_CHANGE_TYPE_UNDEFINED"

    return-object v0

    .line 1251
    :cond_3a
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yExpansionStateApi()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1252
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_47

    .line 1253
    const-string v0, "CONTENT_CHANGE_TYPE_EXPANDED"

    return-object v0

    .line 1256
    :cond_47
    invoke-static {}, Landroid/view/accessibility/Flags;->supplementalDescription()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1257
    const v0, 0x8000

    if-ne p0, v0, :cond_55

    .line 1258
    const-string v0, "CONTENT_CHANGE_TYPE_SUPPLEMENTAL_DESCRIPTION"

    return-object v0

    .line 1261
    :cond_55
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_37
        0x1 -> :sswitch_34
        0x2 -> :sswitch_31
        0x4 -> :sswitch_2e
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_28
        0x20 -> :sswitch_25
        0x40 -> :sswitch_22
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_19
        0x400 -> :sswitch_16
        0x800 -> :sswitch_13
        0x1000 -> :sswitch_10
    .end sparse-switch
.end method

.method private static greylist-max-o singleEventTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # I

    .line 1864
    sparse-switch p0, :sswitch_data_5a

    .line 1898
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1897
    :sswitch_8
    const-string v0, "TYPE_VIEW_TARGETED_BY_SCROLL"

    return-object v0

    .line 1896
    :sswitch_b
    const-string v0, "TYPE_SPEECH_STATE_CHANGE"

    return-object v0

    .line 1895
    :sswitch_e
    const-string v0, "TYPE_ASSIST_READING_CONTEXT"

    return-object v0

    .line 1894
    :sswitch_11
    const-string v0, "TYPE_VIEW_CONTEXT_CLICKED"

    return-object v0

    .line 1893
    :sswitch_14
    const-string v0, "TYPE_WINDOWS_CHANGED"

    return-object v0

    .line 1892
    :sswitch_17
    const-string v0, "TYPE_TOUCH_INTERACTION_END"

    return-object v0

    .line 1891
    :sswitch_1a
    const-string v0, "TYPE_TOUCH_INTERACTION_START"

    return-object v0

    .line 1890
    :sswitch_1d
    const-string v0, "TYPE_GESTURE_DETECTION_END"

    return-object v0

    .line 1889
    :sswitch_20
    const-string v0, "TYPE_GESTURE_DETECTION_START"

    return-object v0

    .line 1887
    :sswitch_23
    const-string v0, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 1884
    :sswitch_26
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    return-object v0

    .line 1882
    :sswitch_29
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 1881
    :sswitch_2c
    const-string v0, "TYPE_ANNOUNCEMENT"

    return-object v0

    .line 1879
    :sswitch_2f
    const-string v0, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    return-object v0

    .line 1880
    :sswitch_32
    const-string v0, "TYPE_VIEW_SCROLLED"

    return-object v0

    .line 1878
    :sswitch_35
    const-string v0, "TYPE_WINDOW_CONTENT_CHANGED"

    return-object v0

    .line 1877
    :sswitch_38
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    return-object v0

    .line 1875
    :sswitch_3b
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    return-object v0

    .line 1872
    :sswitch_3e
    const-string v0, "TYPE_VIEW_HOVER_EXIT"

    return-object v0

    .line 1871
    :sswitch_41
    const-string v0, "TYPE_VIEW_HOVER_ENTER"

    return-object v0

    .line 1873
    :sswitch_44
    const-string v0, "TYPE_NOTIFICATION_STATE_CHANGED"

    return-object v0

    .line 1870
    :sswitch_47
    const-string v0, "TYPE_WINDOW_STATE_CHANGED"

    return-object v0

    .line 1869
    :sswitch_4a
    const-string v0, "TYPE_VIEW_TEXT_CHANGED"

    return-object v0

    .line 1868
    :sswitch_4d
    const-string v0, "TYPE_VIEW_FOCUSED"

    return-object v0

    .line 1867
    :sswitch_50
    const-string v0, "TYPE_VIEW_SELECTED"

    return-object v0

    .line 1866
    :sswitch_53
    const-string v0, "TYPE_VIEW_LONG_CLICKED"

    return-object v0

    .line 1865
    :sswitch_56
    const-string v0, "TYPE_VIEW_CLICKED"

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_53
        0x4 -> :sswitch_50
        0x8 -> :sswitch_4d
        0x10 -> :sswitch_4a
        0x20 -> :sswitch_47
        0x40 -> :sswitch_44
        0x80 -> :sswitch_41
        0x100 -> :sswitch_3e
        0x200 -> :sswitch_3b
        0x400 -> :sswitch_38
        0x800 -> :sswitch_35
        0x1000 -> :sswitch_32
        0x2000 -> :sswitch_2f
        0x4000 -> :sswitch_2c
        0x8000 -> :sswitch_29
        0x10000 -> :sswitch_26
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_1d
        0x100000 -> :sswitch_1a
        0x200000 -> :sswitch_17
        0x400000 -> :sswitch_14
        0x800000 -> :sswitch_11
        0x1000000 -> :sswitch_e
        0x2000000 -> :sswitch_b
        0x4000000 -> :sswitch_8
    .end sparse-switch
.end method

.method private static blacklist singleSpeechStateChangeTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1340
    sparse-switch p0, :sswitch_data_14

    .line 1350
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1348
    :sswitch_8
    const-string v0, "SPEECH_STATE_LISTENING_END"

    return-object v0

    .line 1344
    :sswitch_b
    const-string v0, "SPEECH_STATE_LISTENING_START"

    return-object v0

    .line 1346
    :sswitch_e
    const-string v0, "SPEECH_STATE_SPEAKING_END"

    return-object v0

    .line 1342
    :sswitch_11
    const-string v0, "SPEECH_STATE_SPEAKING_START"

    return-object v0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x4 -> :sswitch_b
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method private static greylist-max-o singleWindowChangeTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1404
    sparse-switch p0, :sswitch_data_2a

    .line 1417
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1416
    :sswitch_8
    const-string v0, "WINDOWS_CHANGE_PIP"

    return-object v0

    .line 1415
    :sswitch_b
    const-string v0, "WINDOWS_CHANGE_CHILDREN"

    return-object v0

    .line 1414
    :sswitch_e
    const-string v0, "WINDOWS_CHANGE_PARENT"

    return-object v0

    .line 1413
    :sswitch_11
    const-string v0, "WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 1411
    :sswitch_14
    const-string v0, "WINDOWS_CHANGE_FOCUSED"

    return-object v0

    .line 1410
    :sswitch_17
    const-string v0, "WINDOWS_CHANGE_ACTIVE"

    return-object v0

    .line 1409
    :sswitch_1a
    const-string v0, "WINDOWS_CHANGE_LAYER"

    return-object v0

    .line 1408
    :sswitch_1d
    const-string v0, "WINDOWS_CHANGE_BOUNDS"

    return-object v0

    .line 1407
    :sswitch_20
    const-string v0, "WINDOWS_CHANGE_TITLE"

    return-object v0

    .line 1406
    :sswitch_23
    const-string v0, "WINDOWS_CHANGE_REMOVED"

    return-object v0

    .line 1405
    :sswitch_26
    const-string v0, "WINDOWS_CHANGE_ADDED"

    return-object v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_23
        0x4 -> :sswitch_20
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_17
        0x40 -> :sswitch_14
        0x80 -> :sswitch_11
        0x100 -> :sswitch_e
        0x200 -> :sswitch_b
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method private static blacklist speechStateChangeTypesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "types"    # I

    .line 1335
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o windowChangeTypesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "types"    # I

    .line 1400
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 1761
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1772
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1773
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1775
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1776
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1777
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1778
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1779
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1781
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    return-void
.end method


# virtual methods
.method public whitelist appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 1163
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1164
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1167
    :cond_e
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method protected greylist-max-o clear()V
    .registers 4

    .line 1626
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1628
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1629
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1630
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1631
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1632
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1633
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1634
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1635
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2c

    .line 1636
    :goto_1b
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1637
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1638
    goto :goto_1b

    .line 1641
    :cond_2c
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1789
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 1540
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    return v0
.end method

.method public whitelist getContentChangeTypes()I
    .registers 2

    .line 1218
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    return v0
.end method

.method public whitelist getEventTime()J
    .registers 3

    .line 1440
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 1190
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public whitelist getMovementGranularity()I
    .registers 2

    .line 1494
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 1461
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .registers 5
    .param p1, "index"    # I

    .line 1177
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1180
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    return-object v0

    .line 1178
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRecordCount()I
    .registers 2

    .line 1152
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getSpeechStateChangeTypes()I
    .registers 2

    .line 1331
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    return v0
.end method

.method public whitelist getWindowChanges()I
    .registers 2

    .line 1391
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1109
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1110
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1111
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1112
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1113
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1114
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1115
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1116
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1117
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1118
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    .line 1119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1120
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1121
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    new-instance v2, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;-><init>(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1122
    .local v2, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    goto :goto_3a

    .line 1126
    :cond_51
    return-void
.end method

.method public whitelist initFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    .line 1650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1656
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    .line 1659
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1663
    .local v0, "recordCount":I
    if-lez v0, :cond_6c

    .line 1664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_56
    if-ge v1, v0, :cond_6c

    .line 1666
    new-instance v2, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1667
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1668
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    iput v3, v2, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1669
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 1683
    .end local v1    # "i":I
    :cond_6c
    return-void
.end method

.method public whitelist isAccessibilityDataSensitive()Z
    .registers 2

    .line 1296
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->isAccessibilityDataSensitive()Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    return-void
.end method

.method public whitelist setAccessibilityDataSensitive(Z)V
    .registers 2
    .param p1, "accessibilityDataSensitive"    # Z

    .line 1317
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAccessibilityDataSensitive(Z)V

    .line 1318
    return-void
.end method

.method public whitelist setAction(I)V
    .registers 2
    .param p1, "action"    # I

    .line 1530
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1531
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1532
    return-void
.end method

.method public whitelist setContentChangeTypes(I)V
    .registers 2
    .param p1, "changeTypes"    # I

    .line 1275
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1276
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1277
    return-void
.end method

.method public whitelist setEventTime(J)V
    .registers 3
    .param p1, "eventTime"    # J

    .line 1451
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1452
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1453
    return-void
.end method

.method public whitelist setEventType(I)V
    .registers 2
    .param p1, "eventType"    # I

    .line 1430
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1431
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1432
    return-void
.end method

.method public whitelist setMovementGranularity(I)V
    .registers 2
    .param p1, "granularity"    # I

    .line 1484
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1485
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1486
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 1472
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1473
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1474
    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .registers 5
    .param p1, "sealed"    # Z

    .line 1137
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 1138
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1139
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    if-eqz v0, :cond_1b

    .line 1140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1141
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 1142
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    goto :goto_b

    .line 1144
    :cond_1b
    return-void
.end method

.method public whitelist setSpeechStateChangeTypes(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1367
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1368
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1369
    return-void
.end method

.method public greylist-max-o setWindowChanges(I)V
    .registers 2
    .param p1, "changes"    # I

    .line 1396
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1397
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1795
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1797
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1802
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1805
    const-string v1, "; ContentChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1806
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->contentChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1805
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const-string v1, "; WindowChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1810
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->windowChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-super {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1813
    sget-boolean v1, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    if-nez v1, :cond_73

    .line 1827
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ca

    .line 1815
    :cond_73
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    sget-boolean v2, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    if-eqz v2, :cond_a6

    .line 1818
    const-string v2, "; SourceWindowId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceWindowId:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    const-string v2, "; SourceNodeId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceNodeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v2, "; SourceDisplayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1822
    :cond_a6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-ge v2, v3, :cond_ca

    .line 1823
    const-string v3, "  Record "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1829
    .end local v2    # "i":I
    :cond_ca
    :goto_ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1721
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1729
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1730
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1734
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    .line 1735
    .local v0, "recordCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_50

    .line 1737
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1738
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1736
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1751
    .end local v1    # "i":I
    :cond_50
    return-void
.end method
