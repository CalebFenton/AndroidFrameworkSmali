.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/telephony/ModemActivityInfo;",
        "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 5

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error reading modem stats:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 274
    check-cast p1, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;->onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/telephony/ModemActivityInfo;)V
    .registers 3

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 274
    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;->onResult(Landroid/telephony/ModemActivityInfo;)V

    return-void
.end method
