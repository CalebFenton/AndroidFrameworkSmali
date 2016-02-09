.class public Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SEEK_TO:J = 0x100L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    #@5
    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    #@0
    .prologue
    .line 73
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    #@3
    move-result v0

    #@4
    .line 74
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x100

    #@6
    and-long/2addr v2, p0

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 75
    or-int/lit16 v0, v0, 0x100

    #@f
    .line 77
    :cond_0
    return v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 34
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 35
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    #@c
    .line 33
    return-void
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onPositionUpdateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 67
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 68
    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@4
    .line 67
    .end local p1    # "onPositionUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    #@7
    .line 66
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .locals 8
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "speed"    # F
    .param p5, "updateTime"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    .line 46
    .local v0, "currTime":J
    const/4 v4, 0x3

    #@7
    if-ne p1, v4, :cond_1

    #@9
    cmp-long v4, p2, v6

    #@b
    if-lez v4, :cond_1

    #@d
    .line 47
    const-wide/16 v2, 0x0

    #@f
    .line 48
    .local v2, "diff":J
    cmp-long v4, p5, v6

    #@11
    if-lez v4, :cond_0

    #@13
    .line 49
    sub-long v2, v0, p5

    #@15
    .line 50
    const/4 v4, 0x0

    #@16
    cmpl-float v4, p4, v4

    #@18
    if-lez v4, :cond_0

    #@1a
    const/high16 v4, 0x3f800000    # 1.0f

    #@1c
    cmpl-float v4, p4, v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 51
    long-to-float v4, v2

    #@21
    mul-float/2addr v4, p4

    #@22
    float-to-long v2, v4

    #@23
    .line 54
    :cond_0
    add-long/2addr p2, v2

    #@24
    .line 56
    .end local v2    # "diff":J
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    #@27
    move-result p1

    #@28
    .line 57
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2a
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    #@2d
    .line 44
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    #@0
    .prologue
    .line 61
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 62
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    #@5
    move-result v0

    #@6
    .line 61
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    #@9
    .line 60
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 39
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 40
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    #@c
    .line 38
    return-void
.end method
