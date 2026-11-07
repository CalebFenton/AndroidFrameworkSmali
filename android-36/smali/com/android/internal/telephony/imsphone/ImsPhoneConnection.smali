.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"

# interfaces
.implements Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field static final blacklist PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private blacklist mConferenceConnectTime:J

.field private blacklist mDisconnectTime:J

.field private greylist-max-r mDisconnected:Z

.field private blacklist mDtmfToneDelay:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerMessenger:Landroid/os/Messenger;

.field private greylist-max-r mImsCall:Lcom/android/ims/ImsCall;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

.field private blacklist mIsBusinessComposerFeatureEnabled:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsHeldByRemote:Z

.field private blacklist mIsLocalVideoCapable:Z

.field private blacklist mIsMergeInProcess:Z

.field private blacklist mIsRttEnabledForCall:Z

.field private blacklist mIsWpsCall:Z

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private greylist-max-r mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private greylist-max-r mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private blacklist mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mPreciseDisconnectCause:I

.field private blacklist mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

.field private blacklist mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private blacklist mShouldIgnoreVideoStateChanges:Z

.field private blacklist mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$MFlQxd8S_fsRvf52bYAhcihi5ac(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->lambda$createRttTextHandler$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessNextPostDialChar(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .registers 10

    const/4 v0, 0x5

    .line 209
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 129
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 134
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 213
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 214
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance p3, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 216
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    if-eqz p2, :cond_a8

    .line 219
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    if-eqz p3, :cond_a8

    .line 220
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oi"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 221
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cna"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 223
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oir"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 222
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 225
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cnap"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 224
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 227
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result p3

    .line 226
    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->toTelecomVerificationStatus(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Connection;->setNumberVerificationStatus(I)V

    .line 228
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    goto :goto_ad

    :cond_a8
    const/4 p3, 0x3

    .line 230
    iput p3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 231
    iput p3, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    :goto_ad
    xor-int/lit8 p3, p5, 0x1

    .line 234
    iput-boolean p3, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    const/4 p3, 0x0

    .line 236
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsBusinessComposerFeatureEnabled(Lcom/android/internal/telephony/Phone;)V

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 247
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 249
    iget-boolean p2, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    if-eqz p2, :cond_c9

    sget-object p2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_cb

    :cond_c9
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 248
    :goto_cb
    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111029a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_e5
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .registers 11

    const/4 v0, 0x5

    .line 263
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 129
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 134
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 267
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 268
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 269
    new-instance p3, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 271
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 273
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 274
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 279
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 280
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 281
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 284
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 285
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 287
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    if-eqz p5, :cond_8a

    .line 289
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p2, p7}, Lcom/android/internal/telephony/Connection;->setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p2

    if-nez p2, :cond_8a

    .line 295
    iget p2, p7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    .line 299
    :cond_8a
    iput-boolean p6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 303
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111029a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_a3
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .registers 8

    const/4 p5, 0x5

    .line 312
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 85
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 p5, 0x0

    .line 112
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 114
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 116
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 125
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 129
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 134
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 139
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 158
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 163
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 316
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 317
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 318
    new-instance p3, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 320
    const-string p3, "tel:conf-factory"

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mParticipantsToDial:[Ljava/lang/String;

    .line 322
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    .line 324
    iput-boolean p5, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 325
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 326
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 327
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 330
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 331
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111029a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_81
    return-void
.end method

.method private greylist-max-r acquireWakeLock()V
    .registers 3

    .line 769
    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private blacklist applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .registers 5

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLocalCallCapabilities - localProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 359
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p2

    .line 362
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    if-nez p0, :cond_25

    .line 363
    const-string p0, "applyLocalCallCapabilities - disabling video (overidden)"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 366
    :cond_25
    iget p0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2d

    if-eq p0, v0, :cond_2d

    return p2

    .line 370
    :cond_2d
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p0

    return p0
.end method

.method private static blacklist applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .registers 6

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRemoteCallCapabilities - remoteProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 379
    invoke-static {p1, v0}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p1

    const/16 v1, 0x40

    .line 381
    invoke-static {p1, v1}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p1

    .line 384
    iget v2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2b

    goto :goto_2f

    .line 388
    :cond_2b
    invoke-static {p1, v0}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p1

    .line 393
    :goto_2f
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3f

    .line 394
    invoke-static {p1, v1}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p0

    return p0

    :cond_3f
    return p1
.end method

.method private static blacklist areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    if-nez p1, :cond_7

    goto :goto_38

    .line 1492
    :cond_7
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    return v1

    .line 1496
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 1498
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1499
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1500
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_37
    return v0

    :cond_38
    :goto_38
    if-ne p0, p1, :cond_3b

    return v0

    :cond_3b
    return v1
.end method

.method private blacklist createRttTextHandler()V
    .registers 4

    .line 1304
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1313
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->initialize(Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method private greylist-max-r createWakeLock(Landroid/content/Context;)V
    .registers 4

    .line 762
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 763
    const-string v1, "ImsPhoneConnection"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static blacklist equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    if-eqz p1, :cond_11

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method private blacklist fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 787
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 788
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 790
    const-string v0, "ims_dtmf_tone_delay_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    :cond_1e
    return-void
.end method

.method private blacklist getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I
    .registers 6

    const/4 p0, 0x1

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 1520
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez p1, :cond_a

    goto :goto_2b

    .line 1525
    :cond_a
    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x14

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, p0

    :goto_1c
    const/4 v1, 0x2

    if-eq p1, v1, :cond_24

    const/4 v2, 0x6

    if-eq p1, v2, :cond_24

    if-eqz v0, :cond_2b

    .line 1537
    :cond_24
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result p1

    if-nez p1, :cond_2b

    return v1

    :cond_2b
    :goto_2b
    return p0
.end method

.method private synthetic blacklist lambda$createRttTextHandler$0(Ljava/lang/String;)V
    .registers 2

    .line 1306
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->sendRttMessage(Ljava/lang/String;)V

    return-void

    .line 1310
    :cond_a
    const-string p0, "ImsPhoneConnection"

    const-string p1, "createRttTextHandler: imsCall is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processNextPostDialChar()V
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_7

    goto :goto_79

    .line 691
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_14

    goto :goto_51

    .line 699
    :cond_14
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 703
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v1

    if-nez v1, :cond_57

    .line 707
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNextPostDialChar: c="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t valid!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 692
    :cond_51
    :goto_51
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    const/4 v0, 0x0

    .line 714
    :cond_57
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListenersNextChar(C)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPostDialHandler()Lcom/android/internal/telephony/Registrant;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 722
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 724
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 725
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    .line 726
    iput-object p0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 727
    iput-object v2, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 730
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 734
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_79
    :goto_79
    return-void
.end method

.method private blacklist processPostDialChar(C)Z
    .registers 6

    .line 646
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 649
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_3b

    :cond_17
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_28

    .line 663
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3b

    :cond_28
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_32

    .line 666
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_3b

    :cond_32
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3c

    .line 668
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    :goto_3b
    return v1

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .registers 6

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1b

    if-ne p1, v1, :cond_1b

    .line 747
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_27

    :cond_1b
    if-ne v0, v1, :cond_27

    if-eq p1, v1, :cond_27

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 755
    :cond_27
    :goto_27
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListeners()V

    return-void
.end method

.method public static blacklist toTelecomVerificationStatus(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method private blacklist updateEmergencyCallFromExtras(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_f

    .line 1344
    :cond_3
    const-string v0, "e_call"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 1345
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setIsNetworkIdentifiedEmergencyCall(Z)V

    :cond_f
    :goto_f
    return-void
.end method

.method private blacklist updateForwardedNumberFromExtras(Landroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1c

    .line 1353
    :cond_3
    const-string v0, "android.telephony.ims.extra.FORWARDED_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1355
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist updateImsCallRatFromExtras(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_1c

    .line 1325
    :cond_3
    const-string v0, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "CallRadioTech"

    .line 1326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "callRadioTech"

    .line 1327
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    :goto_1c
    return-void

    .line 1329
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1332
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 1336
    :goto_29
    invoke-static {p1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    return-void
.end method

.method private blacklist updateVideoState(I)V
    .registers 3

    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_7

    .line 1178
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->onVideoStateChanged(I)V

    .line 1180
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onVideoStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    return-void
.end method


# virtual methods
.method public blacklist cancelPostDial()V
    .registers 2

    .line 561
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method public blacklist changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 2

    .line 842
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-void
.end method

.method public blacklist changeToPausedState()V
    .registers 4

    .line 1728
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection: changeToPausedState - setting paused bit; newVideoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1729
    const-string v2, "ImsPhoneConnection"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x1

    .line 1732
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method public blacklist changeToUnPausedState()V
    .registers 4

    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection: changeToUnPausedState - unsetting paused bit; newVideoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1737
    const-string v2, "ImsPhoneConnection"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x0

    .line 1740
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 497
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz p0, :cond_e

    .line 498
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->consultativeTransfer(Lcom/android/ims/ImsCall;)V

    return-void

    .line 500
    :cond_e
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_16} :catch_16

    .line 503
    :catch_16
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot transfer call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 468
    :try_start_c
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz p0, :cond_14

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->deflect(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_14
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to deflect"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_1c} :catch_1c

    .line 474
    :catch_1c
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot deflect call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :cond_24
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "phone not ringing"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public blacklist getAcceptedRtpHeaderExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation

    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 1770
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1768
    :cond_16
    :goto_16
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic greylist-max-r getCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object p0
.end method

.method protected blacklist getCallPriority()I
    .registers 2

    .line 1814
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 1816
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWpsCall()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getConferenceConnectTime()J
    .registers 3

    .line 938
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public blacklist getDisconnectCause()I
    .registers 3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisconnectCause: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return p0
.end method

.method public blacklist getDisconnectTime()J
    .registers 3

    .line 412
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 1

    .line 1271
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz p0, :cond_f

    .line 1272
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getHoldDurationMillis()J
    .registers 5

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 426
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getHoldingStartTime()J
    .registers 3

    .line 417
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public declared-synchronized blacklist getImsCall()Lcom/android/ims/ImsCall;
    .registers 2

    monitor-enter p0

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .registers 1

    .line 1787
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public blacklist getIsBusinessComposerFeatureEnabled()Z
    .registers 1

    .line 1435
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    return p0
.end method

.method public blacklist getNumberPresentation()I
    .registers 1

    .line 796
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return p0
.end method

.method public blacklist getOrigConnection()Lcom/android/internal/telephony/Connection;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOrigDialString()Ljava/lang/String;
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .registers 1

    .line 896
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_7

    .line 458
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 460
    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 1

    .line 801
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object p0
.end method

.method public blacklist getVendorDisconnectCause()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist handleMergeComplete()V
    .registers 2

    const/4 v0, 0x0

    .line 1700
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    return-void
.end method

.method public blacklist handleMergeStart()V
    .registers 3

    const/4 v0, 0x1

    .line 1692
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 1693
    const-string v0, "android.telecom.event.MERGE_START"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist hangup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 509
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_a

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void

    .line 512
    :cond_a
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hasRttTextStream()Z
    .registers 1

    .line 1281
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBusinessComposerEnabledByConfig(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 1453
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_17

    .line 1458
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 1460
    :goto_18
    const-string p1, "supports_business_call_composer_bool"

    if-eqz p0, :cond_21

    .line 1461
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1464
    :cond_21
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1465
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isBusinessOnlyCallComposerEnabledByUser(Lcom/android/internal/telephony/Phone;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_31

    .line 1474
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_31

    .line 1478
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_20

    .line 1480
    const-string p1, "ImsPhoneConnection"

    const-string v0, "isBusinessOnlyCallComposerEnabledByUser: TelephonyManager is null"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1483
    :cond_20
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_30

    .line 1484
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result p1

    if-ne p1, v2, :cond_2f

    goto :goto_30

    :cond_2f
    return p0

    :cond_30
    :goto_30
    return v2

    :cond_31
    :goto_31
    return p0
.end method

.method public declared-synchronized blacklist isConferenceHost()Z
    .registers 2

    monitor-enter p0

    .line 825
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw v0
.end method

.method public blacklist isCrossSimCall()Z
    .registers 2

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_d

    .line 1597
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    const-string v0, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1599
    :cond_d
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCrossSimCall()Z

    move-result p0

    return p0
.end method

.method protected blacklist isEmergency()Z
    .registers 1

    .line 1584
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return p0
.end method

.method public blacklist isHeldByRemote()Z
    .registers 3

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHeldByRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    return p0
.end method

.method public blacklist isIncomingCallAutoRejected()Z
    .registers 2

    .line 442
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/16 v0, 0x51

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMemberOfPeerConference()Z
    .registers 1

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized greylist-max-r isMultiparty()Z
    .registers 2

    monitor-enter p0

    .line 812
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw v0
.end method

.method public blacklist isRttEnabledForCall()Z
    .registers 1

    .line 1285
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    return p0
.end method

.method protected blacklist isWpsCall()Z
    .registers 1

    .line 1588
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    return p0
.end method

.method public blacklist maybeChangeRingbackState()V
    .registers 3

    .line 890
    const-string v0, "ImsPhoneConnection"

    const-string v1, "maybeChangeRingbackState"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeChangeRingbackState(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist maybeInjectBusinessComposerExtras(Landroid/os/Bundle;)V
    .registers 8

    .line 1403
    const-string v0, "android.telecom.extra.ASSERTED_DISPLAY_NAME"

    const-string v1, "android.telephony.ims.extra.ASSERTED_DISPLAY_NAME"

    const-string v2, "android.telecom.extra.IS_BUSINESS_CALL"

    const-string v3, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    if-nez p1, :cond_b

    goto :goto_60

    .line 1409
    :cond_b
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    const-string v4, "ImsPhoneConnection"

    if-nez p0, :cond_17

    .line 1410
    const-string p0, "mIBCE: business composer feature is NOT enabled"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1414
    :cond_17
    :try_start_17
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 1415
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 1416
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 1417
    const-string v3, "mIBCE: EXTRA_IS_BUSINESS_CALL=[%s]"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1421
    :cond_3b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 1422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_60

    .line 1423
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1424
    const-string v1, "mIBCE: ASSERTED_DISPLAY_NAME=[%s]"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 1429
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    return-void
.end method

.method blacklist onConnectedInOrOut()V
    .registers 4

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 622
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    if-nez v0, :cond_2f

    .line 630
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 632
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public greylist-max-r onDisconnect()Z
    .registers 7

    .line 585
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_53

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 593
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->notifyDisconnect(I)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_2c

    .line 596
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v1

    goto :goto_33

    .line 598
    :cond_2c
    const-string v0, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_33
    monitor-enter p0

    .line 601
    :try_start_34
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_3e

    .line 602
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    goto :goto_3e

    :catchall_3c
    move-exception v0

    goto :goto_51

    .line 604
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    :cond_45
    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_4f

    .line 607
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->tearDown()V

    .line 609
    :cond_4f
    monitor-exit p0

    goto :goto_53

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_3c

    throw v0

    .line 611
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return v1
.end method

.method public blacklist onDisconnect(I)Z
    .registers 4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    const/16 v0, 0x10

    if-ne p1, v0, :cond_21

    .line 576
    :cond_1f
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 578
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result p0

    return p0
.end method

.method public blacklist onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .registers 3

    .line 911
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_29

    .line 916
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    .line 919
    :catch_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public blacklist onHangupLocal()V
    .registers 2

    const/4 v0, 0x3

    .line 568
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return-void
.end method

.method public blacklist onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_59

    .line 1613
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-eqz p1, :cond_59

    .line 1615
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p1

    .line 1616
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    xor-int v1, p1, v0

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_16

    goto :goto_59

    :cond_16
    and-int v2, v1, p1

    not-int v2, v2

    and-int/2addr p1, v2

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveSessionModifyResponse : received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " while paused ; sending new videoState = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1636
    const-string p3, "ImsPhoneConnection"

    invoke-static {p3, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    const-string v1, "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

    .line 1251
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isReceivingRttAudio()Z

    move-result p1

    .line 1250
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1252
    const-string p1, "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onRttMessageReceived(Ljava/lang/String;)V
    .registers 4

    .line 1233
    monitor-enter p0

    .line 1234
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_1e

    .line 1235
    const-string v0, "ImsPhoneConnection"

    const-string v1, "onRttMessageReceived: RTT text handler not available. Attempting to create one."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_1b

    .line 1238
    const-string p1, "ImsPhoneConnection"

    const-string v0, "onRttMessageReceived: Unable to process incoming message. No textstream available"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto :goto_25

    .line 1242
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1244
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_19

    .line 1245
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendToInCall(Ljava/lang/String;)V

    return-void

    .line 1244
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_19

    throw p1
.end method

.method blacklist onStartedHolding()V
    .registers 3

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-void
.end method

.method public blacklist pauseVideo(I)V
    .registers 3

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_5

    return-void

    .line 1657
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->pauseVideo(II)V

    return-void
.end method

.method public blacklist proceedAfterWaitChar()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1f

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 529
    :cond_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public blacklist proceedAfterWildChar(Ljava/lang/String;)V
    .registers 5

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v2, "ImsPhoneConnection"

    if-eq v0, v1, :cond_1f

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 550
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method blacklist releaseWakeLock()V
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_20

    .line 776
    monitor-enter v0

    .line 777
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 778
    const-string v1, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 781
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1a

    throw p0

    :cond_20
    return-void
.end method

.method public blacklist resumeVideo(I)V
    .registers 3

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_5

    return-void

    .line 1671
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->resumeVideo(II)V

    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    const-string v1, "ImsPhoneConnection"

    if-nez v0, :cond_c

    .line 1756
    const-string p0, "sendRtpHeaderExtensions: Not an IMS call"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1759
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRtpHeaderExtensions: numExtensions = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist sendRttModifyResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1219
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1220
    const-string v2, "ImsPhoneConnection"

    if-nez v1, :cond_13

    .line 1221
    const-string p0, "sendRttModifyResponse failed, imsCall is null"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1224
    :cond_13
    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall;->sendRttModifyResponse(Z)V

    if-eqz v0, :cond_1c

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    return-void

    .line 1228
    :cond_1c
    const-string p0, "sendRttModifyResponse: foreground call has no connections"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist separate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 518
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setConferenceConnectTime(J)V
    .registers 3

    .line 931
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-void
.end method

.method public blacklist setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    .line 1257
    monitor-enter p0

    .line 1258
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1259
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz p1, :cond_18

    .line 1260
    const-string p1, "ImsPhoneConnection"

    const-string v0, "setCurrentRttTextStream: Creating a text handler"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1a

    .line 1263
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_16

    throw p1
.end method

.method public blacklist setDisconnectCause(I)V
    .registers 4

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisconnectCause: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return-void
.end method

.method public declared-synchronized blacklist setImsCall(Lcom/android/ims/ImsCall;)V
    .registers 2

    monitor-enter p0

    .line 838
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 839
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public blacklist setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    .line 1779
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method public blacklist setIsBusinessComposerFeatureEnabled(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 1440
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isBusinessComposerEnabledByConfig(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isBusinessOnlyCallComposerEnabledByUser(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 1444
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1442
    const-string p1, "setIsBusinessComposerFeatureEnabled:  mIsBusinessComposerFeatureEnabled=[%b], phone=[%s]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setLocalVideoCapable(Z)V
    .registers 3

    .line 1744
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 1745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLocalVideoCapable: mIsLocalVideoCapable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; updating local video availability."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    return-void
.end method

.method public blacklist setPreciseDisconnectCause(I)V
    .registers 2

    .line 900
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return-void
.end method

.method public blacklist setRemotelyHeld()V
    .registers 3

    const/4 v0, 0x1

    .line 1707
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 1708
    const-string v0, "android.telecom.event.CALL_REMOTELY_HELD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist setRemotelyUnheld()V
    .registers 3

    const/4 v0, 0x0

    .line 1715
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 1716
    const-string v0, "android.telecom.event.CALL_REMOTELY_UNHELD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist setTelephonyMetrics(Lcom/android/internal/telephony/metrics/TelephonyMetrics;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-void
.end method

.method public blacklist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 3

    .line 1572
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 1574
    instance-of v0, p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_b

    .line 1575
    check-cast p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    :cond_b
    return-void
.end method

.method public blacklist startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 4

    .line 1190
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1192
    const-string p0, "ImsPhoneConnection"

    const-string p1, "startRtt failed, imsCall is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v1, 0x1

    .line 1195
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->sendRttModifyRequest(Z)V

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method public blacklist startRttTextProcessing()V
    .registers 3

    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_10

    .line 1291
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: no RTT text stream. Ignoring."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_22

    .line 1294
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1d

    .line 1295
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: RTT text handler already exists"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    monitor-exit p0

    return-void

    .line 1298
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1299
    monitor-exit p0

    return-void

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    throw v0
.end method

.method public blacklist stopRtt()V
    .registers 2

    .line 1203
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_e

    .line 1205
    const-string p0, "ImsPhoneConnection"

    const-string v0, "stopRtt failed, imsCall is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 1208
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->sendRttModifyRequest(Z)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1550
    const-string v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1552
    const-string v1, " telecomCallID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const-string v1, "ImsPhoneConnection"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v1, " isAdhocConf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isAdhocConference()Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "Y"

    goto :goto_3f

    :cond_3d
    const-string v1, "N"

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    const-string v1, " ImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    monitor-enter p0

    .line 1560
    :try_start_48
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_54

    .line 1561
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :catchall_52
    move-exception v0

    goto :goto_62

    .line 1563
    :cond_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1565
    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_52

    .line 1566
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1565
    :goto_62
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_52

    throw v0
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 484
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz p0, :cond_8

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall;->transfer(Ljava/lang/String;Z)V

    return-void

    .line 487
    :cond_8
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_10} :catch_10

    .line 490
    :catch_10
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot transfer call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-r update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .registers 6

    .line 851
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_51

    .line 856
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 857
    const-string p0, "ImsPhoneConnection"

    const-string p1, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 861
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 862
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 865
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v2, :cond_58

    .line 870
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 872
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    goto :goto_58

    .line 874
    :cond_51
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_58

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    .line 878
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result p2

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v2

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    move-result p0

    if-nez p2, :cond_74

    if-nez v0, :cond_74

    if-nez v2, :cond_74

    if-eqz p0, :cond_73

    goto :goto_74

    :cond_73
    return v1

    :cond_74
    :goto_74
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 954
    :cond_4
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 959
    const-string v1, "oi"

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 960
    const-string v2, "cna"

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 961
    const-string v3, "oir"

    .line 962
    invoke-virtual {p1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v3

    .line 961
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v3

    .line 963
    const-string v4, "cnap"

    .line 964
    invoke-virtual {p1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    .line 963
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p1

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAddressDisplay: callId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const-string v5, "ImsPhoneConnection"

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nump = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " namep = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    if-nez v4, :cond_af

    .line 979
    iget-object v4, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_82

    .line 980
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    move v0, v5

    .line 983
    :cond_82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 984
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 985
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    :goto_94
    move v0, v5

    goto :goto_a1

    .line 988
    :cond_96
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 989
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    goto :goto_94

    .line 992
    :cond_a1
    :goto_a1
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    if-eq v1, v3, :cond_a8

    .line 993
    iput v3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    move v0, v5

    .line 996
    :cond_a8
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    if-eq v1, p1, :cond_af

    .line 997
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v5

    :cond_af
    return v0
.end method

.method blacklist updateExtras(Lcom/android/ims/ImsCall;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1373
    :cond_4
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1374
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-nez p1, :cond_17

    .line 1376
    const-string v0, "ImsPhoneConnection"

    const-string v1, "Call profile extras are null."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_40

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateImsCallRatFromExtras(Landroid/os/Bundle;)V

    .line 1381
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateEmergencyCallFromExtras(Landroid/os/Bundle;)V

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateForwardedNumberFromExtras(Landroid/os/Bundle;)V

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_36

    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1388
    :cond_36
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->maybeInjectBusinessComposerExtras(Landroid/os/Bundle;)V

    .line 1390
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V

    :cond_40
    return v1
.end method

.method public blacklist updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1021
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_8} :catch_1f9

    .line 1023
    const-string v2, "ImsPhoneConnection"

    const/4 v3, 0x1

    if-eqz v1, :cond_ab

    .line 1024
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    .line 1026
    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v5

    if-eq v4, v5, :cond_46

    .line 1035
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1036
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 1040
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 1043
    :cond_25
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-nez v6, :cond_2e

    .line 1044
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    move v6, v3

    goto :goto_34

    .line 1047
    :cond_2e
    const-string v6, "updateMediaCapabilities - ignoring video state change due to paused state."

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Lcom/android/ims/ImsException; {:try_start_d .. :try_end_33} :catch_1f9

    move v6, v0

    .line 1051
    :goto_34
    :try_start_34
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-nez v4, :cond_47

    .line 1052
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1056
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    goto :goto_47

    :catch_43
    move v0, v6

    goto/16 :goto_1f9

    :cond_46
    move v6, v0

    .line 1060
    :cond_47
    :goto_47
    iget-object v4, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v4, :cond_ac

    .line 1061
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz v4, :cond_83

    .line 1063
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v5, :cond_83

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaCapabilities -- turning RTT on, profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->startRttTextProcessing()V

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttInitiated()V
    :try_end_71
    .catch Lcom/android/ims/ImsException; {:try_start_34 .. :try_end_71} :catch_43

    .line 1069
    :try_start_71
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_7e
    .catch Lcom/android/ims/ImsException; {:try_start_71 .. :try_end_7e} :catch_80

    :goto_7e
    move v6, v3

    goto :goto_ac

    :catch_80
    move v0, v3

    goto/16 :goto_1f9

    :cond_83
    if-nez v4, :cond_ac

    .line 1070
    :try_start_85
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v4, :cond_ac

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaCapabilities -- turning RTT off, profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    const/4 v1, 0x0

    .line 1074
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1075
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttTerminated()V

    goto :goto_7e

    :cond_ab
    move v6, v0

    .line 1084
    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v1

    .line 1087
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_be

    .line 1088
    invoke-static {v1, v5}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result v1

    goto :goto_c2

    .line 1092
    :cond_be
    invoke-static {v1, v5}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result v1

    .line 1098
    :goto_c2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update localCallProfile="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_e0

    .line 1101
    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1105
    :cond_e0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 1106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update remoteCallProfile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_fe

    .line 1108
    invoke-static {v5, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1110
    :cond_fe
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v7

    if-eq v7, v1, :cond_108

    .line 1111
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Connection;->setConnectionCapabilities(I)V

    move v6, v3

    .line 1115
    :cond_108
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViLteDataMetered()Z

    move-result v1

    if-nez v1, :cond_116

    .line 1116
    const-string v1, "data is not metered"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 1118
    :cond_116
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v1, :cond_122

    const/4 v7, 0x4

    .line 1120
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/Connection;->hasCapabilities(I)Z

    move-result v7

    .line 1119
    invoke-virtual {v1, v7}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setIsVideoEnabled(Z)V

    :cond_122
    :goto_122
    if-eqz v4, :cond_151

    .line 1127
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iget v7, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    if-eq v1, v7, :cond_151

    .line 1129
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1131
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V
    :try_end_14e
    .catch Lcom/android/ims/ImsException; {:try_start_85 .. :try_end_14e} :catch_43

    move p1, v3

    move v0, p1

    goto :goto_153

    :cond_151
    move p1, v0

    move v0, v6

    :goto_153
    if-eqz v4, :cond_1bc

    .line 1136
    :try_start_155
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1137
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;

    move-result-object v1

    if-eqz v1, :cond_1bc

    .line 1138
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1139
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;

    move-result-object v1

    .line 1141
    iget v6, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    .line 1142
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBitrateRangeKbps()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    .line 1141
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_191

    .line 1143
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBitrateRangeKbps()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    move p1, v3

    move v0, p1

    .line 1147
    :cond_191
    iget v6, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    .line 1148
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBandwidthRangeKhz()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v6, v8

    .line 1147
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1bc

    .line 1150
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBandwidthRangeKhz()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    move p1, v3

    move v0, p1

    :cond_1bc
    if-eqz p1, :cond_1eb

    .line 1157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMediaCapabilities: mediate attributes changed: codec = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitRate="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bandwidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->notifyMediaAttributesChanged()V

    .line 1164
    :cond_1eb
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v1

    if-eq v1, p1, :cond_1f9

    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V
    :try_end_1f8
    .catch Lcom/android/ims/ImsException; {:try_start_155 .. :try_end_1f8} :catch_1f9

    return v3

    :catch_1f9
    :cond_1f9
    :goto_1f9
    return v0
.end method

.method public blacklist wasVideoPausedFromSource(I)Z
    .registers 2

    .line 1681
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1685
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->wasVideoPausedFromSource(I)Z

    move-result p0

    return p0
.end method
