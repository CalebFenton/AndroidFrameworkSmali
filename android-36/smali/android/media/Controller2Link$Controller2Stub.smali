.class Landroid/media/Controller2Link$Controller2Stub;
.super Landroid/media/IMediaController2$Stub;
.source "Controller2Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Controller2Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Stub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Controller2Link;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Controller2Link;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-direct {p0}, Landroid/media/IMediaController2$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Controller2Link;Landroid/media/Controller2Link-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/Controller2Link$Controller2Stub;-><init>(Landroid/media/Controller2Link;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelSessionCommand(I)V
    .registers 4

    .line 208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 210
    :try_start_4
    iget-object p0, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-virtual {p0, p1}, Landroid/media/Controller2Link;->onCancelCommand(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    throw p0
.end method

.method public blacklist notifyConnected(ILandroid/os/Bundle;)V
    .registers 5

    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 169
    :try_start_4
    iget-object p0, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-virtual {p0, p1, p2}, Landroid/media/Controller2Link;->onConnected(ILandroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw p0
.end method

.method public blacklist notifyDisconnected(I)V
    .registers 4

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    :try_start_4
    iget-object p0, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-virtual {p0, p1}, Landroid/media/Controller2Link;->onDisconnected(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw p0
.end method

.method public blacklist notifyPlaybackActiveChanged(IZ)V
    .registers 5

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 189
    :try_start_4
    iget-object p0, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-virtual {p0, p1, p2}, Landroid/media/Controller2Link;->onPlaybackActiveChanged(IZ)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    throw p0
.end method

.method public blacklist sendSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 200
    :try_start_4
    iget-object p0, p0, Landroid/media/Controller2Link$Controller2Stub;->this$0:Landroid/media/Controller2Link;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/Controller2Link;->onSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw p0
.end method
