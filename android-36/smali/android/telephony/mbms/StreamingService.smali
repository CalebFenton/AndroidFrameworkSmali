.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingService$StreamingStateChangeReason;,
        Landroid/telephony/mbms/StreamingService$StreamingState;
    }
.end annotation


# static fields
.field public static final whitelist BROADCAST_METHOD:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final whitelist REASON_BY_USER_REQUEST:I = 0x1

.field public static final whitelist REASON_END_OF_SESSION:I = 0x2

.field public static final whitelist REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final whitelist REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final whitelist REASON_OUT_OF_MEMORY:I = 0x4

.field public static final whitelist STATE_STALLED:I = 0x3

.field public static final whitelist STATE_STARTED:I = 0x2

.field public static final whitelist STATE_STOPPED:I = 0x1

.field public static final whitelist UNICAST_METHOD:I = 0x2


# instance fields
.field private final greylist-max-o mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final greylist-max-o mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private greylist-max-o mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final greylist-max-o mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final greylist-max-o mSubscriptionId:I


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "service"    # Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .param p3, "session"    # Landroid/telephony/MbmsStreamingSession;
    .param p4, "streamingServiceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p5, "callback"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 122
    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 123
    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 124
    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 125
    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 126
    return-void
.end method

.method private greylist-max-o sendErrorToApp(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 192
    goto :goto_7

    .line 190
    :catch_6
    move-exception v0

    .line 193
    :goto_7
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 167
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_30

    .line 172
    :try_start_4
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_19
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 178
    :goto_11
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 179
    goto :goto_29

    .line 178
    :catchall_17
    move-exception v0

    goto :goto_2a

    .line 173
    :catch_19
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 176
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_17

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 180
    :goto_29
    return-void

    .line 178
    :goto_2a
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 179
    throw v0

    .line 168
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public whitelist getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public whitelist getPlaybackUri()Landroid/net/Uri;
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_28

    .line 142
    :try_start_4
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 143
    :catch_13
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 146
    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 147
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    .line 148
    return-object v1

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
