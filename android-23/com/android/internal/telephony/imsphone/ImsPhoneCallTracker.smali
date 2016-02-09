.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_RESUME_BACKGROUND:I = 0x13

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final VERBOSE_STATE_LOGGING:Z


# instance fields
.field final mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private mClirMode:I

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredMute:Z

.field final mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field final mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mImsFeatureEnabled:[Z

.field private final mImsFeatureStrings:[Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private mIsInEmergencyCall:Z

.field private mOnHoldToneStarted:Z

.field private mPendingCallVideoState:I

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingUssd:Landroid/os/Message;

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field final mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mServiceId:I

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSwitchingFgAndBgCalls:Z

.field private mSyncHold:Ljava/lang/Object;

.field private mUssdSession:Lcom/android/ims/ImsCall;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsService()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    #@6
    .line 83
    new-array v2, v3, [Z

    #@8
    fill-array-data v2, :array_0

    #@b
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@d
    .line 84
    new-array v2, v3, [Ljava/lang/String;

    #@f
    const-string/jumbo v3, "VoLTE"

    #@12
    aput-object v3, v2, v5

    #@14
    const-string/jumbo v3, "ViLTE"

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    const-string/jumbo v3, "VoWiFi"

    #@1d
    const/4 v4, 0x2

    #@1e
    aput-object v3, v2, v4

    #@20
    const-string/jumbo v3, "ViWiFi"

    #@23
    const/4 v4, 0x3

    #@24
    aput-object v3, v2, v4

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    #@28
    .line 86
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    #@2a
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@2d
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2f
    .line 146
    new-instance v2, Ljava/util/ArrayList;

    #@31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@36
    .line 147
    new-instance v2, Landroid/os/RegistrantList;

    #@38
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@3b
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@3d
    .line 148
    new-instance v2, Landroid/os/RegistrantList;

    #@3f
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@42
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@44
    .line 150
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@46
    const-string/jumbo v3, "RG"

    #@49
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@4c
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4e
    .line 151
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@50
    const-string/jumbo v3, "FG"

    #@53
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@56
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@58
    .line 152
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5a
    const-string/jumbo v3, "BG"

    #@5d
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@60
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@62
    .line 153
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@64
    const-string/jumbo v3, "HO"

    #@67
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@6a
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@6c
    .line 156
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@6e
    .line 157
    new-instance v2, Ljava/lang/Object;

    #@70
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@73
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@75
    .line 159
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@77
    .line 160
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@79
    .line 164
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@7b
    .line 165
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@7d
    .line 167
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7f
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@81
    .line 170
    const/4 v2, -0x1

    #@82
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@84
    .line 172
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@86
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@88
    .line 174
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@8a
    .line 178
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@8c
    .line 179
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@8e
    .line 180
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@90
    .line 1028
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@92
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@95
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@97
    .line 1375
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    #@99
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@9c
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@9e
    .line 1439
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    #@a0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@a3
    .line 1438
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    #@a5
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@a7
    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    #@a9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@ac
    .line 191
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.ims.IMS_INCOMING_CALL"

    #@af
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b2
    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@b4
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@b7
    move-result-object v2

    #@b8
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@ba
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@bd
    .line 194
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    #@bf
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@c2
    .line 199
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@c5
    .line 187
    return-void

    #@c6
    .line 83
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 909
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method private createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.ims.IMS_INCOMING_CALL"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    .line 206
    const/high16 v3, 0x8000000

    #@16
    .line 205
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V
    .locals 10
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I

    #@0
    .prologue
    .line 390
    if-nez p1, :cond_0

    #@2
    .line 391
    return-void

    #@3
    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    if-eqz v7, :cond_1

    #@9
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@10
    move-result v7

    #@11
    if-nez v7, :cond_2

    #@13
    .line 397
    :cond_1
    const/4 v7, 0x7

    #@14
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@17
    .line 398
    const-wide/16 v8, 0x1f4

    #@19
    const/16 v7, 0x12

    #@1b
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@1e
    .line 399
    return-void

    #@1f
    .line 395
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    const/16 v8, 0x4e

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v7

    #@29
    if-gez v7, :cond_1

    #@2b
    .line 403
    const/4 v7, 0x0

    #@2c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@2f
    .line 404
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_3

    #@39
    .line 405
    const/4 v6, 0x2

    #@3a
    .line 406
    .local v6, "serviceType":I
    :goto_0
    invoke-static {p3}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@3d
    move-result v0

    #@3e
    .line 408
    .local v0, "callType":I
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    #@41
    .line 411
    const/4 v7, 0x1

    #@42
    :try_start_0
    new-array v1, v7, [Ljava/lang/String;

    #@44
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    const/4 v8, 0x0

    #@49
    aput-object v7, v1, v8

    #@4b
    .line 412
    .local v1, "callees":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@4d
    iget v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@4f
    invoke-virtual {v7, v8, v6, v0}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@52
    move-result-object v5

    #@53
    .line 414
    .local v5, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v7, "oir"

    #@56
    invoke-virtual {v5, v7, p2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    #@59
    .line 416
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@5b
    iget v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@5d
    .line 417
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@5f
    .line 416
    invoke-virtual {v7, v8, v5, v1, v9}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@62
    move-result-object v4

    #@63
    .line 418
    .local v4, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    #@66
    .line 420
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@69
    .line 389
    .end local v1    # "callees":[Ljava/lang/String;
    .end local v4    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v5    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_1
    return-void

    #@6a
    .line 405
    .end local v0    # "callType":I
    .end local v6    # "serviceType":I
    :cond_3
    const/4 v6, 0x1

    #@6b
    .restart local v6    # "serviceType":I
    goto :goto_0

    #@6c
    .line 421
    .restart local v0    # "callType":I
    :catch_0
    move-exception v3

    #@6d
    .line 422
    .local v3, "e":Lcom/android/ims/ImsException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v8, "dialInternal : "

    #@75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@84
    .line 423
    const/16 v7, 0x24

    #@86
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@89
    .line 424
    const-wide/16 v8, 0x1f4

    #@8b
    const/16 v7, 0x12

    #@8d
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@90
    goto :goto_1

    #@91
    .line 425
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :catch_1
    move-exception v2

    #@92
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private dumpState()V
    .locals 5

    #@0
    .prologue
    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "Phone State:"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19
    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Ringing call: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@27
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@36
    .line 674
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@38
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@3b
    move-result-object v1

    #@3c
    .line 675
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@40
    move-result v2

    #@41
    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@43
    .line 676
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@4e
    .line 675
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 679
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Foreground call: "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5f
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6e
    .line 681
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@70
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@73
    move-result-object v1

    #@74
    .line 682
    const/4 v0, 0x0

    #@75
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@78
    move-result v2

    #@79
    :goto_1
    if-ge v0, v2, :cond_1

    #@7b
    .line 683
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@86
    .line 682
    add-int/lit8 v0, v0, 0x1

    #@88
    goto :goto_1

    #@89
    .line 686
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v4, "Background call: "

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@97
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a6
    .line 688
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a8
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@ab
    move-result-object v1

    #@ac
    .line 689
    const/4 v0, 0x0

    #@ad
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b0
    move-result v2

    #@b1
    :goto_2
    if-ge v0, v2, :cond_2

    #@b3
    .line 690
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@be
    .line 689
    add-int/lit8 v0, v0, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 667
    :cond_2
    return-void
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 897
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@13
    .line 898
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v2

    #@17
    if-ne v2, p1, :cond_0

    #@19
    monitor-exit p0

    #@1a
    .line 899
    return-object v0

    #@1b
    .line 902
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    const/4 v2, 0x0

    #@1c
    monitor-exit p0

    #@1d
    return-object v2

    #@1e
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method private getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 965
    const/16 v0, 0x24

    #@2
    .line 968
    .local v0, "cause":I
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@5
    move-result v1

    #@6
    .line 969
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    #@9
    .line 1022
    return v0

    #@a
    .line 972
    :sswitch_0
    const/16 v2, 0x8

    #@c
    return v2

    #@d
    .line 975
    :sswitch_1
    const/4 v2, 0x4

    #@e
    return v2

    #@f
    .line 978
    :sswitch_2
    const/4 v2, 0x3

    #@10
    return v2

    #@11
    .line 981
    :sswitch_3
    const/16 v2, 0x10

    #@13
    return v2

    #@14
    .line 984
    :sswitch_4
    const/4 v2, 0x2

    #@15
    return v2

    #@16
    .line 992
    :sswitch_5
    const/16 v2, 0xc

    #@18
    return v2

    #@19
    .line 997
    :sswitch_6
    const/16 v2, 0x9

    #@1b
    return v2

    #@1c
    .line 1007
    :sswitch_7
    const/16 v2, 0x12

    #@1e
    return v2

    #@1f
    .line 1013
    :sswitch_8
    const/16 v2, 0xd

    #@21
    return v2

    #@22
    .line 1017
    :sswitch_9
    const/16 v2, 0x11

    #@24
    return v2

    #@25
    .line 969
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_7
        0x6f -> :sswitch_9
        0x70 -> :sswitch_9
        0x79 -> :sswitch_7
        0x7a -> :sswitch_7
        0x7b -> :sswitch_7
        0x7c -> :sswitch_7
        0x83 -> :sswitch_7
        0x84 -> :sswitch_7
        0x8f -> :sswitch_3
        0x90 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_8
        0xcb -> :sswitch_8
        0x141 -> :sswitch_5
        0x14b -> :sswitch_5
        0x14c -> :sswitch_5
        0x14d -> :sswitch_6
        0x14f -> :sswitch_8
        0x151 -> :sswitch_0
        0x152 -> :sswitch_1
        0x154 -> :sswitch_5
        0x155 -> :sswitch_0
        0x160 -> :sswitch_6
        0x162 -> :sswitch_6
        0x169 -> :sswitch_5
        0x16a -> :sswitch_5
        0x1f5 -> :sswitch_2
        0x1fe -> :sswitch_4
    .end sparse-switch
.end method

.method private getImsService()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 210
    const-string/jumbo v2, "getImsService"

    #@4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@7
    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@12
    move-result v3

    #@13
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@19
    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1b
    .line 214
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    #@1e
    move-result-object v3

    #@1f
    .line 215
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    #@21
    .line 213
    const/4 v5, 0x1

    #@22
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/ims/ImsManager;->open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@28
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2e
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    #@30
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    #@33
    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@35
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3d
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    #@40
    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@42
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@49
    move-result-object v2

    #@4a
    .line 225
    const-string/jumbo v3, "preferred_tty_mode"

    #@4d
    .line 226
    const/4 v4, 0x0

    #@4e
    .line 223
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@51
    move-result v1

    #@52
    .line 227
    .local v1, "mPreferredTtyMode":I
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@54
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@56
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@59
    move-result-object v3

    #@5a
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@5c
    const/4 v5, 0x0

    #@5d
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 209
    .end local v1    # "mPreferredTtyMode":I
    :goto_0
    return-void

    #@61
    .line 229
    :catch_0
    move-exception v0

    #@62
    .line 230
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "getImsService: "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@79
    .line 232
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@7b
    goto :goto_0
.end method

.method private handleEcmTimer(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    #@5
    .line 379
    packed-switch p1, :pswitch_data_0

    #@8
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "handleEcmTimer, unsupported action "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 377
    :pswitch_0
    return-void

    #@20
    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    #@0
    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 659
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@5
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@a
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@f
    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@14
    .line 623
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    #@0
    .prologue
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "processCallStateChange "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " state="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, " cause="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 919
    const/4 v0, 0x0

    #@2e
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    #@31
    .line 913
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    #@0
    .prologue
    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "processCallStateChange state="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " cause="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 926
    const-string/jumbo v3, " ignoreState="

    #@1e
    .line 925
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 929
    if-nez p1, :cond_0

    #@2f
    return-void

    #@30
    .line 931
    :cond_0
    const/4 v0, 0x0

    #@31
    .line 932
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@34
    move-result-object v1

    #@35
    .line 934
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_1

    #@37
    .line 936
    return-void

    #@38
    .line 944
    :cond_1
    if-eqz p4, :cond_2

    #@3a
    .line 945
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    #@3d
    .line 946
    return-void

    #@3e
    .line 949
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@41
    move-result v0

    #@42
    .line 950
    .local v0, "changed":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@44
    if-ne p2, v2, :cond_3

    #@46
    .line 951
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_4

    #@4c
    .line 953
    .end local v0    # "changed":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@53
    .line 954
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@56
    .line 957
    :cond_3
    if-eqz v0, :cond_6

    #@58
    .line 958
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5b
    move-result-object v2

    #@5c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5e
    if-ne v2, v3, :cond_5

    #@60
    return-void

    #@61
    .line 951
    .restart local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x1

    #@62
    .local v0, "changed":Z
    goto :goto_0

    #@63
    .line 959
    .end local v0    # "changed":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@66
    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@68
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@6b
    .line 923
    :cond_6
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 905
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1702
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lcom/android/ims/internal/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    #@7
    move-result-object v0

    #@8
    .line 1703
    .local v0, "imsVideoCallProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_0

    #@a
    .line 1705
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@c
    invoke-direct {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    #@f
    .line 1706
    .local v1, "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    #@12
    .line 1700
    .end local v1    # "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_0
    return-void
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2

    #@0
    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "switchAfterConferenceSuccess fg ="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 483
    const-string/jumbo v1, ", bg = "

    #@19
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v1

    #@23
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@33
    move-result-object v0

    #@34
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@36
    if-ne v0, v1, :cond_0

    #@38
    .line 486
    const-string/jumbo v0, "switchAfterConferenceSuccess"

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@3e
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@40
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@45
    .line 481
    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 1525
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1526
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@16
    .line 1527
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@18
    iput-object v2, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@1a
    .line 1528
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Connection state before handover is "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@35
    goto :goto_0

    #@36
    .line 1531
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@38
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@3a
    if-nez v2, :cond_2

    #@3c
    .line 1532
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@40
    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@42
    .line 1536
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@44
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@46
    if-eqz v2, :cond_3

    #@48
    .line 1537
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@4b
    move-result-object v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 1538
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->close()V

    #@55
    .line 1540
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@57
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@59
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v1

    #@5d
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@69
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v0

    #@6a
    .line 1541
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@6c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@6e
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@71
    .line 1542
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@73
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@76
    goto :goto_2

    #@77
    .line 1534
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@79
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@7b
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@80
    goto :goto_1

    #@81
    .line 1545
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_4

    #@8b
    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v3, "Call is alive and state is "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a4
    .line 1547
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a6
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@a8
    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@aa
    .line 1549
    :cond_4
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@af
    .line 1550
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@b1
    iput-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@b3
    .line 1524
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 634
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 635
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    .line 643
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    if-ne v1, v2, :cond_4

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    if-eq v0, v1, :cond_4

    #@19
    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 645
    new-instance v2, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 644
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@23
    .line 651
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "updatePhoneState oldState="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, ", newState="

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@47
    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    if-eq v1, v0, :cond_1

    #@4b
    .line 654
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    #@50
    .line 631
    :cond_1
    return-void

    #@51
    .line 636
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@53
    if-nez v1, :cond_3

    #@55
    .line 637
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@57
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_3

    #@5d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_3

    #@65
    .line 640
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@67
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@69
    goto :goto_0

    #@6a
    .line 638
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@6c
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@6e
    goto :goto_0

    #@6f
    .line 646
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@71
    if-ne v0, v1, :cond_0

    #@73
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@75
    if-eq v0, v1, :cond_0

    #@77
    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@79
    .line 648
    new-instance v2, Landroid/os/AsyncResult;

    #@7b
    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7e
    .line 647
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@81
    goto :goto_1
.end method


# virtual methods
.method acceptCall(I)V
    .locals 5
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 437
    const-string/jumbo v2, "acceptCall"

    #@4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@7
    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@15
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1c
    move-result v2

    #@1d
    .line 439
    if-eqz v2, :cond_0

    #@1f
    .line 441
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@21
    const-string/jumbo v3, "cannot accept call"

    #@24
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 444
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@2d
    move-result-object v2

    #@2e
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@30
    if-ne v2, v3, :cond_1

    #@32
    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@34
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@3b
    move-result v2

    #@3c
    .line 444
    if-eqz v2, :cond_1

    #@3e
    .line 446
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@41
    .line 448
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@43
    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@46
    .line 436
    :goto_0
    return-void

    #@47
    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@49
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_3

    #@53
    .line 451
    const-string/jumbo v2, "acceptCall: incoming..."

    #@56
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@59
    .line 453
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@5c
    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5e
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@61
    move-result-object v1

    #@62
    .line 456
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    #@64
    .line 457
    invoke-static {p1}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@67
    move-result v2

    #@68
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_0

    #@6c
    .line 461
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    #@6d
    .line 462
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@6f
    const-string/jumbo v3, "cannot accept call"

    #@72
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 459
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@78
    const-string/jumbo v3, "no valid ims call"

    #@7b
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@7f
    .line 465
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@81
    const-string/jumbo v3, "phone not ringing"

    #@84
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v2
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 2

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_0

    #@a
    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 823
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@1a
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@25
    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@27
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 825
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@30
    .line 820
    :cond_0
    return-void
.end method

.method canConference()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 591
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    #@0
    .prologue
    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v2

    #@a
    .line 602
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    #@d
    const-string/jumbo v4, "false"

    #@10
    .line 601
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 604
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 605
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 606
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1d
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 604
    :cond_0
    const/4 v1, 0x0

    #@24
    .line 611
    .local v1, "ret":Z
    :goto_0
    return v1

    #@25
    .line 607
    .end local v1    # "ret":Z
    :cond_1
    const-string/jumbo v3, "true"

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 608
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@30
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 609
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3c
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    const/4 v1, 0x0

    #@47
    .restart local v1    # "ret":Z
    goto :goto_0

    #@48
    .line 608
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    #@49
    .restart local v1    # "ret":Z
    goto :goto_0

    #@4a
    .line 609
    .end local v1    # "ret":Z
    :cond_3
    const/4 v1, 0x1

    #@4b
    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method canTransfer()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 616
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 616
    :cond_0
    return v0
.end method

.method cancelUSSD()V
    .locals 3

    #@0
    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 890
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@7
    const/16 v2, 0x1f5

    #@9
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 886
    :goto_0
    return-void

    #@d
    .line 891
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Lcom/android/ims/ImsException;
    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 581
    const-string/jumbo v0, "clearDisconnected"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 583
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    #@9
    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@c
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@11
    .line 580
    return-void
.end method

.method conference()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 531
    const-string/jumbo v10, "conference"

    #@5
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 533
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@d
    move-result-object v6

    #@e
    .line 534
    .local v6, "fgImsCall":Lcom/android/ims/ImsCall;
    if-nez v6, :cond_0

    #@10
    .line 535
    const-string/jumbo v10, "conference no foreground ims call"

    #@13
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@16
    .line 536
    return-void

    #@17
    .line 539
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@19
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@1c
    move-result-object v2

    #@1d
    .line 540
    .local v2, "bgImsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_1

    #@1f
    .line 541
    const-string/jumbo v10, "conference no background ims call"

    #@22
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@25
    .line 542
    return-void

    #@26
    .line 547
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@28
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@2b
    move-result-wide v8

    #@2c
    .line 548
    .local v8, "foregroundConnectTime":J
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2e
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@31
    move-result-wide v0

    #@32
    .line 550
    .local v0, "backgroundConnectTime":J
    cmp-long v10, v8, v12

    #@34
    if-lez v10, :cond_3

    #@36
    cmp-long v10, v0, v12

    #@38
    if-lez v10, :cond_3

    #@3a
    .line 551
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3c
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@3f
    move-result-wide v10

    #@40
    .line 552
    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@45
    move-result-wide v12

    #@46
    .line 551
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    #@49
    move-result-wide v4

    #@4a
    .line 553
    .local v4, "conferenceConnectTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v11, "conference - using connect time = "

    #@52
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@61
    .line 562
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@63
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@66
    move-result-object v7

    #@67
    .line 563
    .local v7, "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v7, :cond_2

    #@69
    .line 564
    invoke-virtual {v7, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    #@6c
    .line 568
    :cond_2
    :try_start_0
    invoke-virtual {v6, v2}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 530
    :goto_1
    return-void

    #@70
    .line 554
    .end local v4    # "conferenceConnectTime":J
    .end local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    cmp-long v10, v8, v12

    #@72
    if-lez v10, :cond_4

    #@74
    .line 555
    new-instance v10, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v11, "conference - bg call connect time is 0; using fg = "

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8b
    .line 556
    move-wide v4, v8

    #@8c
    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    #@8d
    .line 558
    .end local v4    # "conferenceConnectTime":J
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v11, "conference - fg call connect time is 0; using bg = "

    #@95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v10

    #@99
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v10

    #@a1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a4
    .line 559
    move-wide v4, v0

    #@a5
    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    #@a6
    .line 569
    .restart local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catch_0
    move-exception v3

    #@a7
    .line 570
    .local v3, "e":Lcom/android/ims/ImsException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v11, "conference "

    #@af
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@c2
    goto :goto_1
.end method

.method declared-synchronized dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 11
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    const-string/jumbo v6, "ril.cdma.inecmmode"

    #@4
    const/4 v7, 0x0

    #@5
    .line 290
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v5

    #@9
    .line 292
    .local v5, "isPhoneInEcmMode":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@c
    move-result v4

    #@d
    .line 294
    .local v4, "isEmergencyNumber":Z
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "dial clirMode="

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@24
    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@27
    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@29
    if-nez v6, :cond_0

    #@2b
    .line 300
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@2d
    const-string/jumbo v7, "service not available"

    #@30
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .end local v4    # "isEmergencyNumber":Z
    .end local v5    # "isPhoneInEcmMode":Z
    :catchall_0
    move-exception v6

    #@35
    monitor-exit p0

    #@36
    throw v6

    #@37
    .line 303
    .restart local v4    # "isEmergencyNumber":Z
    .restart local v5    # "isPhoneInEcmMode":Z
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_1

    #@3d
    .line 304
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@3f
    const-string/jumbo v7, "cannot dial in current state"

    #@42
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v6

    #@46
    .line 307
    :cond_1
    if-eqz v5, :cond_2

    #@48
    if-eqz v4, :cond_2

    #@4a
    .line 308
    const/4 v6, 0x1

    #@4b
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    #@4e
    .line 311
    :cond_2
    const/4 v3, 0x0

    #@4f
    .line 316
    .local v3, "holdBeforeDial":Z
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@51
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@54
    move-result-object v6

    #@55
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@57
    if-ne v6, v7, :cond_4

    #@59
    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5b
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5e
    move-result-object v6

    #@5f
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@61
    if-eq v6, v7, :cond_3

    #@63
    .line 319
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@65
    const-string/jumbo v7, "cannot dial in current state"

    #@68
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v6

    #@6c
    .line 322
    :cond_3
    const/4 v3, 0x1

    #@6d
    .line 324
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@6f
    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@72
    .line 328
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@74
    .line 329
    .local v2, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@76
    .line 331
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@78
    .line 333
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@7a
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 334
    if-eqz v3, :cond_6

    #@7d
    .line 335
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7f
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@82
    move-result-object v2

    #@83
    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@85
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@88
    move-result-object v0

    #@89
    .line 339
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8b
    if-ne v2, v6, :cond_5

    #@8d
    .line 340
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@8f
    const-string/jumbo v8, "cannot dial in current state"

    #@92
    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@95
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@96
    .line 333
    :catchall_1
    move-exception v6

    #@97
    :try_start_3
    monitor-exit v7

    #@98
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@99
    .line 344
    :cond_5
    :try_start_4
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@9b
    if-ne v0, v6, :cond_6

    #@9d
    .line 345
    const/4 v3, 0x0

    #@9e
    .line 349
    :cond_6
    new-instance v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@a0
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@a2
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@a5
    move-result-object v8

    #@a6
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@ac
    .line 349
    invoke-direct {v6, v8, v9, p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@af
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@b1
    :try_start_5
    monitor-exit v7

    #@b2
    .line 352
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@b4
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@b7
    .line 354
    if-nez v3, :cond_8

    #@b9
    .line 355
    if-eqz v5, :cond_7

    #@bb
    if-eqz v5, :cond_9

    #@bd
    if-eqz v4, :cond_9

    #@bf
    .line 356
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@c1
    invoke-direct {p0, v6, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    #@c4
    .line 371
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@c7
    .line 372
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c9
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@cc
    .line 374
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ce
    monitor-exit p0

    #@cf
    return-object v6

    #@d0
    .line 359
    :cond_9
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {v6}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d7
    .line 364
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d9
    const/16 v7, 0xe

    #@db
    const/4 v8, 0x0

    #@dc
    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@df
    .line 365
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    #@e1
    .line 366
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@e3
    .line 367
    const/4 v6, 0x1

    #@e4
    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@e6
    goto :goto_0

    #@e7
    .line 360
    :catch_0
    move-exception v1

    #@e8
    .line 361
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->printStackTrace()V

    #@eb
    .line 362
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@ed
    const-string/jumbo v7, "service not available"

    #@f0
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@f3
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@9
    move-result-object v1

    #@a
    .line 280
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "clir_key"

    #@d
    const/4 v3, 0x0

    #@e
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 281
    .local v0, "oirMode":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 237
    const-string/jumbo v0, "dispose"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@b
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@10
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@15
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@1a
    .line 243
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@1d
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@28
    .line 236
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1648
    const-string/jumbo v0, "ImsPhoneCallTracker extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1649
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mVoiceCallEndedRegistrants="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, " mVoiceCallStartedRegistrants="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, " mRingingCall="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, " mForegroundCall="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, " mBackgroundCall="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, " mHandoverCall="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, " mPendingMO="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v1, " mPhone="

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v1, " mDesiredMute="

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v1, " mState="

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 1647
    return-void
.end method

.method explicitCallTransfer()V
    .locals 0

    #@0
    .prologue
    .line 575
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 249
    const-string/jumbo v0, "ImsPhoneCallTracker finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 248
    return-void
.end method

.method getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1669
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1670
    new-instance v1, Lcom/android/ims/ImsException;

    #@6
    const-string/jumbo v2, "no ims manager"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@d
    throw v1

    #@e
    .line 1673
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@10
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@12
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getEcbmInterface(I)Lcom/android/ims/ImsEcbm;

    #@15
    move-result-object v0

    #@16
    .line 1674
    .local v0, "ecbm":Lcom/android/ims/ImsEcbm;
    return-object v0
.end method

.method getMute()Z
    .locals 1

    #@0
    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1516
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1517
    new-instance v1, Lcom/android/ims/ImsException;

    #@6
    const-string/jumbo v2, "no ims manager"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@d
    throw v1

    #@e
    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@10
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@12
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    #@15
    move-result-object v0

    #@16
    .line 1521
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "handleMessage what="

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget v2, p1, Landroid/os/Message;->what:I

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 1574
    iget v1, p1, Landroid/os/Message;->what:I

    #@1c
    packed-switch v1, :pswitch_data_0

    #@1f
    .line 1570
    :goto_0
    :pswitch_0
    return-void

    #@20
    .line 1576
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@26
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@29
    .line 1578
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@2e
    .line 1579
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@30
    .line 1582
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@33
    .line 1583
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@38
    goto :goto_0

    #@39
    .line 1587
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    goto :goto_0

    #@3d
    .line 1588
    :catch_0
    move-exception v0

    #@3e
    .line 1590
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "handleMessage EVENT_RESUME_BACKGROUND exception="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@55
    goto :goto_0

    #@56
    .line 1595
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@58
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@5a
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@5c
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    #@5f
    goto :goto_0

    #@60
    .line 1600
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@62
    if-eqz v1, :cond_1

    #@64
    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@66
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    #@68
    .line 1602
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@6a
    .line 1601
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    #@6d
    .line 1603
    const/4 v1, 0x0

    #@6e
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@70
    .line 1605
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@72
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@75
    goto :goto_0

    #@76
    .line 1574
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1664
    return-void
.end method

.method hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    const-string/jumbo v3, "hangup call"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 768
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 769
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@12
    const-string/jumbo v4, "no connections"

    #@15
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 772
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@1c
    move-result-object v1

    #@1d
    .line 773
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v2, 0x0

    #@1e
    .line 775
    .local v2, "rejectCall":Z
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@20
    if-ne p1, v3, :cond_2

    #@22
    .line 776
    const-string/jumbo v3, "(ringing) hangup incoming"

    #@25
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 777
    const/4 v2, 0x1

    #@29
    .line 798
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    #@2c
    .line 801
    if-eqz v1, :cond_7

    #@2e
    .line 802
    if-eqz v2, :cond_6

    #@30
    const/16 v3, 0x1f8

    #@32
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 817
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@37
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@3a
    .line 765
    return-void

    #@3b
    .line 778
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3d
    if-ne p1, v3, :cond_4

    #@3f
    .line 779
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_3

    #@45
    .line 781
    const-string/jumbo v3, "(foregnd) hangup dialing or alerting..."

    #@48
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@4b
    goto :goto_0

    #@4c
    .line 785
    :cond_3
    const-string/jumbo v3, "(foregnd) hangup foreground"

    #@4f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@52
    goto :goto_0

    #@53
    .line 789
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@55
    if-ne p1, v3, :cond_5

    #@57
    .line 791
    const-string/jumbo v3, "(backgnd) hangup waiting or background"

    #@5a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@5d
    goto :goto_0

    #@5e
    .line 794
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@60
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v5, "ImsPhoneCall "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 795
    const-string/jumbo v5, "does not belong to ImsPhoneCallTracker "

    #@73
    .line 794
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 803
    :cond_6
    const/16 v3, 0x1f5

    #@85
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@88
    goto :goto_1

    #@89
    .line 813
    :catch_0
    move-exception v0

    #@8a
    .line 814
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@8c
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@93
    throw v3

    #@94
    .line 804
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@96
    if-eqz v3, :cond_1

    #@98
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9a
    if-ne p1, v3, :cond_1

    #@9c
    .line 806
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@9e
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@a0
    const/4 v5, 0x0

    #@a1
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@a4
    .line 807
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@a6
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@a9
    .line 808
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@ab
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@ae
    .line 809
    const/4 v3, 0x0

    #@af
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@b1
    .line 810
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@b4
    .line 811
    const/16 v3, 0x14

    #@b6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    #@b9
    goto/16 :goto_1
.end method

.method hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    const-string/jumbo v0, "hangup connection"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 754
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9
    move-result-object v0

    #@a
    if-eq v0, p0, :cond_0

    #@c
    .line 755
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "ImsPhoneConnection "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 756
    const-string/jumbo v2, "does not belong to ImsPhoneCallTracker "

    #@21
    .line 755
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 759
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@38
    .line 751
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1678
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@2
    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1690
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@3
    aget-boolean v1, v1, v0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@9
    const/4 v1, 0x3

    #@a
    aget-boolean v0, v0, v1

    #@c
    .line 1690
    :cond_0
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    const/4 v1, 0x0

    #@3
    aget-boolean v0, v0, v1

    #@5
    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    const/4 v1, 0x2

    #@3
    aget-boolean v0, v0, v1

    #@5
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1612
    const-string/jumbo v0, "ImsPhoneCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1611
    return-void
.end method

.method logState()V
    .locals 0

    #@0
    .prologue
    .line 1626
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1616
    const-string/jumbo v0, "ImsPhoneCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1615
    return-void
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    #@0
    .prologue
    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "notifySrvccState state="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1557
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@19
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@1b
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@24
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@29
    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@2e
    .line 1554
    :cond_0
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 268
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 269
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 267
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 258
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 256
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    const-string/jumbo v0, "rejectCall"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@17
    .line 470
    return-void

    #@18
    .line 476
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@1a
    const-string/jumbo v1, "phone not ringing"

    #@1d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method resumeWaitingOrHolding()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 831
    const-string/jumbo v2, "resumeWaitingOrHolding"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 834
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 837
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@14
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@17
    move-result-object v1

    #@18
    .line 838
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@1a
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    #@1d
    .line 830
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 839
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@20
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@23
    move-result-object v2

    #@24
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@26
    if-ne v2, v3, :cond_2

    #@28
    .line 841
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@2d
    move-result-object v1

    #@2e
    .line 842
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@30
    .line 844
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@32
    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@35
    move-result v2

    #@36
    .line 843
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 854
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    #@3b
    .line 855
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@3d
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 851
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@47
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@4a
    move-result-object v1

    #@4b
    .line 852
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@4d
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    goto :goto_0
.end method

.method sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 716
    const-string/jumbo v1, "sendDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 719
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 720
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    #@11
    .line 715
    :cond_0
    return-void
.end method

.method sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 861
    const-string/jumbo v3, "sendUSSD"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 864
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 865
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@c
    invoke-virtual {v3, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    #@f
    .line 866
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@14
    .line 867
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 868
    return-void

    #@18
    .line 871
    :cond_0
    const/4 v3, 0x1

    #@19
    new-array v0, v3, [Ljava/lang/String;

    #@1b
    const/4 v3, 0x0

    #@1c
    aput-object p1, v0, v3

    #@1e
    .line 872
    .local v0, "callees":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@20
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@22
    .line 873
    const/4 v5, 0x1

    #@23
    const/4 v6, 0x2

    #@24
    .line 872
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@27
    move-result-object v2

    #@28
    .line 874
    .local v2, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v3, "dialstring"

    #@2b
    .line 875
    const/4 v4, 0x2

    #@2c
    .line 874
    invoke-virtual {v2, v3, v4}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    #@2f
    .line 877
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@31
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@33
    .line 878
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@35
    .line 877
    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@38
    move-result-object v3

    #@39
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 860
    .end local v0    # "callees":[Ljava/lang/String;
    .end local v2    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-void

    #@3c
    .line 879
    :catch_0
    move-exception v1

    #@3d
    .line 880
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "sendUSSD : "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@54
    .line 881
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@56
    invoke-virtual {v3, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@59
    goto :goto_0
.end method

.method setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@2
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    #@7
    .line 706
    return-void
.end method

.method setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@a
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 697
    :goto_0
    return-void

    #@e
    .line 700
    :catch_0
    move-exception v0

    #@f
    .line 701
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "setTTYMode : "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@26
    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@28
    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@2b
    goto :goto_0
.end method

.method startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 726
    const-string/jumbo v1, "startDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 728
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 729
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 730
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    #@11
    .line 725
    :goto_0
    return-void

    #@12
    .line 732
    :cond_0
    const-string/jumbo v1, "startDtmf : no foreground call"

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 738
    const-string/jumbo v1, "stopDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 741
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 742
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    #@11
    .line 737
    :goto_0
    return-void

    #@12
    .line 744
    :cond_0
    const-string/jumbo v1, "stopDtmf : no foreground call"

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    const-string/jumbo v2, "switchWaitingOrHoldingAndActive"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 495
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v2

    #@c
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 496
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@12
    const-string/jumbo v3, "cannot be in the incoming state"

    #@15
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1b
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1e
    move-result-object v2

    #@1f
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@21
    if-ne v2, v3, :cond_3

    #@23
    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@25
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@28
    move-result-object v1

    #@29
    .line 501
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@2b
    .line 502
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@2d
    const-string/jumbo v3, "no ims call"

    #@30
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 507
    :cond_1
    const/4 v2, 0x1

    #@35
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@37
    .line 508
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@39
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@3f
    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@41
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@43
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@46
    .line 514
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->hold()V

    #@49
    .line 517
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@4b
    if-nez v2, :cond_2

    #@4d
    .line 518
    const/4 v2, 0x0

    #@4e
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 492
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_2
    :goto_0
    return-void

    #@51
    .line 520
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    #@52
    .line 521
    .local v0, "e":Lcom/android/ims/ImsException;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@54
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@56
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@59
    .line 522
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@5b
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    .line 524
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@65
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@68
    move-result-object v2

    #@69
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6b
    if-ne v2, v3, :cond_2

    #@6d
    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V

    #@70
    goto :goto_0
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 273
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 262
    return-void
.end method
