.class Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1503
    if-eqz p2, :cond_0

    #@7
    .line 1505
    const/4 v1, 0x0

    #@8
    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1512
    .end local p2    # "cb":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    #@d
    .line 1502
    return-void

    #@e
    .line 1506
    .restart local p2    # "cb":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@f
    .line 1508
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "ForceControlStreamClient() could not link to "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " binder death"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1509
    const/4 p2, 0x0

    #@31
    .local p2, "cb":Landroid/os/IBinder;
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get21(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1517
    :try_start_0
    const-string/jumbo v0, "AudioService"

    #@a
    const-string/jumbo v2, "SCO client died"

    #@d
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1518
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    #@12
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get20(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@15
    move-result-object v0

    #@16
    if-eq v0, p0, :cond_0

    #@18
    .line 1519
    const-string/jumbo v0, "AudioService"

    #@1b
    const-string/jumbo v2, "unregistered control stream client died"

    #@1e
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :goto_0
    monitor-exit v1

    #@22
    .line 1515
    return-void

    #@23
    .line 1521
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set7(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    #@29
    .line 1522
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2b
    const/4 v2, -0x1

    #@2c
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set16(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 1516
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1528
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1529
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@b
    .line 1530
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    #@d
    .line 1527
    :cond_0
    return-void
.end method
