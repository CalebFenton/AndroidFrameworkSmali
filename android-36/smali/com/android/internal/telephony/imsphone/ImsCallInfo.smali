.class public Lcom/android/internal/telephony/imsphone/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"


# instance fields
.field private blacklist mCallRadioTech:I

.field private blacklist mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private final blacklist mIndex:I

.field private blacklist mIsHeldByRemote:Z

.field private blacklist mShouldIgnoreUpdate:Z

.field private blacklist mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 34
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mShouldIgnoreUpdate:Z

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    .line 40
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIndex:I

    return-void
.end method

.method private static blacklist getCallRadioTech(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .registers 1

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getCallRadioTech()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    return p0
.end method

.method public blacklist getCallState()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public blacklist getIndex()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIndex:I

    return p0
.end method

.method public blacklist init(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    .line 60
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallRadioTech(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isIncoming()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mShouldIgnoreUpdate:Z

    return-void
.end method

.method public blacklist isEmergencyCall()Z
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result p0

    return p0
.end method

.method public blacklist isHeldByRemote()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    return p0
.end method

.method public blacklist isIncoming()Z
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p0

    return p0
.end method

.method public blacklist onDisconnect()V
    .registers 2

    .line 111
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mConnection:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 46
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mShouldIgnoreUpdate:Z

    .line 49
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    return-void
.end method

.method public blacklist shouldIgnoreUpdate()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mShouldIgnoreUpdate:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    .line 152
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isIncoming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", heldByRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)Z
    .registers 9

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 76
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallRadioTech(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_15

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    if-eq v2, v1, :cond_13

    goto :goto_15

    :cond_13
    move v2, v3

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v4

    .line 79
    :goto_16
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mState:Lcom/android/internal/telephony/Call$State;

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mCallRadioTech:I

    if-eqz p2, :cond_24

    .line 82
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    if-nez p2, :cond_24

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    :goto_22
    move v2, v4

    goto :goto_2d

    :cond_24
    if-eqz p3, :cond_2d

    .line 85
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    if-eqz p2, :cond_2d

    .line 87
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mIsHeldByRemote:Z

    goto :goto_22

    .line 90
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->shouldIgnoreUpdate()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3a

    return v3

    .line 102
    :cond_3a
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->mShouldIgnoreUpdate:Z

    return v4

    :cond_3d
    return v2
.end method
