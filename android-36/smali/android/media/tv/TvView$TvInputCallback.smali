.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1266
    return-void
.end method

.method public whitelist onAudioPresentationSelected(Ljava/lang/String;II)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "presentationId"    # I
    .param p3, "programId"    # I

    .line 1154
    return-void
.end method

.method public whitelist onAudioPresentationsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 1143
    .local p2, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    return-void
.end method

.method public whitelist onAvailableSpeeds(Ljava/lang/String;[F)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "speeds"    # [F

    .line 1314
    return-void
.end method

.method public whitelist onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1133
    return-void
.end method

.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1115
    return-void
.end method

.method public whitelist onContentAllowed(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1221
    return-void
.end method

.method public whitelist onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1231
    return-void
.end method

.method public whitelist onCueingMessageAvailability(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "available"    # Z

    .line 1286
    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1123
    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1243
    return-void
.end method

.method public whitelist onSignalStrengthUpdated(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "strength"    # I

    .line 1276
    return-void
.end method

.method public whitelist onTimeShiftMode(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1299
    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1258
    return-void
.end method

.method public whitelist onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .line 1175
    return-void
.end method

.method public whitelist onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1163
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1322
    return-void
.end method

.method public whitelist onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 1340
    return-void
.end method

.method public whitelist onVideoAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1195
    return-void
.end method

.method public whitelist onVideoFreezeUpdated(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "isFrozen"    # Z

    .line 1350
    return-void
.end method

.method public whitelist onVideoSizeChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1187
    return-void
.end method

.method public whitelist onVideoUnavailable(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1212
    return-void
.end method
