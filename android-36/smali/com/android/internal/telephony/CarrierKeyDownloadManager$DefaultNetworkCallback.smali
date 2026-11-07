.class final Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 905
    iput p2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->mSlotIndex:I

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 911
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data network connected, slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V

    .line 912
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 912
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->mSlotIndex:I

    if-ne p1, v0, :cond_49

    .line 914
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fputmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Z)V

    .line 915
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->mSlotIndex:I

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$munregisterDefaultNetworkCb(Lcom/android/internal/telephony/CarrierKeyDownloadManager;I)V

    .line 916
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_49
    return-void
.end method
