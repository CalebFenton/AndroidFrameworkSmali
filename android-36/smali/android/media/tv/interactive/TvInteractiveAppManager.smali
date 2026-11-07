.class public final Landroid/media/tv/interactive/TvInteractiveAppManager;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TeletextAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ErrorCode;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$InteractiveAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ServiceState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.interactive.action.APP_LINK_COMMAND"

.field public static final whitelist APP_LINK_KEY_BACK_URI:Ljava/lang/String; = "back_uri"

.field public static final whitelist APP_LINK_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final whitelist APP_LINK_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist APP_LINK_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final whitelist APP_LINK_KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final whitelist ERROR_BLOCKED:I = 0x5

.field public static final whitelist ERROR_ENCRYPTED:I = 0x6

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ERROR_RESOURCE_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist ERROR_UNKNOWN_CHANNEL:I = 0x7

.field public static final whitelist ERROR_WEAK_SIGNAL:I = 0x3

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_TYPE:Ljava/lang/String; = "bi_interactive_app_type"

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_URI:Ljava/lang/String; = "bi_interactive_app_uri"

.field public static final whitelist INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final whitelist INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist INTENT_KEY_INTERACTIVE_APP_SERVICE_ID:Ljava/lang/String; = "interactive_app_id"

.field public static final whitelist INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final whitelist INTERACTIVE_APP_STATE_ERROR:I = 0x3

.field public static final whitelist INTERACTIVE_APP_STATE_RUNNING:I = 0x2

.field public static final whitelist INTERACTIVE_APP_STATE_STOPPED:I = 0x1

.field public static final whitelist SERVICE_STATE_ERROR:I = 0x4

.field public static final whitelist SERVICE_STATE_PREPARING:I = 0x2

.field public static final whitelist SERVICE_STATE_READY:I = 0x3

.field public static final whitelist SERVICE_STATE_UNREALIZED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppManager"

.field public static final whitelist TELETEXT_APP_STATE_ERROR:I = 0x3

.field public static final whitelist TELETEXT_APP_STATE_HIDE:I = 0x2

.field public static final whitelist TELETEXT_APP_STATE_SHOW:I = 0x1


# instance fields
.field private final blacklist mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeq:I

.field private final blacklist mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
    .registers 6
    .param p1, "service"    # Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .param p2, "userId"    # I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    .line 321
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    .line 322
    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    .line 323
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 732
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    .line 781
    .local v0, "managerCallback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    :try_start_28
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    if-eqz v1, :cond_33

    .line 782
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_35

    .line 786
    :cond_33
    nop

    .line 787
    return-void

    .line 784
    :catch_35
    move-exception v1

    .line 785
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .registers 15
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 940
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    move-object v1, v0

    .line 944
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 945
    :try_start_12
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    move v8, v0

    .line 946
    .local v8, "seq":I
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_38

    .line 948
    :try_start_1e
    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget v9, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2f
    .catchall {:try_start_1e .. :try_end_24} :catchall_38

    move-object v6, p1

    move v7, p2

    .end local p1    # "iAppServiceId":Ljava/lang/String;
    .end local p2    # "type":I
    .local v6, "iAppServiceId":Ljava/lang/String;
    .local v7, "type":I
    :try_start_26
    invoke-interface/range {v4 .. v9}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2c
    .catchall {:try_start_26 .. :try_end_29} :catchall_3e

    .line 951
    nop

    .line 952
    .end local v8    # "seq":I
    :try_start_2a
    monitor-exit v2

    .line 953
    return-void

    .line 949
    .restart local v8    # "seq":I
    :catch_2c
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v6    # "iAppServiceId":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local p1    # "iAppServiceId":Ljava/lang/String;
    .restart local p2    # "type":I
    :catch_2f
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .line 950
    .end local p2    # "type":I
    .restart local v6    # "iAppServiceId":Ljava/lang/String;
    .restart local v7    # "type":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .end local v6    # "iAppServiceId":Ljava/lang/String;
    .end local v7    # "type":I
    .end local p0    # "this":Landroid/media/tv/interactive/TvInteractiveAppManager;
    .end local p3    # "callback":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    throw p2

    .line 952
    .end local v8    # "seq":I
    .restart local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .restart local p0    # "this":Landroid/media/tv/interactive/TvInteractiveAppManager;
    .local p1, "iAppServiceId":Ljava/lang/String;
    .restart local p2    # "type":I
    .restart local p3    # "callback":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_38
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "iAppServiceId":Ljava/lang/String;
    .end local p2    # "type":I
    .restart local v6    # "iAppServiceId":Ljava/lang/String;
    .restart local v7    # "type":I
    :goto_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3e

    throw p1

    :catchall_3e
    move-exception v0

    move-object p1, v0

    goto :goto_3c
.end method


# virtual methods
.method public blacklist createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 935
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    .line 936
    return-void
.end method

.method public whitelist getAppLinkInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/AppLinkInfo;",
            ">;"
        }
    .end annotation

    .line 981
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getAppLinkInfoList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 982
    :catch_9
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInteractiveAppServiceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 965
    :catch_9
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 5
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 998
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1001
    nop

    .line 1002
    return-void

    .line 999
    :catch_9
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    .line 1045
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_9
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "command"    # Landroid/os/Bundle;

    .line 1030
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1033
    nop

    .line 1034
    return-void

    .line 1031
    :catch_9
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 5
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 1015
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1018
    nop

    .line 1019
    return-void

    .line 1016
    :catch_9
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    .line 1058
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_6
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1061
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1062
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    .line 1063
    .local v2, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->getCallback()Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 1064
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1065
    goto :goto_23

    .line 1067
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
    :cond_22
    goto :goto_c

    .line 1068
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 1069
    return-void

    .line 1068
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method
