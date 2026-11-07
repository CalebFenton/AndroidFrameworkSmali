.class Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionListenerConverter"
.end annotation


# instance fields
.field private final greylist-max-o mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    .line 446
    iput-object p2, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 447
    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 679
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 556
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 563
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 550
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsConferenceState"    # Landroid/telephony/ims/ImsConferenceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 593
    return-void
.end method

.method public greylist-max-o callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 605
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 606
    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    .line 604
    invoke-interface {v0, v1, v2, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 607
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 613
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 614
    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    .line 612
    invoke-interface {v0, v1, v2, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 615
    return-void
.end method

.method public greylist-max-o callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 477
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 483
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 489
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V

    .line 569
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 575
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V
    .registers 7
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 621
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 622
    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    .line 620
    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMayHandover(II)V

    .line 623
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3
    .param p1, "iImsCallSession"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 520
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 526
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 514
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiparty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V

    .line 635
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsStreamMediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 453
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V

    .line 581
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 587
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 501
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 507
    return-void
.end method

.method public greylist-max-o callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 495
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 663
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 647
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .registers 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 652
    return-void
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 5
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSendAnbrQuery(III)V

    .line 685
    return-void
.end method

.method public greylist-max-o callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 465
    return-void
.end method

.method public greylist-max-o callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 459
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsSuppServiceNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 641
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 471
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 674
    return-void
.end method

.method public blacklist callSessionTransferred()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V

    .line 668
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .registers 4
    .param p1, "iImsCallSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    .line 629
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 538
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 544
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 532
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .registers 5
    .param p1, "i"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;->mNewListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 599
    return-void
.end method
