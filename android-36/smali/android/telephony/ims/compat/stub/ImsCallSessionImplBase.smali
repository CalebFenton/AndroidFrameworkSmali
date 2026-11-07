.class public Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;
    }
.end annotation


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public greylist-max-o accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 194
    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 4
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 432
    return-void
.end method

.method public greylist-max-o close()V
    .registers 1

    .line 80
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 226
    return-void
.end method

.method public greylist-max-o deflect(Ljava/lang/String;)V
    .registers 2
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 203
    return-void
.end method

.method public greylist-max-o extendToConference([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 310
    return-void
.end method

.method public greylist-max-o getCallId()Ljava/lang/String;
    .registers 2

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 2

    .line 131
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 259
    return-void
.end method

.method public greylist-max-o inviteParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 321
    return-void
.end method

.method public greylist-max-o isInCall()Z
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isMultiparty()Z
    .registers 2

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o merge()V
    .registers 1

    .line 286
    return-void
.end method

.method public greylist-max-o reject(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 236
    return-void
.end method

.method public greylist-max-o removeParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 332
    return-void
.end method

.method public greylist-max-o resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 271
    return-void
.end method

.method public greylist-max-o sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 343
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p1, "headerExtensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public greylist-max-o sendRttMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 408
    return-void
.end method

.method public greylist-max-o sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 392
    return-void
.end method

.method public greylist-max-o sendRttModifyResponse(Z)V
    .registers 2
    .param p1, "status"    # Z

    .line 400
    return-void
.end method

.method public greylist-max-o sendUssd(Ljava/lang/String;)V
    .registers 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 370
    return-void
.end method

.method public final greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;-><init>(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 61
    return-void
.end method

.method public greylist-max-o setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 72
    return-void
.end method

.method public greylist-max-o setMute(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .line 149
    return-void
.end method

.method public greylist-max-o start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 166
    return-void
.end method

.method public greylist-max-o startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 183
    return-void
.end method

.method public greylist-max-o startDtmf(C)V
    .registers 2
    .param p1, "c"    # C

    .line 354
    return-void
.end method

.method public greylist-max-o stopDtmf()V
    .registers 1

    .line 361
    return-void
.end method

.method public greylist-max-o terminate(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 247
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 218
    return-void
.end method

.method public greylist-max-o update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 298
    return-void
.end method
