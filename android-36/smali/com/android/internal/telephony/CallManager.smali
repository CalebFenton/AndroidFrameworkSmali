.class public Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    }
.end annotation


# static fields
.field static final blacklist EVENT_CALL_WAITING:I = 0x6c

.field static final blacklist EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field static final blacklist EVENT_RINGBACK_TONE:I = 0x69

.field private static final blacklist INSTANCE:Lcom/android/internal/telephony/CallManager;


# instance fields
.field private final greylist-max-r mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final blacklist mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final greylist-max-r mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-r mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/CallManager$CallManagerHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final greylist-max-r mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mRegistrantidentifier:Ljava/lang/Object;

.field protected final blacklist mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final greylist-max-r mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSpeedUpAudioForMtCall:Z

.field protected final blacklist mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

.field protected final blacklist mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTelecomFeatureFlags(Lcom/android/internal/telephony/CallManager;)Lcom/android/server/telecom/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMoreThanOneRingingCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 166
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 172
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 184
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 190
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 202
    new-instance v0, Lcom/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    return-void
.end method

.method private greylist-max-r canDial(Lcom/android/internal/telephony/Phone;)Z
    .registers 6

    .line 876
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 877
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 878
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2b

    if-nez v1, :cond_2b

    .line 881
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq p0, p1, :cond_29

    sget-object p1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p0, p1, :cond_29

    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p0, p1, :cond_29

    sget-object p1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, p1, :cond_2b

    :cond_29
    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    if-nez p1, :cond_54

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDial serviceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hasRingingCall="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " fgCallState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return p1
.end method

.method private greylist-max-r getContext()Landroid/content/Context;
    .registers 1

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 536
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 1965
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :cond_5
    if-ge v0, p0, :cond_16

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 1966
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_5

    return-object v1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 1977
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :cond_5
    if-ge v0, p0, :cond_20

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 1978
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v2, p2, :cond_5

    return-object v1

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 1989
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :cond_5
    if-ge v0, p0, :cond_16

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 1990
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_5

    return-object v1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 2002
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :cond_5
    if-ge v0, p0, :cond_20

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 2003
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1f

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v2, p3, :cond_5

    :cond_1f
    return-object v1

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 1752
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    .line 1755
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_5

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_5

    :cond_24
    return-object p1
.end method

.method private blacklist getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .line 1766
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1767
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v1, p2, :cond_5

    .line 1768
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_22

    return-object v0

    .line 1770
    :cond_22
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_5

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_5

    :cond_2e
    return-object p1
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/CallManager;
    .registers 1

    .line 211
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 7

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_7
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 221
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 222
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7

    return-object v2

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist hasMoreThanOneHoldingCall(I)Z
    .registers 9

    .line 2046
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_9
    if-ge v3, v0, :cond_2b

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 2047
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    if-ne v4, p1, :cond_9

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    return v4

    :cond_2b
    return v1
.end method

.method private greylist-max-r hasMoreThanOneRingingCall()Z
    .registers 6

    .line 2013
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_9
    if-ge v3, v0, :cond_23

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 2014
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    return v4

    :cond_23
    return v1
.end method

.method private greylist-max-r hasMoreThanOneRingingCall(I)Z
    .registers 8

    .line 2030
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_9
    if-ge v3, v0, :cond_2d

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 2031
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    if-ne v4, p1, :cond_9

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    return v4

    :cond_2d
    return v1
.end method

.method private blacklist registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    if-eqz v0, :cond_12

    .line 551
    const-string p0, "CallManager"

    const-string p1, "This phone has already been registered."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 556
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager-IA;)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x65

    .line 562
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x64

    .line 564
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x66

    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x67

    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x68

    .line 570
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x69

    .line 572
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6a

    .line 574
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6b

    .line 576
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6d

    .line 578
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x6e

    .line 580
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x70

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x71

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x72

    .line 586
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    const/16 v3, 0x75

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x76

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, p0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x77

    .line 597
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x6f

    .line 600
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x74

    .line 601
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x6c

    .line 602
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x73

    .line 603
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x78

    .line 606
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 607
    invoke-virtual {p1, v0, v3, v1}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p0, 0x7a

    .line 608
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/telephony/Phone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    if-nez v0, :cond_12

    .line 615
    const-string p0, "CallManager"

    const-string p1, "Could not find Phone handler for unregistration"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 618
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 622
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 623
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 624
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 625
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 626
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 627
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 628
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 629
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 630
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 631
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 632
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 633
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 634
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 635
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 636
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    const/16 p0, 0x77

    const/4 v1, 0x0

    .line 641
    invoke-virtual {p1, v1, p0, v1}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 645
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 646
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 647
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 650
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    .line 651
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist canConference(Lcom/android/internal/telephony/Call;)Z
    .registers 4

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    if-eqz p1, :cond_17

    .line 692
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 695
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist canConference(Lcom/android/internal/telephony/Call;I)Z
    .registers 5

    .line 710
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 711
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    if-eqz p1, :cond_17

    .line 715
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 718
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist canTransfer(Lcom/android/internal/telephony/Call;)Z
    .registers 4

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    if-eqz p1, :cond_17

    .line 913
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_17
    if-ne v1, p0, :cond_21

    .line 916
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->canTransfer()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canTransfer(Lcom/android/internal/telephony/Call;I)Z
    .registers 5

    .line 928
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 929
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    if-eqz p1, :cond_17

    .line 933
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_17
    if-ne v1, p0, :cond_21

    .line 936
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->canTransfer()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearDisconnected()V
    .registers 4

    .line 848
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 849
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->clearDisconnected()V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public blacklist clearDisconnected(I)V
    .registers 6

    .line 858
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 859
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 860
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->clearDisconnected()V

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public greylist-max-r conference(Lcom/android/internal/telephony/Call;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 732
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 742
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->conference()V

    return-void

    .line 744
    :cond_18
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Can\'t conference foreground and selected background call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_20
    const-string p0, "CallManager"

    const-string p1, "conference: fgPhone=null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 769
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 778
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 784
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 785
    invoke-interface {p1, p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 788
    :cond_16
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot dial in current state"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 794
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasBgCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " sameChannel:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p1, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eq v1, p1, :cond_7a

    if-eqz v3, :cond_63

    if-eq v3, v1, :cond_7a

    :cond_63
    if-nez v2, :cond_72

    .line 806
    const-string v1, "Hangup"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_7a

    .line 809
    :cond_72
    const-string p0, "Switch"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->switchHoldingAndActive()V

    .line 815
    :cond_7a
    :goto_7a
    new-instance p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 816
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    .line 815
    invoke-interface {p1, p2, p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 838
    new-instance p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 840
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    .line 841
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    .line 838
    invoke-interface {p1, p2, p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 958
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->explicitCallTransfer()V

    :cond_d
    return-void
.end method

.method public blacklist getActiveFgCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1729
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1731
    :cond_e
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public greylist getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .registers 3

    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 1743
    :cond_10
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    :cond_15
    return-object v0
.end method

.method public blacklist getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 1872
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1875
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0

    .line 1878
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public greylist getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .registers 2

    .line 1883
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1886
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0

    .line 1889
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public greylist-max-r getBackgroundCalls()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .line 1660
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getBgCallConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1923
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1925
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 1927
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist-max-r getBgPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public greylist-max-r getFgCallConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1898
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1900
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 1902
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getFgCallConnections(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1910
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1912
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 1914
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist-max-r getFgPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public greylist getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1795
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1797
    :cond_e
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public greylist getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .registers 4

    .line 1817
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1818
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneHoldingCall(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1819
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    .line 1821
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_1f

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 1825
    :cond_1b
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public greylist getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1848
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1850
    :cond_e
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public greylist getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .registers 4

    .line 1857
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_14

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 1862
    :cond_10
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method public blacklist getForegroundCalls()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .line 1652
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMute()Z
    .registers 2

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1031
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getMute()Z

    move-result p0

    return p0

    .line 1032
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getMute()Z

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 978
    const-string p0, "CallManager"

    const-string p1, "getPendingMmiCodes not implemented"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_13

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0

    .line 345
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_26

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0

    .line 349
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegistrantIdentifier()Ljava/lang/Object;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRegistrantidentifier:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist-max-r getRingingCalls()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .line 1645
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getRingingPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceState()I
    .registers 3

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 286
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_6

    return v0

    :cond_1e
    return v1
.end method

.method public blacklist getServiceState(I)I
    .registers 4

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 315
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_6

    return v0

    :cond_24
    return v1
.end method

.method public greylist getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 7

    .line 238
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_9
    :goto_9
    if-ge v2, v1, :cond_2b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 241
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1d

    move-object v0, v5

    goto :goto_9

    .line 243
    :cond_1d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_9

    .line 244
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_9

    move-object v0, v4

    goto :goto_9

    :cond_2b
    return-object v0
.end method

.method public greylist getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 8

    .line 258
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_9
    :goto_9
    if-ge v2, v1, :cond_31

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 261
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    if-ne v4, p1, :cond_9

    .line 262
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_23

    move-object v0, v5

    goto :goto_9

    .line 264
    :cond_23
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_9

    .line 265
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_9

    move-object v0, v4

    goto :goto_9

    :cond_31
    return-object v0
.end method

.method public greylist-max-r hasActiveBgCall()Z
    .registers 2

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist hasActiveBgCall(I)Z
    .registers 3

    .line 1696
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r hasActiveFgCall()Z
    .registers 2

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist hasActiveFgCall(I)Z
    .registers 3

    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasActiveRingingCall()Z
    .registers 2

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist hasActiveRingingCall(I)Z
    .registers 3

    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasDisconnectedBgCall()Z
    .registers 3

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasDisconnectedBgCall(I)Z
    .registers 4

    .line 1956
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasDisconnectedFgCall()Z
    .registers 3

    .line 1934
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasDisconnectedFgCall(I)Z
    .registers 4

    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1472
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1539
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist-max-r registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1167
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1518
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1374
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1452
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1432
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1254
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1355
    const-string v0, "CallManager"

    const-string v1, "registerForMmiComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1335
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist-max-r registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1232
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1297
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1601
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist-max-r registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1190
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1313
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1276
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1391
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1495
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1557
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1411
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1618
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1207
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist-max-r registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .registers 4

    if-eqz p1, :cond_60

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPhone("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 371
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    const/4 p0, 0x1

    return p0

    :cond_60
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist rejectCall(Lcom/android/internal/telephony/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 668
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 670
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->rejectCall()V

    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .registers 6

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist sendDtmf(C)Z
    .registers 3

    .line 1073
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->sendDtmf(C)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .registers 3

    .line 991
    const-string p0, "CallManager"

    const-string p1, "sendUssdResponse not implemented"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setEchoSuppressionEnabled()V
    .registers 2

    .line 1047
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    :cond_11
    return-void
.end method

.method public blacklist setMute(Z)V
    .registers 3

    .line 1010
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1011
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setMute(Z)V

    :cond_11
    return-void
.end method

.method public blacklist startDtmf(C)Z
    .registers 3

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->startDtmf(C)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist stopDtmf()V
    .registers 2

    .line 1125
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->stopDtmf()V

    :cond_d
    return-void
.end method

.method public blacklist unregisterForCallWaiting(Landroid/os/Handler;)V
    .registers 2

    .line 1480
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .registers 2

    .line 1547
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist-max-r unregisterForDisconnect(Landroid/os/Handler;)V
    .registers 2

    .line 1176
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 2

    .line 1528
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .registers 2

    .line 1382
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 2

    .line 1461
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 2

    .line 1441
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForIncomingRing(Landroid/os/Handler;)V
    .registers 2

    .line 1263
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForMmiComplete(Landroid/os/Handler;)V
    .registers 2

    .line 1364
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForMmiInitiate(Landroid/os/Handler;)V
    .registers 2

    .line 1343
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist-max-r unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .registers 2

    .line 1242
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 2

    .line 1305
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .registers 2

    .line 1605
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist-max-r unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1199
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
    .registers 2

    .line 1320
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2

    .line 1284
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1399
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 2

    .line 1505
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .registers 2

    .line 1565
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .registers 2

    .line 1421
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .registers 2

    .line 1628
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForUnknownConnection(Landroid/os/Handler;)V
    .registers 2

    .line 1214
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist-max-r unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    if-eqz p1, :cond_78

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterPhone("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 399
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne p1, v0, :cond_78

    .line 405
    iget-object p1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6d

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-void

    .line 408
    :cond_6d
    iget-object p1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    :cond_78
    return-void
.end method
