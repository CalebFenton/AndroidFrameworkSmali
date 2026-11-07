.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;
.super Landroid/telephony/TelephonyCallback;
.source "LinkBandwidthEstimator.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyCallbackImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1110
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    return-void
.end method


# virtual methods
.method public whitelist onActiveDataSubscriptionIdChanged(I)V
    .registers 3

    .line 1114
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
