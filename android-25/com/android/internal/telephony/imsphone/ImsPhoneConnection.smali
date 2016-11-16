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
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mDtmfToneDelay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mIsEmergency:Z

.field private mIsWifiStateFromExtras:Z

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShouldIgnoreVideoStateChanges:Z

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 157
    const/4 v1, 0x5

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    #@7
    .line 66
    new-instance v1, Landroid/os/Bundle;

    #@9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@e
    .line 87
    const-wide/16 v2, 0x0

    #@10
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@12
    .line 90
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    #@14
    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    #@16
    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@18
    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    #@1a
    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    #@21
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@24
    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@26
    .line 162
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    #@28
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    #@31
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@33
    .line 163
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@35
    .line 165
    if-eqz p2, :cond_0

    #@37
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@3a
    move-result-object v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 166
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@40
    move-result-object v1

    #@41
    const-string/jumbo v2, "oi"

    #@44
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@4a
    .line 167
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "cna"

    #@51
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@57
    .line 169
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "oir"

    #@5e
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@61
    move-result v1

    #@62
    .line 168
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@65
    move-result v1

    #@66
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@68
    .line 171
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v2, "cnap"

    #@6f
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@72
    move-result v1

    #@73
    .line 170
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@76
    move-result v1

    #@77
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@79
    .line 172
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    #@7c
    .line 178
    :goto_0
    if-eqz p5, :cond_1

    #@7e
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@80
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@83
    move-result-wide v0

    #@84
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    #@86
    .line 180
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@88
    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    #@8b
    .line 187
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    #@8e
    .line 189
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@90
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@92
    .line 191
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@94
    if-eqz v0, :cond_2

    #@96
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@98
    .line 190
    :goto_2
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@9b
    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    #@9e
    .line 156
    return-void

    #@9f
    .line 174
    :cond_0
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@a1
    .line 175
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@a3
    goto :goto_0

    #@a4
    .line 178
    :cond_1
    const/4 v0, 0x1

    #@a5
    goto :goto_1

    #@a6
    .line 191
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@a8
    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 199
    const/4 v0, 0x5

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    #@6
    .line 66
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@d
    .line 87
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@11
    .line 90
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    #@13
    .line 92
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    #@15
    .line 101
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@17
    .line 111
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    #@19
    .line 200
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    #@20
    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@23
    .line 203
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@25
    .line 204
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    #@30
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@32
    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    #@34
    .line 208
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@3a
    .line 209
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@40
    .line 213
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@42
    .line 214
    const/4 v0, 0x0

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@45
    .line 215
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@47
    .line 216
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@49
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4c
    move-result-wide v0

    #@4d
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    #@4f
    .line 219
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@51
    .line 220
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@53
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@56
    .line 222
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    #@58
    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    #@5b
    .line 198
    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    #@0
    .prologue
    .line 568
    const-string/jumbo v0, "ImsPhoneConnection"

    #@3
    const-string/jumbo v1, "acquireWakeLock"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@e
    .line 567
    return-void
.end method

.method private static applyLocalCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I
    .locals 4
    .param p0, "localProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 236
    const-string/jumbo v0, "ImsPhoneConnection"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "applyLocalCallCapabilities - localProfile = "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 237
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    #@1e
    move-result p1

    #@1f
    .line 240
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@21
    packed-switch v0, :pswitch_data_0

    #@24
    .line 248
    :goto_0
    return p1

    #@25
    .line 244
    :pswitch_0
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    #@28
    move-result p1

    #@29
    goto :goto_0

    #@2a
    .line 240
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyRemoteCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I
    .locals 4
    .param p0, "remoteProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 252
    const-string/jumbo v0, "ImsPhoneConnection"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "applyRemoteCallCapabilities - remoteProfile = "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 253
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    #@1f
    move-result p1

    #@20
    .line 256
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@22
    packed-switch v0, :pswitch_data_0

    #@25
    .line 264
    :goto_0
    return p1

    #@26
    .line 260
    :pswitch_0
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    #@29
    move-result p1

    #@2a
    goto :goto_0

    #@2b
    .line 256
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "newExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 961
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_2

    #@6
    .line 962
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    :goto_0
    return v4

    #@9
    :cond_1
    move v4, v5

    #@a
    goto :goto_0

    #@b
    .line 965
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@e
    move-result v6

    #@f
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@12
    move-result v7

    #@13
    if-eq v6, v7, :cond_3

    #@15
    .line 966
    return v5

    #@16
    .line 969
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_5

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    .line 970
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@2c
    .line 971
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    .line 972
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    .line 973
    .local v2, "newValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_4

    #@3a
    .line 974
    return v5

    #@3b
    .line 978
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    return v4
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 562
    const-string/jumbo v1, "power"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/PowerManager;

    #@9
    .line 563
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhoneConnection"

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    .line 561
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 232
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "carrier_config"

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .line 583
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@d
    .line 585
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@14
    move-result-object v0

    #@15
    .line 586
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    #@17
    .line 587
    const-string/jumbo v2, "ims_dtmf_tone_delay_int"

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    #@20
    .line 582
    :cond_0
    return-void
.end method

.method private getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I
    .locals 6
    .param p1, "localCallProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 993
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 995
    :cond_0
    return v3

    #@8
    .line 994
    :cond_1
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 998
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@e
    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@10
    .line 999
    const/16 v5, 0x12

    #@12
    .line 998
    if-eq v4, v5, :cond_2

    #@14
    .line 1000
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@16
    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@18
    .line 1001
    const/16 v5, 0x13

    #@1a
    .line 1000
    if-ne v4, v5, :cond_5

    #@1c
    .line 998
    :cond_2
    const/4 v0, 0x1

    #@1d
    .line 1005
    .local v0, "isEvsCodecHighDef":Z
    :goto_0
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@1f
    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@21
    if-eq v4, v2, :cond_3

    #@23
    .line 1007
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@25
    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@27
    .line 1008
    const/4 v5, 0x6

    #@28
    .line 1007
    if-ne v4, v5, :cond_7

    #@2a
    .line 1010
    :cond_3
    :goto_1
    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@2c
    if-nez v4, :cond_4

    #@2e
    move v1, v3

    #@2f
    .line 1011
    .local v1, "isHighDef":Z
    :cond_4
    if-eqz v1, :cond_8

    #@31
    :goto_2
    return v2

    #@32
    .line 1002
    .end local v0    # "isEvsCodecHighDef":Z
    .end local v1    # "isHighDef":Z
    :cond_5
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@34
    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@36
    .line 1003
    const/16 v5, 0x14

    #@38
    .line 1002
    if-ne v4, v5, :cond_6

    #@3a
    const/4 v0, 0x1

    #@3b
    .restart local v0    # "isEvsCodecHighDef":Z
    goto :goto_0

    #@3c
    .end local v0    # "isEvsCodecHighDef":Z
    :cond_6
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "isEvsCodecHighDef":Z
    goto :goto_0

    #@3e
    .line 1005
    :cond_7
    if-eqz v0, :cond_4

    #@40
    goto :goto_1

    #@41
    .restart local v1    # "isHighDef":Z
    :cond_8
    move v2, v3

    #@42
    .line 1011
    goto :goto_2
.end method

.method private processNextPostDialChar()V
    .locals 9

    #@0
    .prologue
    .line 484
    const/4 v1, 0x0

    #@1
    .line 487
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-ne v6, v7, :cond_0

    #@7
    .line 489
    return-void

    #@8
    .line 492
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@a
    if-eqz v6, :cond_1

    #@c
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@14
    if-gt v6, v7, :cond_4

    #@16
    .line 493
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@18
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@1b
    .line 496
    const/4 v1, 0x0

    #@1c
    .line 515
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    #@1f
    .line 518
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@21
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@23
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPostDialHandler()Landroid/os/Registrant;

    #@26
    move-result-object v4

    #@27
    .line 522
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    #@29
    .line 523
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    #@2c
    move-result-object v3

    #@2d
    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    #@2f
    .line 525
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@31
    .line 526
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@34
    move-result-object v0

    #@35
    .line 527
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@37
    .line 528
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@39
    .line 531
    iput v1, v3, Landroid/os/Message;->arg1:I

    #@3b
    .line 535
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@3e
    .line 483
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    #@3f
    .line 500
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@41
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@44
    .line 502
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@46
    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@48
    add-int/lit8 v8, v7, 0x1

    #@4a
    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@4f
    move-result v1

    #@50
    .line 504
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    #@53
    move-result v2

    #@54
    .line 506
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    #@56
    .line 508
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@58
    const/4 v7, 0x3

    #@59
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@60
    .line 510
    const-string/jumbo v6, "ImsPhoneConnection"

    #@63
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "processNextPostDialChar: c="

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    const-string/jumbo v8, " isn\'t valid!"

    #@76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 511
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 449
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    #@12
    .line 474
    :goto_0
    return v4

    #@13
    .line 451
    :cond_0
    const/16 v0, 0x2c

    #@15
    if-ne p1, v0, :cond_1

    #@17
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 465
    const-wide/16 v2, 0xbb8

    #@22
    .line 464
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@25
    goto :goto_0

    #@26
    .line 466
    :cond_1
    const/16 v0, 0x3b

    #@28
    if-ne p1, v0, :cond_2

    #@2a
    .line 467
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@2f
    goto :goto_0

    #@30
    .line 468
    :cond_2
    const/16 v0, 0x4e

    #@32
    if-ne p1, v0, :cond_3

    #@34
    .line 469
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@39
    goto :goto_0

    #@3a
    .line 471
    :cond_3
    const/4 v0, 0x0

    #@3b
    return v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 546
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-eq v1, v2, :cond_1

    #@7
    .line 547
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    .line 548
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@e
    .line 549
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 550
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@16
    const-wide/32 v2, 0xea60

    #@19
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c
    .line 556
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1e
    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    #@21
    .line 545
    return-void

    #@22
    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@24
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@26
    if-ne v1, v2, :cond_0

    #@28
    .line 552
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2a
    if-eq p1, v1, :cond_0

    #@2c
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@2e
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@31
    .line 554
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@34
    goto :goto_0
.end method

.method private updateWifiStateFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 911
    const-string/jumbo v2, "CallRadioTech"

    #@3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 912
    const-string/jumbo v2, "callRadioTech"

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    .line 911
    if-eqz v2, :cond_2

    #@12
    .line 916
    :cond_0
    const/4 v2, 0x1

    #@13
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    #@15
    .line 918
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@18
    move-result-object v0

    #@19
    .line 919
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/4 v1, 0x0

    #@1a
    .line 920
    .local v1, "isWifi":Z
    if-eqz v0, :cond_1

    #@1c
    .line 921
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    #@1f
    move-result v1

    #@20
    .line 925
    .end local v1    # "isWifi":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    #@23
    move-result v2

    #@24
    if-eq v2, v1, :cond_2

    #@26
    .line 926
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    #@29
    .line 910
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    #@0
    .prologue
    .line 373
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@5
    .line 372
    return-void
.end method

.method public changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    .line 640
    return-void
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 227
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@3
    .line 478
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    #@0
    .prologue
    .line 726
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@2
    return-wide v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 279
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    #@2
    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 291
    const-wide/16 v0, 0x0

    #@a
    return-wide v0

    #@b
    .line 293
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@11
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    #@0
    .prologue
    .line 284
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@2
    return-wide v0
.end method

.method public getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 593
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@2
    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 603
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 688
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@6
    return-object v0

    #@7
    .line 315
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@2
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@9
    .line 320
    return-void

    #@a
    .line 324
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "disconnected"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public isConferenceHost()Z
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 622
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@8
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected isEmergency()Z
    .locals 1

    #@0
    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    #@2
    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    #@0
    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@6
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    #@0
    .prologue
    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    #@6
    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    #@c
    .line 425
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    #@10
    .line 428
    const-string/jumbo v0, "ImsPhoneConnection"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    #@21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 431
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@33
    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@36
    .line 422
    return-void
.end method

.method public onDisconnect()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 395
    const/4 v0, 0x0

    #@2
    .line 397
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    #@c
    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    #@12
    sub-long/2addr v2, v4

    #@13
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    #@15
    .line 402
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@18
    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1a
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1c
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    #@1f
    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@25
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    #@28
    move-result v0

    #@29
    .line 411
    .end local v0    # "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2b
    if-eqz v1, :cond_0

    #@2d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2f
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    #@32
    .line 412
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@34
    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@37
    .line 415
    return v0

    #@38
    .line 409
    .restart local v0    # "changed":Z
    :cond_2
    const-string/jumbo v1, "ImsPhoneConnection"

    #@3b
    const-string/jumbo v2, "onDisconnect: no parent"

    #@3e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 387
    const-string/jumbo v0, "ImsPhoneConnection"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onDisconnect: cause="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 388
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@1c
    const/4 v1, 0x3

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    const/16 v0, 0x10

    #@21
    if-ne p1, v0, :cond_1

    #@23
    .line 389
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@25
    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@28
    move-result v0

    #@29
    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@3
    move-result-object v1

    #@4
    .line 700
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_0

    #@6
    .line 701
    return-void

    #@7
    .line 704
    :cond_0
    const/4 v2, 0x1

    #@8
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    #@a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 698
    :goto_0
    return-void

    #@15
    .line 705
    :catch_0
    move-exception v0

    #@16
    .line 707
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneConnection"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    #@0
    .prologue
    .line 381
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@3
    .line 380
    return-void
.end method

.method public onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 1058
    const/4 v3, 0x1

    #@1
    if-ne p1, v3, :cond_1

    #@3
    .line 1059
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@5
    .line 1058
    if-eqz v3, :cond_1

    #@7
    .line 1060
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    #@a
    move-result v1

    #@b
    .line 1061
    .local v1, "currentVideoState":I
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    #@e
    move-result v2

    #@f
    .line 1069
    .local v2, "newVideoState":I
    xor-int v0, v1, v2

    #@11
    .line 1070
    .local v0, "changedBits":I
    and-int/lit8 v0, v0, 0x3

    #@13
    .line 1071
    if-nez v0, :cond_0

    #@15
    .line 1073
    return-void

    #@16
    .line 1077
    :cond_0
    and-int v3, v0, v1

    #@18
    not-int v3, v3

    #@19
    and-int/2addr v1, v3

    #@1a
    .line 1079
    and-int v3, v0, v2

    #@1c
    or-int/2addr v1, v3

    #@1d
    .line 1081
    const-string/jumbo v3, "ImsPhoneConnection"

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "onReceiveSessionModifyResponse : received "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 1082
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    #@2f
    move-result v5

    #@30
    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 1081
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 1083
    const-string/jumbo v5, " / "

    #@3b
    .line 1081
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 1084
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    #@42
    move-result v5

    #@43
    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 1081
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 1085
    const-string/jumbo v5, " while paused ; sending new videoState = "

    #@4e
    .line 1081
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 1086
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 1081
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 1087
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    #@64
    .line 1057
    .end local v0    # "changedBits":I
    .end local v1    # "currentVideoState":I
    .end local v2    # "newVideoState":I
    :cond_1
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    #@0
    .prologue
    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@6
    .line 439
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 336
    const-string/jumbo v0, "ImsPhoneConnection"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 338
    return-void

    #@23
    .line 341
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@2b
    .line 334
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 349
    const-string/jumbo v1, "ImsPhoneConnection"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 351
    return-void

    #@23
    .line 354
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    .line 360
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@2f
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@3e
    .line 362
    const/4 v1, 0x0

    #@3f
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@41
    .line 364
    const-string/jumbo v1, "ImsPhoneConnection"

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "proceedAfterWildChar: new postDialString is "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 365
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@52
    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@60
    .line 347
    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    #@0
    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v1

    #@3
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 576
    const-string/jumbo v0, "ImsPhoneConnection"

    #@e
    const-string/jumbo v2, "releaseWakeLock"

    #@11
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 573
    return-void

    #@1b
    .line 574
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@2
    const-string/jumbo v1, "not supported"

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 1
    .param p1, "conferenceConnectTime"    # J

    #@0
    .prologue
    .line 719
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@2
    .line 718
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 298
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@2
    .line 297
    return-void
.end method

.method public setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    .line 636
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1023
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsPhoneConnection objId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1024
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 1025
    const-string/jumbo v1, " telecomCallID: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1027
    const-string/jumbo v1, " address: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 1028
    const-string/jumbo v1, "ImsPhoneConnection"

    #@28
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1029
    const-string/jumbo v1, " ImsCall: "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 1030
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@3b
    if-nez v1, :cond_0

    #@3d
    .line 1031
    const-string/jumbo v1, "null"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 1035
    :goto_0
    const-string/jumbo v1, "]"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 1036
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0
.end method

.method public update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 7
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 649
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@2
    if-ne p2, v5, :cond_5

    #@4
    .line 654
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 655
    const-string/jumbo v5, "ImsPhoneConnection"

    #@d
    const-string/jumbo v6, "update : state is ACTIVE, but call is pending hold, skipping"

    #@10
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 656
    const/4 v5, 0x0

    #@14
    return v5

    #@15
    .line 659
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@23
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    #@30
    .line 663
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@32
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_3

    #@3c
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@40
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    if-ne v5, v6, :cond_4

    #@44
    .line 668
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@46
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@49
    .line 669
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4d
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4f
    .line 670
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@51
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    #@54
    .line 676
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@56
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@59
    move-result v3

    #@5a
    .line 677
    .local v3, "updateParent":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    #@5d
    move-result v4

    #@5e
    .line 678
    .local v4, "updateWifiState":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    #@61
    move-result v0

    #@62
    .line 679
    .local v0, "updateAddressDisplay":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    #@65
    move-result v2

    #@66
    .line 680
    .local v2, "updateMediaCapabilities":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    #@69
    move-result v1

    #@6a
    .line 682
    .local v1, "updateExtras":Z
    if-nez v3, :cond_6

    #@6c
    if-nez v4, :cond_6

    #@6e
    if-nez v0, :cond_6

    #@70
    if-nez v2, :cond_6

    #@72
    .end local v1    # "updateExtras":Z
    :goto_1
    return v1

    #@73
    .line 672
    .end local v0    # "updateAddressDisplay":Z
    .end local v2    # "updateMediaCapabilities":Z
    .end local v3    # "updateParent":Z
    .end local v4    # "updateWifiState":Z
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@75
    if-ne p2, v5, :cond_4

    #@77
    .line 673
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    #@7a
    goto :goto_0

    #@7b
    .line 682
    .restart local v0    # "updateAddressDisplay":Z
    .restart local v1    # "updateExtras":Z
    .restart local v2    # "updateMediaCapabilities":Z
    .restart local v3    # "updateParent":Z
    .restart local v4    # "updateWifiState":Z
    :cond_6
    const/4 v1, 0x1

    #@7c
    goto :goto_1
.end method

.method public updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 737
    if-nez p1, :cond_0

    #@2
    .line 738
    const/4 v6, 0x0

    #@3
    return v6

    #@4
    .line 741
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 742
    .local v2, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@8
    move-result-object v1

    #@9
    .line 743
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_4

    #@b
    .line 744
    const-string/jumbo v6, "oi"

    #@e
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 745
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v6, "cna"

    #@15
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 747
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "oir"

    #@1c
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@1f
    move-result v6

    #@20
    .line 746
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@23
    move-result v5

    #@24
    .line 749
    .local v5, "nump":I
    const-string/jumbo v6, "cnap"

    #@27
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@2a
    move-result v6

    #@2b
    .line 748
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@2e
    move-result v4

    #@2f
    .line 751
    .local v4, "namep":I
    const-string/jumbo v6, "ImsPhoneConnection"

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "address = "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    const-string/jumbo v8, "ImsPhoneConnection"

    #@41
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    const-string/jumbo v8, " name = "

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 752
    const-string/jumbo v8, " nump = "

    #@57
    .line 751
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 752
    const-string/jumbo v8, " namep = "

    #@62
    .line 751
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 754
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@73
    invoke-static {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_1

    #@79
    .line 755
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@7b
    .line 756
    const/4 v2, 0x1

    #@7c
    .line 758
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_5

    #@82
    .line 759
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@84
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@87
    move-result v6

    #@88
    if-nez v6, :cond_2

    #@8a
    .line 760
    const-string/jumbo v6, ""

    #@8d
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@8f
    .line 761
    const/4 v2, 0x1

    #@90
    .line 767
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@92
    if-eq v6, v5, :cond_3

    #@94
    .line 768
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@96
    .line 769
    const/4 v2, 0x1

    #@97
    .line 771
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@99
    if-eq v6, v4, :cond_4

    #@9b
    .line 772
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@9d
    .line 773
    const/4 v2, 0x1

    #@9e
    .line 776
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "namep":I
    .end local v5    # "nump":I
    :cond_4
    return v2

    #@9f
    .line 763
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namep":I
    .restart local v5    # "nump":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@a1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v6

    #@a5
    if-nez v6, :cond_2

    #@a7
    .line 764
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@a9
    .line 765
    const/4 v2, 0x1

    #@aa
    goto :goto_0
.end method

.method updateExtras(Lcom/android/ims/ImsCall;)Z
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 939
    if-nez p1, :cond_0

    #@4
    .line 940
    return v1

    #@5
    .line 943
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@8
    move-result-object v0

    #@9
    .line 944
    .local v0, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v0, :cond_1

    #@b
    iget-object v2, v0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@d
    .line 945
    .local v2, "extras":Landroid/os/Bundle;
    :cond_1
    if-nez v2, :cond_2

    #@f
    .line 946
    const-string/jumbo v3, "ImsPhoneConnection"

    #@12
    const-string/jumbo v4, "Call profile extras are null."

    #@15
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 949
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@1a
    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_4

    #@20
    .line 950
    .local v1, "changed":Z
    :goto_0
    if-eqz v1, :cond_3

    #@22
    .line 951
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiStateFromExtras(Landroid/os/Bundle;)V

    #@25
    .line 953
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@27
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    #@2a
    .line 954
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@2c
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@2f
    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    #@31
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    #@34
    .line 957
    :cond_3
    return v1

    #@35
    .line 949
    .end local v1    # "changed":Z
    :cond_4
    const/4 v1, 0x1

    #@36
    goto :goto_0
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 12
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 787
    if-nez p1, :cond_0

    #@3
    .line 788
    return v9

    #@4
    .line 791
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 795
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@8
    move-result-object v4

    #@9
    .line 797
    .local v4, "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v4, :cond_2

    #@b
    .line 798
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    #@e
    move-result v7

    #@f
    .line 799
    .local v7, "oldVideoState":I
    invoke-static {v4}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    #@12
    move-result v6

    #@13
    .line 802
    .local v6, "newVideoState":I
    if-eq v7, v6, :cond_2

    #@15
    .line 809
    invoke-static {v7}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    #@18
    move-result v9

    #@19
    if-eqz v9, :cond_1

    #@1b
    .line 810
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_7

    #@21
    .line 817
    :cond_1
    :goto_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@23
    if-nez v9, :cond_8

    #@25
    .line 818
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    #@28
    .line 819
    const/4 v1, 0x1

    #@29
    .line 825
    :goto_1
    invoke-static {v7}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    #@2c
    move-result v9

    #@2d
    if-nez v9, :cond_2

    #@2f
    .line 826
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    #@32
    move-result v9

    #@33
    .line 825
    if-eqz v9, :cond_2

    #@35
    .line 830
    const/4 v9, 0x1

    #@36
    iput-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@38
    .line 837
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    #@3b
    move-result v0

    #@3c
    .line 840
    .local v0, "capabilities":I
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3e
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_9

    #@44
    .line 842
    const/4 v9, 0x3

    #@45
    .line 841
    invoke-static {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    #@48
    move-result v0

    #@49
    .line 851
    :goto_2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    #@4c
    move-result-object v3

    #@4d
    .line 852
    .local v3, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v9, "ImsPhoneConnection"

    #@50
    new-instance v10, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v11, "update localCallProfile="

    #@58
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 853
    if-eqz v3, :cond_3

    #@69
    .line 854
    invoke-static {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I

    #@6c
    move-result v0

    #@6d
    .line 858
    :cond_3
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    #@70
    move-result-object v8

    #@71
    .line 859
    .local v8, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v9, "ImsPhoneConnection"

    #@74
    new-instance v10, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v11, "update remoteCallProfile="

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 860
    if-eqz v8, :cond_4

    #@8d
    .line 861
    invoke-static {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I

    #@90
    move-result v0

    #@91
    .line 863
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    #@94
    move-result v9

    #@95
    if-eq v9, v0, :cond_5

    #@97
    .line 864
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionCapabilities(I)V

    #@9a
    .line 865
    const/4 v1, 0x1

    #@9b
    .line 869
    :cond_5
    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I

    #@9e
    move-result v5

    #@9f
    .line 870
    .local v5, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    #@a2
    move-result v9

    #@a3
    if-eq v9, v5, :cond_6

    #@a5
    .line 871
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V

    #@a8
    .line 872
    const/4 v1, 0x1

    #@a9
    .line 878
    .end local v0    # "capabilities":I
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "newAudioQuality":I
    .end local v8    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_6
    :goto_3
    return v1

    #@aa
    .line 814
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v6    # "newVideoState":I
    .restart local v7    # "oldVideoState":I
    :cond_7
    const/4 v9, 0x0

    #@ab
    iput-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    #@ad
    goto/16 :goto_0

    #@af
    .line 874
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    :catch_0
    move-exception v2

    #@b0
    .local v2, "e":Lcom/android/ims/ImsException;
    goto :goto_3

    #@b1
    .line 821
    .end local v2    # "e":Lcom/android/ims/ImsException;
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v6    # "newVideoState":I
    .restart local v7    # "oldVideoState":I
    :cond_8
    const-string/jumbo v9, "ImsPhoneConnection"

    #@b4
    const-string/jumbo v10, "updateMediaCapabilities - ignoring video state change due to paused state."

    #@b7
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    goto/16 :goto_1

    #@bc
    .line 846
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    .restart local v0    # "capabilities":I
    :cond_9
    const/4 v9, 0x3

    #@bd
    .line 845
    invoke-static {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c0
    move-result v0

    #@c1
    goto :goto_2
.end method

.method public updateWifiState()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 891
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 892
    return v3

    #@6
    .line 895
    :cond_0
    const-string/jumbo v0, "ImsPhoneConnection"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "updateWifiState: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    #@29
    move-result v0

    #@2a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2c
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@2f
    move-result v1

    #@30
    if-eq v0, v1, :cond_1

    #@32
    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@37
    move-result v0

    #@38
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    #@3b
    .line 898
    const/4 v0, 0x1

    #@3c
    return v0

    #@3d
    .line 900
    :cond_1
    return v3
.end method
