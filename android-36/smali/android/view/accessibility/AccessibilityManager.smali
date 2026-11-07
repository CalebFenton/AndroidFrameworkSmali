.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$FlashNotificationReason;,
        Landroid/view/accessibility/AccessibilityManager$ContentFlag;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final blacklist AUTOCLICK_CURSOR_AREA_INCREMENT_SIZE:I = 0x14

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_DEFAULT:I = 0x3c

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_MAX:I = 0x64

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_MIN:I = 0x14

.field public static final greylist-max-o AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final blacklist AUTOCLICK_IGNORE_MINOR_CURSOR_MOVEMENT_DEFAULT:Z = false

.field public static final blacklist AUTOCLICK_REVERT_TO_LEFT_CLICK_DEFAULT:Z = true

.field public static final greylist-max-o DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final greylist-max-o DALTONIZER_DISABLED:I = -0x1

.field public static final greylist-max-r DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_CONTENT_CONTROLS:I = 0x4

.field public static final whitelist FLAG_CONTENT_ICONS:I = 0x1

.field public static final whitelist FLAG_CONTENT_TEXT:I = 0x2

.field public static final blacklist FLASH_REASON_ALARM:I = 0x2

.field public static final blacklist FLASH_REASON_CALL:I = 0x1

.field public static final blacklist FLASH_REASON_NOTIFICATION:I = 0x3

.field public static final blacklist FLASH_REASON_PREVIEW:I = 0x4

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final greylist-max-o STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final blacklist STATE_FLAG_AUDIO_DESCRIPTION_BY_DEFAULT_ENABLED:I = 0x1000

.field public static final blacklist STATE_FLAG_DISPATCH_DOUBLE_TAP:I = 0x8

.field public static final greylist-max-o STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final blacklist STATE_FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x10

.field public static final greylist-max-o STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CLIENT_ENABLED:I = 0x400

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_CB_ENABLED:I = 0x200

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_ENABLED:I = 0x100

.field public static final blacklist STATE_FLAG_TRACE_A11Y_SERVICE_ENABLED:I = 0x800

.field private static greylist sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final greylist sInstanceSync:Ljava/lang/Object;


# instance fields
.field greylist-max-o mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

.field private final greylist mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAccessibilityTracingState:I

.field private final blacklist mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBinder:Landroid/os/Binder;

.field final greylist-max-o mCallback:Landroid/os/Handler$Callback;

.field private final greylist-max-o mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field private blacklist mFocusColor:I

.field private blacklist mFocusStrokeWidth:I

.field final greylist mHandler:Landroid/os/Handler;

.field private final blacklist mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mInteractiveUiTimeout:I

.field blacklist mIsAudioDescriptionByDefaultRequested:Z

.field greylist-max-p mIsEnabled:Z

.field greylist mIsHighContrastTextEnabled:Z

.field greylist-max-o mIsTouchExplorationEnabled:Z

.field private final greylist mLock:Ljava/lang/Object;

.field blacklist mNonInteractiveUiTimeout:I

.field private blacklist mPerformingAction:I

.field greylist-max-o mRelevantEventTypes:I

.field private blacklist mRequestFromAccessibilityTool:Z

.field private greylist-max-o mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final greylist-max-o mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetStateLocked(Landroid/view/accessibility/AccessibilityManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFocusAppearanceLocked(Landroid/view/accessibility/AccessibilityManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTimeout(Landroid/view/accessibility/AccessibilityManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;IZ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p4, "userId"    # I
    .param p5, "serviceConnect"    # Z

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 283
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 318
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    .line 462
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 574
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 575
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 576
    iput p4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 577
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 579
    if-eqz p5, :cond_5e

    .line 580
    invoke-direct {p0, p3}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 582
    :cond_5e
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 283
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 318
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    .line 462
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 550
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 551
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 552
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 553
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_5d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 555
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static greylist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 518
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2e

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_25

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 522
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 525
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_25

    .line 530
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .local v1, "userId":I
    goto :goto_26

    .line 528
    .end local v1    # "userId":I
    :cond_25
    :goto_25
    const/4 v1, -0x2

    .line 532
    .restart local v1    # "userId":I
    :goto_26
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 534
    .end local v1    # "userId":I
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    .line 535
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    .line 534
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private greylist-max-o getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .registers 2

    .line 2349
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_8

    .line 2350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 2352
    :cond_8
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private blacklist getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1984
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1985
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1986
    const-string v3, "android.accessibilityshortcut.target"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_23

    .line 1990
    :cond_14
    :try_start_14
    new-instance v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-direct {v2, p1, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    return-object v2

    .line 1991
    :catch_1a
    move-exception v2

    .line 1992
    .local v2, "exp":Ljava/lang/Exception;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while initializing AccessibilityShortcutInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1994
    .end local v2    # "exp":Ljava/lang/Exception;
    return-object v1

    .line 1987
    :cond_23
    :goto_23
    return-object v1
.end method

.method private blacklist initialFocusAppearanceLocked(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 2511
    const v0, 0x1050011

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2513
    const v0, 0x10600f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_12} :catch_13

    .line 2521
    goto :goto_2c

    .line 2514
    :catch_13
    move-exception v0

    .line 2517
    .local v0, "re":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2518
    const v1, -0x40c64b00

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2519
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while initialing the focus appearance data then setting to default value by hardcoded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2522
    .end local v0    # "re":Landroid/content/res/Resources$NotFoundException;
    :goto_2c
    return-void
.end method

.method public static whitelist isAccessibilityButtonSupported()Z
    .registers 2

    .line 2531
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2532
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x111023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p1, "isEnabled"    # Z

    .line 2399
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyAudioDescriptionbyDefaultStateChanged$3(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    .param p1, "isAudioDescriptionByDefaultRequested"    # Z

    .line 2465
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;->onAudioDescriptionRequestedChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyHighContrastTextStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;
    .param p1, "isHighTextContrastEnabled"    # Z

    .line 2443
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;->onHighContrastTextStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTouchExplorationStateChanged$1(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p1, "isTouchExplorationEnabled"    # Z

    .line 2421
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method private blacklist notifyAudioDescriptionbyDefaultStateChanged()V
    .registers 8

    .line 2453
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2455
    monitor-exit v0

    return-void

    .line 2457
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 2458
    .local v1, "isAudioDescriptionByDefaultRequested":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2459
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2461
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2462
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2463
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 2464
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2462
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2468
    .end local v3    # "i":I
    :cond_35
    return-void

    .line 2459
    .end local v0    # "numListeners":I
    .end local v1    # "isAudioDescriptionByDefaultRequested":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Ljava/util/concurrent/Executor;>;"
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private blacklist notifyHighContrastTextStateChanged()V
    .registers 8

    .line 2431
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2432
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2433
    monitor-exit v0

    return-void

    .line 2435
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 2436
    .local v1, "isHighTextContrastEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2437
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2439
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2440
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2441
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;

    .line 2442
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2440
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2445
    .end local v3    # "i":I
    :cond_35
    return-void

    .line 2437
    .end local v0    # "numListeners":I
    .end local v1    # "isHighTextContrastEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Ljava/util/concurrent/Executor;>;"
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private greylist-max-o notifyTouchExplorationStateChanged()V
    .registers 8

    .line 2409
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2410
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2411
    monitor-exit v0

    return-void

    .line 2413
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 2414
    .local v1, "isTouchExplorationEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2415
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2417
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2418
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2419
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 2420
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2418
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2423
    .end local v3    # "i":I
    :cond_35
    return-void

    .line 2415
    .end local v0    # "numListeners":I
    .end local v1    # "isTouchExplorationEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private greylist setStateLocked(I)V
    .registers 11
    .param p1, "stateFlags"    # I

    .line 1524
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1525
    .local v0, "enabled":Z
    :goto_9
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 1527
    .local v3, "touchExplorationEnabled":Z
    :goto_10
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    .line 1529
    .local v4, "highTextContrastEnabled":Z
    :goto_17
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_1c

    move v1, v2

    .line 1532
    .local v1, "audioDescriptionEnabled":Z
    :cond_1c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 1533
    .local v2, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1534
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 1535
    .local v6, "wasHighTextContrastEnabled":Z
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1538
    .local v7, "wasAudioDescriptionByDefaultRequested":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 1539
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1540
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 1541
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1543
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eq v2, v8, :cond_37

    .line 1544
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 1547
    :cond_37
    if-eq v5, v3, :cond_3c

    .line 1548
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    .line 1551
    :cond_3c
    if-eq v6, v4, :cond_41

    .line 1552
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighContrastTextStateChanged()V

    .line 1555
    :cond_41
    if-eq v7, v1, :cond_46

    .line 1557
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAudioDescriptionbyDefaultStateChanged()V

    .line 1560
    :cond_46
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->updateAccessibilityTracingState(I)V

    .line 1561
    return-void
.end method

.method private greylist-max-o tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .registers 6
    .param p1, "service"    # Landroid/view/accessibility/IAccessibilityManager;

    .line 2356
    if-nez p1, :cond_f

    .line 2357
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2358
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_b

    .line 2359
    return-void

    .line 2361
    :cond_b
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    .line 2365
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v0

    .line 2366
    .local v0, "userStateAndRelevantEvents":J
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 2367
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 2368
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getRecommendedTimeoutMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    .line 2369
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusStrokeWidth()I

    move-result v2

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusColor()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    .line 2370
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_38} :catch_39

    .line 2373
    .end local v0    # "userStateAndRelevantEvents":J
    goto :goto_41

    .line 2371
    :catch_39
    move-exception v0

    .line 2372
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "AccessibilityManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2374
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method private blacklist updateAccessibilityTracingState(I)V
    .registers 4
    .param p1, "stateFlag"    # I

    .line 2474
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2475
    :try_start_3
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 2476
    monitor-exit v0

    .line 2477
    return-void

    .line 2476
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist updateFocusAppearanceLocked(II)V
    .registers 4
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 2497
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    if-ne v0, p2, :cond_9

    .line 2498
    return-void

    .line 2500
    :cond_9
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2501
    iput p2, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2502
    return-void
.end method

.method private blacklist updateUiTimeout(J)V
    .registers 4
    .param p1, "uiTimeout"    # J

    .line 2486
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    .line 2487
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    .line 2488
    return-void
.end method


# virtual methods
.method public blacklist addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .registers 14
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1599
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1600
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    move-object v2, v0

    .line 1601
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v8, -0x1

    if-nez v2, :cond_13

    .line 1602
    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    return v8

    .line 1605
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_d
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    goto :goto_2e

    .line 1604
    .restart local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_13
    :try_start_13
    iget v7, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 1605
    .local v7, "userId":I
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_29

    .line 1607
    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    .end local p1    # "windowToken":Landroid/view/IWindow;
    .end local p2    # "leashToken":Landroid/os/IBinder;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .local v3, "windowToken":Landroid/view/IWindow;
    .local v4, "leashToken":Landroid/os/IBinder;
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_1a
    invoke-interface/range {v2 .. v7}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result p1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p1

    .line 1609
    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 1610
    .local p1, "re":Landroid/os/RemoteException;
    const-string p2, "AccessibilityManager"

    const-string p3, "Error while adding an accessibility interaction connection. "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    .end local p1    # "re":Landroid/os/RemoteException;
    return v8

    .line 1605
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "windowToken":Landroid/view/IWindow;
    .end local v4    # "leashToken":Landroid/os/IBinder;
    .end local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    .local p1, "windowToken":Landroid/view/IWindow;
    .restart local p2    # "leashToken":Landroid/os/IBinder;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :catchall_29
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    .end local p1    # "windowToken":Landroid/view/IWindow;
    .end local p2    # "leashToken":Landroid/os/IBinder;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v3    # "windowToken":Landroid/view/IWindow;
    .restart local v4    # "leashToken":Landroid/os/IBinder;
    .restart local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v6    # "packageName":Ljava/lang/String;
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    throw v0

    :catchall_30
    move-exception v0

    goto :goto_2e
.end method

.method public whitelist addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 6
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 1162
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 1163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    .line 1165
    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1166
    .local v0, "id":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1167
    .local v2, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v2, :cond_25

    .line 1168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 1169
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1171
    :cond_25
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1063
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1064
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1049
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 972
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 974
    if-nez p2, :cond_a

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_b

    :cond_a
    move-object v2, p2

    :goto_b
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    monitor-exit v0

    .line 976
    return-void

    .line 975
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 958
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addAudioDescriptionRequestedChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 1372
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    monitor-exit v0

    .line 1375
    return-void

    .line 1374
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist addHighContrastTextStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;

    .line 1343
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1344
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    monitor-exit v0

    .line 1346
    return-void

    .line 1345
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1019
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 1021
    if-nez p2, :cond_a

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_b

    :cond_a
    move-object v2, p2

    :goto_b
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 1005
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;

    .line 1480
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1482
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1483
    monitor-exit v0

    return-void

    .line 1485
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 1487
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1490
    nop

    .line 1491
    return-void

    .line 1488
    :catch_11
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1485
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 2590
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2591
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2592
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2593
    monitor-exit v0

    return-void

    .line 2595
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2597
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2601
    nop

    .line 2602
    return-void

    .line 2599
    :catch_11
    move-exception v0

    .line 2600
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2595
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1500
    if-nez p1, :cond_3

    .line 1501
    return-void

    .line 1504
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1505
    :try_start_6
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1506
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_e

    .line 1507
    monitor-exit v0

    return-void

    .line 1509
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_16

    .line 1511
    :try_start_f
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1514
    nop

    .line 1515
    return-void

    .line 1512
    :catch_14
    move-exception v0

    .line 1513
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1509
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist enableShortcutsForTargets(ZILjava/util/Set;I)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "shortcutTypes"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1685
    .local p3, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1687
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1688
    monitor-exit v0

    return-void

    .line 1690
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 1692
    nop

    .line 1693
    :try_start_d
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 1692
    invoke-interface {v1, p1, p2, v0, p4}, Landroid/view/accessibility/IAccessibilityManager;->enableShortcutsForTargets(ZILjava/util/List;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a

    .line 1696
    nop

    .line 1697
    return-void

    .line 1694
    :catch_1a
    move-exception v0

    .line 1695
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1690
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist getA11yFeatureToTileMap(I)Ljava/util/Map;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1714
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1715
    .local v0, "a11yFeatureToTileMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1716
    :try_start_8
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1717
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_10

    .line 1718
    monitor-exit v1

    return-object v0

    .line 1720
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_46

    .line 1722
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getA11yFeatureToTileMap(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1723
    .local v1, "a11yFeatureToTile":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1724
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1725
    .local v5, "feature":Landroid/content/ComponentName;
    if-nez v5, :cond_30

    .line 1726
    goto :goto_1d

    .line 1728
    :cond_30
    const-class v6, Landroid/content/ComponentName;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1730
    .local v6, "tileService":Landroid/content/ComponentName;
    if-eqz v6, :cond_3d

    .line 1731
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_40

    .line 1733
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "feature":Landroid/content/ComponentName;
    .end local v6    # "tileService":Landroid/content/ComponentName;
    :cond_3d
    goto :goto_1d

    .line 1736
    .end local v1    # "a11yFeatureToTile":Landroid/os/Bundle;
    :cond_3e
    nop

    .line 1737
    return-object v0

    .line 1734
    :catch_40
    move-exception v1

    .line 1735
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1720
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public whitelist getAccessibilityFocusColor()I
    .registers 3

    .line 1244
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    monitor-exit v0

    return v1

    .line 1246
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getAccessibilityFocusStrokeWidth()I
    .registers 3

    .line 1231
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    monitor-exit v0

    return v1

    .line 1233
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 824
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 826
    .local v2, "infoCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_22

    .line 827
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 828
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 830
    .end local v3    # "i":I
    :cond_22
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getAccessibilityShortcutTargets(I)Ljava/util/List;
    .registers 4
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1926
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1927
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1928
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    .line 1929
    if-eqz v1, :cond_13

    .line 1931
    :try_start_a
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 1932
    :catch_f
    move-exception v0

    .line 1933
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1936
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1928
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1455
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1456
    return v0

    .line 1460
    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1461
    :try_start_7
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1462
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_f

    .line 1463
    monitor-exit v1

    return v0

    .line 1465
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    .line 1467
    :try_start_10
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v0

    .line 1468
    :catch_15
    move-exception v1

    .line 1469
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 1465
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public greylist-max-o getCallback()Landroid/os/Handler$Callback;
    .registers 2

    .line 616
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .registers 2

    .line 589
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public whitelist getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .registers 4
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 920
    .local v1, "userId":I
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 921
    invoke-virtual {p0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 920
    .end local v1    # "userId":I
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 8
    .param p1, "feedbackTypeFlags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 877
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_f

    .line 878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 880
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_35

    .line 881
    const/4 v0, 0x0

    .line 883
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_11
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 889
    goto :goto_1f

    .line 887
    :catch_17
    move-exception v2

    .line 888
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while obtaining the enabled AccessibilityServices. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1f
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_29

    .line 891
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v2, p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 894
    :cond_29
    if-eqz v0, :cond_30

    .line 895
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 897
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 880
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 843
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_f

    .line 844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 846
    :cond_f
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 847
    .local v2, "userId":I
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3b

    .line 849
    const/4 v0, 0x0

    .line 851
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_13
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1d

    move-object v0, v3

    .line 857
    goto :goto_25

    .line 855
    :catch_1d
    move-exception v3

    .line 856
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_25
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_2f

    .line 859
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v3, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 861
    :cond_2f
    if-eqz v0, :cond_36

    .line 862
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 864
    :cond_36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 847
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    .local v0, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    const v1, 0xc8081

    .line 1957
    .local v1, "flags":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1958
    .local v2, "actionMain":Landroid/content/Intent;
    const-string v3, "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1961
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 1962
    const v4, 0xc8081

    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1963
    .local v4, "installedShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3a

    .line 1964
    nop

    .line 1965
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v6}, Landroid/view/accessibility/AccessibilityManager;->getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v6

    .line 1966
    .local v6, "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    if-eqz v6, :cond_37

    .line 1967
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1963
    .end local v6    # "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1970
    .end local v5    # "i":I
    :cond_3a
    return-object v0
.end method

.method public greylist-max-o getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1574
    nop

    .line 1575
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 1576
    .local v0, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    if-nez p1, :cond_b

    goto :goto_2d

    .line 1579
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1580
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1581
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v1

    .line 1579
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1584
    .end local v2    # "i":I
    :cond_2c
    return-object v1

    .line 1577
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public blacklist getPerformingAction()I
    .registers 2

    .line 1328
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    return v0
.end method

.method public whitelist getRecommendedTimeoutMillis(II)I
    .registers 7
    .param p1, "originalTimeout"    # I
    .param p2, "uiContentFlags"    # I

    .line 1210
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1211
    .local v0, "hasControls":Z
    :goto_9
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_11

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_12

    :cond_11
    move v1, v2

    .line 1213
    .local v1, "hasIconsOrText":Z
    :cond_12
    move v2, p1

    .line 1214
    .local v2, "recommendedTimeout":I
    if-eqz v0, :cond_1b

    .line 1215
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1217
    :cond_1b
    if-eqz v1, :cond_23

    .line 1218
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1220
    :cond_23
    return v2
.end method

.method public greylist-max-o getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 1307
    const/4 v0, 0x0

    return-object v0

    .line 1309
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .registers 5
    .param p1, "windowId"    # I

    .line 2567
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2568
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2569
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 2570
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 2572
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 2574
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 2575
    :catch_12
    move-exception v0

    .line 2576
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2572
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist hasAnyDirectConnection()Z
    .registers 2

    .line 649
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->hasAnyDirectConnection()Z

    move-result v0

    return v0
.end method

.method public whitelist interrupt()V
    .registers 6

    .line 783
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 785
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 786
    monitor-exit v0

    return-void

    .line 788
    :cond_b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 789
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 790
    .local v2, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_24

    .line 798
    const-string v3, "AccessibilityManager"

    const-string v4, "Interrupt called with accessibility disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    monitor-exit v0

    return-void

    .line 791
    :cond_24
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    throw v3

    .line 802
    .end local v2    # "myLooper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    :cond_2c
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 803
    .local v2, "userId":I
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3c

    .line 805
    :try_start_2f
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 811
    goto :goto_3b

    .line 809
    :catch_33
    move-exception v0

    .line 810
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3b
    return-void

    .line 803
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist isA11yInteractionClientTraceEnabled()Z
    .registers 3

    .line 1279
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1282
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionCBTraceEnabled()Z
    .registers 3

    .line 1267
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1270
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionTraceEnabled()Z
    .registers 3

    .line 1255
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1258
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yServiceTraceEnabled()Z
    .registers 3

    .line 1291
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1294
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 932
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 934
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 935
    monitor-exit v0

    return v2

    .line 937
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 939
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 940
    :catch_12
    move-exception v0

    .line 941
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while checking isAccessibilityServiceWarningRequired: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    return v2

    .line 937
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist isAccessibilityTargetAllowed(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 2307
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2308
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2309
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2310
    monitor-exit v0

    return v2

    .line 2312
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 2315
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 2316
    :catch_12
    move-exception v0

    .line 2317
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while check accessibility target status"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2318
    return v2

    .line 2312
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public greylist-max-o isAccessibilityVolumeStreamActive()Z
    .registers 4

    .line 1411
    nop

    .line 1412
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1413
    .local v0, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1414
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1b

    .line 1415
    const/4 v2, 0x1

    return v2

    .line 1413
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1418
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAudioDescriptionRequested()Z
    .registers 4

    .line 2039
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2041
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 2042
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2044
    :cond_c
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    monitor-exit v0

    return v2

    .line 2045
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 637
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->hasAnyDirectConnection()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 639
    invoke-interface {v1, v2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->isEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    monitor-exit v0

    .line 638
    return v1

    .line 640
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist isHighContrastTextEnabled()Z
    .registers 4

    .line 686
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 688
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 689
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 691
    :cond_c
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    monitor-exit v0

    return v2

    .line 692
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist isRequestFromAccessibilityTool()Z
    .registers 2

    .line 1144
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestFromAccessibilityTool:Z

    return v0
.end method

.method public blacklist isSystemAudioCaptioningUiEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2079
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2081
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 2082
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2084
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 2086
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 2087
    :catch_12
    move-exception v0

    .line 2088
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2084
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist isTouchExplorationEnabled()Z
    .registers 4

    .line 665
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 667
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 668
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 670
    :cond_c
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return v2

    .line 671
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist notifyAccessibilityButtonClicked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 1812
    return-void
.end method

.method public blacklist notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "targetName"    # Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1829
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1830
    monitor-exit v0

    return-void

    .line 1832
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1834
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1837
    goto :goto_18

    .line 1835
    :catch_10
    move-exception v0

    .line 1836
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button click"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1838
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1832
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist notifyAccessibilityButtonLongClicked(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 1852
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1854
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1855
    monitor-exit v0

    return-void

    .line 1857
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1859
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonLongClicked(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1862
    goto :goto_18

    .line 1860
    :catch_10
    move-exception v0

    .line 1861
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button long click. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1863
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1857
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist-max-o notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 6
    .param p1, "shown"    # Z

    .line 1875
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1877
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1878
    monitor-exit v0

    return-void

    .line 1880
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1882
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1885
    goto :goto_18

    .line 1883
    :catch_10
    move-exception v0

    .line 1884
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button visibility change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1880
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist-max-o notifyAccessibilityStateChanged()V
    .registers 8

    .line 2387
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2388
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2389
    monitor-exit v0

    return-void

    .line 2391
    :cond_d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 2392
    .local v1, "isEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2393
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_38

    .line 2395
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2396
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_37

    .line 2397
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 2398
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2396
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2401
    .end local v3    # "i":I
    :cond_37
    return-void

    .line 2393
    .end local v0    # "numListeners":I
    .end local v1    # "isEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist notifyPerformingAction(I)V
    .registers 2
    .param p1, "actionId"    # I

    .line 1319
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 1320
    return-void
.end method

.method public blacklist notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2616
    .local p2, "tileComponentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2617
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2618
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2619
    monitor-exit v0

    return-void

    .line 2621
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2623
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2626
    nop

    .line 2627
    return-void

    .line 2624
    :catch_11
    move-exception v0

    .line 2625
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2621
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist performAccessibilityShortcut()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1644
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(IILjava/lang/String;)V

    .line 1645
    return-void
.end method

.method public blacklist performAccessibilityShortcut(IILjava/lang/String;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "shortcutType"    # I
    .param p3, "targetName"    # Ljava/lang/String;

    .line 1659
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1660
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1661
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1662
    monitor-exit v0

    return-void

    .line 1664
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1666
    :try_start_c
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut(IILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1669
    goto :goto_18

    .line 1667
    :catch_10
    move-exception v0

    .line 1668
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing accessibility shortcut. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1670
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1664
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist registerDisplayProxy(Landroid/view/accessibility/AccessibilityDisplayProxy;)Z
    .registers 5
    .param p1, "proxy"    # Landroid/view/accessibility/AccessibilityDisplayProxy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2160
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2161
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2162
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 2163
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2165
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 2168
    :try_start_d
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityDisplayProxy;->mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    .line 2169
    :catch_18
    move-exception v0

    .line 2170
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2165
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist registerSystemAction(Landroid/app/RemoteAction;I)V
    .registers 8
    .param p1, "action"    # Landroid/app/RemoteAction;
    .param p2, "actionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1758
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1759
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1760
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1761
    monitor-exit v0

    return-void

    .line 1763
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    .line 1765
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1772
    goto :goto_33

    .line 1770
    :catch_10
    move-exception v0

    .line 1771
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering system action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1773
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_33
    return-void

    .line 1763
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/view/accessibility/IUserInitializationCompleteCallback;

    .line 1089
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1091
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1092
    monitor-exit v0

    return-void

    .line 1094
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1096
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1099
    goto :goto_18

    .line 1097
    :catch_10
    move-exception v0

    .line 1098
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while registering userInitializationCompleteCallback. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1094
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist-max-o removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .line 1623
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1625
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1626
    monitor-exit v0

    return-void

    .line 1628
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1630
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1633
    goto :goto_18

    .line 1631
    :catch_10
    move-exception v0

    .line 1632
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1628
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 5
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 1178
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1179
    return-void

    .line 1181
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1182
    .local v0, "viewId":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1183
    .local v1, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-eqz v1, :cond_21

    .line 1184
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1185
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1186
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1189
    :cond_21
    return-void
.end method

.method public whitelist removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1074
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1076
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 986
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 988
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    if-ltz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0

    return v2

    .line 990
    .end local v1    # "index":I
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist removeAudioDescriptionRequestedChangeListener(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 1385
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1387
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist removeClient()Z
    .registers 7

    .line 597
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 599
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 600
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    return v2

    .line 603
    :cond_c
    :try_start_c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_16
    .catchall {:try_start_c .. :try_end_14} :catchall_21

    :try_start_14
    monitor-exit v0

    return v2

    .line 604
    :catch_16
    move-exception v3

    .line 605
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    nop

    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    monitor-exit v0

    .line 608
    return v2

    .line 607
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist removeHighContrastTextStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;

    .line 1356
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1357
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    monitor-exit v0

    .line 1359
    return-void

    .line 1358
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 1033
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1035
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    if-ltz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0

    return v2

    .line 1037
    .end local v1    # "index":I
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 712
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 714
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 715
    monitor-exit v0

    return-void

    .line 717
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 718
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1d

    .line 719
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 721
    :cond_1d
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_2f

    .line 722
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    invoke-interface {v2, p1, v3, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 724
    .local v2, "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v2, :cond_30

    .line 725
    monitor-exit v0

    return-void

    .line 728
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2f
    move-object v2, p1

    .line 730
    .restart local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_30
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_51

    .line 731
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 732
    .local v3, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_49

    .line 740
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    monitor-exit v0

    return-void

    .line 733
    :cond_49
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    throw v4

    .line 744
    .end local v3    # "myLooper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_51
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    and-int/2addr v3, v4

    if-nez v3, :cond_5c

    .line 750
    monitor-exit v0

    return-void

    .line 752
    :cond_5c
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 753
    .local v3, "userId":I
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_a8

    .line 758
    :try_start_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_63} :catch_7b
    .catchall {:try_start_5f .. :try_end_63} :catchall_79

    .line 760
    .local v4, "identityToken":J
    :try_start_63
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_73

    .line 762
    :try_start_66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_7b
    .catchall {:try_start_66 .. :try_end_69} :catchall_79

    .line 763
    nop

    .line 770
    .end local v4    # "identityToken":J
    if-eq p1, v2, :cond_6f

    .line 771
    :goto_6c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 773
    :cond_6f
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 774
    goto :goto_9e

    .line 762
    .restart local v4    # "identityToken":J
    :catchall_73
    move-exception v0

    :try_start_74
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 763
    nop

    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "userId":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    throw v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_79} :catch_7b
    .catchall {:try_start_74 .. :try_end_79} :catchall_79

    .line 770
    .end local v4    # "identityToken":J
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v3    # "userId":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_79
    move-exception v0

    goto :goto_9f

    .line 767
    :catch_7b
    move-exception v0

    .line 768
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_7c
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_7c .. :try_end_9a} :catchall_79

    .line 770
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    if-eq p1, v2, :cond_6f

    .line 771
    goto :goto_6c

    .line 775
    :goto_9e
    return-void

    .line 770
    :goto_9f
    if-eq p1, v2, :cond_a4

    .line 771
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 773
    :cond_a4
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 774
    throw v0

    .line 753
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "userId":I
    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v1
.end method

.method public greylist-max-o sendFingerprintGesture(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 1430
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1432
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1433
    monitor-exit v0

    return v2

    .line 1435
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 1437
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 1438
    :catch_12
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1435
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist sendRestrictedDialogIntent(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 2333
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2334
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2335
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2336
    monitor-exit v0

    return v2

    .line 2338
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 2341
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 2342
    :catch_12
    move-exception v0

    .line 2343
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while show restricted dialog"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    return v2

    .line 2338
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public greylist-max-o setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 1398
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 1400
    monitor-exit v0

    .line 1401
    return-void

    .line 1400
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setAccessibilityWindowAttributes(IILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "windowId"    # I
    .param p3, "attributes"    # Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 2127
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2129
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2130
    monitor-exit v0

    return-void

    .line 2132
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2134
    :try_start_c
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, p1, p2, v0, p3}, Landroid/view/accessibility/IAccessibilityManager;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 2137
    goto :goto_16

    .line 2135
    :catch_12
    move-exception v0

    .line 2136
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2138
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_16
    return-void

    .line 2132
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .registers 6
    .param p1, "connection"    # Landroid/view/accessibility/IMagnificationConnection;

    .line 2007
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2008
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2009
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2010
    monitor-exit v0

    return-void

    .line 2012
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 2014
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 2017
    goto :goto_18

    .line 2015
    :catch_10
    move-exception v0

    .line 2016
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting magnification connection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 2012
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist-max-o setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 6
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1900
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1901
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1902
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1903
    monitor-exit v0

    return-void

    .line 1905
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1907
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1910
    goto :goto_18

    .line 1908
    :catch_10
    move-exception v0

    .line 1909
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting picture in picture action replacement"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1905
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist setRequestFromAccessibilityTool(Z)V
    .registers 2
    .param p1, "requestFromAccessibilityTool"    # Z

    .line 1155
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestFromAccessibilityTool:Z

    .line 1156
    return-void
.end method

.method public blacklist setSystemAudioCaptioningEnabled(ZI)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I

    .line 2057
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2058
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2059
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2060
    monitor-exit v0

    return-void

    .line 2062
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2064
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningEnabled(ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2067
    nop

    .line 2068
    return-void

    .line 2065
    :catch_11
    move-exception v0

    .line 2066
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2062
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist setSystemAudioCaptioningUiEnabled(ZI)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I

    .line 2101
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2103
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 2104
    monitor-exit v0

    return-void

    .line 2106
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2108
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningUiEnabled(ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2111
    nop

    .line 2112
    return-void

    .line 2109
    :catch_11
    move-exception v0

    .line 2110
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2106
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .param p3, "reasonPkg"    # Ljava/lang/String;

    .line 2280
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2281
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2282
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2283
    monitor-exit v0

    return v2

    .line 2285
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 2288
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    .line 2290
    :catch_16
    move-exception v0

    .line 2291
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while start flash notification event"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    return v2

    .line 2285
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist startFlashNotificationSequence(Landroid/content/Context;I)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2222
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2224
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2225
    monitor-exit v0

    return v2

    .line 2227
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 2230
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    invoke-interface {v1, v0, p2, v3}, Landroid/view/accessibility/IAccessibilityManager;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    .line 2232
    :catch_18
    move-exception v0

    .line 2233
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while start flash notification sequence"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2234
    return v2

    .line 2227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist stopFlashNotificationSequence(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2253
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2254
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2255
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2256
    monitor-exit v0

    return v2

    .line 2258
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 2261
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/accessibility/IAccessibilityManager;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    .line 2262
    :catch_16
    move-exception v0

    .line 2263
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while stop flash notification sequence"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    return v2

    .line 2258
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist unregisterDisplayProxy(Landroid/view/accessibility/AccessibilityDisplayProxy;)Z
    .registers 5
    .param p1, "proxy"    # Landroid/view/accessibility/AccessibilityDisplayProxy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2188
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2189
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2190
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 2191
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2193
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1c

    .line 2195
    :try_start_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->getDisplayId()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/accessibility/IAccessibilityManager;->unregisterProxyForDisplay(I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    .line 2196
    :catch_16
    move-exception v0

    .line 2197
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2193
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist unregisterSystemAction(I)V
    .registers 7
    .param p1, "actionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1785
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1786
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1787
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1788
    monitor-exit v0

    return-void

    .line 1790
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_30

    .line 1792
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterSystemAction(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1799
    goto :goto_2f

    .line 1797
    :catch_10
    move-exception v0

    .line 1798
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error unregistering system action with actionId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1800
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2f
    return-void

    .line 1790
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public blacklist unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/view/accessibility/IUserInitializationCompleteCallback;

    .line 1111
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1113
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 1114
    monitor-exit v0

    return-void

    .line 1116
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1118
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1122
    goto :goto_18

    .line 1119
    :catch_10
    move-exception v0

    .line 1120
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while unregistering userInitializationCompleteCallback. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 1116
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method
