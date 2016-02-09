.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi21"
.end annotation


# instance fields
.field protected final mControlsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "controlsObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1264
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    #@3
    .line 1265
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@5
    .line 1264
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    #@0
    .prologue
    .line 1290
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V

    #@5
    .line 1289
    return-void
.end method

.method public pause()V
    .locals 1

    #@0
    .prologue
    .line 1275
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V

    #@5
    .line 1274
    return-void
.end method

.method public play()V
    .locals 1

    #@0
    .prologue
    .line 1270
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V

    #@5
    .line 1269
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1316
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 1315
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1322
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 1321
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1327
    return-void
.end method

.method public rewind()V
    .locals 1

    #@0
    .prologue
    .line 1295
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V

    #@5
    .line 1294
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 1285
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->seekTo(Ljava/lang/Object;J)V

    #@5
    .line 1284
    return-void
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "customAction"    # Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    .line 1338
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1337
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    #@9
    .line 1336
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1343
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 1342
    return-void
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1310
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@3
    .line 1311
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 1310
    :cond_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V

    #@c
    .line 1309
    return-void
.end method

.method public skipToNext()V
    .locals 1

    #@0
    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V

    #@5
    .line 1299
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    #@0
    .prologue
    .line 1305
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V

    #@5
    .line 1304
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToQueueItem(Ljava/lang/Object;J)V

    #@5
    .line 1331
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V

    #@5
    .line 1279
    return-void
.end method
