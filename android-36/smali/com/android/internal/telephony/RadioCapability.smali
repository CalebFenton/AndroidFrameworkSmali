.class public Lcom/android/internal/telephony/RadioCapability;
.super Ljava/lang/Object;
.source "RadioCapability.java"


# static fields
.field public static final blacklist RC_PHASE_APPLY:I = 0x2

.field public static final blacklist RC_PHASE_CONFIGURED:I = 0x0

.field public static final blacklist RC_PHASE_FINISH:I = 0x4

.field public static final blacklist RC_PHASE_START:I = 0x1

.field public static final blacklist RC_PHASE_UNSOL_RSP:I = 0x3

.field public static final blacklist RC_STATUS_FAIL:I = 0x2

.field public static final blacklist RC_STATUS_NONE:I = 0x0

.field public static final blacklist RC_STATUS_SUCCESS:I = 0x1


# instance fields
.field private blacklist mLogicalModemUuid:Ljava/lang/String;

.field private blacklist mPhase:I

.field private blacklist mPhoneId:I

.field private blacklist mRadioAccessFamily:I

.field private blacklist mSession:I

.field private blacklist mStatus:I


# direct methods
.method public constructor blacklist <init>(IIIILjava/lang/String;I)V
    .registers 7

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    .line 137
    iput p3, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    .line 138
    iput p4, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    .line 139
    iput-object p5, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    .line 140
    iput p6, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    return-void
.end method


# virtual methods
.method public blacklist getLogicalModemUuid()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPhase()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    return p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    return p0
.end method

.method public greylist-max-r getRadioAccessFamily()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    return p0
.end method

.method public blacklist getSession()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    return p0
.end method

.method public blacklist getStatus()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    return p0
.end method

.method public blacklist getVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRadioAccessFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLogicModemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
