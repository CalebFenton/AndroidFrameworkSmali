.class abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# static fields
.field private static synthetic -com_android_internal_telephony_Call$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipConnBase"

.field private static final VDBG:Z


# instance fields
.field private mCause:I

.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectTime:J

.field private mDuration:J

.field private mHoldingStartTime:J

.field private mNextPostDialChar:I

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_Call$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x5

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x2

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x6

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x3

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@3
    .line 51
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    #@7
    .line 55
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    #@a
    .line 56
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@e
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "SipConnectionBase: ctor dialString="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@25
    .line 60
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    #@2b
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2e
    move-result-wide v0

    #@2f
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    #@31
    .line 58
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "SipConnBase"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 184
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    #@0
    .prologue
    .line 166
    const-string/jumbo v0, "cancelPostDial: ignore"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@6
    .line 165
    return-void
.end method

.method public getConnectTime()J
    .locals 2

    #@0
    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    #@2
    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    #@0
    .prologue
    .line 214
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    #@2
    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    #@2
    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    #@2
    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 108
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    #@4
    cmp-long v2, v2, v4

    #@6
    if-nez v2, :cond_0

    #@8
    .line 109
    const-wide/16 v0, 0x0

    #@a
    .line 116
    .local v0, "dur":J
    :goto_0
    return-wide v0

    #@b
    .line 110
    .end local v0    # "dur":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    #@d
    cmp-long v2, v2, v4

    #@f
    if-gez v2, :cond_1

    #@11
    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v2

    #@15
    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    #@17
    sub-long v0, v2, v4

    #@19
    .restart local v0    # "dur":J
    goto :goto_0

    #@1a
    .line 113
    .end local v0    # "dur":J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    #@1c
    .restart local v0    # "dur":J
    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 6

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 124
    const-wide/16 v0, 0x0

    #@a
    .line 129
    .local v0, "dur":J
    :goto_0
    return-wide v0

    #@b
    .line 126
    .end local v0    # "dur":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v2

    #@f
    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    #@11
    sub-long v0, v2, v4

    #@13
    .restart local v0    # "dur":J
    goto :goto_0
.end method

.method public getHoldingStartTime()J
    .locals 2

    #@0
    .prologue
    .line 209
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    #@2
    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 192
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 204
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 177
    :cond_0
    const-string/jumbo v0, "getRemaingPostDialString: ret empty string"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@12
    .line 178
    const-string/jumbo v0, ""

    #@15
    return-object v0

    #@16
    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    #@1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1f
    move-result v0

    #@20
    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    #@22
    if-le v0, v1, :cond_0

    #@24
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    #@26
    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 1

    #@0
    .prologue
    .line 156
    const-string/jumbo v0, "proceedAfterWaitChar: ignore"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@6
    .line 155
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    const-string/jumbo v0, "proceedAfterWildChar: ignore"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@6
    .line 160
    return-void
.end method

.method setDisconnectCause(I)V
    .locals 2
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setDisconnectCause: prev="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " new="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@24
    .line 140
    iput p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    #@26
    .line 138
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setState: state="

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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    #@17
    .line 67
    invoke-static {}, Lcom/android/internal/telephony/sip/SipConnectionBase;->-getcom_android_internal_telephony_Call$StateSwitchesValues()[I

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@1e
    move-result v1

    #@1f
    aget v0, v0, v1

    #@21
    packed-switch v0, :pswitch_data_0

    #@24
    .line 65
    :cond_0
    :goto_0
    return-void

    #@25
    .line 69
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    #@27
    const-wide/16 v2, 0x0

    #@29
    cmp-long v0, v0, v2

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    #@33
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    #@39
    goto :goto_0

    #@3a
    .line 75
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    #@3d
    move-result-wide v0

    #@3e
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    #@40
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    #@46
    goto :goto_0

    #@47
    .line 79
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4a
    move-result-wide v0

    #@4b
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    #@4d
    goto :goto_0

    #@4e
    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
