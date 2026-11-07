.class Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "SatelliteSOSMessageRecommender.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    .line 672
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    .line 677
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
