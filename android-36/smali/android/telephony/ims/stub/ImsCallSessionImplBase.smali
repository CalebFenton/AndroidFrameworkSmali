.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;,
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$MediaStreamDirection;,
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$MediaStreamType;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ImsCallSessionImplBase"

.field public static final blacklist MEDIA_STREAM_DIRECTION_DOWNLINK:I = 0x2

.field public static final blacklist MEDIA_STREAM_DIRECTION_UPLINK:I = 0x1

.field public static final blacklist MEDIA_STREAM_TYPE_AUDIO:I = 0x1

.field public static final blacklist MEDIA_STREAM_TYPE_VIDEO:I = 0x2

.field public static final whitelist USSD_MODE_NOTIFY:I = 0x0

.field public static final whitelist USSD_MODE_REQUEST:I = 0x1


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mServiceImpl:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public whitelist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 541
    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 6
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallSessionImplBase callSessionNotifyAnbr - mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionImplBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 437
    return-void
.end method

.method public whitelist deflect(Ljava/lang/String;)V
    .registers 2
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 549
    return-void
.end method

.method public whitelist extendToConference([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 653
    return-void
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 2

    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .registers 2

    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getServiceImpl()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 483
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 729
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;

    move-result-object v0

    .line 730
    .local v0, "provider":Landroid/telephony/ims/ImsVideoCallProvider;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 606
    return-void
.end method

.method public whitelist inviteParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 663
    return-void
.end method

.method public whitelist isInCall()Z
    .registers 2

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMultiparty()Z
    .registers 2

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist merge()V
    .registers 1

    .line 631
    return-void
.end method

.method public whitelist reject(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 565
    return-void
.end method

.method public whitelist removeParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 673
    return-void
.end method

.method public whitelist resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 617
    return-void
.end method

.method public whitelist sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 698
    return-void
.end method

.method public whitelist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 784
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public whitelist sendRttMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 768
    return-void
.end method

.method public whitelist sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 754
    return-void
.end method

.method public whitelist sendRttModifyResponse(Z)V
    .registers 2
    .param p1, "status"    # Z

    .line 761
    return-void
.end method

.method public whitelist sendUssd(Ljava/lang/String;)V
    .registers 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 722
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 819
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 820
    return-void
.end method

.method public whitelist setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
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

    .line 413
    new-instance v0, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 414
    return-void
.end method

.method public whitelist setMute(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .line 499
    return-void
.end method

.method public greylist-max-o setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2
    .param p1, "serviceImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 809
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    .line 810
    return-void
.end method

.method public whitelist start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 515
    return-void
.end method

.method public whitelist startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 531
    return-void
.end method

.method public whitelist startDtmf(C)V
    .registers 2
    .param p1, "c"    # C

    .line 708
    return-void
.end method

.method public whitelist stopDtmf()V
    .registers 1

    .line 714
    return-void
.end method

.method public whitelist terminate(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 595
    return-void
.end method

.method public blacklist transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 2
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 585
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 576
    return-void
.end method

.method public whitelist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 642
    return-void
.end method
