.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;
.super Landroid/telephony/ims/ProvisioningManager$Callback;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4654
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$Callback;-><init>()V

    return-void
.end method

.method private blacklist queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V
    .registers 4

    .line 4709
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 4713
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmProvisioningItemQueue(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 4716
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_26

    .line 4717
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist onProvisioningIntChanged(II)V
    .registers 4

    .line 4659
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 4660
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V

    return-void
.end method

.method public whitelist onProvisioningStringChanged(ILjava/lang/String;)V
    .registers 4

    .line 4679
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 4680
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$12;->queueAndSendProvisioningChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;)V

    return-void
.end method
