.class final Landroid/os/StrictMode$9;
.super Ljava/lang/Thread;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/os/StrictMode$ViolationInfo;

.field final synthetic val$violationMaskSubset:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "val$violationMaskSubset"    # I
    .param p3, "val$info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    .line 1528
    iput p2, p0, Landroid/os/StrictMode$9;->val$violationMaskSubset:I

    #@2
    iput-object p3, p0, Landroid/os/StrictMode$9;->val$info:Landroid/os/StrictMode$ViolationInfo;

    #@4
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1530
    const/16 v3, 0xa

    #@2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    .line 1532
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8
    move-result-object v0

    #@9
    .line 1533
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_1

    #@b
    .line 1534
    const-string/jumbo v3, "StrictMode"

    #@e
    const-string/jumbo v4, "No activity manager; failed to Dropbox violation."

    #@11
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1544
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->-get3()Ljava/util/concurrent/atomic/AtomicInteger;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@1b
    move-result v2

    #@1c
    .line 1545
    .local v2, "outstanding":I
    invoke-static {}, Landroid/os/StrictMode;->-get1()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const-string/jumbo v3, "StrictMode"

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Dropbox complete; in-flight="

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1529
    :cond_0
    return-void

    #@3d
    .line 1537
    .end local v2    # "outstanding":I
    .restart local v0    # "am":Landroid/app/IActivityManager;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    #@40
    move-result-object v3

    #@41
    .line 1538
    iget v4, p0, Landroid/os/StrictMode$9;->val$violationMaskSubset:I

    #@43
    .line 1539
    iget-object v5, p0, Landroid/os/StrictMode$9;->val$info:Landroid/os/StrictMode$ViolationInfo;

    #@45
    .line 1536
    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    goto :goto_0

    #@49
    .line 1541
    .end local v0    # "am":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    #@4a
    .line 1542
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "StrictMode"

    #@4d
    const-string/jumbo v4, "RemoteException handling StrictMode violation"

    #@50
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0
.end method
