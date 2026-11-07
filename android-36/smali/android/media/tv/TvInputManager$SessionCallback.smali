.class public abstract Landroid/media/tv/TvInputManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAitInfoUpdated(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/AitInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1072
    return-void
.end method

.method public blacklist onAudioPresentationSelected(Landroid/media/tv/TvInputManager$Session;II)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "presentationId"    # I
    .param p3, "programId"    # I

    .line 923
    return-void
.end method

.method public blacklist onAudioPresentationsChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p2, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    return-void
.end method

.method public blacklist onAvailableSpeeds(Landroid/media/tv/TvInputManager$Session;[F)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "speeds"    # [F

    .line 1114
    return-void
.end method

.method public greylist-max-o onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 902
    return-void
.end method

.method public greylist-max-o onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 999
    return-void
.end method

.method public greylist-max-o onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1009
    return-void
.end method

.method public blacklist onCueingMessageAvailability(Landroid/media/tv/TvInputManager$Session;Z)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "available"    # Z

    .line 1089
    return-void
.end method

.method greylist-max-o onError(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "error"    # I

    .line 1161
    return-void
.end method

.method public greylist-max-o onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .registers 6
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1022
    return-void
.end method

.method greylist-max-o onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    .line 1151
    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 883
    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .line 1032
    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 892
    return-void
.end method

.method public blacklist onSignalStrengthUpdated(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "strength"    # I

    .line 1080
    return-void
.end method

.method public greylist-max-o onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .line 1064
    return-void
.end method

.method public blacklist onTimeShiftMode(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "mode"    # I

    .line 1100
    return-void
.end method

.method public greylist-max-o onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .line 1055
    return-void
.end method

.method public greylist-max-o onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "status"    # I

    .line 1046
    return-void
.end method

.method public greylist-max-o onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .line 945
    return-void
.end method

.method public greylist-max-o onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 932
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public greylist-max-o onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1122
    return-void
.end method

.method public blacklist onTvMessage(Landroid/media/tv/TvInputManager$Session;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 1140
    return-void
.end method

.method public greylist-max-o onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 965
    return-void
.end method

.method public blacklist onVideoFreezeUpdated(Landroid/media/tv/TvInputManager$Session;Z)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "isFrozen"    # Z

    .line 990
    return-void
.end method

.method public greylist-max-o onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 957
    return-void
.end method

.method public greylist-max-o onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    .line 981
    return-void
.end method
