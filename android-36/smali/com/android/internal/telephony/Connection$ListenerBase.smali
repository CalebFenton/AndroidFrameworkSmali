.class public abstract Lcom/android/internal/telephony/Connection$ListenerBase;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioModeIsVoipChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onAudioQualityChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onCallRadioTechChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onCallSubstateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onConferenceMergedFailed()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onConferenceParticipantsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onConnectionCapabilitiesChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist onDisconnect(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onExitedEcmMode()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onHandoverToWifiFailed()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onIsNetworkEmergencyCallChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onMediaAttributesChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onReceivedDtmfDigit(C)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onReceivedRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onRttInitiated()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onRttModifyRequestReceived()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onRttTerminated()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onVideoStateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method
