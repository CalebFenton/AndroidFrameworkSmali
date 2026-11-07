.class public abstract Lcom/android/internal/telephony/BaseCommands;
.super Ljava/lang/Object;
.source "BaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field protected greylist-max-r mAllowedNetworkTypesBitmask:I

.field protected blacklist mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mCallWaitingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCdmaSubscription:I

.field protected greylist mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mConnectionSetupFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mContext:Landroid/content/Context;

.field protected blacklist mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIccSlotStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mImeiInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mLastBarringInfo:Landroid/telephony/BarringInfo;

.field private final blacklist mLastEmergencyNumberListIndication:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEmergencyNumberListIndicationLock:Ljava/lang/Object;

.field protected blacklist mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mLineControlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNotifyAnbrRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNumberInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mOffOrNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mPhoneType:I

.field protected blacklist mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRadioStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRedirNumInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRilVersion:I

.field protected greylist mRingRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSlicingConfigChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mSsRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected greylist mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mState:I

.field protected greylist mStateMonitor:Ljava/lang/Object;

.field protected greylist mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mT53AudCntrlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mT53ClirInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTriggerImsDeregistrationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSlicingConfigChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectionSetupFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotifyAnbrRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mTriggerImsDeregistrationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndicationLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndication:Ljava/util/List;

    .line 171
    new-instance v0, Landroid/telephony/BarringInfo;

    invoke-direct {v0}, Landroid/telephony/BarringInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastBarringInfo:Landroid/telephony/BarringInfo;

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getLastEmergencyNumberListIndication()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndicationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndication:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 917
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method


# virtual methods
.method protected blacklist cacheEmergencyNumberListIndication(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndicationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndication:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 910
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastEmergencyNumberListIndication:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 911
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public blacklist getLastBarringInfo()Landroid/telephony/BarringInfo;
    .registers 1

    .line 923
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLastBarringInfo:Landroid/telephony/BarringInfo;

    return-object p0
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getRadioState()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    return p0
.end method

.method public blacklist getRilVersion()I
    .registers 1

    .line 963
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    return p0
.end method

.method public blacklist getSimPhonebookCapacity(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getSimPhonebookRecords(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 724
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    .line 243
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 245
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public blacklist registerForBarringInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1084
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 664
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1031
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 684
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 931
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCellularIdentifierDisclosures(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1191
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1153
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectionSetupFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForEmergencyNetworkScan(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1138
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 843
    invoke-direct {p0}, Lcom/android/internal/telephony/BaseCommands;->getLastEmergencyNumberListIndication()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 845
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_16
    return-void
.end method

.method public blacklist registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 794
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 555
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForImeiMappingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1186
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 631
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 621
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 999
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 714
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1011
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1043
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 804
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 303
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1d

    .line 261
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 263
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public blacklist registerForNotifyAnbr(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1163
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotifyAnbrRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 694
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-eqz p0, :cond_f

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1c

    .line 280
    :cond_f
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public blacklist registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1d

    .line 225
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 227
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public blacklist registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1021
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 940
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 987
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public blacklist registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 704
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 754
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 818
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 819
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Integer;

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    const/4 p0, 0x0

    invoke-direct {v0, p3, v1, p0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 820
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    return-void
.end method

.method public blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSecurityAlgorithmUpdates(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1201
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 674
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1099
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1109
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSlicingConfigChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 950
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 830
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForTriggerImsDeregistration(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1173
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mTriggerImsDeregistrationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 343
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerUiccApplicationEnablementChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1062
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 564
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 578
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 529
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 601
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 516
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 503
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 490
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 559
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 542
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 451
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 386
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 399
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 373
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnRegistrationFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 611
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 641
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 438
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 412
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 425
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 591
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 477
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 464
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method protected blacklist setRadioState(IZ)V
    .registers 6

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    .line 873
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-ne v1, p1, :cond_f

    if-nez p2, :cond_f

    .line 877
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_4d

    .line 880
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 882
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_20

    if-ne v1, p2, :cond_20

    .line 884
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 887
    :cond_20
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-ne p1, p2, :cond_2b

    if-eq v1, p2, :cond_2b

    .line 889
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 892
    :cond_2b
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    if-eq v1, v2, :cond_37

    .line 894
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 897
    :cond_37
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-eqz p1, :cond_3d

    if-ne p1, p2, :cond_4b

    :cond_3d
    if-ne v1, v2, :cond_4b

    .line 900
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 901
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-direct {p1}, Landroid/telephony/BarringInfo;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mLastBarringInfo:Landroid/telephony/BarringInfo;

    .line 903
    :cond_4b
    monitor-exit v0

    return-void

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_d

    throw p0
.end method

.method public blacklist setUiccSubscription(IIIILandroid/os/Message;)V
    .registers 6

    .line 0
    return-void
.end method

.method public blacklist testingEmergencyCall()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist unSetOnCallRing(Landroid/os/Handler;)V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 584
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 535
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 536
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .registers 2

    .line 606
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnCatEvent(Landroid/os/Handler;)V
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 523
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 509
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 510
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnIccSmsFull(Landroid/os/Handler;)V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 548
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 549
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnNITZTime(Landroid/os/Handler;)V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 458
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 405
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnNewGsmSms(Landroid/os/Handler;)V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 379
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnRegistrationFailed(Landroid/os/Handler;)V
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .registers 3

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 647
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 648
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 444
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnSmsOnSim(Landroid/os/Handler;)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 418
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 419
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnSmsStatus(Landroid/os/Handler;)V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 431
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 432
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnSs(Landroid/os/Handler;)V
    .registers 2

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 484
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unSetOnUSSD(Landroid/os/Handler;)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 470
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unregisterForApnUnthrottled(Landroid/os/Handler;)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForAvailable(Landroid/os/Handler;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 252
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForBarringInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1094
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCallStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 298
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .registers 2

    .line 669
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .registers 2

    .line 1036
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .registers 2

    .line 689
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .registers 2

    .line 779
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .registers 2

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCellInfoList(Landroid/os/Handler;)V
    .registers 2

    .line 935
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCellularIdentifierDisclosures(Landroid/os/Handler;)V
    .registers 2

    .line 1196
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForConnectionSetupFailure(Landroid/os/Handler;)V
    .registers 2

    .line 1158
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectionSetupFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .registers 2

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEmergencyNetworkScan(Landroid/os/Handler;)V
    .registers 2

    .line 1148
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEmergencyNumberList(Landroid/os/Handler;)V
    .registers 2

    .line 852
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .registers 2

    .line 799
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForIccRefresh(Landroid/os/Handler;)V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 2

    .line 636
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 2

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForLceInfo(Landroid/os/Handler;)V
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1006
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForLineControlInfo(Landroid/os/Handler;)V
    .registers 2

    .line 719
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForModemReset(Landroid/os/Handler;)V
    .registers 2

    .line 1016
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .registers 3

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1050
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .registers 2

    .line 809
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNotAvailable(Landroid/os/Handler;)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 270
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForNotifyAnbr(Landroid/os/Handler;)V
    .registers 2

    .line 1168
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotifyAnbrRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNumberInfo(Landroid/os/Handler;)V
    .registers 2

    .line 699
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForOn(Landroid/os/Handler;)V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 233
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForPcoData(Landroid/os/Handler;)V
    .registers 2

    .line 1026
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
    .registers 2

    .line 945
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .registers 2

    .line 992
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .registers 2

    .line 709
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
    .registers 2

    .line 759
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRilConnected(Landroid/os/Handler;)V
    .registers 2

    .line 826
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2

    .line 749
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSecurityAlgorithmUpdates(Landroid/os/Handler;)V
    .registers 2

    .line 1206
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 2

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimPhonebookChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1104
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V
    .registers 2

    .line 1114
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSlicingConfigChanged(Landroid/os/Handler;)V
    .registers 2

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSlicingConfigChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 955
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .registers 2

    .line 834
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .registers 2

    .line 739
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .registers 2

    .line 729
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForTriggerImsDeregistration(Landroid/os/Handler;)V
    .registers 2

    .line 1178
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mTriggerImsDeregistrationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterUiccApplicationEnablementChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1072
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unsetOnIccRefresh(Landroid/os/Handler;)V
    .registers 2

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method
