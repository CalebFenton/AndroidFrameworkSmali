.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManager$DisableInfo;,
        Landroid/app/StatusBarManager$RequestResultCallback;,
        Landroid/app/StatusBarManager$UndoCallback;,
        Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;,
        Landroid/app/StatusBarManager$MediaTransferReceiverState;,
        Landroid/app/StatusBarManager$MediaTransferSenderState;,
        Landroid/app/StatusBarManager$NavBarMode;,
        Landroid/app/StatusBarManager$RequestResult;,
        Landroid/app/StatusBarManager$SessionFlags;,
        Landroid/app/StatusBarManager$WindowVisibleState;,
        Landroid/app/StatusBarManager$WindowType;,
        Landroid/app/StatusBarManager$NavbarFlags;,
        Landroid/app/StatusBarManager$Disable2Flags;,
        Landroid/app/StatusBarManager$DisableFlags;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED:Ljava/lang/String; = "android.app.action.KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED"

.field public static final blacklist ALL_SESSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER:I = 0x2

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:I = 0x1

.field public static final blacklist CAMERA_LAUNCH_SOURCE_QUICK_AFFORDANCE:I = 0x3

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_WIGGLE:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE2_FLAGS:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE_FLAGS:I = 0x3a50000

.field private static final blacklist DEFAULT_SIM_LOCKED_DISABLED_FLAGS:I = 0x10000

.field public static final greylist-max-o DISABLE2_GLOBAL_ACTIONS:I = 0x8

.field public static final greylist-max-o DISABLE2_MASK:I = 0x1f

.field public static final greylist-max-o DISABLE2_NONE:I = 0x0

.field public static final greylist-max-o DISABLE2_NOTIFICATION_SHADE:I = 0x4

.field public static final greylist-max-o DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final greylist-max-o DISABLE2_ROTATE_SUGGESTIONS:I = 0x10

.field public static final greylist-max-o DISABLE2_SYSTEM_ICONS:I = 0x2

.field public static final greylist-max-o DISABLE_BACK:I = 0x400000

.field public static final greylist-max-o DISABLE_CLOCK:I = 0x800000

.field public static final blacklist DISABLE_EXPAND:I = 0x10000

.field public static final greylist-max-o DISABLE_HOME:I = 0x200000

.field public static final greylist-max-o DISABLE_MASK:I = 0x7ff0000

.field public static final greylist-max-o DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_NONE:I = 0x0

.field public static final greylist-max-o DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final greylist-max-o DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final greylist-max-r DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_ONGOING_CALL_CHIP:I = 0x4000000

.field public static final greylist-max-o DISABLE_RECENT:I = 0x1000000

.field public static final greylist-max-o DISABLE_SEARCH:I = 0x2000000

.field public static final greylist-max-o DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final blacklist EXTRA_KM_PRIVATE_NOTIFS_ALLOWED:Ljava/lang/String; = "android.app.extra.KM_PRIVATE_NOTIFS_ALLOWED"

.field private static final blacklist MEDIA_CONTROL_BLANK_TITLE:J = 0x1060bc96L

.field private static final blacklist MEDIA_CONTROL_MEDIA3_ACTIONS:J = 0x15782871L

.field private static final blacklist MEDIA_CONTROL_SESSION_ACTIONS:J = 0xc25bf22L

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_CLOSE_TO_SENDER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_FAR_FROM_SENDER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_END_CAST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_START_CAST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_FAR_FROM_RECEIVER:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_TRIGGERED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_TRIGGERED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAVBAR_BACK_DISMISS_IME:I = 0x1

.field public static final blacklist NAVBAR_IME_SWITCHER_BUTTON_VISIBLE:I = 0x4

.field public static final blacklist NAVBAR_IME_VISIBLE:I = 0x2

.field public static final whitelist NAV_BAR_MODE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAV_BAR_MODE_KIDS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SESSION_BIOMETRIC_PROMPT:I = 0x2

.field public static final blacklist SESSION_KEYGUARD:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "StatusBarManager"

.field public static final whitelist TILE_ADD_REQUEST_ERROR_APP_NOT_IN_FOREGROUND:I = 0x3ec

.field public static final whitelist TILE_ADD_REQUEST_ERROR_BAD_COMPONENT:I = 0x3ea

.field public static final whitelist TILE_ADD_REQUEST_ERROR_MISMATCHED_PACKAGE:I = 0x3e8

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NOT_CURRENT_USER:I = 0x3eb

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NO_STATUS_BAR_SERVICE:I = 0x3ed

.field public static final whitelist TILE_ADD_REQUEST_ERROR_REQUEST_IN_PROGRESS:I = 0x3e9

.field private static final blacklist TILE_ADD_REQUEST_FIRST_ERROR_CODE:I = 0x3e8

.field public static final blacklist TILE_ADD_REQUEST_RESULT_DIALOG_DISMISSED:I = 0x3

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ADDED:I = 0x2

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ALREADY_ADDED:I = 0x1

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_NOT_ADDED:I = 0x0

.field public static final greylist-max-o WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDDEN:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDING:I = 0x1

.field public static final greylist-max-o WINDOW_STATE_SHOWING:I = 0x0

.field public static final greylist-max-o WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private greylist mContext:Landroid/content/Context;

.field private final blacklist mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private greylist-max-o mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private greylist mToken:Landroid/os/IBinder;

.field private final blacklist nearbyMediaDevicesProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/NearbyMediaDevicesProvider;",
            "Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 311
    nop

    .line 312
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 313
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 650
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 653
    nop

    .line 654
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 653
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 658
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 659
    return-void
.end method

.method private blacklist clickNotificationInternal(Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 724
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 725
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_e

    .line 726
    nop

    .line 727
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v1

    .line 726
    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 731
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_e
    nop

    .line 732
    return-void

    .line 729
    :catch_10
    move-exception v0

    .line 730
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized greylist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 663
    :try_start_1
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    .line 664
    const-string/jumbo v0, "statusbar"

    .line 665
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 664
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 666
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    .line 667
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local p0    # "this":Landroid/app/StatusBarManager;
    :cond_1e
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 662
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method static synthetic blacklist lambda$requestAddTileService$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;

    .line 1061
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist navbarFlagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v0, "flagStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 1365
    const-string v1, "NAVBAR_BACK_DISMISS_IME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 1368
    const-string v1, "NAVBAR_IME_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 1371
    const-string v1, "NAVBAR_IME_SWITCHER_BUTTON_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_20
    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist useMedia3ControllerForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1326
    const-wide/32 v0, 0x15782871

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1292
    const-wide/32 v0, 0xc25bf22

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o windowStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1378
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "WINDOW_STATE_HIDING"

    return-object v0

    .line 1379
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "WINDOW_STATE_HIDDEN"

    return-object v0

    .line 1380
    :cond_c
    if-nez p0, :cond_11

    const-string v0, "WINDOW_STATE_SHOWING"

    return-object v0

    .line 1381
    :cond_11
    const-string v0, "WINDOW_STATE_UNKNOWN"

    return-object v0
.end method


# virtual methods
.method public whitelist canLaunchCaptureContentActivityForNote(Landroid/app/Activity;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1355
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1

    .line 1356
    .local v1, "taskId":I
    new-instance v2, Lcom/android/internal/statusbar/AppClipsServiceConnector;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/statusbar/AppClipsServiceConnector;-><init>(Landroid/content/Context;)V

    .line 1357
    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->canLaunchCaptureContentActivityForNote(I)Z

    move-result v2

    .line 1356
    return v2
.end method

.method public blacklist cancelRequestAddTile(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1087
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1090
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_7
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1093
    goto :goto_f

    .line 1091
    :catch_b
    move-exception v1

    .line 1092
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1094
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public blacklist clickNotification(Ljava/lang/String;IIZ)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 719
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatusBarManager;->clickNotificationInternal(Ljava/lang/String;IIZ)V

    .line 720
    return-void
.end method

.method public greylist-max-r collapsePanels()V
    .registers 3

    .line 786
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 787
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 788
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 792
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 793
    return-void

    .line 790
    :catch_b
    move-exception v0

    .line 791
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist disable(I)V
    .registers 6
    .param p1, "what"    # I

    .line 682
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 683
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 684
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_19

    .line 685
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 689
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_19
    nop

    .line 690
    return-void

    .line 687
    :catch_1b
    move-exception v0

    .line 688
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disable2(I)V
    .registers 6
    .param p1, "what"    # I

    .line 702
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 703
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 704
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_19

    .line 705
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 709
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_19
    nop

    .line 710
    return-void

    .line 707
    :catch_1b
    move-exception v0

    .line 708
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist expandNotificationsPanel()V
    .registers 3

    .line 760
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 761
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 762
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 766
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 767
    return-void

    .line 764
    :catch_b
    move-exception v0

    .line 765
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist expandSettingsPanel()V
    .registers 2

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public greylist-max-r expandSettingsPanel(Ljava/lang/String;)V
    .registers 4
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 873
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 874
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 875
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 879
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 880
    return-void

    .line 877
    :catch_b
    move-exception v0

    .line 878
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisableInfo()Landroid/app/StatusBarManager$DisableInfo;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 983
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 984
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 985
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v2, 0x0

    filled-new-array {v2, v2}, [I

    move-result-object v3

    .line 986
    .local v3, "flags":[I
    if-eqz v1, :cond_1a

    .line 987
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v4

    move-object v3, v4

    .line 990
    :cond_1a
    new-instance v4, Landroid/app/StatusBarManager$DisableInfo;

    aget v2, v3, v2

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-direct {v4, v2, v5}, Landroid/app/StatusBarManager$DisableInfo;-><init>(II)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v4

    .line 991
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v3    # "flags":[I
    :catch_25
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSystemKey()I
    .registers 3

    .line 844
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 845
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_b

    .line 846
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->getLastSystemKey()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v1

    .line 850
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_b
    nop

    .line 851
    const/4 v0, -0x1

    return v0

    .line 848
    :catch_e
    move-exception v0

    .line 849
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNavBarMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1128
    const/4 v0, 0x0

    .line 1130
    .local v0, "navBarMode":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1131
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_c

    .line 1132
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getNavBarMode()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e

    move v0, v2

    .line 1136
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    nop

    .line 1137
    return v0

    .line 1134
    :catch_e
    move-exception v1

    .line 1135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist handleSystemKey(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "key"    # Landroid/view/KeyEvent;

    .line 822
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 823
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 824
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 828
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 829
    return-void

    .line 826
    :catch_b
    move-exception v0

    .line 827
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist logBlankMediaTitle(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1307
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v1, 0x1060bc96

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 1311
    nop

    .line 1312
    return-void

    .line 1309
    :catch_a
    move-exception v0

    .line 1310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1237
    return-void

    .line 1240
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1241
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    new-instance v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    invoke-direct {v1, p1}, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;-><init>(Landroid/media/NearbyMediaDevicesProvider;)V

    .line 1243
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 1247
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1248
    return-void

    .line 1245
    :catch_1f
    move-exception v0

    .line 1246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r removeIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "slot"    # Ljava/lang/String;

    .line 900
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 901
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 902
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 906
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 907
    return-void

    .line 904
    :catch_b
    move-exception v0

    .line 905
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestAddTileService(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "tileServiceComponentName"    # Landroid/content/ComponentName;
    .param p2, "tileLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1054
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1060
    new-instance v0, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1062
    return-void

    .line 1064
    :cond_28
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1065
    .local v5, "userId":I
    new-instance v6, Landroid/app/StatusBarManager$RequestResultCallback;

    invoke-direct {v6, p4, p5}, Landroid/app/StatusBarManager$RequestResultCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1067
    .local v6, "callbackProxy":Landroid/app/StatusBarManager$RequestResultCallback;
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1069
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "tileServiceComponentName":Landroid/content/ComponentName;
    .end local p2    # "tileLabel":Ljava/lang/CharSequence;
    .end local p3    # "icon":Landroid/graphics/drawable/Icon;
    .local v2, "tileServiceComponentName":Landroid/content/ComponentName;
    .local v3, "tileLabel":Ljava/lang/CharSequence;
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    :try_start_3a
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1078
    goto :goto_43

    .line 1076
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 1077
    .local p1, "ex":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1079
    .end local p1    # "ex":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method public blacklist requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1006
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1011
    nop

    .line 1012
    return-void

    .line 1009
    :catch_12
    move-exception v0

    .line 1010
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendNotificationFeedback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "feedback"    # Landroid/os/Bundle;

    .line 742
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 743
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 744
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 748
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 749
    return-void

    .line 746
    :catch_b
    move-exception v0

    .line 747
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDisabledForSetup(Z)V
    .registers 8
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 934
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 935
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 936
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_2d

    .line 937
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/high16 v3, 0x3a50000

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 938
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 937
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 939
    if-eqz p1, :cond_22

    :cond_22
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 940
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 939
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 944
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2d
    nop

    .line 945
    return-void

    .line 942
    :catch_2f
    move-exception v0

    .line 943
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setExpansionDisabledForSimNetworkLock(Z)V
    .registers 7
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 960
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 961
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 962
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1f

    .line 963
    if-eqz p1, :cond_13

    const/high16 v2, 0x10000

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 964
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 963
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 968
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    nop

    .line 969
    return-void

    .line 966
    :catch_21
    move-exception v0

    .line 967
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .line 886
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    move-object v1, v0

    .line 887
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_18

    .line 888
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_1e

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "slot":Ljava/lang/String;
    .end local p2    # "iconId":I
    .end local p3    # "iconLevel":I
    .end local p4    # "contentDescription":Ljava/lang/String;
    .local v2, "slot":Ljava/lang/String;
    .local v4, "iconId":I
    .local v5, "iconLevel":I
    .local v6, "contentDescription":Ljava/lang/String;
    :try_start_11
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1c

    .line 891
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_24

    .line 887
    .end local v2    # "slot":Ljava/lang/String;
    .end local v4    # "iconId":I
    .end local v5    # "iconLevel":I
    .end local v6    # "contentDescription":Ljava/lang/String;
    .restart local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local p1    # "slot":Ljava/lang/String;
    .restart local p2    # "iconId":I
    .restart local p3    # "iconLevel":I
    .restart local p4    # "contentDescription":Ljava/lang/String;
    :cond_18
    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 893
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local p1    # "slot":Ljava/lang/String;
    .end local p2    # "iconId":I
    .end local p3    # "iconLevel":I
    .end local p4    # "contentDescription":Ljava/lang/String;
    .restart local v2    # "slot":Ljava/lang/String;
    .restart local v4    # "iconId":I
    .restart local v5    # "iconLevel":I
    .restart local v6    # "contentDescription":Ljava/lang/String;
    :goto_1c
    nop

    .line 894
    return-void

    .line 891
    .end local v2    # "slot":Ljava/lang/String;
    .end local v4    # "iconId":I
    .end local v5    # "iconLevel":I
    .end local v6    # "contentDescription":Ljava/lang/String;
    .restart local p1    # "slot":Ljava/lang/String;
    .restart local p2    # "iconId":I
    .restart local p3    # "iconLevel":I
    .restart local p4    # "contentDescription":Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 892
    .end local p2    # "iconId":I
    .end local p3    # "iconLevel":I
    .end local p4    # "contentDescription":Ljava/lang/String;
    .restart local v2    # "slot":Ljava/lang/String;
    .restart local v4    # "iconId":I
    .restart local v5    # "iconLevel":I
    .restart local v6    # "contentDescription":Ljava/lang/String;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_24
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-r setIconVisibility(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 913
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 914
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 915
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 919
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 920
    return-void

    .line 917
    :catch_b
    move-exception v0

    .line 918
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNavBarMode(I)V
    .registers 5
    .param p1, "navBarMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1106
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1107
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied navBarMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1112
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_28

    .line 1113
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavBarMode(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2a

    .line 1117
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_28
    nop

    .line 1118
    return-void

    .line 1115
    :catch_2a
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist togglePanel()V
    .registers 3

    .line 804
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 805
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 806
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 810
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 811
    return-void

    .line 808
    :catch_b
    move-exception v0

    .line 809
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1265
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1267
    return-void

    .line 1270
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1271
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    iget-object v1, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 1272
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    .line 1273
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_22

    .line 1277
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1278
    return-void

    .line 1275
    :catch_22
    move-exception v0

    .line 1276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1210
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1213
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1216
    goto :goto_f

    .line 1214
    :catch_b
    move-exception v1

    .line 1215
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1217
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public whitelist updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "undoCallback"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    if-nez p4, :cond_c

    goto :goto_14

    .line 1173
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The undoCallback should only be provided when the state is a transfer succeeded state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_14
    :goto_14
    if-eqz p4, :cond_21

    if-eqz p3, :cond_19

    goto :goto_21

    .line 1178
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass an executor when you pass an undo callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_21
    :goto_21
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1183
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v1, 0x0

    .line 1184
    .local v1, "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    if-eqz p3, :cond_2e

    .line 1185
    :try_start_28
    new-instance v2, Landroid/app/StatusBarManager$UndoCallback;

    invoke-direct {v2, p3, p4}, Landroid/app/StatusBarManager$UndoCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1187
    :cond_2e
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    .line 1190
    .end local v1    # "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    goto :goto_36

    .line 1188
    :catch_32
    move-exception v1

    .line 1189
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1191
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method
