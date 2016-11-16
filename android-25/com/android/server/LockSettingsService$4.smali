.class Lcom/android/server/LockSettingsService$4;
.super Landroid/os/IProgressListener$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    iput-object p2, p0, Lcom/android/server/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@4
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 792
    const-string/jumbo v0, "LockSettingsService"

    #@3
    const-string/jumbo v1, "unlockUser finished"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 793
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@e
    .line 791
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 787
    const-string/jumbo v0, "LockSettingsService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "unlockUser progress "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 786
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 782
    const-string/jumbo v0, "LockSettingsService"

    #@3
    const-string/jumbo v1, "unlockUser started"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 781
    return-void
.end method
