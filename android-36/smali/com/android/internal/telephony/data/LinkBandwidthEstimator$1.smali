.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$misScreenOn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method
