.class public Lcom/android/internal/telephony/GsmCdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field public static final blacklist OTASP_NUMBER:Ljava/lang/String; = "*22899"


# instance fields
.field blacklist mDisconnectTime:J

.field blacklist mDisconnected:Z

.field private blacklist mDtmfToneDelay:I

.field blacklist mHandler:Landroid/os/Handler;

.field greylist-max-r mIndex:I

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field blacklist mOrigConnection:Lcom/android/internal/telephony/Connection;

.field greylist-max-r mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field blacklist mParent:Lcom/android/internal/telephony/GsmCdmaCall;

.field private blacklist mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field blacklist mPreciseCause:I

.field blacklist mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field blacklist mVendorCause:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessNextPostDialChar(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 6

    .line 234
    invoke-virtual {p4}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 235
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 238
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 239
    new-instance p1, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 240
    iget-object p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 241
    iget p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 242
    iget-object p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 243
    iget p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    const/4 p1, -0x1

    .line 244
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    const-wide/16 p1, 0x0

    .line 247
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 248
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 249
    sget-object p1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 251
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .registers 9

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 139
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 140
    new-instance p3, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 142
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 143
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/Connection;->setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    .line 145
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3f

    move-object p3, v0

    goto :goto_41

    :cond_3f
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    .line 146
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create, forwardedNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GsmCdmaConnection"

    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_5e

    goto :goto_69

    .line 148
    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_69
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    .line 149
    iget-boolean p3, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 151
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 152
    iget p3, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 153
    iget p3, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 154
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 156
    iput p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 158
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 159
    invoke-virtual {p3, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 163
    iget p1, p2, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 9

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 175
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 176
    new-instance p3, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 178
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p3

    if-nez p3, :cond_69

    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GsmCdmaConn] GsmCdmaConnection: dialString="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 180
    const-string v1, "GsmCdmaConnection"

    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCdmaConn] GsmCdmaConnection:formated dialString="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 183
    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_69
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 189
    iget-boolean p3, p5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-eqz p3, :cond_88

    .line 190
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0, p3, p5}, Lcom/android/internal/telephony/Connection;->setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p3

    if-nez p3, :cond_88

    .line 196
    iget p3, p5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p3, p5}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    .line 200
    :cond_88
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    const/4 p2, -0x1

    .line 202
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 205
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 206
    iput p2, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 207
    iput p2, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    if-eqz p4, :cond_c0

    .line 211
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p2

    if-eqz p2, :cond_b1

    .line 213
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_c0

    .line 216
    :cond_b1
    iget-object p2, p4, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object p3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_bb

    .line 217
    invoke-virtual {p4, p0, p3}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_c0

    .line 219
    :cond_bb
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 225
    :cond_c0
    :goto_c0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 227
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    return-void
.end method

.method private greylist-max-r acquireWakeLock()V
    .registers 3

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    .line 1084
    monitor-enter v0

    .line 1085
    :try_start_5
    const-string v1, "acquireWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1086
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1087
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    return-void
.end method

.method private greylist-max-r createWakeLock(Landroid/content/Context;)V
    .registers 4

    .line 1077
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 1078
    const-string v1, "GsmCdmaConnection"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private blacklist doDisconnect()V
    .registers 5

    const/4 v0, -0x1

    .line 851
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    .line 855
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->clearPostDialListeners()V

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

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 264
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist-max-r fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 4

    .line 1195
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1196
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1198
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDtmfToneDelayKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    :cond_20
    return-void
.end method

.method private static greylist-max-r findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .registers 8

    .line 1132
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_2c

    .line 1136
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1138
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    .line 1143
    :cond_1c
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_2c

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2c
    :goto_2c
    if-ge v3, v2, :cond_3d

    if-le v3, v1, :cond_3d

    if-nez v0, :cond_3d

    .line 1152
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v1

    :cond_3d
    return v3
.end method

.method private static greylist-max-r findPOrWCharToAppend(Ljava/lang/String;II)C
    .registers 4

    .line 1165
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1169
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result p0

    const/16 v0, 0x3b

    if-eqz p0, :cond_f

    const/16 p0, 0x2c

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    add-int/lit8 p1, p1, 0x1

    if-le p2, p1, :cond_15

    return v0

    :cond_15
    return p0
.end method

.method public static greylist-max-r formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_43

    .line 301
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 302
    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_25

    .line 322
    :cond_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_25
    :goto_25
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_40

    .line 305
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v0, :cond_3d

    .line 308
    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v3

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    if-le v4, v3, :cond_40

    add-int/lit8 v2, v4, -0x1

    goto :goto_40

    :cond_3d
    if-ne v4, v0, :cond_40

    move v2, v3

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 326
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAudioQualityFromDC(I)I
    .registers 3

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/4 p0, 0x1

    :cond_8
    return p0
.end method

.method private blacklist isConnectingInOrOut()Z
    .registers 2

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v0, p0, :cond_17

    iget-object p0, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-r isPause(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-r isPhoneTypeGsm()Z
    .registers 2

    .line 1204
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-r isWait(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isWild(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .registers 3

    .line 1209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GsmCdmaConn] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1189
    const-string p0, "<MASKED>"

    return-object p0
.end method

.method private blacklist parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;
    .registers 4

    .line 1018
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 1035
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal call state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1031
    :pswitch_22
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    .line 1026
    :pswitch_27
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    .line 1022
    :pswitch_2c
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist processNextPostDialChar()V
    .registers 5

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_a

    .line 952
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void

    .line 956
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 957
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_17

    goto :goto_54

    .line 968
    :cond_17
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 972
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processPostDialChar(C)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 976
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 978
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNextPostDialChar: c="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t valid!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_54
    :goto_54
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 961
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    const/4 v0, 0x0

    .line 983
    :cond_5d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListenersNextChar(C)V

    .line 986
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPostDialHandler()Lcom/android/internal/telephony/Registrant;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 991
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 993
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 994
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    .line 995
    iput-object p0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 996
    iput-object v2, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 999
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1002
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_81
    return-void
.end method

.method private blacklist processPostDialChar(C)Z
    .registers 6

    .line 870
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_53

    .line 872
    :cond_15
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 873
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_26

    .line 874
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 888
    :cond_26
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 889
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_36

    const-wide/16 v2, 0xbb8

    goto :goto_38

    :cond_36
    const-wide/16 v2, 0x7d0

    .line 888
    :goto_38
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_53

    .line 890
    :cond_3c
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 891
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_53

    .line 892
    :cond_48
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWild(C)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 893
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    :goto_53
    return v1

    :cond_54
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist releaseAllWakeLocks()V
    .registers 3

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_19

    .line 1104
    monitor-enter v0

    .line 1105
    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1106
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 1108
    :cond_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_13

    throw p0

    :cond_19
    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1e

    .line 1093
    monitor-enter v0

    .line 1094
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1095
    const-string v1, "releaseWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1096
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 1098
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_18

    throw p0

    :cond_1e
    return-void
.end method

.method private blacklist setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .registers 7

    .line 1056
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v1, 0x4

    if-eq p1, v0, :cond_13

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v0, :cond_a

    goto :goto_13

    .line 1068
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    goto :goto_38

    .line 1058
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1059
    :try_start_16
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1060
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_29

    :catchall_24
    move-exception p0

    goto :goto_3e

    .line 1062
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 1064
    :goto_29
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1065
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_24

    .line 1071
    :goto_38
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListeners()V

    return-void

    .line 1066
    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_24

    throw p0
.end method


# virtual methods
.method public blacklist cancelPostDial()V
    .registers 2

    .line 461
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method blacklist compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 5

    .line 336
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v0, :cond_a

    return v1

    .line 341
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_15

    return v1

    .line 346
    :cond_15
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, p1, :cond_2c

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 409
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for CS"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 397
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "deflect is not supported for CS"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-r disconnectCauseFromCode(I)I
    .registers 9

    const/16 v0, 0x29

    if-eq p1, v0, :cond_e9

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_e9

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_e6

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_e3

    const/16 v0, 0x145

    if-eq p1, v0, :cond_e0

    const/16 v0, 0x146

    if-eq p1, v0, :cond_dd

    const/16 v0, 0x12

    const/16 v1, 0x13

    sparse-switch p1, :sswitch_data_ec

    const/16 v2, 0x11

    packed-switch p1, :pswitch_data_122

    packed-switch p1, :pswitch_data_130

    .line 581
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    .line 582
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 583
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 584
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    goto :goto_42

    .line 585
    :cond_40
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    :goto_42
    const/4 v6, 0x3

    if-ne v4, v6, :cond_46

    return v2

    .line 589
    :cond_46
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v2

    const/4 v6, 0x2

    if-nez v2, :cond_64

    const/4 v2, 0x1

    if-eq v4, v2, :cond_63

    if-ne v4, v6, :cond_53

    goto :goto_63

    .line 600
    :cond_53
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v0, :cond_64

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_5e

    return v1

    .line 604
    :cond_5e
    iget v0, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v0, :cond_64

    return v1

    :cond_63
    :goto_63
    return v0

    .line 611
    :cond_64
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_9a

    const p0, 0xffff

    if-eq p1, p0, :cond_73

    const/16 p0, 0x104

    if-ne p1, p0, :cond_9a

    .line 614
    :cond_73
    iget-object p0, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x16

    return p0

    .line 616
    :cond_80
    iget-object p0, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p0

    if-eqz p0, :cond_8d

    const/16 p0, 0x18

    return p0

    .line 618
    :cond_8d
    iget-object p0, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p0

    if-eqz p0, :cond_9a

    const/16 p0, 0x17

    return p0

    :cond_9a
    const/16 p0, 0x10

    if-ne p1, p0, :cond_9f

    return v6

    :cond_9f
    const/16 p0, 0x24

    return p0

    :pswitch_a2
    const/16 p0, 0x23

    return p0

    :pswitch_a5
    const/16 p0, 0x22

    return p0

    :pswitch_a8
    const/16 p0, 0x21

    return p0

    :pswitch_ab
    const/16 p0, 0x20

    return p0

    :pswitch_ae
    const/16 p0, 0x1f

    return p0

    :pswitch_b1
    const/16 p0, 0x1e

    return p0

    :pswitch_b4
    const/16 p0, 0x1d

    return p0

    :pswitch_b7
    const/16 p0, 0x1c

    return p0

    :pswitch_ba
    const/16 p0, 0x1b

    return p0

    :pswitch_bd
    const/16 p0, 0x1a

    return p0

    :pswitch_c0
    return v2

    :pswitch_c1
    const/16 p0, 0x30

    return p0

    :pswitch_c4
    const/16 p0, 0x2f

    return p0

    :pswitch_c7
    const/16 p0, 0x2e

    return p0

    :pswitch_ca
    const/16 p0, 0x3a

    return p0

    :sswitch_cd
    return v0

    :sswitch_ce
    return v1

    :sswitch_cf
    const/16 p0, 0xf

    return p0

    :sswitch_d2
    const/16 p0, 0x41

    return p0

    :sswitch_d5
    const/16 p0, 0xd

    return p0

    :sswitch_d8
    const/4 p0, 0x4

    return p0

    :sswitch_da
    const/16 p0, 0x19

    return p0

    :cond_dd
    const/16 p0, 0x40

    return p0

    :cond_e0
    const/16 p0, 0x3f

    return p0

    :cond_e3
    const/16 p0, 0x15

    return p0

    :cond_e6
    :sswitch_e6
    const/16 p0, 0x14

    return p0

    :cond_e9
    :sswitch_e9
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_da
        0x8 -> :sswitch_e6
        0x11 -> :sswitch_d8
        0x13 -> :sswitch_d5
        0x1f -> :sswitch_d2
        0x22 -> :sswitch_e9
        0x2c -> :sswitch_e9
        0x31 -> :sswitch_e9
        0x3a -> :sswitch_e9
        0x44 -> :sswitch_cf
        0xf9 -> :sswitch_ce
        0x4b7 -> :sswitch_cd
        0x4bb -> :sswitch_cd
    .end sparse-switch

    :pswitch_data_122
    .packed-switch 0xf3
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_c0
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x3e8
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
    .end packed-switch
.end method

.method public blacklist dispose()V
    .registers 2

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->clearPostDialListeners()V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_a

    .line 258
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 260
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseAllWakeLocks()V

    return-void
.end method

.method blacklist fakeHoldBeforeDial()V
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 798
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 799
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 940
    const-string v0, "GsmCdmaConnection"

    const-string v1, "UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->clearPostDialListeners()V

    .line 943
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public bridge synthetic blacklist getCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0
.end method

.method public blacklist getDisconnectTime()J
    .registers 3

    .line 362
    iget-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 1

    .line 1261
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p0, :cond_f

    .line 1262
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1264
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getGsmCdmaIndex()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 806
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ltz p0, :cond_7

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 809
    :cond_7
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "GsmCdma index not yet assigned"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getHoldDurationMillis()J
    .registers 5

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 371
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getNumberPresentation()I
    .registers 1

    .line 1214
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return p0
.end method

.method public blacklist getOrigConnection()Lcom/android/internal/telephony/Connection;
    .registers 1

    .line 1244
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object p0
.end method

.method public blacklist getOrigDialString()Ljava/lang/String;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .registers 1

    .line 1223
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    return p0
.end method

.method public blacklist getRemainingPostDialString()Ljava/lang/String;
    .registers 4

    .line 904
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2f

    const/16 p0, 0x3b

    .line 906
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v1, 0x2c

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez p0, :cond_28

    if-lt p0, v1, :cond_23

    if-gtz v1, :cond_28

    .line 910
    :cond_23
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    if-lez v1, :cond_2f

    .line 912
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    return-object v0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .line 378
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_7

    .line 379
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 381
    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 1

    .line 1219
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object p0
.end method

.method public blacklist getVendorDisconnectCause()Ljava/lang/String;
    .registers 1

    .line 1228
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hangup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 387
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 390
    :cond_a
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isMultiparty()Z
    .registers 1

    .line 1249
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz p0, :cond_9

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOtaspCall()Z
    .registers 2

    .line 1274
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "*22899"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1235
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1237
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1239
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    return-void
.end method

.method blacklist onConnectedConnectionMigrated()V
    .registers 1

    .line 846
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method greylist-max-r onConnectedInOrOut()V
    .registers 4

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 821
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 829
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    if-nez v0, :cond_2e

    .line 831
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void

    .line 835
    :cond_2e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public blacklist onDisconnect(I)Z
    .registers 5

    .line 647
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 649
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_37

    .line 650
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaConnection"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->notifyDisconnect(I)V

    .line 657
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz p1, :cond_34

    .line 658
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z

    move-result v1

    :cond_34
    const/4 p1, 0x0

    .line 661
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 663
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->clearPostDialListeners()V

    .line 664
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return v1
.end method

.method blacklist onHangupLocal()V
    .registers 2

    const/4 v0, 0x3

    .line 471
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-void
.end method

.method blacklist onLocalDisconnect()V
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_e

    .line 673
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_e

    .line 677
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 680
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method blacklist onRemoteDisconnect(ILjava/lang/String;)V
    .registers 3

    .line 634
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 635
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->disconnectCauseFromCode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    return-void
.end method

.method blacklist onStartedHolding()V
    .registers 3

    .line 860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-void
.end method

.method public blacklist proceedAfterWaitChar()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1f

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 429
    :cond_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 431
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method public blacklist proceedAfterWildChar(Ljava/lang/String;)V
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1f

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 442
    :cond_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 450
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method public blacklist separate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_a

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 417
    :cond_a
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 403
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for CS"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 14

    .line 688
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v0

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v4

    .line 691
    :goto_11
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v5

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newParent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_45

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_45

    .line 697
    const-string v6, "update: mOrigConnection is not null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_6e

    .line 698
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 699
    iget-object v6, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-boolean v6, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    if-eqz v6, :cond_63

    iget-object v6, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 700
    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 701
    :cond_63
    const-string v6, "update: phone # changed!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 702
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    move v6, v3

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v6, v4

    .line 707
    :goto_6f
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v7

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v8

    if-eq v8, v7, :cond_9b

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: audioQuality # changed!:  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8b

    .line 712
    const-string v8, "high"

    goto :goto_8d

    :cond_8b
    const-string v8, "standard"

    :goto_8d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    move v6, v3

    .line 719
    :cond_9b
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iget v8, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    if-eq v7, v8, :cond_c3

    .line 720
    iput v7, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    .line 721
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget v9, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecGsmCdma(II)V

    .line 722
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v7, p0, v8}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V

    .line 725
    :cond_c3
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_ce

    move-object v7, v8

    goto :goto_d0

    :cond_ce
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    .line 726
    :goto_d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: forwardedNumber="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "GsmCdmaConnection"

    invoke-static {v10, v7}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_ed

    goto :goto_f8

    .line 728
    :cond_ed
    new-instance v8, Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 729
    :goto_f8
    iget-object v7, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 730
    const-string v6, "update: mForwardedNumber, # changed"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 731
    iput-object v8, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    move v6, v3

    .line 736
    :cond_108
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 737
    iget-object v7, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12d

    .line 739
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    :goto_11c
    move v6, v3

    goto :goto_12d

    .line 741
    :cond_11e
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12d

    .line 743
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    goto :goto_11c

    .line 746
    :cond_12d
    :goto_12d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 747
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 748
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 750
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v5, v7, :cond_15b

    if-eqz v7, :cond_154

    .line 752
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 754
    :cond_154
    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 755
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    :cond_159
    :goto_159
    move p1, v3

    goto :goto_165

    .line 759
    :cond_15b
    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result p1

    if-nez v6, :cond_159

    if-eqz p1, :cond_164

    goto :goto_159

    :cond_164
    move p1, v4

    .line 765
    :goto_165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: parent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", hasNewParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v5, v7, :cond_17e

    goto :goto_17f

    :cond_17e
    move v3, v4

    :goto_17f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wasConnectingInOrOut="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wasHolding="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isConnectingInOrOut="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", changed="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1b8

    .line 774
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    :cond_1b8
    if-eqz p1, :cond_1c5

    if-nez v1, :cond_1c5

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-ne v0, v2, :cond_1c5

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    :cond_1c5
    return p1
.end method

.method public greylist-max-r updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 3

    if-eq p2, p1, :cond_e

    if-eqz p1, :cond_7

    .line 923
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 925
    :cond_7
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 926
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    :cond_e
    return-void
.end method
