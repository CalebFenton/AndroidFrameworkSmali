.class public Lcom/android/ims/internal/ImsCallSession$Listener;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 269
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 278
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 259
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 330
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 355
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 369
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 152
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 161
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 288
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 299
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 209
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 201
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 392
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 102
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 309
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 320
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 180
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 170
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 112
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 380
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 238
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 247
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 228
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    return-void
.end method
