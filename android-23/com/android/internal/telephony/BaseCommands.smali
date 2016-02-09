.class public abstract Lcom/android/internal/telephony/BaseCommands;
.super Ljava/lang/Object;
.source "BaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCatCallSetUpRegistrant:Landroid/os/Registrant;

.field protected mCatCcAlphaRegistrant:Landroid/os/Registrant;

.field protected mCatEventRegistrant:Landroid/os/Registrant;

.field protected mCatProCmdRegistrant:Landroid/os/Registrant;

.field protected mCatSessionEndRegistrant:Landroid/os/Registrant;

.field protected mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;

.field protected mCdmaSubscription:I

.field protected mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

.field protected mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

.field protected mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

.field protected mGsmSmsRegistrant:Landroid/os/Registrant;

.field protected mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mIccSmsFullRegistrant:Landroid/os/Registrant;

.field protected mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mLceInfoRegistrant:Landroid/os/Registrant;

.field protected mLineControlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mNITZTimeRegistrant:Landroid/os/Registrant;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mNumberInfoRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mOtaProvisionRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneType:I

.field protected mPreferredNetworkType:I

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

.field protected mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected mRestrictedStateRegistrant:Landroid/os/Registrant;

.field protected mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

.field protected mRilConnectedRegistrants:Landroid/os/RegistrantList;

.field protected mRilVersion:I

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSignalStrengthRegistrant:Landroid/os/Registrant;

.field protected mSmsOnSimRegistrant:Landroid/os/Registrant;

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;

.field protected mSsRegistrant:Landroid/os/Registrant;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

.field protected mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

.field protected mUSSDRegistrant:Landroid/os/Registrant;

.field protected mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

.field protected mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@7
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@e
    .line 40
    new-instance v0, Landroid/os/RegistrantList;

    #@10
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    #@15
    .line 41
    new-instance v0, Landroid/os/RegistrantList;

    #@17
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    #@1c
    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    #@1e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    #@23
    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    #@25
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    #@2a
    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    #@2c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    #@31
    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    #@33
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@36
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@38
    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    #@3a
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@3f
    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    #@41
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@44
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@46
    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    #@48
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@4d
    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    #@4f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@52
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@54
    .line 50
    new-instance v0, Landroid/os/RegistrantList;

    #@56
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@59
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@5b
    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    #@5d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@60
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@62
    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    #@64
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@67
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@69
    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    #@6b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@6e
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@70
    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    #@72
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@75
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@77
    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    #@79
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@7c
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@7e
    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    #@80
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@83
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@85
    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    #@87
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@8a
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@8c
    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    #@8e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@91
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@93
    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    #@95
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@98
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@9a
    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    #@9c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@9f
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@a1
    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    #@a3
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@a6
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@a8
    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    #@aa
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@ad
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@af
    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    #@b1
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@b4
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@b6
    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    #@b8
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@bb
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@bd
    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    #@bf
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@c2
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@c4
    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    #@c6
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@c9
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@cb
    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    #@cd
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@d0
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@d2
    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    #@d4
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@d7
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@d9
    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    #@db
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@de
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@e0
    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    #@e2
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@e5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@e7
    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    #@e9
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@ec
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@ee
    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    #@f0
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@f3
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@f5
    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    #@f7
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@fa
    .line 74
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@fc
    .line 107
    const/4 v0, -0x1

    #@fd
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    #@ff
    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    #@101
    .line 109
    return-void
.end method


# virtual methods
.method public getLteOnCdmaMode()I
    .locals 1

    #@0
    .prologue
    .line 813
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 861
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    return-object v0
.end method

.method public getRilVersion()I
    .locals 1

    #@0
    .prologue
    .line 846
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    #@2
    return v0
.end method

.method protected onRadioAvailable()V
    .locals 0

    #@0
    .prologue
    .line 805
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 888
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 647
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 648
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 646
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 168
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 170
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 174
    new-instance v1, Landroid/os/AsyncResult;

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v2

    #@21
    .line 167
    return-void

    #@22
    .line 170
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 227
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 229
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 226
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 570
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 571
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 569
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 603
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 604
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 602
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 702
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 703
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 701
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 691
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 692
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 690
    return-void
.end method

.method public registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 821
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 822
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 820
    return-void
.end method

.method public registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 253
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 250
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 559
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 560
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 558
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 713
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 714
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 712
    return-void
.end method

.method public registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 724
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 725
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 723
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 467
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 468
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 466
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 274
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 275
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 273
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 138
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 139
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 137
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 535
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 536
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 534
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 524
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 525
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 523
    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 893
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@7
    .line 892
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 636
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 637
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 635
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 190
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 194
    new-instance v1, Landroid/os/AsyncResult;

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v2

    #@21
    .line 187
    return-void

    #@22
    .line 190
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 614
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 615
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 613
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 208
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 210
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@11
    if-eq v1, v3, :cond_0

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@15
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    :goto_0
    monitor-exit v2

    #@1c
    .line 207
    return-void

    #@1d
    .line 214
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/AsyncResult;

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x0

    #@22
    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@25
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 210
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 148
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 150
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 154
    new-instance v1, Landroid/os/AsyncResult;

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v2

    #@21
    .line 147
    return-void

    #@22
    .line 150
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 870
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 871
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 869
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 124
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 126
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 121
    return-void

    #@12
    .line 124
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 625
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 626
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 624
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 680
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 681
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 679
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 738
    new-instance v0, Landroid/os/Registrant;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 739
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@b
    .line 740
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    #@d
    const/4 v2, -0x1

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 741
    new-instance v1, Landroid/os/AsyncResult;

    #@12
    new-instance v2, Ljava/lang/Integer;

    #@14
    iget v3, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    #@16
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@19
    invoke-direct {v1, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@1f
    .line 737
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 669
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 670
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 668
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 581
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 582
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 580
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 831
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 833
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 830
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 751
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 752
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 750
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 658
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 659
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 657
    return-void
.end method

.method public registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 239
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 241
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 238
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 263
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 264
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 262
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 857
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 853
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 477
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@7
    .line 476
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 491
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    #@7
    .line 490
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 441
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@7
    .line 440
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 514
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@7
    .line 513
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 428
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    #@7
    .line 427
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 415
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@7
    .line 414
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 402
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@7
    .line 401
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 472
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    .line 471
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 454
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@7
    .line 453
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 363
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@7
    .line 362
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 298
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@7
    .line 297
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 311
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@7
    .line 310
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 285
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@7
    .line 284
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 546
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@7
    .line 545
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 350
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@7
    .line 349
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 324
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@7
    .line 323
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 337
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@7
    .line 336
    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 504
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    #@7
    .line 503
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 389
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@7
    .line 388
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 376
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@7
    .line 375
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 586
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@7
    .line 585
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 865
    return-void
.end method

.method protected setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@0
    .prologue
    .line 773
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    .line 775
    .local v0, "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@7
    .line 777
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-ne v0, v1, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 779
    return-void

    #@d
    .line 782
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    #@f
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@12
    .line 784
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_5

    #@20
    .line 789
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    #@30
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@33
    .line 793
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_6

    #@41
    .line 797
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@43
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_7

    #@49
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@4b
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_7

    #@51
    :cond_4
    :goto_2
    monitor-exit v2

    #@52
    .line 770
    return-void

    #@53
    .line 785
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    #@55
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@58
    .line 786
    invoke-virtual {p0}, Lcom/android/internal/telephony/BaseCommands;->onRadioAvailable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 773
    .end local v0    # "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    #@5d
    monitor-exit v2

    #@5e
    throw v1

    #@5f
    .line 794
    .restart local v0    # "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    #@61
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@64
    goto :goto_1

    #@65
    .line 798
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_4

    #@6b
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@6e
    move-result v1

    #@6f
    .line 797
    if-eqz v1, :cond_4

    #@71
    .line 800
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    #@73
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    goto :goto_2
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 850
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 880
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 884
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    #@0
    .prologue
    .line 842
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 498
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    #@14
    .line 495
    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 448
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@14
    .line 445
    :cond_0
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 518
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 435
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    #@14
    .line 432
    :cond_0
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 422
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@14
    .line 419
    :cond_0
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 409
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@14
    .line 406
    :cond_0
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 461
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@14
    .line 458
    :cond_0
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 370
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@14
    .line 367
    :cond_0
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 305
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@14
    .line 302
    :cond_0
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 318
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@14
    .line 315
    :cond_0
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 292
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@14
    .line 289
    :cond_0
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-eq v0, p1, :cond_0

    #@d
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 553
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@14
    .line 550
    :cond_0
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 357
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@14
    .line 354
    :cond_0
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 331
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@14
    .line 328
    :cond_0
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 344
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@14
    .line 341
    :cond_0
    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 508
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 396
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@14
    .line 393
    :cond_0
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 383
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@14
    .line 380
    :cond_0
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 592
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@14
    .line 589
    :cond_0
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 180
    return-void

    #@a
    .line 181
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 233
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 575
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 608
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 707
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 696
    return-void
.end method

.method public unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 825
    return-void
.end method

.method public unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 257
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 564
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 718
    return-void
.end method

.method public unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 729
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 481
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 279
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 142
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 540
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 529
    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@7
    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p1, :cond_0

    #@d
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@12
    .line 900
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@14
    .line 897
    :cond_0
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 641
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 200
    return-void

    #@a
    .line 201
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 619
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 219
    return-void

    #@a
    .line 220
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 159
    return-void

    #@a
    .line 160
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 875
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 131
    return-void

    #@a
    .line 132
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 630
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 685
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 746
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 674
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 597
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 837
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 755
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 663
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 652
    return-void
.end method

.method public unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 245
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 268
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@3
    .line 485
    return-void
.end method
