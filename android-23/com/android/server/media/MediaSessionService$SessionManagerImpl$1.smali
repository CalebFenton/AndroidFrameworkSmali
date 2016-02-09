.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@0
    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1122
    if-nez p2, :cond_0

    #@2
    .line 1123
    return-void

    #@3
    .line 1125
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    .line 1126
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    #@9
    .line 1127
    return-void

    #@a
    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@c
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@e
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 1130
    :try_start_0
    const-string/jumbo v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 1131
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@1e
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@20
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@27
    move-result v1

    #@28
    .line 1130
    if-eqz v1, :cond_2

    #@2a
    .line 1132
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    #@2c
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2e
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    :cond_2
    monitor-exit v2

    #@36
    .line 1121
    return-void

    #@37
    .line 1129
    :catchall_0
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1
.end method
