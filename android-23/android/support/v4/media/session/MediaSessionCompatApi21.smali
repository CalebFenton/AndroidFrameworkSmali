.class Landroid/support/v4/media/session/MediaSessionCompatApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    #@5
    return-object v0
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/media/session/MediaSession;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "sessionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static isActive(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "sessionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 84
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->isActive()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 92
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    #@5
    .line 91
    return-void
.end method

.method public static sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 88
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 87
    return-void
.end method

.method public static setActive(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 80
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    #@5
    .line 79
    return-void
.end method

.method public static setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 61
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaSession$Callback;

    #@4
    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    #@7
    .line 60
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 132
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    #@5
    .line 131
    return-void
.end method

.method public static setFlags(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 65
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    #@5
    .line 64
    return-void
.end method

.method public static setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 112
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    #@5
    .line 111
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "metadataObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaMetadata;

    #@4
    .end local p1    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    #@7
    .line 103
    return-void
.end method

.method public static setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 100
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/PlaybackState;

    #@4
    .end local p1    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    #@7
    .line 99
    return-void
.end method

.method public static setPlaybackToLocal(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 71
    .local v0, "bob":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@8
    .line 72
    check-cast p0, Landroid/media/session/MediaSession;

    #@a
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    #@11
    .line 68
    return-void
.end method

.method public static setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "volumeProviderObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 76
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/VolumeProvider;

    #@4
    .end local p1    # "volumeProviderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    #@7
    .line 75
    return-void
.end method

.method public static setQueue(Ljava/lang/Object;Ljava/util/List;)V
    .locals 4
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    #@1
    .line 116
    if-nez p1, :cond_0

    #@3
    .line 117
    check-cast p0, Landroid/media/session/MediaSession;

    #@5
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    #@8
    .line 118
    return-void

    #@9
    .line 120
    .restart local p0    # "sessionObj":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 121
    .local v2, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "itemObj$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 122
    .local v0, "itemObj":Ljava/lang/Object;
    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    #@1e
    .end local v0    # "itemObj":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 124
    :cond_1
    check-cast p0, Landroid/media/session/MediaSession;

    #@24
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    #@27
    .line 115
    return-void
.end method

.method public static setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 128
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 127
    return-void
.end method

.method public static setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 108
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    #@5
    .line 107
    return-void
.end method

.method public static verifySession(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "mediaSession"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 43
    instance-of v0, p0, Landroid/media/session/MediaSession;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 44
    return-object p0

    #@5
    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "mediaSession is not a valid MediaSession object"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public static verifyToken(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 51
    return-object p0

    #@5
    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "token is not a valid MediaSession.Token object"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method
