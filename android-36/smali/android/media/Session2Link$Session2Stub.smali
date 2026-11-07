.class Landroid/media/Session2Link$Session2Stub;
.super Landroid/media/IMediaSession2$Stub;
.source "Session2Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Session2Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Session2Stub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Session2Link;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Session2Link;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Landroid/media/Session2Link$Session2Stub;->this$0:Landroid/media/Session2Link;

    invoke-direct {p0}, Landroid/media/IMediaSession2$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Session2Link;Landroid/media/Session2Link-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/Session2Link$Session2Stub;-><init>(Landroid/media/Session2Link;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelSessionCommand(Landroid/media/Controller2Link;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    :try_start_7
    iget-object p0, p0, Landroid/media/Session2Link$Session2Stub;->this$0:Landroid/media/Session2Link;

    invoke-virtual {p0, p1, p2}, Landroid/media/Session2Link;->onCancelCommand(Landroid/media/Controller2Link;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw p0
.end method

.method public blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .registers 12

    if-eqz p1, :cond_23

    if-nez p3, :cond_5

    goto :goto_23

    .line 176
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 180
    :try_start_11
    iget-object v0, p0, Landroid/media/Session2Link$Session2Stub;->this$0:Landroid/media/Session2Link;

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/Session2Link;->onConnect(Landroid/media/Controller2Link;IIILandroid/os/Bundle;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 182
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist disconnect(Landroid/media/Controller2Link;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 191
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 193
    :try_start_7
    iget-object p0, p0, Landroid/media/Session2Link$Session2Stub;->this$0:Landroid/media/Session2Link;

    invoke-virtual {p0, p1, p2}, Landroid/media/Session2Link;->onDisconnect(Landroid/media/Controller2Link;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    throw p0
.end method

.method public blacklist sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 205
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 207
    :try_start_7
    iget-object p0, p0, Landroid/media/Session2Link$Session2Stub;->this$0:Landroid/media/Session2Link;

    invoke-virtual/range {p0 .. p5}, Landroid/media/Session2Link;->onSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 209
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    throw p0
.end method
