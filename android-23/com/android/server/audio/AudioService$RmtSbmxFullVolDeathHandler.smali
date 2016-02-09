.class Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
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
    name = "RmtSbmxFullVolDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1665
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1666
    iput-object p2, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    #@7
    .line 1668
    const/4 v1, 0x0

    #@8
    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1665
    :goto_0
    return-void

    #@c
    .line 1669
    :catch_0
    move-exception v0

    #@d
    .line 1670
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService"

    #@10
    const-string/jumbo v2, "can\'t link to death"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 1687
    const-string/jumbo v0, "AudioService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Recorder with remote submix at full volume died "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1688
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    #@24
    .line 1686
    return-void
.end method

.method forget()V
    .locals 3

    #@0
    .prologue
    .line 1680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1678
    :goto_0
    return-void

    #@7
    .line 1681
    :catch_0
    move-exception v0

    #@8
    .line 1682
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "AudioService"

    #@b
    const-string/jumbo v2, "error unlinking to death"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method isHandlerFor(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
