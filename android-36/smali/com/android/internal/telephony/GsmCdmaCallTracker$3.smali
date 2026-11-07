.class Lcom/android/internal/telephony/GsmCdmaCallTracker$3;
.super Ljava/lang/Object;
.source "GsmCdmaCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1723
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/16 v2, 0x10

    .line 1727
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1726
    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    :cond_1f
    return-void
.end method
