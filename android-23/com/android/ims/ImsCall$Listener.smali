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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 261
    return-void
.end method

.method public onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 271
    return-void
.end method

.method public onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 249
    return-void
.end method

.method public onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 323
    return-void
.end method

.method public onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 358
    return-void
.end method

.method public onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 407
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 419
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 132
    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 143
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 153
    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 281
    return-void
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 292
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 208
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    #@0
    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 197
    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 88
    return-void
.end method

.method public onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 302
    return-void
.end method

.method public onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 313
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 174
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 184
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 163
    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 394
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 109
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 98
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 369
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 384
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 120
    return-void
.end method

.method public onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    .line 229
    return-void
.end method

.method public onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 238
    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    #@3
    .line 218
    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 429
    return-void
.end method
