.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintServiceLockoutResetMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    #@0
    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 640
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    #@a
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    #@c
    .line 624
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    #@e
    .line 623
    return-void
.end method


# virtual methods
.method public sendLockoutReset()V
    .locals 6

    #@0
    .prologue
    .line 628
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    #@6
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@8
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get6(Lcom/android/server/fingerprint/FingerprintService;)J

    #@b
    move-result-wide v4

    #@c
    invoke-interface {v2, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->onLockoutReset(J)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 627
    :cond_0
    :goto_0
    return-void

    #@10
    .line 634
    :catch_0
    move-exception v1

    #@11
    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    #@14
    const-string/jumbo v3, "Failed to invoke onLockoutReset: "

    #@17
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0

    #@1b
    .line 631
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@1c
    .line 632
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v2, "FingerprintService"

    #@1f
    const-string/jumbo v3, "Death object while invoking onLockoutReset: "

    #@22
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 633
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@27
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    #@2d
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@30
    goto :goto_0
.end method
