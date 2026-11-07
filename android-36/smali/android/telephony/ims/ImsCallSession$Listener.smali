.class public Landroid/telephony/ims/ImsCallSession$Listener;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 2
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 515
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 301
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 311
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 291
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 363
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 2
    .param p1, "digit"    # C

    .line 508
    return-void
.end method

.method public greylist-max-o callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 406
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 420
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 174
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 184
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 193
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 115
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 125
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 321
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 332
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V
    .registers 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I

    .line 392
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 241
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 251
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 233
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 443
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 135
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 342
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 353
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 212
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 221
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 202
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 481
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 474
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 460
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .registers 2
    .param p1, "status"    # I

    .line 467
    return-void
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 4
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 531
    return-void
.end method

.method public greylist-max-o callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 155
    return-void
.end method

.method public greylist-max-o callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 145
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 452
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 165
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 496
    return-void
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 488
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 431
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 270
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 280
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 260
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 374
    return-void
.end method
