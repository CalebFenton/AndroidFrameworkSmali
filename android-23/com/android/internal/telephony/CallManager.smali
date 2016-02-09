.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_ONHOLD_TONE:I = 0x78

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_TTY_MODE_RECEIVED:I = 0x7a

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager;

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final VDBG:Z


# instance fields
.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/CallManager$CallManagerHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mOnHoldToneRegistrants:Landroid/os/RegistrantList;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/CallManager;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    #@7
    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    #@a
    .line 109
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    #@11
    .line 114
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    #@14
    .line 120
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    .line 119
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 123
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 126
    new-instance v0, Landroid/os/RegistrantList;

    #@24
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@27
    .line 125
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@29
    .line 129
    new-instance v0, Landroid/os/RegistrantList;

    #@2b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@2e
    .line 128
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@30
    .line 132
    new-instance v0, Landroid/os/RegistrantList;

    #@32
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@35
    .line 131
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@37
    .line 135
    new-instance v0, Landroid/os/RegistrantList;

    #@39
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@3c
    .line 134
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@3e
    .line 138
    new-instance v0, Landroid/os/RegistrantList;

    #@40
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@43
    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@45
    .line 141
    new-instance v0, Landroid/os/RegistrantList;

    #@47
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@4a
    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    #@4c
    .line 144
    new-instance v0, Landroid/os/RegistrantList;

    #@4e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@51
    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@53
    .line 147
    new-instance v0, Landroid/os/RegistrantList;

    #@55
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@58
    .line 146
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@5a
    .line 150
    new-instance v0, Landroid/os/RegistrantList;

    #@5c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@5f
    .line 149
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@61
    .line 153
    new-instance v0, Landroid/os/RegistrantList;

    #@63
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@66
    .line 152
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@68
    .line 156
    new-instance v0, Landroid/os/RegistrantList;

    #@6a
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@6d
    .line 155
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@6f
    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    #@71
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@74
    .line 158
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    #@76
    .line 162
    new-instance v0, Landroid/os/RegistrantList;

    #@78
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@7b
    .line 161
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@7d
    .line 165
    new-instance v0, Landroid/os/RegistrantList;

    #@7f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@82
    .line 164
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    #@84
    .line 168
    new-instance v0, Landroid/os/RegistrantList;

    #@86
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@89
    .line 167
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@8b
    .line 171
    new-instance v0, Landroid/os/RegistrantList;

    #@8d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@90
    .line 170
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@92
    .line 174
    new-instance v0, Landroid/os/RegistrantList;

    #@94
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@97
    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@99
    .line 177
    new-instance v0, Landroid/os/RegistrantList;

    #@9b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@9e
    .line 176
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@a0
    .line 180
    new-instance v0, Landroid/os/RegistrantList;

    #@a2
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@a5
    .line 179
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    #@a7
    .line 183
    new-instance v0, Landroid/os/RegistrantList;

    #@a9
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@ac
    .line 182
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    #@ae
    .line 186
    new-instance v0, Landroid/os/RegistrantList;

    #@b0
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@b3
    .line 185
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@b5
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    #@b7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@ba
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@bc
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    #@be
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c1
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@c3
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    #@c5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c8
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@ca
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    #@cc
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@cf
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@d1
    .line 193
    const/4 v0, 0x0

    #@d2
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@d4
    .line 188
    return-void
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 1060
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    #@7
    move-result v3

    #@8
    .line 1061
    .local v3, "serviceState":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@b
    move-result v4

    #@c
    .line 1062
    .local v4, "subId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    #@f
    move-result v1

    #@10
    .line 1063
    .local v1, "hasRingingCall":Z
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    #@13
    move-result-object v0

    #@14
    .line 1065
    .local v0, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x3

    #@15
    if-eq v3, v5, :cond_0

    #@17
    .line 1066
    if-eqz v1, :cond_2

    #@19
    .line 1065
    :cond_0
    const/4 v2, 0x0

    #@1a
    .line 1075
    .local v2, "result":Z
    :goto_0
    if-nez v2, :cond_1

    #@1c
    .line 1076
    const-string/jumbo v5, "CallManager"

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "canDial serviceState="

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 1077
    const-string/jumbo v7, " hasRingingCall="

    #@32
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 1078
    const-string/jumbo v7, " fgCallState="

    #@3d
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1080
    :cond_1
    return v2

    #@4d
    .line 1067
    .end local v2    # "result":Z
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@4f
    if-eq v0, v5, :cond_3

    #@51
    .line 1068
    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@53
    if-ne v0, v5, :cond_4

    #@55
    .line 1067
    :cond_3
    const/4 v2, 0x1

    #@56
    .restart local v2    # "result":Z
    goto :goto_0

    #@57
    .line 1069
    .end local v2    # "result":Z
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@59
    if-eq v0, v5, :cond_3

    #@5b
    .line 1073
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@5d
    if-ne v0, v5, :cond_5

    #@5f
    const/4 v2, 0x1

    #@60
    .restart local v2    # "result":Z
    goto :goto_0

    #@61
    .end local v2    # "result":Z
    :cond_5
    const/4 v2, 0x0

    #@62
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 592
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 2167
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@10
    .line 2168
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 2169
    return-object v0

    #@17
    .line 2172
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 2179
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_2

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@10
    .line 2180
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@1d
    move-result v2

    #@1e
    if-eq v2, p2, :cond_1

    #@20
    .line 2181
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@23
    move-result-object v2

    #@24
    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    #@26
    .line 2180
    if-eqz v2, :cond_0

    #@28
    .line 2182
    :cond_1
    return-object v0

    #@29
    .line 2185
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 2192
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@10
    .line 2193
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@13
    move-result-object v2

    #@14
    if-ne v2, p2, :cond_0

    #@16
    .line 2194
    return-object v0

    #@17
    .line 2197
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 2205
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_2

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@10
    .line 2206
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@13
    move-result-object v2

    #@14
    if-eq v2, p2, :cond_1

    #@16
    .line 2207
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@1d
    move-result v2

    #@1e
    if-eq v2, p3, :cond_1

    #@20
    .line 2208
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@23
    move-result-object v2

    #@24
    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    #@26
    .line 2206
    if-eqz v2, :cond_0

    #@28
    .line 2209
    :cond_1
    return-object v0

    #@29
    .line 2212
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 1922
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    #@1
    .line 1923
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .end local v2    # "result":Lcom/android/internal/telephony/Call;
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@11
    .line 1924
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1925
    return-object v0

    #@18
    .line 1926
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@1b
    move-result-object v3

    #@1c
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@1e
    if-eq v3, v4, :cond_0

    #@20
    .line 1927
    if-nez v2, :cond_0

    #@22
    move-object v2, v0

    #@23
    .local v2, "result":Lcom/android/internal/telephony/Call;
    goto :goto_0

    #@24
    .line 1930
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "result":Lcom/android/internal/telephony/Call;
    :cond_2
    return-object v2
.end method

.method private getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;
    .locals 5
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    #@0
    .prologue
    .line 1936
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    #@1
    .line 1937
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .end local v2    # "result":Lcom/android/internal/telephony/Call;
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_3

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@11
    .line 1938
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@18
    move-result v3

    #@19
    if-eq v3, p2, :cond_1

    #@1b
    .line 1939
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@1e
    move-result-object v3

    #@1f
    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@21
    .line 1938
    if-eqz v3, :cond_0

    #@23
    .line 1940
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 1941
    return-object v0

    #@2a
    .line 1942
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@2d
    move-result-object v3

    #@2e
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@30
    if-eq v3, v4, :cond_0

    #@32
    .line 1943
    if-nez v2, :cond_0

    #@34
    move-object v2, v0

    #@35
    .local v2, "result":Lcom/android/internal/telephony/Call;
    goto :goto_0

    #@36
    .line 1947
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "result":Lcom/android/internal/telephony/Call;
    :cond_3
    return-object v2
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    #@0
    .prologue
    .line 201
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    #@2
    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 257
    const/4 v0, 0x0

    #@1
    .line 258
    .local v0, "p":Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/internal/telephony/Phone;

    #@13
    .line 259
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@16
    move-result v3

    #@17
    if-ne v3, p1, :cond_0

    #@19
    instance-of v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 260
    move-object v0, v1

    #@1e
    .line 264
    .end local v0    # "p":Lcom/android/internal/telephony/Phone;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 213
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 214
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 216
    :cond_0
    return-object p0
.end method

.method private hasMoreThanOneHoldingCall(I)Z
    .locals 6
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2252
    const/4 v2, 0x0

    #@2
    .line 2253
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@14
    .line 2254
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v3

    #@18
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@1a
    if-ne v3, v4, :cond_0

    #@1c
    .line 2255
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@23
    move-result v3

    #@24
    if-eq v3, p1, :cond_1

    #@26
    .line 2256
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@29
    move-result-object v3

    #@2a
    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@2c
    .line 2254
    if-eqz v3, :cond_0

    #@2e
    .line 2257
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@30
    if-le v2, v5, :cond_0

    #@32
    return v5

    #@33
    .line 2260
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v3, 0x0

    #@34
    return v3
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2216
    const/4 v2, 0x0

    #@2
    .line 2217
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@14
    .line 2218
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2219
    add-int/lit8 v2, v2, 0x1

    #@20
    if-le v2, v4, :cond_0

    #@22
    return v4

    #@23
    .line 2222
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v3, 0x0

    #@24
    return v3
.end method

.method private hasMoreThanOneRingingCall(I)Z
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2233
    const/4 v2, 0x0

    #@2
    .line 2234
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Call;

    #@14
    .line 2235
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2236
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@25
    move-result v3

    #@26
    if-eq v3, p1, :cond_1

    #@28
    .line 2237
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@2b
    move-result-object v3

    #@2c
    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@2e
    .line 2235
    if-eqz v3, :cond_0

    #@30
    .line 2238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@32
    if-le v2, v4, :cond_0

    #@34
    return v4

    #@35
    .line 2241
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v3, 0x0

    #@36
    return v3
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "p1"    # Lcom/android/internal/telephony/Phone;
    .param p1, "p2"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 241
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/16 v6, 0x75

    #@2
    const/4 v5, 0x5

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v3, 0x0

    #@5
    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    #@d
    .line 602
    .local v0, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v0, :cond_0

    #@f
    .line 603
    const-string/jumbo v1, "CallManager"

    #@12
    const-string/jumbo v2, "This phone has already been registered."

    #@15
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 604
    return-void

    #@19
    .line 608
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    #@1b
    .end local v0    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$CallManagerHandler;)V

    #@1e
    .line 609
    .restart local v0    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 612
    const/16 v1, 0x65

    #@25
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@28
    .line 613
    const/16 v1, 0x64

    #@2a
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2d
    .line 614
    const/16 v1, 0x66

    #@2f
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    #@32
    .line 615
    const/16 v1, 0x67

    #@34
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    #@37
    .line 616
    const/16 v1, 0x68

    #@39
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3c
    .line 617
    const/16 v1, 0x69

    #@3e
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@41
    .line 618
    const/16 v1, 0x6a

    #@43
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@46
    .line 619
    const/16 v1, 0x6b

    #@48
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 620
    const/16 v1, 0x6d

    #@4d
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@50
    .line 621
    const/16 v1, 0x6e

    #@52
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@55
    .line 622
    const/16 v1, 0x70

    #@57
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5a
    .line 623
    const/16 v1, 0x71

    #@5c
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5f
    .line 624
    const/16 v1, 0x72

    #@61
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    #@64
    .line 625
    invoke-interface {p1, v0, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    #@67
    .line 626
    const/16 v1, 0x76

    #@69
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6c
    .line 631
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@6f
    move-result v1

    #@70
    const/4 v2, 0x1

    #@71
    if-eq v1, v2, :cond_1

    #@73
    .line 632
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@76
    move-result v1

    #@77
    if-ne v1, v4, :cond_5

    #@79
    .line 634
    :cond_1
    :goto_0
    const/16 v1, 0x77

    #@7b
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7e
    .line 638
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@81
    move-result v1

    #@82
    if-ne v1, v4, :cond_3

    #@84
    .line 639
    const/16 v1, 0x6f

    #@86
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    #@89
    .line 640
    const/16 v1, 0x74

    #@8b
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8e
    .line 641
    const/16 v1, 0x6c

    #@90
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    #@93
    .line 642
    const/16 v1, 0x73

    #@95
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    #@98
    .line 646
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@9b
    move-result v1

    #@9c
    if-ne v1, v5, :cond_4

    #@9e
    .line 647
    const/16 v1, 0x78

    #@a0
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a3
    .line 648
    invoke-interface {p1, v0, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a6
    .line 649
    const/16 v1, 0x7a

    #@a8
    invoke-interface {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    #@ab
    .line 595
    :cond_4
    return-void

    #@ac
    .line 633
    :cond_5
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@af
    move-result v1

    #@b0
    if-ne v1, v5, :cond_2

    #@b2
    goto :goto_0
.end method

.method private unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    #@b
    .line 656
    .local v0, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v0, :cond_0

    #@d
    .line 657
    const-string/jumbo v1, "CallManager"

    #@10
    const-string/jumbo v2, "Could not find Phone handler for unregistration"

    #@13
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 658
    return-void

    #@17
    .line 660
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    #@19
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 663
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    #@1f
    .line 664
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    #@22
    .line 665
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    #@25
    .line 666
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    #@28
    .line 667
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    #@2b
    .line 668
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@2e
    .line 669
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    #@31
    .line 670
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    #@34
    .line 671
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    #@37
    .line 672
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    #@3a
    .line 673
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    #@3d
    .line 674
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    #@40
    .line 675
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    #@43
    .line 676
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    #@46
    .line 677
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    #@49
    .line 678
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    #@4c
    .line 683
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4f
    move-result v1

    #@50
    const/4 v2, 0x1

    #@51
    if-eq v1, v2, :cond_1

    #@53
    .line 684
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@56
    move-result v1

    #@57
    if-ne v1, v4, :cond_5

    #@59
    .line 686
    :cond_1
    :goto_0
    const/16 v1, 0x77

    #@5b
    invoke-interface {p1, v3, v1, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5e
    .line 690
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@61
    move-result v1

    #@62
    if-ne v1, v4, :cond_3

    #@64
    .line 691
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    #@67
    .line 692
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    #@6a
    .line 693
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    #@6d
    .line 694
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    #@70
    .line 698
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@73
    move-result v1

    #@74
    if-ne v1, v5, :cond_4

    #@76
    .line 699
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    #@79
    .line 700
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    #@7c
    .line 653
    :cond_4
    return-void

    #@7d
    .line 685
    :cond_5
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@80
    move-result v1

    #@81
    if-ne v1, v5, :cond_2

    #@83
    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v2

    #@4
    .line 725
    .local v2, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 726
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@11
    move-result-object v0

    #@12
    .line 727
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    const/4 v1, 0x0

    #@1d
    .line 728
    .local v1, "hasBgCall":Z
    :goto_0
    if-ne v0, v2, :cond_2

    #@1f
    const/4 v3, 0x1

    #@20
    .line 734
    .local v3, "sameChannel":Z
    :goto_1
    if-eqz v3, :cond_3

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 735
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    #@2b
    .line 744
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "hasBgCall":Z
    .end local v3    # "sameChannel":Z
    :cond_0
    :goto_2
    const/4 v4, 0x0

    #@2c
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    #@2f
    .line 717
    return-void

    #@30
    .line 727
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v1, 0x1

    #@31
    .restart local v1    # "hasBgCall":Z
    goto :goto_0

    #@32
    .line 728
    :cond_2
    const/4 v3, 0x0

    #@33
    .restart local v3    # "sameChannel":Z
    goto :goto_1

    #@34
    .line 736
    :cond_3
    if-nez v3, :cond_4

    #@36
    if-eqz v1, :cond_5

    #@38
    .line 738
    :cond_4
    if-nez v3, :cond_0

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 739
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    #@43
    goto :goto_2

    #@44
    .line 737
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@47
    goto :goto_2
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    #@0
    .prologue
    .line 869
    const/4 v0, 0x0

    #@1
    .line 870
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@2
    .line 872
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 873
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v0

    #@10
    .line 876
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 877
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@15
    move-result-object v1

    #@16
    .line 880
    .end local v1    # "heldPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    return v2
.end method

.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 891
    const/4 v0, 0x0

    #@1
    .line 892
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@2
    .line 894
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 895
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v0

    #@10
    .line 898
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 899
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@15
    move-result-object v1

    #@16
    .line 902
    .end local v1    # "heldPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    #@0
    .prologue
    .line 1089
    const/4 v0, 0x0

    #@1
    .line 1090
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@2
    .line 1092
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v0

    #@10
    .line 1096
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 1097
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@15
    move-result-object v1

    #@16
    .line 1100
    .end local v1    # "heldPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    if-ne v1, v0, :cond_2

    #@18
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    #@1b
    move-result v2

    #@1c
    :goto_0
    return v2

    #@1d
    :cond_2
    const/4 v2, 0x0

    #@1e
    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;I)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1109
    const/4 v0, 0x0

    #@1
    .line 1110
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@2
    .line 1112
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1113
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v0

    #@10
    .line 1116
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 1117
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@15
    move-result-object v1

    #@16
    .line 1120
    .end local v1    # "heldPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    if-ne v1, v0, :cond_2

    #@18
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    #@1b
    move-result v2

    #@1c
    :goto_0
    return v2

    #@1d
    :cond_2
    const/4 v2, 0x0

    #@1e
    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    #@0
    .prologue
    .line 1033
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@12
    .line 1034
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    #@15
    goto :goto_0

    #@16
    .line 1032
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public clearDisconnected(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1043
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@12
    .line 1044
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_0

    #@18
    .line 1045
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    #@1b
    goto :goto_0

    #@1c
    .line 1042
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v1

    #@8
    .line 922
    .local v1, "subId":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    #@b
    move-result-object v0

    #@c
    .line 923
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    #@e
    .line 924
    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 925
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    #@14
    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    #@17
    .line 914
    :goto_0
    return-void

    #@18
    .line 926
    .restart local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 927
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    #@21
    goto :goto_0

    #@22
    .line 929
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@24
    const-string/jumbo v3, "Can\'t conference foreground and selected background call"

    #@27
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 932
    :cond_2
    const-string/jumbo v2, "CallManager"

    #@2e
    const-string/jumbo v3, "conference: fgPhone=null"

    #@31
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    goto :goto_0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 954
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v1

    #@5
    .line 955
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@8
    move-result v5

    #@9
    .line 964
    .local v5, "subId":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;)Z

    #@c
    move-result v7

    #@d
    if-nez v7, :cond_1

    #@f
    .line 970
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 971
    .local v3, "newDialString":Ljava/lang/String;
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_0

    #@19
    .line 972
    return-object v8

    #@1a
    .line 974
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    #@1c
    const-string/jumbo v8, "cannot dial in current state"

    #@1f
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v7

    #@23
    .line 978
    .end local v3    # "newDialString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_3

    #@29
    .line 979
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@30
    move-result-object v0

    #@31
    .line 980
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_4

    #@3b
    const/4 v2, 0x0

    #@3c
    .line 983
    .local v2, "hasBgCall":Z
    :goto_0
    const-string/jumbo v8, "CallManager"

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v9, "hasBgCall: "

    #@47
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v9, " sameChannel:"

    #@52
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    if-ne v0, v1, :cond_5

    #@58
    const/4 v7, 0x1

    #@59
    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 988
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@67
    move-result-object v6

    #@68
    .line 989
    .local v6, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eq v0, v1, :cond_3

    #@6a
    .line 990
    if-eqz v6, :cond_2

    #@6c
    if-eq v6, v0, :cond_3

    #@6e
    .line 991
    :cond_2
    if-eqz v2, :cond_6

    #@70
    .line 992
    const-string/jumbo v7, "CallManager"

    #@73
    const-string/jumbo v8, "Hangup"

    #@76
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 993
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->hangup()V

    #@80
    .line 1004
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "hasBgCall":Z
    .end local v6    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_2
    invoke-interface {v1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@83
    move-result-object v4

    #@84
    .line 1011
    .local v4, "result":Lcom/android/internal/telephony/Connection;
    return-object v4

    #@85
    .line 980
    .end local v4    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    const/4 v2, 0x1

    #@86
    .restart local v2    # "hasBgCall":Z
    goto :goto_0

    #@87
    .line 983
    :cond_5
    const/4 v7, 0x0

    #@88
    goto :goto_1

    #@89
    .line 995
    .restart local v6    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    const-string/jumbo v7, "CallManager"

    #@8c
    const-string/jumbo v8, "Switch"

    #@8f
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 996
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@95
    goto :goto_2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1026
    const/4 v0, 0x0

    #@1
    invoke-interface {p1, p2, p3, p4, v0}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1142
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    #@d
    .line 1135
    :cond_0
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 1899
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    .line 1900
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@8
    .line 1901
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 1902
    const/4 v0, 0x0

    #@d
    .line 1905
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-object v0

    #@e
    .line 1903
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1909
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    .line 1910
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@8
    .line 1911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@b
    move-result-object v1

    #@c
    .line 1912
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    #@e
    .line 1913
    const/4 v0, 0x0

    #@f
    .line 1916
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 1914
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    #@0
    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2043
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2044
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2047
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@d
    return-object v1
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 2051
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2053
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2054
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2057
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@d
    return-object v1
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2090
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2091
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2093
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    #@d
    return-object v1
.end method

.method public getBgCallConnections(I)Ljava/util/List;
    .locals 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2102
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2103
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2105
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    #@d
    return-object v1
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2066
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2067
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2069
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    #@d
    return-object v1
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2077
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 2078
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@6
    .line 2079
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    #@d
    return-object v1
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2113
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v0

    #@5
    .line 2114
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@7
    .line 2115
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2117
    :cond_0
    return-object v1
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v0

    #@5
    .line 2126
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    #@7
    .line 2127
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2129
    :cond_0
    return-object v1
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    .line 1965
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@8
    .line 1966
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 1967
    const/4 v0, 0x0

    #@d
    .line 1970
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-object v0

    #@e
    .line 1968
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1988
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v1

    #@4
    .line 1989
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneHoldingCall(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1990
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 1992
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@11
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    #@14
    move-result-object v0

    #@15
    .line 1993
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_1

    #@17
    .line 1994
    if-nez v1, :cond_2

    #@19
    .line 1995
    const/4 v0, 0x0

    #@1a
    .line 1998
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    #@1b
    .line 1996
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 2016
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    .line 2017
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@8
    .line 2018
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 2019
    const/4 v0, 0x0

    #@d
    .line 2022
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-object v0

    #@e
    .line 2020
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 2026
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v1

    #@4
    .line 2027
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    #@9
    move-result-object v0

    #@a
    .line 2028
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@c
    .line 2029
    if-nez v1, :cond_1

    #@e
    .line 2030
    const/4 v0, 0x0

    #@f
    .line 2033
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 2031
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1215
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 1219
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    const-string/jumbo v0, "CallManager"

    #@3
    const-string/jumbo v1, "getPendingMmiCodes not implemented"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1163
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 2

    #@0
    .prologue
    .line 376
    const/4 v0, 0x0

    #@1
    .line 377
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@12
    move-result-object v0

    #@13
    .line 385
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    #@14
    .line 379
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@25
    move-result-object v0

    #@26
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    #@27
    .line 383
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@2e
    move-result-object v0

    #@2f
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 389
    const/4 v0, 0x0

    #@1
    .line 390
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 391
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@12
    move-result-object v0

    #@13
    .line 398
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    #@14
    .line 392
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 393
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@25
    move-result-object v0

    #@26
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    #@27
    .line 396
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@2e
    move-result-object v0

    #@2f
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    .line 318
    const/4 v2, 0x1

    #@3
    .line 320
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@15
    .line 321
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@1c
    move-result v3

    #@1d
    .line 322
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    #@1f
    .line 324
    move v2, v3

    #@20
    .line 339
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    #@21
    .line 326
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    #@22
    if-ne v3, v4, :cond_4

    #@24
    .line 329
    if-eq v2, v5, :cond_3

    #@26
    .line 330
    if-ne v2, v6, :cond_0

    #@28
    .line 331
    :cond_3
    move v2, v3

    #@29
    goto :goto_0

    #@2a
    .line 333
    :cond_4
    if-ne v3, v5, :cond_0

    #@2c
    .line 334
    if-ne v2, v6, :cond_0

    #@2e
    .line 335
    move v2, v3

    #@2f
    goto :goto_0
.end method

.method public getServiceState(I)I
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    .line 346
    const/4 v2, 0x1

    #@3
    .line 348
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@15
    .line 349
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@18
    move-result v4

    #@19
    if-ne v4, p1, :cond_0

    #@1b
    .line 350
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@22
    move-result v3

    #@23
    .line 351
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    #@25
    .line 353
    move v2, v3

    #@26
    .line 369
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    #@27
    .line 355
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    #@28
    if-ne v3, v4, :cond_4

    #@2a
    .line 358
    if-eq v2, v5, :cond_3

    #@2c
    .line 359
    if-ne v2, v6, :cond_0

    #@2e
    .line 360
    :cond_3
    move v2, v3

    #@2f
    goto :goto_0

    #@30
    .line 362
    :cond_4
    if-ne v3, v5, :cond_0

    #@32
    .line 363
    if-ne v2, v6, :cond_0

    #@34
    .line 364
    move v2, v3

    #@35
    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    #@0
    .prologue
    .line 274
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    .line 276
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@14
    .line 277
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    move-result-object v3

    #@18
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 278
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1e
    goto :goto_0

    #@1f
    .line 279
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@22
    move-result-object v3

    #@23
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@25
    if-ne v3, v4, :cond_0

    #@27
    .line 280
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@29
    if-ne v2, v3, :cond_0

    #@2b
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2d
    goto :goto_0

    #@2e
    .line 283
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 293
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    .line 295
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "phone$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Phone;

    #@14
    .line 296
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@17
    move-result v3

    #@18
    if-ne v3, p1, :cond_0

    #@1a
    .line 297
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@1d
    move-result-object v3

    #@1e
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@20
    if-ne v3, v4, :cond_1

    #@22
    .line 298
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    goto :goto_0

    #@25
    .line 299
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@28
    move-result-object v3

    #@29
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2b
    if-ne v3, v4, :cond_0

    #@2d
    .line 300
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2f
    if-ne v2, v3, :cond_0

    #@31
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@33
    goto :goto_0

    #@34
    .line 304
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 835
    const/4 v1, 0x0

    #@1
    .line 836
    .local v1, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    #@2
    .line 843
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 844
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    #@b
    move-result-object v1

    #@c
    .line 845
    .local v1, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    if-eqz p1, :cond_0

    #@e
    .line 846
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@11
    move-result-object v0

    #@12
    .line 847
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    if-ne v1, v0, :cond_1

    #@14
    .line 848
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    #@1b
    .line 834
    .end local v0    # "backgroundPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "foregroundPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 851
    .restart local v0    # "backgroundPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "foregroundPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    #@23
    .line 852
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    #@26
    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 1

    #@0
    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    #@0
    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    #@0
    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 2

    #@0
    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 2

    #@0
    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1648
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1715
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1349
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1694
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1550
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1628
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1608
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1431
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1532
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1512
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1410
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1474
    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1777
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1370
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1490
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1453
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1567
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1671
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1733
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1587
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1794
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1386
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 407
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v0

    #@4
    .line 409
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 426
    :cond_0
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 412
    :cond_1
    const-string/jumbo v1, "CallManager"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "registerPhone("

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 413
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 413
    const-string/jumbo v3, " "

    #@2a
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 413
    const-string/jumbo v3, ")"

    #@35
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_2

    #@48
    .line 417
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@4a
    .line 419
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@51
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@5a
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61
    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@63
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6a
    .line 423
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    #@6d
    .line 424
    const/4 v1, 0x1

    #@6e
    return v1
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v0

    #@4
    .line 769
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    #@7
    .line 761
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    #@11
    .line 1334
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 1336
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public sendDtmf(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1250
    const/4 v0, 0x0

    #@1
    .line 1257
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1258
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    #@12
    .line 1259
    const/4 v0, 0x1

    #@13
    .line 1266
    :cond_0
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1175
    const-string/jumbo v0, "CallManager"

    #@3
    const-string/jumbo v1, "sendUssdResponse not implemented"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1176
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public setEchoSuppressionEnabled()V
    .locals 1

    #@0
    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    #@11
    .line 1225
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    #@11
    .line 1188
    :cond_0
    return-void
.end method

.method public startDtmf(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1279
    const/4 v0, 0x0

    #@1
    .line 1286
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1287
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    #@12
    .line 1288
    const/4 v0, 0x1

    #@13
    .line 1296
    :cond_0
    return v0
.end method

.method public stopDtmf()V
    .locals 1

    #@0
    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    #@d
    .line 1303
    :cond_0
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 796
    const/4 v0, 0x0

    #@1
    .line 797
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@2
    .line 804
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 805
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v0

    #@10
    .line 808
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 809
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@15
    move-result-object v1

    #@16
    .line 812
    .end local v1    # "heldPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    if-eqz v0, :cond_2

    #@18
    .line 813
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@1b
    .line 816
    :cond_2
    if-eqz v1, :cond_3

    #@1d
    if-eq v1, v0, :cond_3

    #@1f
    .line 817
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@22
    .line 795
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2412
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@d
    move-result v5

    #@e
    if-ge v2, v5, :cond_3

    #@10
    .line 2413
    const-string/jumbo v5, "CallManager {"

    #@13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 2414
    const-string/jumbo v5, "\nstate = "

    #@19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 2415
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    #@27
    move-result-object v1

    #@28
    .line 2416
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    #@2a
    .line 2417
    const-string/jumbo v5, "\n- Foreground: "

    #@2d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    .line 2418
    const-string/jumbo v5, " from "

    #@3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    .line 2419
    const-string/jumbo v5, "\n  Conn: "

    #@49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections(I)Ljava/util/List;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    .line 2421
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    #@57
    move-result-object v1

    #@58
    .line 2422
    if-eqz v1, :cond_1

    #@5a
    .line 2423
    const-string/jumbo v5, "\n- Background: "

    #@5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    .line 2424
    const-string/jumbo v5, " from "

    #@6b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    .line 2425
    const-string/jumbo v5, "\n  Conn: "

    #@79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections(I)Ljava/util/List;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    .line 2427
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    #@87
    move-result-object v1

    #@88
    .line 2428
    if-eqz v1, :cond_2

    #@8a
    .line 2429
    const-string/jumbo v5, "\n- Ringing: "

    #@8d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    .line 2430
    const-string/jumbo v5, " from "

    #@9b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    .line 2412
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a8
    goto/16 :goto_0

    #@aa
    .line 2434
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    #@ad
    move-result-object v5

    #@ae
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v4

    #@b2
    .local v4, "phone$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v5

    #@b6
    if-eqz v5, :cond_7

    #@b8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v3

    #@bc
    check-cast v3, Lcom/android/internal/telephony/Phone;

    #@be
    .line 2435
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_4

    #@c0
    .line 2436
    const-string/jumbo v5, "\nPhone: "

    #@c3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    const-string/jumbo v6, ", name = "

    #@ce
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@d5
    move-result-object v6

    #@d6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    .line 2437
    const-string/jumbo v6, ", state = "

    #@dd
    .line 2436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v5

    #@e1
    .line 2437
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@e4
    move-result-object v6

    #@e5
    .line 2436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    .line 2438
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@eb
    move-result-object v1

    #@ec
    .line 2439
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_5

    #@ee
    .line 2440
    const-string/jumbo v5, "\n- Foreground: "

    #@f1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v5

    #@f5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    .line 2442
    :cond_5
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@fb
    move-result-object v1

    #@fc
    .line 2443
    if-eqz v1, :cond_6

    #@fe
    .line 2444
    const-string/jumbo v5, " Background: "

    #@101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v5

    #@105
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@108
    .line 2446
    :cond_6
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@10b
    move-result-object v1

    #@10c
    .line 2447
    if-eqz v1, :cond_4

    #@10e
    .line 2448
    const-string/jumbo v5, " Ringing: "

    #@111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v5

    #@115
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    goto :goto_1

    #@119
    .line 2452
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_7
    const-string/jumbo v5, "\n}"

    #@11c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    .line 2453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    return-object v5
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1656
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1723
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1357
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1704
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1558
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1637
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1617
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1440
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1540
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1520
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1419
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1482
    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1781
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1378
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1497
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1461
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1575
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1681
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1741
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1597
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1804
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1393
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 434
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 436
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 439
    const-string/jumbo v2, "CallManager"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "unregisterPhone("

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 440
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 440
    const-string/jumbo v4, " "

    #@29
    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 440
    const-string/jumbo v4, ")"

    #@34
    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 443
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@42
    move-result-object v1

    #@43
    .line 444
    .local v1, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    #@45
    .line 445
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    #@48
    .line 448
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4d
    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    #@4f
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@56
    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    #@58
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5f
    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    #@61
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@68
    .line 452
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    #@6b
    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@6d
    if-ne v0, v2, :cond_1

    #@6f
    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_2

    #@77
    .line 455
    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@79
    .line 433
    .end local v1    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_0
    return-void

    #@7a
    .line 457
    .restart local v1    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    #@7c
    const/4 v3, 0x0

    #@7d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object v2

    #@81
    check-cast v2, Lcom/android/internal/telephony/Phone;

    #@83
    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@85
    goto :goto_0
.end method
