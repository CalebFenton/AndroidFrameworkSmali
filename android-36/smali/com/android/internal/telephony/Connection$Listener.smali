.class public interface abstract Lcom/android/internal/telephony/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract blacklist onAudioModeIsVoipChanged(I)V
.end method

.method public abstract blacklist onAudioQualityChanged(I)V
.end method

.method public abstract blacklist onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
.end method

.method public abstract blacklist onCallRadioTechChanged(I)V
.end method

.method public abstract blacklist onCallSubstateChanged(I)V
.end method

.method public abstract blacklist onConferenceMergedFailed()V
.end method

.method public abstract blacklist onConferenceParticipantsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onConnectionCapabilitiesChanged(I)V
.end method

.method public abstract blacklist onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract blacklist onDisconnect(I)V
.end method

.method public abstract blacklist onExitedEcmMode()V
.end method

.method public abstract blacklist onExtrasChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist onHandoverToWifiFailed()V
.end method

.method public abstract blacklist onIsNetworkEmergencyCallChanged(Z)V
.end method

.method public abstract blacklist onMediaAttributesChanged()V
.end method

.method public abstract blacklist onMultipartyStateChanged(Z)V
.end method

.method public abstract blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
.end method

.method public abstract blacklist onReceivedDtmfDigit(C)V
.end method

.method public abstract blacklist onReceivedRtpHeaderExtensions(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onRttInitiated()V
.end method

.method public abstract blacklist onRttModifyRequestReceived()V
.end method

.method public abstract blacklist onRttModifyResponseReceived(I)V
.end method

.method public abstract blacklist onRttTerminated()V
.end method

.method public abstract blacklist onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
.end method

.method public abstract blacklist onVideoStateChanged(I)V
.end method
