.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
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

    .line 4627
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 5

    .line 4631
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4632
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 4633
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4636
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4637
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
