.class Landroid/support/v4/media/session/MediaControllerCompatApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static adjustVolume(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 109
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    #@5
    .line 108
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    #@0
    .prologue
    .line 42
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V

    #@5
    return-object v0
.end method

.method public static dispatchMediaButtonEvent(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 101
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionToken"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/media/session/MediaController;

    #@2
    check-cast p1, Landroid/media/session/MediaSession$Token;

    #@4
    .end local p1    # "sessionToken":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    #@7
    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 81
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getFlags(Ljava/lang/Object;)J
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 89
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getFlags()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getPlaybackInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 93
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getPlaybackState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getQueue(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 68
    check-cast p0, Landroid/media/session/MediaController;

    #@3
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    .line 69
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez v0, :cond_0

    #@9
    .line 70
    return-object v2

    #@a
    .line 72
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    .line 73
    .local v1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    return-object v1
.end method

.method public static getQueueTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getRatingType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 85
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getRatingType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getSessionActivity(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static registerCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 46
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .line 47
    .end local p0    # "controllerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaController$Callback;

    #@4
    .line 46
    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    #@7
    .line 45
    return-void
.end method

.method public static sendCommand(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 114
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@5
    .line 113
    return-void
.end method

.method public static setVolumeTo(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "value"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 105
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    #@5
    .line 104
    return-void
.end method

.method public static unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    check-cast p0, Landroid/media/session/MediaController;

    #@2
    .line 52
    .end local p0    # "controllerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaController$Callback;

    #@4
    .line 51
    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    #@7
    .line 50
    return-void
.end method
