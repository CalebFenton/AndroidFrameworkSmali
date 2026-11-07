.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;,
        Lcom/android/internal/telephony/Connection$PostDialListener;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$Capability;,
        Lcom/android/internal/telephony/Connection$ListenerBase;
    }
.end annotation


# static fields
.field public static final blacklist ADHOC_CONFERENCE_ADDRESS:Ljava/lang/String; = "tel:conf-factory"

.field public static final blacklist AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final blacklist AUDIO_QUALITY_STANDARD:I = 0x1

.field private static greylist LOG_TAG:Ljava/lang/String; = "Connection"

.field public static final blacklist THRESHOLD:F = 0.01f


# instance fields
.field protected greylist-max-r mAddress:Ljava/lang/String;

.field private blacklist mAllowAddCallDuringVideoCall:Z

.field private blacklist mAllowHoldingVideoCall:Z

.field private blacklist mAnsweringDisconnectsActiveCall:Z

.field protected blacklist mAudioCodec:I

.field protected blacklist mAudioCodecBandwidthKhz:F

.field protected blacklist mAudioCodecBitrateKbps:F

.field private blacklist mAudioModeIsVoip:Z

.field private blacklist mAudioQuality:I

.field private blacklist mCallRadioTech:I

.field private blacklist mCallSubstate:I

.field protected blacklist mCause:I

.field protected greylist-max-r mCnapName:Ljava/lang/String;

.field protected greylist-max-r mCnapNamePresentation:I

.field protected blacklist mConnectTime:J

.field protected blacklist mConnectTimeReal:J

.field private blacklist mConnectionCapabilities:I

.field protected blacklist mConvertedNumber:Ljava/lang/String;

.field protected blacklist mCreateTime:J

.field protected greylist-max-r mDialString:Ljava/lang/String;

.field protected greylist-max-r mDuration:J

.field private blacklist mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

.field private blacklist mExtras:Landroid/os/Bundle;

.field protected blacklist mForwardedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasKnownUserIntentEmergency:Z

.field protected blacklist mHoldingStartTime:J

.field protected blacklist mIsAdhocConference:Z

.field private blacklist mIsEmergencyCall:Z

.field protected greylist-max-r mIsIncoming:Z

.field private blacklist mIsNetworkIdentifiedEmergencyCall:Z

.field private blacklist mIsPulledCall:Z

.field public blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mNextPostDialChar:I

.field protected blacklist mNumberConverted:Z

.field protected greylist-max-r mNumberPresentation:I

.field protected blacklist mNumberVerificationStatus:I

.field protected blacklist mOrigConnection:Lcom/android/internal/telephony/Connection;

.field protected blacklist mParticipantsToDial:[Ljava/lang/String;

.field private blacklist mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

.field private blacklist mPhoneType:I

.field private blacklist mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field protected blacklist mPostDialString:Ljava/lang/String;

.field public blacklist mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private blacklist mPulledDialogId:I

.field private blacklist mTelecomCallId:Ljava/lang/String;

.field blacklist mUserData:Ljava/lang/Object;

.field private blacklist mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private blacklist mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method protected constructor greylist-max-r <init>(I)V
    .registers 4

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 225
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    const/4 v1, 0x0

    .line 230
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    .line 237
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 261
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    .line 269
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 270
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 290
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 296
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 326
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    .line 352
    new-instance v0, Lcom/android/internal/telephony/Connection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Connection$1;-><init>(Lcom/android/internal/telephony/Connection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    .line 337
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return-void
.end method

.method public static blacklist addCapability(II)I
    .registers 2

    .line 0
    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist getEmergencyNumberSourceForEmergencyRouting()I
    .registers 3

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result p0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmergencyNumberSourceForEmergencyRouting: source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    if-eq p0, v0, :cond_21

    const/4 p0, 0x1

    :cond_21
    return p0
.end method

.method public static blacklist removeCapability(II)I
    .registers 2

    .line 0
    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .registers 2

    .line 1058
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 910
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public abstract blacklist cancelPostDial()V
.end method

.method protected final blacklist clearPostDialListeners()V
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    if-eqz p0, :cond_7

    .line 920
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public blacklist clearUserData()V
    .registers 2

    const/4 v0, 0x0

    .line 905
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public abstract blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist deflect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public greylist getAddress()Ljava/lang/String;
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAudioCodec()I
    .registers 1

    .line 1607
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    return p0
.end method

.method public blacklist getAudioCodecBandwidthKhz()F
    .registers 1

    .line 1621
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    return p0
.end method

.method public blacklist getAudioCodecBitrateKbps()F
    .registers 1

    .line 1614
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    return p0
.end method

.method public blacklist getAudioModeIsVoip()Z
    .registers 1

    .line 1141
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return p0
.end method

.method public blacklist getAudioQuality()I
    .registers 1

    .line 1159
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return p0
.end method

.method public abstract greylist getCall()Lcom/android/internal/telephony/Call;
.end method

.method public blacklist getCallRadioTech()I
    .registers 1

    .line 1132
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    return p0
.end method

.method public blacklist getCallSubstate()I
    .registers 1

    .line 1169
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return p0
.end method

.method public blacklist getCnapName()Ljava/lang/String;
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCnapNamePresentation()I
    .registers 1

    .line 460
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return p0
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 812
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getConnectTime()J
    .registers 3

    .line 488
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getConnectTimeReal()J
    .registers 3

    .line 516
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public blacklist getConnectionCapabilities()I
    .registers 1

    .line 1084
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    return p0
.end method

.method public blacklist getConnectionExtras()Landroid/os/Bundle;
    .registers 2

    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public blacklist getConvertedNumber()Ljava/lang/String;
    .registers 1

    .line 451
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getCreateTime()J
    .registers 3

    .line 477
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public greylist-max-r getDisconnectCause()I
    .registers 1

    .line 568
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return p0
.end method

.method public abstract greylist-max-r getDisconnectTime()J
.end method

.method public greylist-max-r getDurationMillis()J
    .registers 5

    .line 535
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-wide v2

    .line 537
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    :cond_16
    return-wide v0
.end method

.method public blacklist getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    return-object p0
.end method

.method public blacklist getForwardedNumber()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    return-object p0
.end method

.method public abstract blacklist getHoldDurationMillis()J
.end method

.method public blacklist getHoldingStartTime()J
    .registers 3

    .line 550
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract blacklist getNumberPresentation()I
.end method

.method public blacklist getNumberVerificationStatus()I
    .registers 1

    .line 1628
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    return p0
.end method

.method public blacklist getOrigConnection()Lcom/android/internal/telephony/Connection;
    .registers 1

    .line 1001
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object p0
.end method

.method public blacklist getOrigDialString()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getParticipantsToDial()[Ljava/lang/String;
    .registers 1

    .line 412
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mParticipantsToDial:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPhoneType()I
    .registers 1

    .line 1542
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return p0
.end method

.method public blacklist getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object p0
.end method

.method public abstract blacklist getPreciseDisconnectCause()I
.end method

.method public blacklist getPulledDialogId()I
    .registers 1

    .line 1348
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return p0
.end method

.method public blacklist getRemainingPostDialString()Ljava/lang/String;
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1e

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 950
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_17

    goto :goto_1e

    .line 954
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 951
    :cond_1e
    :goto_1e
    const-string p0, ""

    return-object p0
.end method

.method public greylist getState()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_9

    .line 786
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 788
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 797
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public blacklist getTelecomCallId()Ljava/lang/String;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public greylist getUserData()Ljava/lang/Object;
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract blacklist getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public blacklist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 1

    .line 1150
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object p0
.end method

.method public blacklist getVideoState()I
    .registers 1

    .line 1076
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return p0
.end method

.method public abstract greylist-max-r hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist hasCapabilities(I)Z
    .registers 2

    .line 1091
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasKnownUserIntentEmergency()Z
    .registers 1

    .line 630
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return p0
.end method

.method public blacklist isActiveCallDisconnectedOnAnswer()Z
    .registers 1

    .line 1290
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return p0
.end method

.method public blacklist isAdhocConference()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    return p0
.end method

.method public greylist-max-r isAlive()Z
    .registers 1

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    return p0
.end method

.method public blacklist isConferenceHost()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmergencyCall()Z
    .registers 1

    .line 606
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    return p0
.end method

.method public greylist isIncoming()Z
    .registers 1

    .line 587
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return p0
.end method

.method public blacklist isMemberOfPeerConference()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist isMultiparty()Z
.end method

.method public blacklist isNetworkIdentifiedEmergencyCall()Z
    .registers 1

    .line 1573
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    return p0
.end method

.method public blacklist isPulledCall()Z
    .registers 1

    .line 1333
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return p0
.end method

.method public blacklist isRinging()Z
    .registers 1

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result p0

    return p0
.end method

.method public blacklist isWifi()Z
    .registers 2

    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1035
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 1036
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 1037
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 1038
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1039
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 1040
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 1041
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 1042
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 1043
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 1044
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1047
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 1048
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 1049
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method protected blacklist notifyDisconnect(I)V
    .registers 4

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisconnect: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1534
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onDisconnect(I)V

    goto :goto_28

    :cond_38
    return-void
.end method

.method public blacklist notifyMediaAttributesChanged()V
    .registers 2

    .line 1244
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1245
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onMediaAttributesChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected final blacklist notifyPostDialListeners()V
    .registers 4

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_22

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p0, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 927
    invoke-interface {v2}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_14

    :cond_22
    return-void
.end method

.method protected final blacklist notifyPostDialListenersNextChar(C)V
    .registers 5

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p0, :cond_1a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 934
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_c

    :cond_1a
    return-void
.end method

.method public blacklist onAudioModeIsVoipChanged(I)V
    .registers 6

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioModeIsVoipChanged: conn imsAudioHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1658
    :goto_1b
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    if-ne v0, v2, :cond_20

    goto :goto_56

    .line 1659
    :cond_20
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeIsVoipChanged: isVoip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mAudioModeIsVoip:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1665
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onAudioModeIsVoipChanged(I)V

    goto :goto_46

    :cond_56
    :goto_56
    return-void
.end method

.method public blacklist onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .registers 3

    .line 1459
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1460
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onConferenceMergeFailed()V
    .registers 2

    .line 1436
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1437
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1482
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1483
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onDisconnect(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onExitedEcmMode()V
    .registers 2

    .line 1445
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1446
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onHandoverToWifiFailed()V
    .registers 2

    .line 1473
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1474
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onHandoverToWifiFailed()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .registers 3

    .line 1465
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1466
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onRttInitiated()V
    .registers 2

    .line 1516
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1517
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttInitiated()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onRttModifyRequestReceived()V
    .registers 2

    .line 1504
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1505
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyRequestReceived()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(I)V
    .registers 3

    .line 1510
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1511
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyResponseReceived(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist onRttTerminated()V
    .registers 2

    .line 1522
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1523
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttTerminated()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public abstract blacklist proceedAfterWaitChar()V
.end method

.method public abstract blacklist proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public blacklist pullExternalCall()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist receivedDtmfDigit(C)V
    .registers 3

    .line 1645
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1646
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onReceivedDtmfDigit(C)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist receivedRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1674
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1675
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onReceivedRtpHeaderExtensions(Ljava/util/Set;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final blacklist removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .registers 2

    .line 1067
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .registers 2

    .line 915
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist resetConnectionTime()V
    .registers 3

    .line 1549
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 1551
    :cond_a
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 1553
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    return-void
.end method

.method public blacklist restoreDialedNumberAfterConversion(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1389
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 1391
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1392
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public abstract blacklist separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist setActiveCallDisconnectedOnAnswer(Z)V
    .registers 2

    .line 1302
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;I)V
    .registers 5

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1403
    iput p2, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return-void
.end method

.method public blacklist setAllowAddCallDuringVideoCall(Z)V
    .registers 2

    .line 1310
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return-void
.end method

.method public blacklist setAllowHoldingVideoCall(Z)V
    .registers 2

    .line 1318
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return-void
.end method

.method public blacklist setAudioModeIsVoip(Z)V
    .registers 2

    .line 1225
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return-void
.end method

.method public blacklist setAudioQuality(I)V
    .registers 4

    .line 1234
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 1235
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1236
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public blacklist setCallRadioTech(I)V
    .registers 3

    .line 1210
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    if-ne v0, p1, :cond_5

    goto :goto_1d

    .line 1213
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 1214
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1215
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallRadioTechChanged(I)V

    goto :goto_d

    :cond_1d
    :goto_1d
    return-void
.end method

.method public blacklist setCallSubstate(I)V
    .registers 4

    .line 1358
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 1359
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1360
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public blacklist setConnectTime(J)V
    .registers 3

    .line 497
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-void
.end method

.method public blacklist setConnectTimeReal(J)V
    .registers 3

    .line 506
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-void
.end method

.method public blacklist setConnectionCapabilities(I)V
    .registers 4

    .line 1195
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_1e

    .line 1196
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    .line 1197
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1198
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public blacklist setConnectionExtras(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_38

    .line 1257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1259
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result p1

    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1263
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-eq v0, p1, :cond_3b

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionExtras: filtering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalid extras."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connection"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_38
    const/4 p1, 0x0

    .line 1269
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1272
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1273
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_41

    :cond_53
    return-void
.end method

.method public blacklist setDialString(Ljava/lang/String;)V
    .registers 2

    .line 1407
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public blacklist setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 639
    const-string v2, "Connection"

    if-eqz p1, :cond_63

    .line 640
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 644
    iget-object v4, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    .line 645
    iget-object v4, p0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    invoke-interface {v4}, Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v3, :cond_25

    .line 647
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 648
    iput-object v3, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    goto :goto_68

    .line 649
    :cond_25
    array-length v3, v4

    const-string v5, "setEmergencyCallInfo: emergency number is null"

    if-le v3, v1, :cond_53

    .line 652
    array-length v3, v4

    move v6, v0

    :goto_2c
    if-ge v6, v3, :cond_4f

    aget-object v7, v4, v6

    .line 654
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    if-ne v8, v9, :cond_3b

    goto :goto_4c

    .line 657
    :cond_3b
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 658
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    if-eqz v7, :cond_4c

    .line 661
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 662
    iput-object v7, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    goto :goto_68

    :cond_4c
    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 667
    :cond_4f
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 670
    :cond_53
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 673
    :cond_57
    const-string p1, "setEmergencyCallInfo: emergency number tracker is null"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 676
    :cond_5d
    const-string p1, "setEmergencyCallInfo: phone is null"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 679
    :cond_63
    const-string p1, "setEmergencyCallInfo: call tracker is null"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_68
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 683
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    if-nez p1, :cond_89

    .line 684
    const-string p1, "setEmergencyCallInfo: create EmergencyNumber"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_80

    .line 685
    iget p1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    goto :goto_81

    :cond_80
    move p1, v0

    .line 686
    :goto_81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 685
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    :cond_89
    if-eqz p2, :cond_10b

    .line 689
    iget-object p1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_10b

    const-string v3, "use_emergency_routing"

    .line 690
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10b

    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 692
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p1

    if-eq p1, v1, :cond_10b

    .line 694
    iget-object p1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 696
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    .line 694
    const-string v3, "emergency_service_category"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 699
    instance-of p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz p1, :cond_bf

    iget-object p1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 700
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_bf

    .line 704
    const-string p0, "setEmergencyCallInfo: specific eccCategory is required"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 707
    :cond_bf
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEmergencyCallInfo: enforce emergency routing eccCategory="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object p1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string p2, "emergency_urns"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_e6

    .line 711
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e4

    goto :goto_e6

    :cond_e4
    :goto_e4
    move-object v9, p1

    goto :goto_ed

    .line 712
    :cond_e6
    :goto_e6
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object p1

    goto :goto_e4

    .line 714
    :goto_ed
    new-instance v4, Landroid/telephony/emergency/EmergencyNumber;

    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 715
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 716
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v7

    .line 719
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberSourceForEmergencyRouting()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    iput-object v4, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    :cond_10b
    return-void
.end method

.method public blacklist setHasKnownUserIntentEmergency(Z)V
    .registers 2

    .line 769
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method public blacklist setIsIncoming(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return-void
.end method

.method public blacklist setIsNetworkIdentifiedEmergencyCall(Z)V
    .registers 3

    .line 1562
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    .line 1563
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1564
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onIsNetworkEmergencyCallChanged(Z)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public blacklist setIsPulledCall(Z)V
    .registers 2

    .line 1329
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return-void
.end method

.method public blacklist setNonDetectableEmergencyCallInfo(ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNonDetectableEmergencyCallInfo: eccCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencyUrns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 752
    new-instance v1, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, ""

    const-string v4, ""

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    return-void
.end method

.method public blacklist setNumberVerificationStatus(I)V
    .registers 2

    .line 1637
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    return-void
.end method

.method public blacklist setPhoneFactoryProxy(Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    return-void
.end method

.method public blacklist setPulledDialogId(I)V
    .registers 2

    .line 1344
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return-void
.end method

.method public blacklist setTelecomCallId(Ljava/lang/String;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setUserData(Ljava/lang/Object;)V
    .registers 2

    .line 850
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public blacklist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 4

    .line 1370
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1371
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1372
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public greylist-max-r setVideoState(I)V
    .registers 4

    .line 1181
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 1182
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1183
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public blacklist shouldAllowAddCallDuringVideoCall()Z
    .registers 1

    .line 1306
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return p0
.end method

.method public blacklist shouldAllowHoldingVideoCall()Z
    .registers 1

    .line 1314
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " objId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isExternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4b

    .line 1587
    const-string v2, "Y"

    goto :goto_4d

    :cond_4b
    const-string v2, "N"

    :goto_4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pres.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " postdial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cnap name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_f5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " post dial state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist transfer(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist updateConferenceParticipants(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1416
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1417
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist updateMultipartyState(Z)V
    .registers 3

    .line 1427
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1428
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method
