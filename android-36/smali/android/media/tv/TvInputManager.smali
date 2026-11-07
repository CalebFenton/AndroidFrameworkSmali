.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$Hardware;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$SessionDataKey;,
        Landroid/media/tv/TvInputManager$SessionDataType;,
        Landroid/media/tv/TvInputManager$SignalStrength;,
        Landroid/media/tv/TvInputManager$BroadcastInfoType;,
        Landroid/media/tv/TvInputManager$InputState;,
        Landroid/media/tv/TvInputManager$RecordingError;,
        Landroid/media/tv/TvInputManager$TimeShiftMode;,
        Landroid/media/tv/TvInputManager$TimeShiftStatus;,
        Landroid/media/tv/TvInputManager$TvMessageType;,
        Landroid/media/tv/TvInputManager$VideoUnavailableReason;,
        Landroid/media/tv/TvInputManager$DvbDeviceType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final whitelist ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final whitelist ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final whitelist ACTION_SETUP_INPUTS:Ljava/lang/String; = "android.media.tv.action.SETUP_INPUTS"

.field public static final whitelist ACTION_VIEW_RECORDING_SCHEDULES:Ljava/lang/String; = "android.media.tv.action.VIEW_RECORDING_SCHEDULES"

.field public static final whitelist BROADCAST_INFO_STREAM_EVENT:I = 0x5

.field public static final whitelist BROADCAST_INFO_TYPE_COMMAND:I = 0x7

.field public static final whitelist BROADCAST_INFO_TYPE_DSMCC:I = 0x6

.field public static final whitelist BROADCAST_INFO_TYPE_PES:I = 0x4

.field public static final whitelist BROADCAST_INFO_TYPE_SECTION:I = 0x3

.field public static final blacklist BROADCAST_INFO_TYPE_SIGNALING_DATA:I = 0x9

.field public static final whitelist BROADCAST_INFO_TYPE_TABLE:I = 0x2

.field public static final whitelist BROADCAST_INFO_TYPE_TIMELINE:I = 0x8

.field public static final whitelist BROADCAST_INFO_TYPE_TS:I = 0x1

.field public static final greylist-max-o DVB_DEVICE_DEMUX:I = 0x0

.field public static final greylist-max-o DVB_DEVICE_DVR:I = 0x1

.field static final greylist-max-o DVB_DEVICE_END:I = 0x2

.field public static final greylist-max-o DVB_DEVICE_FRONTEND:I = 0x2

.field static final greylist-max-o DVB_DEVICE_START:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final whitelist INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final whitelist META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field static final greylist-max-o RECORDING_ERROR_END:I = 0x2

.field public static final whitelist RECORDING_ERROR_INSUFFICIENT_SPACE:I = 0x1

.field public static final whitelist RECORDING_ERROR_RESOURCE_BUSY:I = 0x2

.field static final greylist-max-o RECORDING_ERROR_START:I = 0x0

.field public static final whitelist RECORDING_ERROR_UNKNOWN:I = 0x0

.field public static final whitelist SESSION_DATA_KEY_AD_BUFFER:Ljava/lang/String; = "ad_buffer"

.field public static final whitelist SESSION_DATA_KEY_AD_RESPONSE:Ljava/lang/String; = "ad_response"

.field public static final whitelist SESSION_DATA_KEY_BROADCAST_INFO_RESPONSE:Ljava/lang/String; = "broadcast_info_response"

.field public static final whitelist SESSION_DATA_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final whitelist SESSION_DATA_KEY_TRACKS:Ljava/lang/String; = "tracks"

.field public static final whitelist SESSION_DATA_KEY_TRACK_ID:Ljava/lang/String; = "track_id"

.field public static final whitelist SESSION_DATA_KEY_TRACK_TYPE:Ljava/lang/String; = "track_type"

.field public static final whitelist SESSION_DATA_KEY_TV_MESSAGE_TYPE:Ljava/lang/String; = "tv_message_type"

.field public static final whitelist SESSION_DATA_KEY_VIDEO_UNAVAILABLE_REASON:Ljava/lang/String; = "video_unavailable_reason"

.field public static final whitelist SESSION_DATA_TYPE_AD_BUFFER_CONSUMED:Ljava/lang/String; = "ad_buffer_consumed"

.field public static final whitelist SESSION_DATA_TYPE_AD_RESPONSE:Ljava/lang/String; = "ad_response"

.field public static final whitelist SESSION_DATA_TYPE_BROADCAST_INFO_RESPONSE:Ljava/lang/String; = "broadcast_info_response"

.field public static final whitelist SESSION_DATA_TYPE_TRACKS_CHANGED:Ljava/lang/String; = "tracks_changed"

.field public static final whitelist SESSION_DATA_TYPE_TRACK_SELECTED:Ljava/lang/String; = "track_selected"

.field public static final whitelist SESSION_DATA_TYPE_TUNED:Ljava/lang/String; = "tuned"

.field public static final whitelist SESSION_DATA_TYPE_TV_MESSAGE:Ljava/lang/String; = "tv_message"

.field public static final whitelist SESSION_DATA_TYPE_VIDEO_AVAILABLE:Ljava/lang/String; = "video_available"

.field public static final whitelist SESSION_DATA_TYPE_VIDEO_UNAVAILABLE:Ljava/lang/String; = "video_unavailable"

.field public static final whitelist SIGNAL_STRENGTH_LOST:I = 0x1

.field public static final whitelist SIGNAL_STRENGTH_STRONG:I = 0x3

.field public static final whitelist SIGNAL_STRENGTH_WEAK:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputManager"

.field public static final whitelist TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final whitelist TIME_SHIFT_MODE_AUTO:I = 0x4

.field public static final whitelist TIME_SHIFT_MODE_LOCAL:I = 0x2

.field public static final whitelist TIME_SHIFT_MODE_NETWORK:I = 0x3

.field public static final whitelist TIME_SHIFT_MODE_OFF:I = 0x1

.field public static final whitelist TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final whitelist TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final whitelist TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final whitelist TV_MESSAGE_GROUP_ID_NONE:J = -0x1L

.field public static final whitelist TV_MESSAGE_KEY_GROUP_ID:Ljava/lang/String; = "android.media.tv.TvInputManager.group_id"

.field public static final whitelist TV_MESSAGE_KEY_RAW_DATA:Ljava/lang/String; = "android.media.tv.TvInputManager.raw_data"

.field public static final whitelist TV_MESSAGE_KEY_STREAM_ID:Ljava/lang/String; = "android.media.tv.TvInputManager.stream_id"

.field public static final whitelist TV_MESSAGE_KEY_SUBTYPE:Ljava/lang/String; = "android.media.tv.TvInputManager.subtype"

.field public static final whitelist TV_MESSAGE_SUBTYPE_CC_608E:Ljava/lang/String; = "CTA 608-E"

.field public static final whitelist TV_MESSAGE_SUBTYPE_WATERMARKING_A335:Ljava/lang/String; = "ATSC A/335"

.field public static final whitelist TV_MESSAGE_TYPE_CLOSED_CAPTION:I = 0x2

.field public static final whitelist TV_MESSAGE_TYPE_OTHER:I = 0x3e8

.field public static final whitelist TV_MESSAGE_TYPE_WATERMARK:I = 0x1

.field public static final blacklist UNKNOWN_CLIENT_PID:I = -0x1

.field public static final blacklist UNKNOWN_CLIENT_USER_ID:I = -0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_BLACKOUT:I = 0x10

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_INVALID:I = 0xf

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_MUTE:I = 0xe

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x7

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_LICENSE_EXPIRED:I = 0xa

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_ACTIVATION:I = 0xb

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_PAIRING:I = 0xc

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NO_CARD:I = 0xd

.field public static final blacklist VIDEO_UNAVAILABLE_REASON_CAS_NO_LICENSE:I = 0x9

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_PVR_RECORDING_NOT_ALLOWED:I = 0x8

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_REBOOTING:I = 0x11

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_UNKNOWN:I = 0x12

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_END:I = 0x12

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_INSUFFICIENT_RESOURCE:I = 0x6

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_NOT_CONNECTED:I = 0x5

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_STOPPED:I = 0x13

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClient:Landroid/media/tv/ITvInputClient;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mNextSeq:I

.field private final greylist-max-o mService:Landroid/media/tv/ITvInputManager;

.field private final greylist-max-o mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/TvInputManager;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/tv/ITvInputManager;I)V
    .registers 12
    .param p1, "service"    # Landroid/media/tv/ITvInputManager;
    .param p2, "userId"    # I

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    .line 857
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    .line 860
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 1682
    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    .line 1683
    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    .line 1684
    new-instance v0, Landroid/media/tv/TvInputManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    .line 2075
    new-instance v0, Landroid/media/tv/TvInputManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    .line 2134
    .local v0, "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_2f
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_71

    .line 2135
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 2136
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v1

    .line 2137
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_45} :catch_73

    .line 2138
    :try_start_45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputInfo;

    .line 2139
    .local v4, "info":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 2140
    .local v5, "inputId":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v8, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v7, v5, v8}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    nop

    .end local v4    # "info":Landroid/media/tv/TvInputInfo;
    .end local v5    # "inputId":Ljava/lang/String;
    goto :goto_49

    .line 2142
    :cond_6c
    monitor-exit v2

    goto :goto_71

    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_45 .. :try_end_70} :catchall_6e

    .end local v0    # "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "service":Landroid/media/tv/ITvInputManager;
    .end local p2    # "userId":I
    :try_start_70
    throw v3
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_71} :catch_73

    .line 2146
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v0    # "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "service":Landroid/media/tv/ITvInputManager;
    .restart local p2    # "userId":I
    :cond_71
    :goto_71
    nop

    .line 2147
    return-void

    .line 2144
    :catch_73
    move-exception v1

    .line 2145
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "tvInputSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;

    .line 2856
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    new-instance v2, Landroid/media/tv/TvInputManager$4;

    invoke-direct {v2, p0, p5, p6}, Landroid/media/tv/TvInputManager$4;-><init>(Landroid/media/tv/TvInputManager;Ljava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    iget v4, p0, Landroid/media/tv/TvInputManager;->mUserId:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_1e

    .line 2857
    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "deviceId":I
    .end local p2    # "info":Landroid/media/tv/TvInputInfo;
    .end local p3    # "tvInputSessionId":Ljava/lang/String;
    .end local p4    # "priorityHint":I
    .local v1, "deviceId":I
    .local v3, "info":Landroid/media/tv/TvInputInfo;
    .local v5, "tvInputSessionId":Ljava/lang/String;
    .local v6, "priorityHint":I
    :try_start_d
    invoke-interface/range {v0 .. v6}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object p1

    .line 2878
    .local p1, "hardware":Landroid/media/tv/ITvInputHardware;
    const/4 p2, 0x0

    if-nez p1, :cond_15

    .line 2879
    return-object p2

    .line 2881
    :cond_15
    new-instance p3, Landroid/media/tv/TvInputManager$Hardware;

    invoke-direct {p3, p1, p2}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager-IA;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    return-object p3

    .line 2882
    .end local p1    # "hardware":Landroid/media/tv/ITvInputHardware;
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_24

    .end local v1    # "deviceId":I
    .end local v3    # "info":Landroid/media/tv/TvInputInfo;
    .end local v5    # "tvInputSessionId":Ljava/lang/String;
    .end local v6    # "priorityHint":I
    .local p1, "deviceId":I
    .restart local p2    # "info":Landroid/media/tv/TvInputInfo;
    .restart local p3    # "tvInputSessionId":Ljava/lang/String;
    .restart local p4    # "priorityHint":I
    :catch_1e
    move-exception v0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object p1, v0

    .line 2883
    .end local p2    # "info":Landroid/media/tv/TvInputInfo;
    .end local p3    # "tvInputSessionId":Ljava/lang/String;
    .end local p4    # "priorityHint":I
    .restart local v1    # "deviceId":I
    .restart local v3    # "info":Landroid/media/tv/TvInputInfo;
    .restart local v5    # "tvInputSessionId":Ljava/lang/String;
    .restart local v6    # "priorityHint":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_24
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 19
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "tvAppAttributionSource"    # Landroid/content/AttributionSource;
    .param p3, "isRecordingSession"    # Z
    .param p4, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 2601
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    move-object v3, v0

    .line 2605
    .local v3, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2606
    :try_start_16
    iget v0, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    move v11, v0

    .line 2607
    .local v11, "seq":I
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_38

    .line 2609
    :try_start_22
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    iget v12, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p3

    invoke-interface/range {v6 .. v12}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_32
    .catchall {:try_start_22 .. :try_end_2f} :catchall_38

    .line 2613
    nop

    .line 2614
    .end local v11    # "seq":I
    :try_start_30
    monitor-exit v4

    .line 2615
    return-void

    .line 2611
    .restart local v11    # "seq":I
    :catch_32
    move-exception v0

    .line 2612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v3    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "tvAppAttributionSource":Landroid/content/AttributionSource;
    .end local p3    # "isRecordingSession":Z
    .end local p4    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .end local p5    # "handler":Landroid/os/Handler;
    throw v5

    .line 2614
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "seq":I
    .restart local v3    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "tvAppAttributionSource":Landroid/content/AttributionSource;
    .restart local p3    # "isRecordingSession":Z
    .restart local p4    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .restart local p5    # "handler":Landroid/os/Handler;
    :catchall_38
    move-exception v0

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private blacklist getClientPidInternal(Ljava/lang/String;)I
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 2618
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2619
    const/4 v0, -0x1

    .line 2621
    .local v0, "clientPid":I
    :try_start_4
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    .line 2624
    .end local v0    # "clientPid":I
    .local v1, "clientPid":I
    nop

    .line 2625
    return v1

    .line 2622
    .end local v1    # "clientPid":I
    .restart local v0    # "clientPid":I
    :catch_c
    move-exception v1

    .line 2623
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getClientPriorityInternal(ILjava/lang/String;)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 2642
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->getClientPriority(ILjava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2643
    :catch_7
    move-exception v0

    .line 2644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getClientUserIdInternal(Ljava/lang/String;)I
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 2630
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    const/4 v0, -0x1

    .line 2633
    .local v0, "clientUserId":I
    :try_start_4
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputManager;->getClientUserId(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    .line 2636
    .end local v0    # "clientUserId":I
    .local v1, "clientUserId":I
    nop

    .line 2637
    return v1

    .line 2634
    .end local v1    # "clientUserId":I
    .restart local v0    # "clientUserId":I
    :catch_c
    move-exception v1

    .line 2635
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist isValidUseCase(I)Z
    .registers 3
    .param p1, "useCase"    # I

    .line 2649
    const/16 v0, 0x64

    if-eq p1, v0, :cond_17

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_17

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_17

    const/16 v0, 0x190

    if-eq p1, v0, :cond_17

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method


# virtual methods
.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2773
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    new-instance v5, Landroid/media/tv/TvInputManager$3;

    invoke-direct {v5, p0}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;)V

    const/4 v3, 0x0

    const/16 v4, 0x190

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    .end local p1    # "deviceId":I
    .end local p2    # "info":Landroid/media/tv/TvInputInfo;
    .end local p3    # "callback":Landroid/media/tv/TvInputManager$HardwareCallback;
    .local v1, "deviceId":I
    .local v2, "info":Landroid/media/tv/TvInputInfo;
    .local v6, "callback":Landroid/media/tv/TvInputManager$HardwareCallback;
    invoke-direct/range {v0 .. v6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object p1

    return-object p1
.end method

.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "tvInputSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2812
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2813
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public greylist acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2747
    invoke-virtual {p0, p1, p3, p2}, Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 5
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2390
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 2395
    nop

    .line 2396
    return-void

    .line 2393
    :catch_10
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addHardwareDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 2829
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->addHardwareDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2832
    nop

    .line 2833
    return-void

    .line 2830
    :catch_7
    move-exception v0

    .line 2831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2693
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2694
    :catch_9
    move-exception v0

    .line 2695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 2596
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .local v1, "inputId":Ljava/lang/String;
    .local v4, "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2597
    return-void
.end method

.method public blacklist createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "tvAppAttributionSource"    # Landroid/content/AttributionSource;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2504
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "tvAppAttributionSource":Landroid/content/AttributionSource;
    .end local p3    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v1, "inputId":Ljava/lang/String;
    .local v2, "tvAppAttributionSource":Landroid/content/AttributionSource;
    .local v4, "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2505
    return-void
.end method

.method public whitelist getAvailableExtensionInterfaceNames(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2248
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    .line 2251
    :catch_c
    move-exception v0

    .line 2252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .line 2674
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2675
    :catch_9
    move-exception v0

    .line 2676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBlockedRatings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    .line 2369
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v0, "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2371
    .local v2, "rating":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_27

    .line 2372
    nop

    .end local v2    # "rating":Ljava/lang/String;
    goto :goto_11

    .line 2373
    :cond_26
    return-object v0

    .line 2374
    .end local v0    # "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    :catch_27
    move-exception v0

    .line 2375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getClientPid(Ljava/lang/String;)I
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2519
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->getClientPidInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getClientPriority(I)I
    .registers 5
    .param p1, "useCase"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2578
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2581
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 2579
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getClientPriority(ILjava/lang/String;)I
    .registers 6
    .param p1, "useCase"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2556
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2560
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 2558
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getClientUserId(Ljava/lang/String;)I
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2535
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->getClientUserIdInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getCurrentTunedInfos()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    .line 2981
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2982
    :catch_9
    move-exception v0

    .line 2983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDvbDeviceList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 2916
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2917
    :catch_7
    move-exception v0

    .line 2918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExtensionInterface(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2274
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    :try_start_6
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/ITvInputManager;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 2278
    :catch_f
    move-exception v0

    .line 2279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHardwareList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .line 2723
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2724
    :catch_7
    move-exception v0

    .line 2725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInputState(Ljava/lang/String;)I
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2219
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2221
    :try_start_6
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2222
    .local v1, "state":Ljava/lang/Integer;
    if-nez v1, :cond_2b

    .line 2223
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized input ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 2226
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 2227
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist getTvContentRatingSystemList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .line 2425
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2426
    :catch_9
    move-exception v0

    .line 2427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2170
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    .line 2173
    :catch_c
    move-exception v0

    .line 2174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .line 2156
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2157
    :catch_9
    move-exception v0

    .line 2158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isParentalControlsEnabled()Z
    .registers 3

    .line 2323
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2324
    :catch_9
    move-exception v0

    .line 2325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .registers 5
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 2354
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 2357
    :catch_10
    move-exception v0

    .line 2358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSingleSessionActive()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2708
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2709
    :catch_9
    move-exception v0

    .line 2710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyPreviewProgramAddedToWatchNext(Ljava/lang/String;JJ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "previewProgramId"    # J
    .param p4, "watchNextProgramId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2478
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2480
    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2481
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2483
    :try_start_17
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_20

    .line 2486
    nop

    .line 2487
    return-void

    .line 2484
    :catch_20
    move-exception v1

    .line 2485
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyPreviewProgramBrowsableDisabled(Ljava/lang/String;J)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "programId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2440
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2441
    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2442
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1b

    .line 2447
    nop

    .line 2448
    return-void

    .line 2445
    :catch_1b
    move-exception v1

    .line 2446
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyWatchNextProgramBrowsableDisabled(Ljava/lang/String;J)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "programId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2461
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2463
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1b

    .line 2466
    nop

    .line 2467
    return-void

    .line 2464
    :catch_1b
    move-exception v1

    .line 2465
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "deviceType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2942
    if-ltz p2, :cond_c

    const/4 v0, 0x2

    if-lt v0, p2, :cond_c

    .line 2945
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 2943
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .end local p2    # "deviceType":I
    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_25

    .line 2946
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .restart local p2    # "deviceType":I
    :catch_25
    move-exception v0

    .line 2947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2290
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2293
    :try_start_9
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    monitor-exit v0

    .line 2295
    return-void

    .line 2294
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/TvInputManager$Hardware;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2899
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->-$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 2902
    nop

    .line 2903
    return-void

    .line 2900
    :catch_d
    move-exception v0

    .line 2901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 5
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2409
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 2414
    nop

    .line 2415
    return-void

    .line 2412
    :catch_10
    move-exception v0

    .line 2413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeHardwareDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 2846
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->removeHardwareDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2849
    nop

    .line 2850
    return-void

    .line 2847
    :catch_7
    move-exception v0

    .line 2848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o requestChannelBrowsable(Landroid/net/Uri;)V
    .registers 4
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2962
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2965
    nop

    .line 2966
    return-void

    .line 2963
    :catch_9
    move-exception v0

    .line 2964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setParentalControlsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2341
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2344
    nop

    .line 2345
    return-void

    .line 2342
    :catch_9
    move-exception v0

    .line 2343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 2303
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2305
    :try_start_6
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2306
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2308
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 2309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2310
    goto :goto_23

    .line 2312
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :cond_22
    goto :goto_c

    .line 2313
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 2314
    return-void

    .line 2313
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V
    .registers 4
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2196
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 2201
    nop

    .line 2202
    return-void

    .line 2199
    :catch_c
    move-exception v0

    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
