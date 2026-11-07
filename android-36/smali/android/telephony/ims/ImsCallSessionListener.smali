.class public Landroid/telephony/ims/ImsCallSessionListener;
.super Ljava/lang/Object;
.source "ImsCallSessionListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImsCallSessionListener"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 746
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callQualityChanged(Landroid/telephony/CallQuality;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 749
    goto :goto_a

    .line 747
    :catch_6
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 413
    goto :goto_a

    .line 411
    :catch_6
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionConferenceExtendReceived(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 426
    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_b

    .line 427
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 429
    :cond_b
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_14

    .line 430
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 429
    :goto_15
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 433
    goto :goto_1d

    .line 431
    :catch_19
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 434
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 448
    goto :goto_a

    .line 446
    :catch_6
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionConferenceExtended(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 378
    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 381
    :cond_b
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 382
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 381
    :goto_15
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 385
    goto :goto_1d

    .line 383
    :catch_19
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 399
    goto :goto_a

    .line 397
    :catch_6
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 517
    goto :goto_a

    .line 515
    :catch_6
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionDtmfReceived(C)V
    .registers 4
    .param p1, "dtmf"    # C

    .line 765
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_29

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_10

    const/16 v0, 0x44

    if-le p1, v0, :cond_29

    :cond_10
    const/16 v0, 0x61

    if-lt p1, v0, :cond_18

    const/16 v0, 0x64

    if-le p1, v0, :cond_29

    :cond_18
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_29

    const/16 v0, 0x23

    if-ne p1, v0, :cond_21

    goto :goto_29

    .line 770
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTMF digit must be 0-9, *, #, A, B, C, D"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionDtmfReceived(C)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33

    .line 776
    goto :goto_37

    .line 774
    :catch_33
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 777
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public whitelist callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 589
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 588
    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 590
    return-void
.end method

.method public whitelist callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 623
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 622
    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 624
    return-void
.end method

.method public whitelist callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 172
    goto :goto_a

    .line 170
    :catch_6
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 185
    goto :goto_a

    .line 183
    :catch_6
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 198
    goto :goto_a

    .line 196
    :catch_6
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 123
    goto :goto_a

    .line 121
    :catch_6
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 142
    goto :goto_a

    .line 140
    :catch_6
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 81
    goto :goto_a

    .line 79
    :catch_6
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    goto :goto_a

    .line 93
    :catch_6
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInviteParticipantsRequestDelivered()V
    .registers 2

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 460
    goto :goto_a

    .line 458
    :catch_6
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 473
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 476
    goto :goto_a

    .line 474
    :catch_6
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionMayHandover(II)V
    .registers 5
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 554
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 553
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->onMayHandover(II)V

    .line 555
    return-void
.end method

.method public whitelist callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 4
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 288
    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_b

    .line 289
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 291
    :cond_b
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_14

    .line 292
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 291
    :goto_15
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 295
    goto :goto_1d

    .line 293
    :catch_19
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 310
    goto :goto_a

    .line 308
    :catch_6
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 323
    goto :goto_a

    .line 321
    :catch_6
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 254
    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 257
    :cond_b
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_14

    .line 258
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 257
    :goto_15
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 261
    goto :goto_1d

    .line 259
    :catch_19
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 276
    goto :goto_a

    .line 274
    :catch_6
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionMultipartyStateChanged(Z)V
    .registers 3
    .param p1, "isMultiParty"    # Z

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 669
    goto :goto_a

    .line 667
    :catch_6
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 670
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 109
    goto :goto_a

    .line 107
    :catch_6
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRemoveParticipantsRequestDelivered()V
    .registers 2

    .line 485
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 488
    goto :goto_a

    .line 486
    :catch_6
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 504
    goto :goto_a

    .line 502
    :catch_6
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 226
    goto :goto_a

    .line 224
    :catch_6
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 236
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 239
    goto :goto_a

    .line 237
    :catch_6
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 212
    goto :goto_a

    .line 210
    :catch_6
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 796
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    const-string v0, "extensions are required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 798
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 802
    goto :goto_14

    .line 800
    :catch_10
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 803
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public whitelist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 736
    goto :goto_a

    .line 734
    :catch_6
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 723
    goto :goto_a

    .line 721
    :catch_6
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 724
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 694
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 697
    goto :goto_a

    .line 695
    :catch_6
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionRttModifyResponseReceived(I)V
    .registers 3
    .param p1, "status"    # I

    .line 707
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 710
    goto :goto_a

    .line 708
    :catch_6
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public final whitelist callSessionSendAnbrQuery(III)V
    .registers 6
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 848
    const-string v0, "ImsCallSessionListener"

    const-string v1, "callSessionSendAnbrQuery in imscallsessonListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSendAnbrQuery(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 853
    goto :goto_11

    .line 851
    :catch_d
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3
    .param p1, "suppSrvNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 683
    goto :goto_a

    .line 681
    :catch_6
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 684
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 155
    goto :goto_a

    .line 153
    :catch_6
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 829
    goto :goto_a

    .line 827
    :catch_6
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 830
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionTransferred()V
    .registers 2

    .line 811
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 814
    goto :goto_a

    .line 812
    :catch_6
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionTtyModeReceived(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 653
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 656
    goto :goto_a

    .line 654
    :catch_6
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 657
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 349
    goto :goto_a

    .line 347
    :catch_6
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 359
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 362
    goto :goto_a

    .line 360
    :catch_6
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 336
    goto :goto_a

    .line 334
    :catch_6
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist callSessionUssdMessageReceived(ILjava/lang/String;)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 534
    goto :goto_a

    .line 532
    :catch_6
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 535
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 606
    goto :goto_a

    .line 604
    :catch_6
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 636
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 639
    goto :goto_a

    .line 637
    :catch_6
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist onMayHandover(II)V
    .registers 4
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMayHandover(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 570
    goto :goto_a

    .line 568
    :catch_6
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 865
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 866
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSessionListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 868
    :cond_6
    return-void
.end method
