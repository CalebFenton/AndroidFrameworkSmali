.class public Lcom/android/ims/ImsCall$Listener;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 289
    return-void
.end method

.method public blacklist onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 299
    return-void
.end method

.method public blacklist onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 277
    return-void
.end method

.method public blacklist onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 351
    return-void
.end method

.method public blacklist onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 386
    return-void
.end method

.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 444
    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 483
    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 160
    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 171
    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 181
    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 106
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 309
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 320
    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 236
    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 225
    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 116
    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;

    .line 530
    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 330
    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 341
    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 202
    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 212
    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 191
    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "digit"    # C

    .line 521
    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p2, "rtpHeaderExtensionData":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public blacklist onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "mediaType"    # I
    .param p3, "direction"    # I
    .param p4, "bitsPerSecond"    # I

    .line 555
    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 513
    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 510
    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .line 432
    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 137
    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 126
    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 397
    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # I

    .line 412
    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 422
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 150
    return-void
.end method

.method public blacklist onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 257
    return-void
.end method

.method public blacklist onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 266
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 246
    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 373
    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .line 493
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 502
    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "message"    # Ljava/lang/String;

    .line 471
    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 452
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "status"    # I

    .line 462
    return-void
.end method
