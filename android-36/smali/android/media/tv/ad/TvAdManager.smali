.class public final Landroid/media/tv/ad/TvAdManager;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdManager$SessionCallback;,
        Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;,
        Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;,
        Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;,
        Landroid/media/tv/ad/TvAdManager$Session;,
        Landroid/media/tv/ad/TvAdManager$ErrorCode;,
        Landroid/media/tv/ad/TvAdManager$SessionState;,
        Landroid/media/tv/ad/TvAdManager$SessionDataKey;,
        Landroid/media/tv/ad/TvAdManager$SessionDataType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.ad.action.APP_LINK_COMMAND"

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

.field public static final whitelist INTENT_KEY_AD_SERVICE_ID:Ljava/lang/String; = "ad_service_id"

.field public static final whitelist INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final whitelist INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final whitelist SESSION_DATA_KEY_AD_BUFFER:Ljava/lang/String; = "ad_buffer"

.field public static final whitelist SESSION_DATA_KEY_AD_REQUEST:Ljava/lang/String; = "ad_request"

.field public static final whitelist SESSION_DATA_KEY_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "broadcast_info_request"

.field public static final whitelist SESSION_DATA_KEY_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final whitelist SESSION_DATA_TYPE_AD_BUFFER_READY:Ljava/lang/String; = "ad_buffer_ready"

.field public static final whitelist SESSION_DATA_TYPE_AD_REQUEST:Ljava/lang/String; = "ad_request"

.field public static final whitelist SESSION_DATA_TYPE_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "broadcast_info_request"

.field public static final whitelist SESSION_DATA_TYPE_REMOVE_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "remove_broadcast_info_request"

.field public static final whitelist SESSION_STATE_ERROR:I = 0x3

.field public static final whitelist SESSION_STATE_RUNNING:I = 0x2

.field public static final whitelist SESSION_STATE_STOPPED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdManager"


# instance fields
.field private final blacklist mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/tv/ad/ITvAdClient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeq:I

.field private final blacklist mService:Landroid/media/tv/ad/ITvAdManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/media/tv/ad/ITvAdManager;I)V
    .registers 6
    .param p1, "service"    # Landroid/media/tv/ad/ITvAdManager;
    .param p2, "userId"    # I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    .line 329
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    .line 330
    iput p2, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    .line 331
    new-instance v0, Landroid/media/tv/ad/TvAdManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdManager$1;-><init>(Landroid/media/tv/ad/TvAdManager;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 453
    new-instance v0, Landroid/media/tv/ad/TvAdManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdManager$2;-><init>(Landroid/media/tv/ad/TvAdManager;)V

    .line 483
    .local v0, "managerCallback":Landroid/media/tv/ad/ITvAdManagerCallback;
    :try_start_28
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    if-eqz v1, :cond_33

    .line 484
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ad/ITvAdManager;->registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_35

    .line 488
    :cond_33
    nop

    .line 489
    return-void

    .line 486
    :catch_35
    move-exception v1

    .line 487
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .registers 15
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 527
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    move-object v1, v0

    .line 533
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 534
    :try_start_15
    iget v0, p0, Landroid/media/tv/ad/TvAdManager;->mNextSeq:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Landroid/media/tv/ad/TvAdManager;->mNextSeq:I

    move v8, v0

    .line 535
    .local v8, "seq":I
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_3b

    .line 537
    :try_start_21
    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v5, p0, Landroid/media/tv/ad/TvAdManager;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget v9, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_32
    .catchall {:try_start_21 .. :try_end_27} :catchall_3b

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "serviceId":Ljava/lang/String;
    .end local p2    # "type":Ljava/lang/String;
    .local v6, "serviceId":Ljava/lang/String;
    .local v7, "type":Ljava/lang/String;
    :try_start_29
    invoke-interface/range {v4 .. v9}, Landroid/media/tv/ad/ITvAdManager;->createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_41

    .line 540
    nop

    .line 541
    .end local v8    # "seq":I
    :try_start_2d
    monitor-exit v2

    .line 542
    return-void

    .line 538
    .restart local v8    # "seq":I
    :catch_2f
    move-exception v0

    move-object p1, v0

    goto :goto_36

    .end local v6    # "serviceId":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .restart local p1    # "serviceId":Ljava/lang/String;
    .restart local p2    # "type":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object v6, p1

    move-object v7, p2

    move-object p1, v0

    .line 539
    .end local p2    # "type":Ljava/lang/String;
    .restart local v6    # "serviceId":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_36
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    .end local v6    # "serviceId":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/tv/ad/TvAdManager;
    .end local p3    # "callback":Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    throw p2

    .line 541
    .end local v8    # "seq":I
    .restart local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    .restart local p0    # "this":Landroid/media/tv/ad/TvAdManager;
    .local p1, "serviceId":Ljava/lang/String;
    .restart local p2    # "type":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_3b
    move-exception v0

    move-object v6, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "serviceId":Ljava/lang/String;
    .end local p2    # "type":Ljava/lang/String;
    .restart local v6    # "serviceId":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_41

    throw p1

    :catchall_41
    move-exception v0

    move-object p1, v0

    goto :goto_3f
.end method


# virtual methods
.method public blacklist createSession(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 522
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager;->createSessionInternal(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    .line 523
    return-void
.end method

.method public whitelist getTvAdServiceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/ad/TvAdServiceInfo;",
            ">;"
        }
    .end annotation

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v1, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ad/ITvAdManager;->getTvAdServiceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 501
    :catch_9
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    .line 578
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_9
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "command"    # Landroid/os/Bundle;

    .line 563
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v1, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/ad/ITvAdManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 566
    nop

    .line 567
    return-void

    .line 564
    :catch_9
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    .line 591
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_6
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 594
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    .line 596
    .local v2, "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->getCallback()Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 597
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 598
    goto :goto_23

    .line 600
    .end local v2    # "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    :cond_22
    goto :goto_c

    .line 601
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method
