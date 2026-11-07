.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;
.super Lcom/android/ims/ImsCall$Listener;
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

    .line 3495
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method

.method private blacklist updateConferenceParticipantsTiming(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 4232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/ConferenceParticipant;

    .line 4234
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnectionTimeUsePhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/internal/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4236
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmConnectTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectTime(J)V

    .line 4237
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmConnectElapsedTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectElapsedTime(J)V

    .line 4238
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->-$$Nest$fgetmCallDirection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ConferenceParticipant;->setCallDirection(I)V

    goto :goto_4

    :cond_2e
    return-void
.end method


# virtual methods
.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 13

    .line 4283
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v0

    .line 4286
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHandover ::  srcAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dataMetered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4291
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eq v1, v0, :cond_8b

    .line 4292
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHandover: data enabled state doesn\'t match! (was="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", actually="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4294
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    :cond_8b
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-eqz p2, :cond_97

    if-eq p2, v2, :cond_97

    if-ne p3, v2, :cond_97

    move v3, v1

    goto :goto_98

    :cond_97
    move v3, v0

    :goto_98
    if-ne p2, v2, :cond_9f

    if-eqz p3, :cond_9f

    if-eq p3, v2, :cond_9f

    move v0, v1

    .line 4307
    :cond_9f
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_14e

    .line 4309
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_df

    if-eqz v3, :cond_d2

    .line 4311
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4313
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyHandoverVideoFromLTEToWifi(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_cc

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 4316
    const-string v4, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI"

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4321
    :cond_cc
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$munregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    goto :goto_df

    :cond_d2
    if-eqz v0, :cond_df

    .line 4322
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_df

    .line 4326
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    :cond_df
    :goto_df
    if-eqz v3, :cond_ec

    .line 4330
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 4331
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    :cond_ec
    if-eqz v0, :cond_155

    .line 4334
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 4335
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 4336
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 4339
    :cond_105
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyHandoverVideoFromWifiToLTE(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 4340
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v0

    if-nez v0, :cond_128

    .line 4341
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: notifying of WIFI to LTE handover."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4342
    const-string v0, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

    invoke-virtual {v2, v0, v5}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12f

    .line 4348
    :cond_128
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: skip notify of WIFI to LTE handover for disconnected call."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4353
    :cond_12f
    :goto_12f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_155

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsViLteDataMetered(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 4356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallHandover :: data is not enabled; attempt to downgrade."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4357
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x57f

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdowngradeVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_155

    .line 4361
    :cond_14e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHandover :: connection null."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4364
    :cond_155
    :goto_155
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_162

    .line 4365
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4367
    :cond_162
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    const/16 v3, 0x12

    .line 4368
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 4367
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 13

    .line 4376
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHandoverFailed :: srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4379
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    .line 4381
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/16 v3, 0x13

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 4379
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    const/4 p2, 0x1

    const/16 p3, 0x12

    if-eq v5, p3, :cond_49

    if-ne v6, p3, :cond_49

    move p3, p2

    goto :goto_4a

    :cond_49
    const/4 p3, 0x0

    .line 4385
    :goto_4a
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p4

    if-eqz p4, :cond_7e

    if-eqz p3, :cond_7e

    .line 4387
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallHandoverFailed - handover to WIFI Failed"

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4390
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x19

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4392
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 4393
    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result p1

    if-nez p1, :cond_73

    .line 4395
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4398
    :cond_73
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyVtHandoverToWifiFail(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 4400
    invoke-virtual {p4}, Lcom/android/internal/telephony/Connection;->onHandoverToWifiFailed()V

    .line 4403
    :cond_7e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 4404
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    :cond_8b
    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 9

    .line 3900
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_21

    .line 3901
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHeld (fg) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_41

    .line 3902
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_41

    .line 3903
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHeld (bg) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3907
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSyncHold(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3908
    :try_start_48
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3909
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3916
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v5, 0x0

    const/16 v6, 0x1f

    if-ne v2, v4, :cond_7b

    .line 3918
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3919
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3920
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    goto/16 :goto_127

    :catchall_78
    move-exception p0

    goto/16 :goto_13e

    .line 3921
    :cond_7b
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_ed

    .line 3924
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v1, v3, :cond_9a

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_9a

    .line 3926
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_127

    .line 3927
    :cond_9a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_b8

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_b8

    .line 3929
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_127

    .line 3930
    :cond_b8
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_de

    .line 3932
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdialPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3933
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3934
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld hold to dial"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_127

    .line 3940
    :cond_de
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3941
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld normal case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_127

    .line 3943
    :cond_ed
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_127

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v1, v2, :cond_105

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_127

    .line 3949
    :cond_105
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v1, v3, :cond_127

    .line 3950
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3951
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3952
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3953
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHeld premature termination of other call"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3956
    :cond_127
    :goto_127
    monitor-exit v0
    :try_end_128
    .catchall {:try_start_48 .. :try_end_128} :catchall_78

    .line 3957
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V

    return-void

    .line 3956
    :goto_13e
    :try_start_13e
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_78

    throw p0
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 10

    .line 3962
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHoldFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSyncHold(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3965
    :try_start_21
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3966
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_40

    .line 3968
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    goto/16 :goto_115

    :catchall_3d
    move-exception p0

    goto/16 :goto_14a

    .line 3969
    :cond_40
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x94

    if-ne v2, v3, :cond_7c

    .line 3971
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 3972
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdialPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    goto :goto_73

    .line 3973
    :cond_56
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_73

    .line 3975
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3977
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    goto/16 :goto_115

    .line 3978
    :cond_7c
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 3981
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 3982
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq p1, v1, :cond_115

    .line 3983
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    goto :goto_115

    .line 3987
    :cond_aa
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_d8

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_d8

    .line 3991
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3992
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3993
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHoldFailed unable to answer waiting call"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_115

    .line 3994
    :cond_d8
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_115

    .line 3995
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3997
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_101

    .line 3998
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 3999
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x12

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4001
    :cond_101
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq p1, v1, :cond_10e

    .line 4002
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4004
    :cond_10e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4006
    :cond_115
    :goto_115
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_12a

    .line 4007
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_12a

    .line 4008
    const-string v2, "android.telecom.event.CALL_HOLD_FAILED"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4010
    :cond_12a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 4011
    monitor-exit v0
    :try_end_134
    .catchall {:try_start_21 .. :try_end_134} :catchall_3d

    .line 4012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 4011
    :goto_14a
    :try_start_14a
    monitor-exit v0
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_3d

    throw p0
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 4136
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 3498
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallInitiating"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3499
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3500
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 3502
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallInitiating(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 4207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeFailed reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4212
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    const/4 p2, 0x0

    .line 4214
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    .line 4218
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 4220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .line 4221
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    .line 4224
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 4226
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .line 4227
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    :cond_43
    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 8

    .line 4156
    const-string v0, "onCallMerged: CurrentVideoProvider="

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallMerged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4158
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    .line 4159
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p2

    if-nez p2, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    .line 4161
    :cond_1d
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    :goto_21
    if-eqz p3, :cond_28

    .line 4164
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mswitchAfterConferenceSuccess(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4166
    :cond_28
    sget-object p3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    .line 4168
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p3

    .line 4170
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallMerged: ImsPhoneConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4171
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4172
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$msetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 4173
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_7e} :catch_7f

    goto :goto_96

    :catch_7f
    move-exception v0

    .line 4175
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallMerged: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 4180
    :goto_96
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    if-eqz p2, :cond_b3

    .line 4183
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-static {p2, v0, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 4189
    :cond_b3
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMergeRequestedByConf()Z

    move-result p2

    if-nez p2, :cond_c5

    .line 4190
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallMerged :: calling onMultipartyStateChanged()"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4191
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    goto :goto_cf

    .line 4193
    :cond_c5
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v0, "onCallMerged :: Merge requested by existing conference."

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {p1, v3}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    :goto_cf
    if-eqz p3, :cond_d4

    .line 4200
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    .line 4202
    :cond_d4
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 5

    .line 3507
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallProgressing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3509
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3510
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3512
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .registers 6

    .line 4486
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    .line 4487
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4488
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 4489
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    if-nez v1, :cond_30

    .line 4491
    new-instance v1, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 4493
    :cond_30
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallQualityMetrics;->saveCallQuality(Landroid/telephony/CallQuality;)V

    .line 4494
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 4499
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4500
    const-string v0, "android.telecom.extra.CALL_QUALITY_REPORT"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4502
    const-string p2, "android.telecom.event.CALL_QUALITY_REPORT"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_53
    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_16

    goto :goto_54

    .line 4073
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_b1

    .line 4074
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_4c

    .line 4076
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: single call unhold case"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4078
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4080
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4081
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4082
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: single call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_b1

    .line 4084
    :cond_4c
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "onCallResumeFailed: got a resume failed for a different call in the single call unhold case"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 4058
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_9e

    .line 4060
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallResumeFailed : switching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4063
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 4064
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_9e

    .line 4065
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4070
    :cond_9e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4071
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4072
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeFailed: multi calls"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4088
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 4091
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmTelecomFlags(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/server/telecom/flags/FeatureFlags;

    if-eqz v0, :cond_cb

    .line 4092
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_cb

    .line 4093
    const-string v1, "android.telecom.event.CALL_RESUME_FAILED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4095
    :cond_cb
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 4096
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 4102
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeReceived"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4103
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    .line 4105
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 4106
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4107
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4109
    :cond_25
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemotelyUnheld()V

    .line 4110
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallInfoTracker(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V

    .line 4113
    :cond_31
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110294

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4115
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSupportPauseVideo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4116
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4122
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToUnPausedState()V

    .line 4125
    :cond_5b
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4128
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v1, 0x3

    .line 4129
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4130
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 4131
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 4018
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4023
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v2, :cond_76

    .line 4026
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_5d

    .line 4030
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallResumed : switching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_64

    .line 4038
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallResumed : expected call resumed."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4041
    :goto_64
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 4042
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4043
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 4045
    :cond_76
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 4047
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .registers 6

    .line 4453
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionDtmfReceived digit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4454
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 4456
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->receivedDtmfDigit(C)V

    :cond_21
    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 4515
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionRtpHeaderExtensionsReceived numExtensions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4516
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4515
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4517
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 4519
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->receivedRtpHeaderExtensions(Ljava/util/Set;)V

    :cond_25
    return-void
.end method

.method public blacklist onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V
    .registers 7

    .line 4539
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionSendAnbrQuery mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4542
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleSendAnbrQuery(III)V

    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 4447
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionTransferFailed reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4448
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 4442
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onCallSessionTransferred success"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3

    .line 4273
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 13

    .line 3574
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 3578
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 3579
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v0

    .line 3580
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    goto :goto_3b

    :cond_39
    move-object v2, v0

    move v0, v1

    .line 3583
    :goto_3b
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_70

    .line 3586
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-ne v3, p1, :cond_70

    .line 3587
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallStarted: starting a call as a result of a switch."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3588
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3589
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3590
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallStartFailed"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3594
    :cond_70
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3596
    invoke-static {v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3598
    invoke-virtual {v7, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v7

    iget v8, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v9, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 3595
    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallStartFailed(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3602
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v3

    const/16 v4, 0x92

    const/4 v6, 0x4

    if-eqz v3, :cond_f4

    .line 3603
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_f4

    .line 3607
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallStartFailed eccCategory="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", emergencyUrns="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 3610
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    if-ne v1, v4, :cond_cf

    if-eq v5, v6, :cond_d3

    :cond_cf
    const/16 v4, 0x5ea

    if-ne v1, v4, :cond_d6

    .line 3614
    :cond_d3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    .line 3616
    :cond_d6
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3617
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    .line 3619
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    .line 3618
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 3624
    :cond_f4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1ad

    .line 3626
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    if-ne v2, v4, :cond_192

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3627
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_192

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3628
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misForegroundHigherPriority(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 3629
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3630
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3631
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallInfoTracker(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3632
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    .line 3633
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3636
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_17e

    .line 3638
    :try_start_156
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3639
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p2

    if-ne p2, v6, :cond_168

    move v1, v3

    :cond_168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 3640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V
    :try_end_176
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_156 .. :try_end_176} :catch_177

    return-void

    .line 3642
    :catch_177
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V

    goto/16 :goto_1f6

    .line 3645
    :cond_17e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3646
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p1

    if-ne p1, v6, :cond_18e

    move v1, v3

    :cond_18e
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    return-void

    .line 3651
    :cond_192
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 3655
    :cond_1ad
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    if-ne v2, v4, :cond_1f6

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3656
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_1f6

    .line 3657
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallStartFailed: Initiated call by silent redial under ALERTING state."

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3659
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_1e3

    .line 3661
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3662
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3663
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallInfoTracker(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3665
    :cond_1e3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3666
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p1

    if-ne p1, v6, :cond_1f3

    move v1, v3

    :cond_1f3
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    :cond_1f6
    :goto_1f6
    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 7

    .line 3517
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3519
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3a

    .line 3522
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne v0, p1, :cond_3a

    .line 3523
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallStarted: starting a call as a result of a switch."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3524
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3525
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3526
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3530
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3531
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3534
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmNotifyVtHandoverToWifiFail(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_82

    .line 3535
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$misWifiConnected(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3537
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3539
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    goto :goto_82

    .line 3543
    :cond_77
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3545
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 3548
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 5

    .line 4142
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSuppServiceReceived: suppServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4144
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4145
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 4146
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4147
    iget v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 4148
    iget-object v0, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 4149
    iget-object p2, p2, Landroid/telephony/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    .line 4151
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 3673
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallTerminated reasonCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3675
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v10

    if-eqz v10, :cond_2d

    .line 3678
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto :goto_2f

    .line 3683
    :cond_2d
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 3685
    :goto_2f
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    .line 3687
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cause = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " conn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v10, :cond_67

    .line 3690
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    .line 3691
    instance-of v4, v3, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v4, :cond_67

    .line 3692
    check-cast v3, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 3694
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->unregisterForDataUsageUpdate(Landroid/os/Handler;)V

    .line 3695
    invoke-virtual {v3, v10}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    .line 3698
    :cond_67
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v3

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, -0x1

    const/4 v11, 0x0

    if-ne v3, v4, :cond_90

    if-eqz v10, :cond_86

    .line 3699
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 3700
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 3702
    :cond_86
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 3703
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmOnHoldToneId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V

    :cond_90
    if-eqz v10, :cond_111

    .line 3706
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->isPulledCall()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 3707
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x3f7

    if-eq v3, v4, :cond_b0

    .line 3708
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x150

    if-eq v3, v4, :cond_b0

    .line 3709
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x14c

    if-ne v3, v4, :cond_d8

    :cond_b0
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v3, :cond_d8

    .line 3710
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 3712
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "Call pull failed."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3716
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v2

    .line 3717
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getPulledDialogId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getConnectionById(I)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3716
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/Connection;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    move v2, v11

    goto :goto_111

    .line 3722
    :cond_d8
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_111

    const/16 v3, 0x34

    if-eq v2, v3, :cond_111

    .line 3730
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v3

    const/4 v4, 0x3

    const/16 v7, 0x10

    if-eq v3, v4, :cond_fa

    if-ne v2, v7, :cond_f8

    goto :goto_fa

    :cond_f8
    const/4 v2, 0x1

    goto :goto_fb

    :cond_fa
    :goto_fa
    move v2, v7

    .line 3743
    :goto_fb
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incoming connection of 0 connect time detected - translated cause = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_111
    :goto_111
    const/4 v3, 0x2

    const/16 v4, 0x2d

    if-ne v2, v3, :cond_124

    if-eqz v10, :cond_124

    .line 3748
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v3

    if-eqz v3, :cond_124

    move v12, v4

    goto :goto_125

    :cond_124
    move v12, v2

    :goto_125
    const/4 v13, 0x0

    if-ne v12, v4, :cond_12f

    if-eqz v10, :cond_12f

    .line 3756
    const-string v2, "android.telecom.event.MERGE_COMPLETE"

    invoke-virtual {v10, v2, v13}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_12f
    if-eqz v10, :cond_1b1

    .line 3762
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1b1

    .line 3763
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v14

    .line 3764
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v2

    .line 3765
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    .line 3766
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    move-object v8, v2

    move-object v2, v3

    move v3, v4

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    iget-object v9, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v9

    .line 3767
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    iget-object v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3768
    invoke-static {v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetNetworkCountryIso(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/String;

    move-result-object v15

    if-eqz v8, :cond_174

    .line 3769
    invoke-virtual {v8}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v6

    :cond_174
    move-object v8, v9

    move v9, v6

    move-object v6, v8

    move-object v8, v15

    .line 3766
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/metrics/CallQualityMetrics;Landroid/telephony/emergency/EmergencyNumber;Ljava/lang/String;I)V

    .line 3771
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3772
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v4

    iget v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v7, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 3771
    invoke-virtual {v2, v10, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3775
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/CallQualityMetrics;

    if-eqz v2, :cond_1ac

    .line 3777
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 3779
    :cond_1ac
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mpruneCallQualityMetricsHistory(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3781
    :cond_1b1
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    if-eqz v10, :cond_1c6

    .line 3784
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetPreciseDisconnectCauseFromReasonInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPreciseDisconnectCause(I)V

    .line 3785
    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3788
    :cond_1c6
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0x5ea

    if-ne v2, v3, :cond_218

    .line 3789
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v2

    if-eqz v2, :cond_218

    if-eqz v10, :cond_210

    .line 3792
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_20d

    .line 3793
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    if-eqz v3, :cond_20d

    .line 3794
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v11

    .line 3795
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    .line 3796
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallTerminated eccCategory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    .line 3798
    :cond_20d
    invoke-virtual {v10, v11, v2}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    .line 3800
    :cond_210
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void

    .line 3802
    :cond_218
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    if-ne v2, v3, :cond_25d

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAutoRetryFailedWifiEmergencyCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 3804
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3805
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x1c

    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3807
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3809
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3810
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3811
    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void

    .line 3813
    :cond_25d
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v3, 0xbb9

    if-ne v2, v3, :cond_276

    .line 3814
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3815
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3818
    :cond_276
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static {v2, v1, v3, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3821
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_29c

    .line 3822
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 3824
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3828
    :cond_29c
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/16 v4, 0x1f

    if-ne v2, v3, :cond_337

    .line 3830
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onCallTerminated: Call terminated in the midst of Switching Fg and Bg calls."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3836
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    if-ne v1, v2, :cond_2e6

    .line 3838
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallTerminated: switching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3841
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3845
    :cond_2e6
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallTerminated: foreground call in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and ringing call in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3846
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-nez v3, :cond_30b

    const-string v3, "null"

    goto :goto_313

    .line 3847
    :cond_30b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3845
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3849
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3850
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3851
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3852
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated swap active and hold case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto/16 :goto_3e4

    .line 3853
    :cond_337
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v2, v3, :cond_3d1

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_34d

    goto/16 :goto_3d1

    .line 3858
    :cond_34d
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_381

    .line 3862
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    if-ne v1, v2, :cond_3e4

    .line 3863
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3864
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3865
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3866
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to answer case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3867
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3e4

    .line 3869
    :cond_381
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v2, v3, :cond_3e4

    .line 3872
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_3c2

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 3873
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eqz v2, :cond_3a0

    goto :goto_3c2

    .line 3876
    :cond_3a0
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eq v1, v2, :cond_3e4

    .line 3877
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3878
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3879
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to dial, dial pendingMo"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_3e4

    .line 3874
    :cond_3c2
    :goto_3c2
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3875
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated hold to dial but no pendingMo"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    goto :goto_3e4

    .line 3855
    :cond_3d1
    :goto_3d1
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCallExpectedToResume(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 3856
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHoldSwitchingState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)V

    .line 3857
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallTerminated single call case"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 3883
    :cond_3e4
    :goto_3e4
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_3f6

    .line 3886
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdateImsServiceConfig(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3887
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmShouldUpdateImsConfigOnDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 3890
    :cond_3f6
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_424

    .line 3891
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 3892
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3891
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    .line 3893
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingSilentRedialInfo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V

    :cond_424
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 7

    .line 3553
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallUpdated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_a

    goto :goto_54

    .line 3557
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 3559
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallUpdated: profile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3560
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mprocessCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 3562
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    .line 3563
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3562
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 4252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onConferenceParticipantsStateChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmIsConferenceEventPackageEnabled(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4255
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onConferenceParticipantsStateChanged - CEP handling disabled"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 4259
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmSupportCepOnPeer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 4260
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "onConferenceParticipantsStateChanged - ignore CEP on peer"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    .line 4264
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 4266
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->updateConferenceParticipantsTiming(Ljava/util/List;)V

    .line 4267
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->updateConferenceParticipants(Ljava/util/List;)V

    :cond_3b
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 6

    .line 4470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultipartyStateChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_11

    const-string v2, "Y"

    goto :goto_13

    :cond_11
    const-string v2, "N"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4472
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 4474
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->updateMultipartyState(Z)V

    .line 4475
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onMultipartyChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V

    :cond_33
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    .line 4434
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4436
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_b
    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 3

    .line 4426
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4428
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttMessageReceived(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 4410
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4412
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttModifyRequestReceived()V

    :cond_b
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3

    .line 4418
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4420
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Connection;->onRttModifyResponseReceived(I)V

    :cond_b
    return-void
.end method
