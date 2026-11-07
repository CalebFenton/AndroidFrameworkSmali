.class final Landroid/media/session/MediaController$CallbackStub;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackStub"
.end annotation


# instance fields
.field private final greylist-max-o mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/session/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 1114
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    .line 1115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    .line 1116
    return-void
.end method


# virtual methods
.method public greylist-max-o onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1128
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1129
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_e

    .line 1130
    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1132
    :cond_e
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1168
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1169
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1170
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1172
    :cond_f
    return-void
.end method

.method public greylist-max-o onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 5
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 1144
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1145
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1146
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1148
    :cond_f
    return-void
.end method

.method public greylist-max-o onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 5
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 1136
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1137
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1138
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1140
    :cond_f
    return-void
.end method

.method public greylist-max-o onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .registers 5
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    .line 1152
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1153
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1154
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1156
    :cond_f
    return-void
.end method

.method public greylist-max-o onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1160
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1161
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1162
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1164
    :cond_f
    return-void
.end method

.method public greylist-max-o onSessionDestroyed()V
    .registers 4

    .line 1120
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1121
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_10

    .line 1122
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1124
    :cond_10
    return-void
.end method

.method public blacklist onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 1176
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1177
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1178
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1180
    :cond_f
    return-void
.end method
