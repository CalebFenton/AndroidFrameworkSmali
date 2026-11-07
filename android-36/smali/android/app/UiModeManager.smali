.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$Globals;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;,
        Landroid/app/UiModeManager$ContrastChangeListener;,
        Landroid/app/UiModeManager$ForceInvertStateChangeListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$ContrastUtils;,
        Landroid/app/UiModeManager$ForceInvertType;,
        Landroid/app/UiModeManager$NightModeCustomReturnType;,
        Landroid/app/UiModeManager$NightModeCustomType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayReturnType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayType;,
        Landroid/app/UiModeManager$NightMode;
    }
.end annotation


# static fields
.field public static whitelist ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static whitelist ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field private static final blacklist CURRENT_MODE_TYPE_API:Ljava/lang/String; = "getCurrentModeType"

.field public static final whitelist DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final whitelist DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final whitelist ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final whitelist ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FORCE_INVERT_TYPE_DARK:I = 0x1

.field public static final blacklist FORCE_INVERT_TYPE_LIGHT:I = 0x2

.field public static final blacklist FORCE_INVERT_TYPE_OFF:I = 0x0

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_DAY:I = 0x3ea

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_NIGHT:I = 0x3e9

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_OFF:I = 0x3e8

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_UNKNOWN:I = -0x1

.field public static final whitelist MODE_NIGHT_AUTO:I = 0x0

.field public static final whitelist MODE_NIGHT_CUSTOM:I = 0x3

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_BEDTIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_SCHEDULE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_NO:I = 0x1

.field public static final whitelist MODE_NIGHT_YES:I = 0x2

.field private static final blacklist NIGHT_MODE_API:Ljava/lang/String; = "getNightMode"

.field public static final whitelist PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiModeManager"

.field private static blacklist sGlobals:Landroid/app/UiModeManager$Globals;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentModeTypeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNightModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final blacklist mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCurrentModeTypeFromServer(Landroid/app/UiModeManager;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNightModeFromServer(Landroid/app/UiModeManager;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager;->getNightModeFromServer()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 189
    const-string v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 230
    const-string v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 237
    const-string v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    .line 619
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    .line 434
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    .line 442
    new-instance v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager-IA;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 794
    new-instance v0, Landroid/app/UiModeManager$1;

    invoke-direct {v0, p0}, Landroid/app/UiModeManager$1;-><init>(Landroid/app/UiModeManager;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 809
    new-instance v1, Landroid/os/IpcDataCache;

    const-string/jumbo v3, "system_server"

    const-string v4, "getCurrentModeType"

    const-string v5, "CurrentModeTypeCache"

    iget-object v6, p0, Landroid/app/UiModeManager;->mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    .line 1031
    new-instance v0, Landroid/app/UiModeManager$2;

    invoke-direct {v0, p0}, Landroid/app/UiModeManager$2;-><init>(Landroid/app/UiModeManager;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1046
    new-instance v1, Landroid/os/IpcDataCache;

    const-string/jumbo v3, "system_server"

    const-string v4, "getNightMode"

    const-string v5, "NightModeCache"

    iget-object v6, p0, Landroid/app/UiModeManager;->mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    .line 622
    const-string/jumbo v0, "uimode"

    .line 623
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 622
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    .line 624
    .local v1, "service":Landroid/app/IUiModeManager;
    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 625
    if-nez v1, :cond_58

    return-void

    .line 626
    :cond_58
    iget-object v2, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 627
    :try_start_5b
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-nez v0, :cond_66

    new-instance v0, Landroid/app/UiModeManager$Globals;

    invoke-direct {v0, v1}, Landroid/app/UiModeManager$Globals;-><init>(Landroid/app/IUiModeManager;)V

    sput-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    .line 628
    :cond_66
    monitor-exit v2

    .line 629
    return-void

    .line 628
    :catchall_68
    move-exception v0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_68

    throw v0
.end method

.method private blacklist getCurrentModeTypeFromServer()Ljava/lang/Integer;
    .registers 3

    .line 781
    :try_start_0
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 782
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 784
    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 785
    :catch_19
    move-exception v0

    .line 786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getNightModeFromServer()Ljava/lang/Integer;
    .registers 3

    .line 1018
    :try_start_0
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1019
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_13
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 1022
    :catch_19
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist invalidateCurrentModeTypeCache()V
    .registers 2

    .line 821
    const-string/jumbo v0, "system_server"

    const-string v1, "getCurrentModeType"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public static blacklist invalidateNightModeCache()V
    .registers 2

    .line 1057
    const-string/jumbo v0, "system_server"

    const-string v1, "getNightMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method


# virtual methods
.method public whitelist addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;

    .line 1532
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1535
    return-void
.end method

.method public blacklist addForceInvertStateChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    .line 1569
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1572
    return-void
.end method

.method public whitelist addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 8
    .param p1, "projectionType"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1390
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1392
    const-string v1, "UiModeManager"

    const-string v2, "Attempted to add listener that was already added."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    monitor-exit v0

    return-void

    .line 1395
    :cond_14
    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v1, :cond_3a

    .line 1396
    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager-IA;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3c

    .line 1399
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    :try_start_20
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 1401
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3c

    .line 1405
    goto :goto_3a

    .line 1402
    :catch_2f
    move-exception v2

    .line 1403
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_30
    iget-object v3, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v3, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1404
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "projectionType":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 1407
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "projectionType":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 1408
    return-void

    .line 1407
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist disableCarMode(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 769
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 771
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 772
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 771
    :goto_16
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 775
    goto :goto_20

    .line 773
    :catch_1a
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 777
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist enableCarMode(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    .line 667
    return-void
.end method

.method public whitelist enableCarMode(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 717
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 719
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 720
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 719
    :goto_16
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 723
    goto :goto_20

    .line 721
    :catch_1a
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist getActiveProjectionTypes()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1365
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1367
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1368
    :catch_f
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttentionModeThemeOverlay()I
    .registers 3

    .line 968
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 970
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getAttentionModeThemeOverlay()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 971
    :catch_f
    move-exception v0

    .line 972
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 975
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getContrast()F
    .registers 2

    .line 1520
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentModeType()I
    .registers 3

    .line 837
    invoke-static {}, Landroid/app/Flags;->enableCurrentModeTypeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 838
    iget-object v0, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 840
    :cond_14
    invoke-direct {p0}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getCustomNightModeEnd()Ljava/time/LocalTime;
    .registers 5

    .line 1209
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 1211
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 1212
    :catch_16
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist getCustomNightModeStart()Ljava/time/LocalTime;
    .registers 5

    .line 1174
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 1176
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 1177
    :catch_16
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public blacklist getForceInvertState()I
    .registers 2

    .line 1555
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I

    move-result v0

    return v0
.end method

.method public whitelist getNightMode()I
    .registers 3

    .line 1077
    invoke-static {}, Landroid/app/Flags;->enableNightModeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1078
    iget-object v0, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1080
    :cond_14
    invoke-direct {p0}, Landroid/app/UiModeManager;->getNightModeFromServer()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getNightModeCustomType()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 921
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 923
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 924
    :catch_f
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 928
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getProjectingPackages(I)Ljava/util/Set;
    .registers 4
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1347
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1a

    .line 1349
    :try_start_4
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 1350
    :catch_14
    move-exception v0

    .line 1351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1354
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isNightModeLocked()Z
    .registers 3

    .line 1113
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1115
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1116
    :catch_f
    move-exception v0

    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isUiModeLocked()Z
    .registers 3

    .line 1091
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1093
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1094
    :catch_f
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1098
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist releaseProjection(I)Z
    .registers 4
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1323
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1325
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 1326
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v0

    .line 1327
    :catch_15
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;

    .line 1544
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 1546
    return-void
.end method

.method public blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    .line 1584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    .line 1586
    return-void
.end method

.method public whitelist removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1421
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    .line 1423
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    if-nez v1, :cond_16

    .line 1424
    const-string v2, "UiModeManager"

    const-string v3, "Attempted to remove listener that was not added."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    monitor-exit v0

    return-void

    .line 1427
    :cond_16
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_36

    if-eqz v2, :cond_2a

    .line 1429
    :try_start_1a
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_36

    .line 1432
    goto :goto_2a

    .line 1430
    :catch_24
    move-exception v2

    .line 1431
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 1434
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_2a
    :goto_2a
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v2, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1436
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    monitor-exit v0

    .line 1437
    return-void

    .line 1436
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public whitelist requestProjection(I)Z
    .registers 5
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1294
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 1296
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 1297
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    return v0

    .line 1298
    :catch_1a
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setApplicationNightMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1007
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 1009
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1012
    goto :goto_14

    .line 1010
    :catch_e
    move-exception v0

    .line 1011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1014
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist setAttentionModeThemeOverlay(I)V
    .registers 4
    .param p1, "attentionModeThemeOverlayType"    # I

    .line 942
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 944
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 947
    goto :goto_14

    .line 945
    :catch_e
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 949
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .registers 7
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1227
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1229
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 1232
    goto :goto_1b

    .line 1230
    :catch_15
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setCustomNightModeStart(Ljava/time/LocalTime;)V
    .registers 7
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1192
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1194
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 1197
    goto :goto_1b

    .line 1195
    :catch_15
    move-exception v0

    .line 1196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setNightMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 881
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 883
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 886
    goto :goto_14

    .line 884
    :catch_e
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 888
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist setNightModeActivated(Z)Z
    .registers 4
    .param p1, "active"    # Z

    .line 1156
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1158
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1159
    :catch_f
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNightModeActivatedForCustomMode(IZ)Z
    .registers 5
    .param p1, "nightModeCustomType"    # I
    .param p2, "active"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1137
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1139
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IUiModeManager;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1141
    :catch_f
    move-exception v0

    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1145
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNightModeCustomType(I)V
    .registers 4
    .param p1, "nightModeCustomType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 902
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 904
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 907
    goto :goto_14

    .line 905
    :catch_e
    move-exception v0

    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 909
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method
