.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final greylist-max-o DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final greylist-max-o DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final greylist-max-o DISPLAY_FLAG_SECURE:I = 0x1


# instance fields
.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mListener:Landroid/media/RemoteDisplay$Listener;

.field private final greylist-max-o mOpPackageName:Ljava/lang/String;

.field private greylist-max-o mPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 52
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 53
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .line 107
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 108
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_19

    .line 109
    if-eqz p1, :cond_14

    .line 110
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    goto :goto_19

    .line 112
    :cond_14
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 116
    :cond_19
    :goto_19
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeDispose(J)V

    .line 117
    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 119
    :cond_20
    return-void
.end method

.method public static greylist-max-o listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .registers 6
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 75
    if-eqz p0, :cond_1f

    .line 78
    if-eqz p1, :cond_17

    .line 81
    if-eqz p2, :cond_f

    .line 85
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V

    .line 86
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 87
    return-object v0

    .line 82
    .end local v0    # "display":Landroid/media/RemoteDisplay;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native greylist-max-o nativeDispose(J)V
.end method

.method private native greylist-max-o nativeListen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native greylist-max-o nativePause(J)V
.end method

.method private native greylist-max-o nativeResume(J)V
.end method

.method private greylist-max-r notifyDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 14
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .line 134
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$1;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "flags":I
    .end local p5    # "session":I
    .local v3, "surface":Landroid/view/Surface;
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "flags":I
    .local v7, "session":I
    invoke-direct/range {v1 .. v7}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method private greylist-max-r notifyDisplayDisconnected()V
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method private greylist-max-r notifyDisplayError(I)V
    .registers 4
    .param p1, "error"    # I

    .line 156
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method private greylist-max-o startListening(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 123
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 127
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 128
    return-void

    .line 124
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist dispose()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    .line 96
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    throw v0
.end method

.method public greylist-max-o pause()V
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativePause(J)V

    .line 100
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeResume(J)V

    .line 104
    return-void
.end method
