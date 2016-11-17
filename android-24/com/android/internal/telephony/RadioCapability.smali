.class public Lcom/android/internal/telephony/RadioCapability;
.super Ljava/lang/Object;
.source "RadioCapability.java"


# static fields
.field private static final RADIO_CAPABILITY_VERSION:I = 0x1

.field public static final RC_PHASE_APPLY:I = 0x2

.field public static final RC_PHASE_CONFIGURED:I = 0x0

.field public static final RC_PHASE_FINISH:I = 0x4

.field public static final RC_PHASE_START:I = 0x1

.field public static final RC_PHASE_UNSOL_RSP:I = 0x3

.field public static final RC_STATUS_FAIL:I = 0x2

.field public static final RC_STATUS_NONE:I = 0x0

.field public static final RC_STATUS_SUCCESS:I = 0x1


# instance fields
.field private mLogicalModemUuid:Ljava/lang/String;

.field private mPhase:I

.field private mPhoneId:I

.field private mRadioAccessFamily:I

.field private mSession:I

.field private mStatus:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # I
    .param p3, "phase"    # I
    .param p4, "radioAccessFamily"    # I
    .param p5, "logicalModemUuid"    # Ljava/lang/String;
    .param p6, "status"    # I

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 129
    iput p1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    #@5
    .line 130
    iput p2, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    #@7
    .line 131
    iput p3, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    #@9
    .line 132
    iput p4, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    #@b
    .line 133
    iput-object p5, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    #@d
    .line 134
    iput p6, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    #@f
    .line 128
    return-void
.end method


# virtual methods
.method public getLogicalModemUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhase()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    #@2
    return v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    #@2
    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    #@2
    return v0
.end method

.method public getSession()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    #@2
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 198
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    #@2
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 152
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{mPhoneId = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 204
    const-string/jumbo v1, " mVersion="

    #@15
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    #@1c
    move-result v1

    #@1d
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 205
    const-string/jumbo v1, " mSession="

    #@24
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@2b
    move-result v1

    #@2c
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 206
    const-string/jumbo v1, " mPhase="

    #@33
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    #@3a
    move-result v1

    #@3b
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 207
    const-string/jumbo v1, " mRadioAccessFamily="

    #@42
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    #@49
    move-result v1

    #@4a
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 208
    const-string/jumbo v1, " mLogicModemId="

    #@51
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 209
    const-string/jumbo v1, " mStatus="

    #@60
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    #@67
    move-result v1

    #@68
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 210
    const-string/jumbo v1, "}"

    #@6f
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    return-object v0
.end method
