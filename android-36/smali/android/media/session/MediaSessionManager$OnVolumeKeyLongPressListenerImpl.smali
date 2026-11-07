.class final Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;
.super Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnVolumeKeyLongPressListenerImpl"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;)Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1326
    invoke-direct {p0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;-><init>()V

    .line 1327
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    .line 1328
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    .line 1329
    return-void
.end method


# virtual methods
.method public greylist-max-o onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1333
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_9

    goto :goto_14

    .line 1338
    :cond_9
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1344
    return-void

    .line 1334
    :cond_14
    :goto_14
    const-string v0, "SessionManager"

    const-string v1, "Failed to call volume key long-press listener. Either mListener or mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method
