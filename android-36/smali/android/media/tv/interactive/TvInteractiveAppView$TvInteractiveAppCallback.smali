.class public abstract Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInteractiveAppCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "biIAppUri"    # Landroid/net/Uri;
    .param p3, "biIAppId"    # Ljava/lang/String;

    .line 1215
    return-void
.end method

.method public whitelist onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .line 1170
    return-void
.end method

.method public whitelist onRequestAvailableSpeeds(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1317
    return-void
.end method

.method public whitelist onRequestCertificate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 1454
    return-void
.end method

.method public whitelist onRequestCurrentChannelLcn(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1262
    return-void
.end method

.method public whitelist onRequestCurrentChannelUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1253
    return-void
.end method

.method public whitelist onRequestCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1299
    return-void
.end method

.method public whitelist onRequestCurrentVideoBounds(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1244
    return-void
.end method

.method public whitelist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 11
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "channelUri"    # Landroid/net/Uri;
    .param p5, "startTime"    # J
    .param p7, "duration"    # J
    .param p9, "repeatDays"    # I
    .param p10, "params"    # Landroid/os/Bundle;

    .line 1407
    return-void
.end method

.method public whitelist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "channelUri"    # Landroid/net/Uri;
    .param p5, "programUri"    # Landroid/net/Uri;
    .param p6, "params"    # Landroid/os/Bundle;

    .line 1378
    return-void
.end method

.method public whitelist onRequestSelectedTrackInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1290
    return-void
.end method

.method public whitelist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 7
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "data"    # [B

    .line 1441
    return-void
.end method

.method public whitelist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .line 1423
    return-void
.end method

.method public whitelist onRequestStartRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "programUri"    # Landroid/net/Uri;

    .line 1336
    return-void
.end method

.method public whitelist onRequestStopRecording(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "recordingId"    # Ljava/lang/String;

    .line 1351
    return-void
.end method

.method public whitelist onRequestStreamVolume(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1271
    return-void
.end method

.method public whitelist onRequestTimeShiftMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1308
    return-void
.end method

.method public whitelist onRequestTrackInfoList(Ljava/lang/String;)V
    .registers 2
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 1280
    return-void
.end method

.method public whitelist onRequestTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "recordingId"    # Ljava/lang/String;

    .line 1484
    return-void
.end method

.method public whitelist onRequestTvRecordingInfoList(Ljava/lang/String;I)V
    .registers 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1497
    return-void
.end method

.method public whitelist onSetTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "recordingId"    # Ljava/lang/String;
    .param p3, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1469
    return-void
.end method

.method public whitelist onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 1235
    return-void
.end method

.method public whitelist onStateChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "err"    # I

    .line 1199
    return-void
.end method

.method public whitelist onTeletextAppStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1226
    return-void
.end method

.method public whitelist onTimeShiftCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .line 1184
    return-void
.end method
