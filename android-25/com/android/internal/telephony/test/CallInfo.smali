.class Lcom/android/internal/telephony/test/CallInfo;
.super Ljava/lang/Object;
.source "SimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/CallInfo$State;
    }
.end annotation


# instance fields
.field mIsMT:Z

.field mIsMpty:Z

.field mNumber:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/test/CallInfo$State;

.field mTOA:I


# direct methods
.method constructor <init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V
    .locals 2
    .param p1, "isMT"    # Z
    .param p2, "state"    # Lcom/android/internal/telephony/test/CallInfo$State;
    .param p3, "isMpty"    # Z
    .param p4, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    #@6
    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@8
    .line 54
    iput-boolean p3, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@a
    .line 55
    iput-object p4, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    #@c
    .line 57
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    if-lez v0, :cond_0

    #@12
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    const/16 v1, 0x2b

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 58
    const/16 v0, 0x91

    #@1c
    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    #@1e
    .line 51
    :goto_0
    return-void

    #@1f
    .line 60
    :cond_0
    const/16 v0, 0x81

    #@21
    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    #@23
    goto :goto_0
.end method

.method static createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    #@2
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    invoke-direct {v0, v2, v1, v3, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    #@9
    return-object v0
.end method

.method static createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 66
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    #@3
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@5
    invoke-direct {v0, v2, v1, v2, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    #@8
    return-object v0
.end method


# virtual methods
.method isActiveOrHeld()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@9
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isConnecting()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@9
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isRinging()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@9
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method toCLCCLine(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "+CLCC: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 78
    const-string/jumbo v1, ","

    #@13
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    const-string/jumbo v0, "1"

    #@1e
    .line 77
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 78
    const-string/jumbo v1, ","

    #@25
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    #@2e
    move-result v1

    #@2f
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 79
    const-string/jumbo v1, ",0,"

    #@36
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@3c
    if-eqz v0, :cond_1

    #@3e
    const-string/jumbo v0, "1"

    #@41
    .line 77
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 80
    const-string/jumbo v1, ",\""

    #@48
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    #@4e
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 80
    const-string/jumbo v1, "\","

    #@55
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 80
    iget v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    #@5b
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    .line 76
    return-object v0

    #@64
    .line 78
    :cond_0
    const-string/jumbo v0, "0"

    #@67
    goto :goto_0

    #@68
    .line 79
    :cond_1
    const-string/jumbo v0, "0"

    #@6b
    goto :goto_1
.end method

.method toDriverCall(I)Lcom/android/internal/telephony/DriverCall;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 87
    new-instance v1, Lcom/android/internal/telephony/DriverCall;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    #@5
    .line 89
    .local v1, "ret":Lcom/android/internal/telephony/DriverCall;
    iput p1, v1, Lcom/android/internal/telephony/DriverCall;->index:I

    #@7
    .line 90
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    #@9
    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@b
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    #@10
    move-result v2

    #@11
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    #@14
    move-result-object v2

    #@15
    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 98
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@19
    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    #@1b
    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    #@1d
    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@1f
    .line 100
    iget v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    #@21
    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@23
    .line 101
    const/4 v2, 0x1

    #@24
    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    #@26
    .line 102
    const/4 v2, 0x0

    #@27
    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->als:I

    #@29
    .line 104
    return-object v1

    #@2a
    .line 94
    :catch_0
    move-exception v0

    #@2b
    .line 95
    .local v0, "ex":Lcom/android/internal/telephony/ATParseEx;
    new-instance v2, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v3, "should never happen"

    #@30
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v2
.end method
