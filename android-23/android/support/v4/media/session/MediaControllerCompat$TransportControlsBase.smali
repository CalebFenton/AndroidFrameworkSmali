.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0
    .param p1, "binder"    # Landroid/support/v4/media/session/IMediaSession;

    #@0
    .prologue
    .line 1001
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    #@3
    .line 1002
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@5
    .line 1001
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 4

    #@0
    .prologue
    .line 1080
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->fastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1078
    :goto_0
    return-void

    #@6
    .line 1081
    :catch_0
    move-exception v0

    #@7
    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in fastForward. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public pause()V
    .locals 4

    #@0
    .prologue
    .line 1053
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1051
    :goto_0
    return-void

    #@6
    .line 1054
    :catch_0
    move-exception v0

    #@7
    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in pause. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public play()V
    .locals 4

    #@0
    .prologue
    .line 1008
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1006
    :goto_0
    return-void

    #@6
    .line 1009
    :catch_0
    move-exception v0

    #@7
    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in play. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1015
    :goto_0
    return-void

    #@6
    .line 1018
    :catch_0
    move-exception v0

    #@7
    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in playFromMediaId. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1026
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1024
    :goto_0
    return-void

    #@6
    .line 1027
    :catch_0
    move-exception v0

    #@7
    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in playFromSearch. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1033
    :goto_0
    return-void

    #@6
    .line 1036
    :catch_0
    move-exception v0

    #@7
    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in playFromUri. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public rewind()V
    .locals 4

    #@0
    .prologue
    .line 1098
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->rewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1096
    :goto_0
    return-void

    #@6
    .line 1099
    :catch_0
    move-exception v0

    #@7
    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in rewind. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 5
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->seekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1069
    :goto_0
    return-void

    #@6
    .line 1072
    :catch_0
    move-exception v0

    #@7
    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in seekTo. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "customAction"    # Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1124
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    .line 1123
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1130
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1128
    :goto_0
    return-void

    #@6
    .line 1131
    :catch_0
    move-exception v0

    #@7
    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in sendCustomAction. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 4
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;

    #@0
    .prologue
    .line 1116
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->rate(Landroid/support/v4/media/RatingCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1114
    :goto_0
    return-void

    #@6
    .line 1117
    :catch_0
    move-exception v0

    #@7
    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in setRating. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public skipToNext()V
    .locals 4

    #@0
    .prologue
    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1087
    :goto_0
    return-void

    #@6
    .line 1090
    :catch_0
    move-exception v0

    #@7
    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in skipToNext. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public skipToPrevious()V
    .locals 4

    #@0
    .prologue
    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->previous()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1105
    :goto_0
    return-void

    #@6
    .line 1108
    :catch_0
    move-exception v0

    #@7
    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in skipToPrevious. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public skipToQueueItem(J)V
    .locals 5
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->skipToQueueItem(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1042
    :goto_0
    return-void

    #@6
    .line 1045
    :catch_0
    move-exception v0

    #@7
    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in skipToQueueItem. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method public stop()V
    .locals 4

    #@0
    .prologue
    .line 1062
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    #@2
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1060
    :goto_0
    return-void

    #@6
    .line 1063
    :catch_0
    move-exception v0

    #@7
    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaControllerCompat"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Dead object in stop. "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method
