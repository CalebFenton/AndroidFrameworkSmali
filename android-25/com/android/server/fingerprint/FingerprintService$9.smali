.class Lcom/android/server/fingerprint/FingerprintService$9;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    #@0
    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    #@0
    .prologue
    .line 1079
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 1070
    return-void
.end method
