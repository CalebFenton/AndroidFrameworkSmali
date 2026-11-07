.class final Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private final blacklist mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "sessionCallback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    .line 2059
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 2060
    return-void
.end method


# virtual methods
.method blacklist postAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 4
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 2360
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$32;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$32;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/AdBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2368
    return-void
.end method

.method blacklist postAdRequest(Landroid/media/tv/AdRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 2322
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$28;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$28;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2330
    return-void
.end method

.method blacklist postBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;

    .line 2342
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$30;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$30;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2348
    return-void
.end method

.method blacklist postBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 2092
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2100
    return-void
.end method

.method blacklist postCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 2116
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2122
    return-void
.end method

.method blacklist postLayoutSurface(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2083
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2089
    return-void
.end method

.method blacklist postRemoveBroadcastInfo(I)V
    .registers 4
    .param p1, "requestId"    # I

    .line 2103
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2111
    return-void
.end method

.method blacklist postRequestAvailableSpeeds()V
    .registers 3

    .line 2217
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$17;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$17;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2223
    return-void
.end method

.method blacklist postRequestCertificate(Ljava/lang/String;I)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 2286
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$24;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$24;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2292
    return-void
.end method

.method blacklist postRequestCurrentChannelLcn()V
    .registers 3

    .line 2163
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$11;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2169
    return-void
.end method

.method blacklist postRequestCurrentChannelUri()V
    .registers 3

    .line 2154
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$10;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2160
    return-void
.end method

.method blacklist postRequestCurrentTvInputId()V
    .registers 3

    .line 2199
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$15;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2205
    return-void
.end method

.method blacklist postRequestCurrentVideoBounds()V
    .registers 3

    .line 2145
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2151
    return-void
.end method

.method blacklist postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 22
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;

    .line 2256
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2263
    return-void
.end method

.method blacklist postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 2245
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .local v3, "requestId":Ljava/lang/String;
    .local v4, "inputId":Ljava/lang/String;
    .local v5, "channelUri":Landroid/net/Uri;
    .local v6, "programUri":Landroid/net/Uri;
    .local v7, "params":Landroid/os/Bundle;
    invoke-direct/range {v1 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2252
    return-void
.end method

.method blacklist postRequestSelectedTrackInfo()V
    .registers 3

    .line 2190
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$14;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2196
    return-void
.end method

.method blacklist postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "data"    # [B

    .line 2276
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$23;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "data":[B
    .local v3, "id":Ljava/lang/String;
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "host":Ljava/lang/String;
    .local v6, "port":I
    .local v7, "data":[B
    invoke-direct/range {v1 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$23;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2283
    return-void
.end method

.method blacklist postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 2266
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$22;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .local v3, "id":Ljava/lang/String;
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "alias":Ljava/lang/String;
    .local v6, "data":[B
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$22;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2272
    return-void
.end method

.method blacklist postRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;

    .line 2226
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$18;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$18;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2232
    return-void
.end method

.method blacklist postRequestStopRecording(Ljava/lang/String;)V
    .registers 4
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 2235
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$19;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$19;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2241
    return-void
.end method

.method blacklist postRequestStreamVolume()V
    .registers 3

    .line 2172
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$12;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2178
    return-void
.end method

.method blacklist postRequestTimeShiftMode()V
    .registers 3

    .line 2208
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$16;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2214
    return-void
.end method

.method blacklist postRequestTrackInfoList()V
    .registers 3

    .line 2181
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2187
    return-void
.end method

.method blacklist postRequestTvRecordingInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 2295
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$25;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$25;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2301
    return-void
.end method

.method blacklist postRequestTvRecordingInfoList(I)V
    .registers 4
    .param p1, "type"    # I

    .line 2304
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$26;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$26;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2310
    return-void
.end method

.method blacklist postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2063
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 2064
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2070
    return-void
.end method

.method blacklist postSessionReleased()V
    .registers 3

    .line 2073
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2079
    return-void
.end method

.method blacklist postSessionStateChanged(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 2333
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$29;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$29;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2339
    return-void
.end method

.method blacklist postSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 2313
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$27;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$27;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2319
    return-void
.end method

.method blacklist postSetVideoBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2136
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$8;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2142
    return-void
.end method

.method blacklist postTeletextAppStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2351
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$31;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$31;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2357
    return-void
.end method

.method blacklist postTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 2127
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2133
    return-void
.end method
