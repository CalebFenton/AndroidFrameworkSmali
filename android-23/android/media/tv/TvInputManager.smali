.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$Hardware;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final DVB_DEVICE_DEMUX:I = 0x0

.field public static final DVB_DEVICE_DVR:I = 0x1

.field static final DVB_DEVICE_END:I = 0x2

.field public static final DVB_DEVICE_FRONTEND:I = 0x2

.field static final DVB_DEVICE_START:I = 0x0

.field public static final INPUT_STATE_CONNECTED:I = 0x0

.field public static final INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field private static final TAG:Ljava/lang/String; = "TvInputManager"

.field public static final TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field static final VIDEO_UNAVAILABLE_REASON_END:I = 0x4

.field static final VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/media/tv/ITvInputClient;

.field private final mLock:Ljava/lang/Object;

.field private mNextSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/tv/TvInputManager;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/media/tv/ITvInputManager;I)V
    .locals 10
    .param p1, "service"    # Landroid/media/tv/ITvInputManager;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    new-instance v6, Ljava/lang/Object;

    #@5
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@a
    .line 225
    new-instance v6, Ljava/util/LinkedList;

    #@c
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@f
    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    #@11
    .line 229
    new-instance v6, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    #@18
    .line 233
    new-instance v6, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 232
    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@1f
    .line 688
    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@21
    .line 689
    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@23
    .line 690
    new-instance v6, Landroid/media/tv/TvInputManager$1;

    #@25
    invoke-direct {v6, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    #@28
    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    #@2a
    .line 880
    new-instance v5, Landroid/media/tv/TvInputManager$2;

    #@2c
    invoke-direct {v5, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    #@2f
    .line 921
    .local v5, "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_0
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 922
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@35
    iget v7, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@37
    invoke-interface {v6, v5, v7}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    #@3a
    .line 923
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@3c
    iget v7, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@3e
    invoke-interface {v6, v7}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    #@41
    move-result-object v3

    #@42
    .line 924
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@44
    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 925
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v2

    #@49
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_1

    #@4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Landroid/media/tv/TvInputInfo;

    #@55
    .line 926
    .local v1, "info":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    .line 927
    .local v4, "inputId":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    #@5b
    iget-object v8, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@5d
    iget v9, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@5f
    invoke-interface {v8, v4, v9}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    #@62
    move-result v8

    #@63
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v8

    #@67
    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 924
    .end local v1    # "info":Landroid/media/tv/TvInputInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@6c
    :try_start_2
    monitor-exit v7

    #@6d
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@6e
    .line 931
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :catch_0
    move-exception v0

    #@6f
    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "TvInputManager"

    #@72
    const-string/jumbo v7, "TvInputManager initialization failed"

    #@75
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@78
    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    #@79
    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@7a
    goto :goto_1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 1247
    :try_start_0
    new-instance v1, Landroid/media/tv/TvInputManager$Hardware;

    #@2
    .line 1248
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@4
    new-instance v3, Landroid/media/tv/TvInputManager$3;

    #@6
    invoke-direct {v3, p0, p2}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    #@9
    .line 1258
    iget v4, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@b
    .line 1248
    invoke-interface {v2, p1, v3, p3, v4}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    #@e
    move-result-object v2

    #@f
    .line 1247
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v1

    #@14
    .line 1259
    :catch_0
    move-exception v0

    #@15
    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 1097
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1099
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@5
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@b
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1096
    return-void

    #@f
    .line 1100
    :catch_0
    move-exception v0

    #@10
    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 1200
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1201
    :catch_0
    move-exception v0

    #@a
    .line 1202
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1150
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1151
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1152
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1153
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@b
    invoke-direct {v1, p2, p3}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    #@e
    .line 1154
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@10
    monitor-enter v4

    #@11
    .line 1155
    :try_start_0
    iget v2, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    #@17
    .line 1156
    .local v2, "seq":I
    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1158
    :try_start_1
    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@1e
    iget-object v5, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    #@20
    iget v6, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@22
    invoke-interface {v3, v5, p1, v2, v6}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v4

    #@26
    .line 1149
    return-void

    #@27
    .line 1159
    :catch_0
    move-exception v0

    #@28
    .line 1160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    #@2a
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    .line 1154
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "seq":I
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1183
    :catch_0
    move-exception v0

    #@a
    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public getBlockedRatings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1077
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1078
    .local v3, "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@7
    iget v5, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@9
    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "rating$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 1079
    .local v1, "rating":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 1082
    .end local v1    # "rating":Ljava/lang/String;
    .end local v2    # "rating$iterator":Ljava/util/Iterator;
    .end local v3    # "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    :catch_0
    move-exception v0

    #@26
    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v4

    #@2c
    .line 1081
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "rating$iterator":Ljava/util/Iterator;
    .restart local v3    # "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    :cond_0
    return-object v3
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1286
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    invoke-interface {v1}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1287
    :catch_0
    move-exception v0

    #@8
    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    invoke-interface {v1}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1229
    :catch_0
    move-exception v0

    #@8
    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public getInputState(Ljava/lang/String;)I
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 979
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 980
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 981
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    #@8
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 982
    .local v0, "state":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@10
    .line 983
    const-string/jumbo v1, "TvInputManager"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Unrecognized input ID: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 984
    const/4 v1, 0x2

    #@2b
    monitor-exit v2

    #@2c
    return v1

    #@2d
    .line 986
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result v1

    #@31
    monitor-exit v2

    #@32
    return v1

    #@33
    .line 980
    .end local v0    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public getTvContentRatingSystemList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1130
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1131
    :catch_0
    move-exception v0

    #@a
    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 957
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 959
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@5
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@7
    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 960
    :catch_0
    move-exception v0

    #@d
    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public getTvInputList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 944
    :catch_0
    move-exception v0

    #@a
    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public isParentalControlsEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1030
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1031
    :catch_0
    move-exception v0

    #@a
    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 1060
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1062
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@5
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@b
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 1063
    :catch_0
    move-exception v0

    #@11
    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public isSingleSessionActive()Z
    .locals 3

    #@0
    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1215
    :catch_0
    move-exception v0

    #@a
    .line 1216
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I

    #@0
    .prologue
    .line 1306
    if-ltz p2, :cond_0

    #@2
    const/4 v1, 0x2

    #@3
    if-ge v1, p2, :cond_1

    #@5
    .line 1307
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Invalid DVB device: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1310
    :catch_0
    move-exception v0

    #@20
    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v1

    #@26
    .line 1309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@28
    invoke-interface {v1, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 997
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 998
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 999
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1000
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    #@b
    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@d
    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    #@10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 996
    return-void

    #@15
    .line 999
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/TvInputManager$Hardware;

    #@0
    .prologue
    .line 1272
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->-wrap0(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    #@5
    move-result-object v2

    #@6
    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@8
    invoke-interface {v1, p1, v2, v3}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1270
    return-void

    #@c
    .line 1273
    :catch_0
    move-exception v0

    #@d
    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 1115
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1117
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@5
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@b
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1114
    return-void

    #@f
    .line 1118
    :catch_0
    move-exception v0

    #@10
    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1047
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    #@2
    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    #@4
    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1045
    return-void

    #@8
    .line 1048
    :catch_0
    move-exception v0

    #@9
    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    #@0
    .prologue
    .line 1010
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1011
    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 1012
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .line 1013
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    .line 1012
    if-eqz v2, :cond_1

    #@12
    .line 1014
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@18
    .line 1015
    .local v1, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    #@1b
    move-result-object v2

    #@1c
    if-ne v2, p1, :cond_0

    #@1e
    .line 1016
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .end local v1    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :cond_1
    monitor-exit v3

    #@22
    .line 1009
    return-void

    #@23
    .line 1011
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method
