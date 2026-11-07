.class public Lcom/android/internal/telephony/SrvccConnection;
.super Ljava/lang/Object;
.source "SrvccConnection.java"


# static fields
.field public static final blacklist CALL_TYPE_EMERGENCY:I = 0x1

.field public static final blacklist CALL_TYPE_NORMAL:I = 0x0

.field public static final blacklist SUBSTATE_NONE:I = 0x0

.field public static final blacklist SUBSTATE_PREALERTING:I = 0x1

.field public static final blacklist TONE_LOCAL:I = 0x1

.field public static final blacklist TONE_NETWORK:I = 0x2

.field public static final blacklist TONE_NONE:I


# instance fields
.field private blacklist mIsMT:Z

.field private blacklist mIsMpty:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mNamePresentation:I

.field private blacklist mNumPresentation:I

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mRingbackToneType:I

.field private blacklist mState:Lcom/android/internal/telephony/Call$State;

.field private blacklist mSubstate:I

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .registers 7

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mType:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mSubstate:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mRingbackToneType:I

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMpty:Z

    .line 86
    invoke-static {p3}, Lcom/android/internal/telephony/SrvccConnection;->toCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 87
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_22

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SrvccConnection;->isLocalTone(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    const/4 v0, 0x2

    :goto_20
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mRingbackToneType:I

    :cond_22
    const/16 v0, 0x9

    if-ne p3, v0, :cond_28

    .line 91
    iput v2, p0, Lcom/android/internal/telephony/SrvccConnection;->mSubstate:I

    :cond_28
    if-nez p2, :cond_2e

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SrvccConnection;->initialize(Landroid/telephony/ims/ImsCallProfile;)V

    return-void

    .line 97
    :cond_2e
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SrvccConnection;->initialize(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/ConferenceParticipant;I)V
    .registers 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mType:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mSubstate:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mRingbackToneType:I

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMpty:Z

    .line 102
    const-string v1, "SrvccConnection"

    const-string v2, "initialize with ConferenceParticipant"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p2}, Lcom/android/internal/telephony/SrvccConnection;->toCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SrvccConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 104
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getCallDirection()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_21

    move v0, v1

    :cond_21
    iput-boolean v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMT:Z

    .line 105
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SrvccConnection;->getParticipantAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumber:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantPresentation()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumPresentation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    .line 108
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumber:Ljava/lang/String;

    .line 110
    :cond_3a
    invoke-virtual {p1}, Lcom/android/ims/internal/ConferenceParticipant;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SrvccConnection;->mName:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 112
    iput v1, p0, Lcom/android/internal/telephony/SrvccConnection;->mNamePresentation:I

    goto :goto_4c

    :cond_49
    const/4 p1, 0x3

    .line 114
    iput p1, p0, Lcom/android/internal/telephony/SrvccConnection;->mNamePresentation:I

    .line 116
    :goto_4c
    iput-boolean v1, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMpty:Z

    return-void
.end method

.method private static blacklist getParticipantAddress(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 124
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    .line 129
    :cond_f
    const-string v1, "[@;:]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 130
    array-length v1, p0

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    const/4 v0, 0x0

    .line 132
    aget-object p0, p0, v0

    return-object p0
.end method

.method private blacklist initialize(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 137
    const-string v0, "SrvccConnection"

    const-string v1, "initialize with ImsCallProfile"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMT:Z

    .line 139
    const-string v0, "oi"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumber:Ljava/lang/String;

    .line 140
    const-string v0, "cna"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mName:Ljava/lang/String;

    .line 141
    const-string v0, "oir"

    .line 142
    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumPresentation:I

    .line 143
    const-string v0, "cnap"

    .line 144
    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    .line 143
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SrvccConnection;->mNamePresentation:I

    return-void
.end method

.method private blacklist initialize(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 4

    .line 148
    const-string v0, "SrvccConnection"

    const-string v1, "initialize with ImsPhoneConnection"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mType:I

    .line 152
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMT:Z

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumber:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumPresentation:I

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SrvccConnection;->mName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SrvccConnection;->mNamePresentation:I

    return-void
.end method

.method private blacklist isLocalTone(Landroid/telephony/ims/ImsCallProfile;)Z
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 162
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    if-nez p1, :cond_b

    return p0

    .line 166
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result p1

    if-nez p1, :cond_12

    const/4 p0, 0x1

    :cond_12
    return p0
.end method

.method private static blacklist toCallState(I)Lcom/android/internal/telephony/Call$State;
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1c

    packed-switch p0, :pswitch_data_20

    .line 182
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 178
    :pswitch_a
    sget-object p0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 177
    :pswitch_d
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 176
    :pswitch_10
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 175
    :pswitch_13
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 174
    :pswitch_16
    sget-object p0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 173
    :pswitch_19
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 179
    :cond_1c
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNamePresentation()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNamePresentation:I

    return p0
.end method

.method public blacklist getNumber()Ljava/lang/String;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNumberPresentation()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mNumPresentation:I

    return p0
.end method

.method public blacklist getRingbackToneType()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mRingbackToneType:I

    return p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public blacklist getSubState()I
    .registers 1

    .line 202
    iget p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mSubstate:I

    return p0
.end method

.method public blacklist getType()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mType:I

    return p0
.end method

.method public blacklist isIncoming()Z
    .registers 1

    .line 217
    iget-boolean p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMT:Z

    return p0
.end method

.method public blacklist isMultiParty()Z
    .registers 1

    .line 212
    iget-boolean p0, p0, Lcom/android/internal/telephony/SrvccConnection;->mIsMpty:Z

    return p0
.end method

.method public blacklist setState(Lcom/android/internal/telephony/Call$State;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/SrvccConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", subState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getSubState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", toneType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getRingbackToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", mpty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->isMultiParty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, ", incoming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->isIncoming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", numberPresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getNumberPresentation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, ", number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SrvccConnection"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", namePresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getNamePresentation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ", name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SrvccConnection;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
