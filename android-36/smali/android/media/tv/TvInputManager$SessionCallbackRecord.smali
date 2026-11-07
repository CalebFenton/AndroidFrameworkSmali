.class final Landroid/media/tv/TvInputManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private final greylist-max-o mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "sessionCallback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    .line 1172
    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 1173
    return-void
.end method


# virtual methods
.method blacklist postAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 4
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1491
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1492
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$30;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$30;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AdBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1501
    :cond_12
    return-void
.end method

.method blacklist postAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 4
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1478
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1479
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$29;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$29;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1488
    :cond_12
    return-void
.end method

.method blacklist postAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .registers 4
    .param p1, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1369
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AitInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1375
    return-void
.end method

.method blacklist postAudioPresentationSelected(II)V
    .registers 5
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 1213
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    return-void
.end method

.method blacklist postAudioPresentationsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 1204
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1210
    return-void
.end method

.method blacklist postAvailableSpeeds([F)V
    .registers 4
    .param p1, "speeds"    # [F

    .line 1409
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$23;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$23;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1415
    return-void
.end method

.method blacklist postBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 4
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1464
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1465
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$28;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$28;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/BroadcastInfoResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1475
    :cond_12
    return-void
.end method

.method greylist-max-o postChannelRetuned(Landroid/net/Uri;)V
    .registers 4
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1195
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1201
    return-void
.end method

.method greylist-max-o postContentAllowed()V
    .registers 3

    .line 1297
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1307
    return-void
.end method

.method greylist-max-o postContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1310
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvContentRating;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method

.method blacklist postCueingMessageAvailability(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 1391
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$21;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$21;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1397
    return-void
.end method

.method greylist-max-o postError(I)V
    .registers 4
    .param p1, "error"    # I

    .line 1455
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$27;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$27;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1461
    return-void
.end method

.method greylist-max-o postLayoutSurface(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1324
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;

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
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    return-void
.end method

.method greylist-max-o postRecordingStopped(Landroid/net/Uri;)V
    .registers 4
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 1445
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$26;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$26;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1451
    return-void
.end method

.method greylist-max-o postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 1176
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 1177
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1183
    return-void
.end method

.method greylist-max-o postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .line 1333
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1339
    return-void
.end method

.method greylist-max-o postSessionReleased()V
    .registers 3

    .line 1186
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method

.method blacklist postSignalStrength(I)V
    .registers 4
    .param p1, "strength"    # I

    .line 1378
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$20;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$20;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1388
    return-void
.end method

.method greylist-max-o postTimeShiftCurrentPositionChanged(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 1360
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$18;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$18;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method blacklist postTimeShiftMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1400
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$22;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$22;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1406
    return-void
.end method

.method greylist-max-o postTimeShiftStartPositionChanged(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 1351
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$17;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$17;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1357
    return-void
.end method

.method greylist-max-o postTimeShiftStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1342
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$16;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$16;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1348
    return-void
.end method

.method greylist-max-o postTrackSelected(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1236
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1246
    return-void
.end method

.method greylist-max-o postTracksChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1223
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1233
    return-void
.end method

.method greylist-max-o postTuned(Landroid/net/Uri;)V
    .registers 4
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1418
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$24;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$24;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1428
    return-void
.end method

.method blacklist postTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1504
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$31;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$31;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1512
    return-void
.end method

.method blacklist postTvMessage(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1431
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$25;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$25;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1441
    return-void
.end method

.method greylist-max-o postVideoAvailable()V
    .registers 3

    .line 1258
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1268
    return-void
.end method

.method blacklist postVideoFreezeUpdated(Z)V
    .registers 4
    .param p1, "isFrozen"    # Z

    .line 1284
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1294
    return-void
.end method

.method greylist-max-o postVideoSizeChanged(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1249
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1255
    return-void
.end method

.method greylist-max-o postVideoUnavailable(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1271
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    return-void
.end method
