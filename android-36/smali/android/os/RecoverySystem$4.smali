.class Landroid/os/RecoverySystem$4;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1006
    iput-object p1, p0, Landroid/os/RecoverySystem$4;->val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1009
    const-string v0, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1010
    invoke-virtual {p0}, Landroid/os/RecoverySystem$4;->getResultCode()I

    move-result v0

    const-string v1, "RecoverySystem"

    if-eqz v0, :cond_32

    .line 1011
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1013
    .local v0, "detailedCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error wiping euicc data, Detailed code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v0    # "detailedCode":I
    goto :goto_3d

    .line 1016
    :cond_32
    const-string v0, "Successfully wiped euicc data."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Landroid/os/RecoverySystem$4;->val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1019
    :goto_3d
    iget-object v0, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1021
    :cond_42
    return-void
.end method
