.class public Lcom/android/internal/telephony/metrics/SmsStats;
.super Ljava/lang/Object;
.source "SmsStats.java"


# static fields
.field private static final blacklist RANDOM:Ljava/util/Random;

.field private static final blacklist TAG:Ljava/lang/String; = "SmsStats"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist getCarrierId()I
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 410
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 413
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0
.end method

.method private blacklist getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 7

    .line 225
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    .line 226
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 227
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(IZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 228
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 p1, 0x0

    .line 229
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    const/4 p2, 0x1

    .line 230
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 231
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 232
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 233
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    .line 241
    sget-object p1, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 242
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    .line 243
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isManagedProfile()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->isNonTerrestrialNetwork()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 245
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    .line 246
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    return-object v0
.end method

.method private static blacklist getIncomingSmsError(I)I
    .registers 4

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v2, 0x4

    if-eq p0, v2, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getIncomingSmsError(Z)I
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getIsRoaming()Z
    .registers 1

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 405
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method private blacklist getOutgoingDefaultProto(ZZJZJZZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 14

    .line 254
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    .line 255
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 256
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 257
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    const/4 p1, 0x1

    .line 258
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1f

    move p2, v1

    goto :goto_20

    :cond_1f
    const/4 p2, -0x1

    .line 259
    :goto_20
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 261
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 263
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-eqz p2, :cond_4d

    goto :goto_53

    .line 267
    :cond_4d
    sget-object p2, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    :goto_53
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 270
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 271
    iput-wide p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    .line 272
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    .line 273
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isManagedProfile()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    .line 274
    iput-boolean p8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->isNonTerrestrialNetwork()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    .line 276
    iput-boolean p9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    return-object v0
.end method

.method private blacklist getPhoneId()I
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 367
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 370
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method private blacklist getRat(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    move v1, v0

    .line 387
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p0

    return p0
.end method

.method private blacklist getRat(Z)I
    .registers 3

    if-eqz p1, :cond_e

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    const/16 p0, 0x12

    return p0

    .line 398
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 400
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 379
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getSmsFormat(Z)I
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)I
    .registers 18

    move-object/from16 v0, p0

    .line 359
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 361
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 362
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static blacklist getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)I
    .registers 18

    move-object/from16 v0, p0

    .line 349
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 350
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 349
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private blacklist getSmsTech(IZ)I
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    move v1, v0

    .line 293
    :cond_9
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p0

    return p0
.end method

.method private blacklist getSmsTech(ZZ)I
    .registers 3

    .line 0
    if-eqz p1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz p2, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNonTerrestrialNetwork()Z
    .registers 2

    .line 417
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 419
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0

    .line 421
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/metrics/SmsStats;->TAG:Ljava/lang/String;

    const-string v0, "isNonTerrestrialNetwork(), ServiceState is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist onDroppedIncomingMultipartSms(ZIIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, p4}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 97
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 98
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 p4, 0x1

    .line 99
    iput p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 100
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 101
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsError(ZIIZ)V
    .registers 5

    .line 143
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 144
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsPP(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, p1, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 v0, 0x1

    .line 123
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 124
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(Z)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsSuccess(ZIIZJZ)V
    .registers 8

    .line 132
    invoke-direct {p0, p1, p2, p7}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 133
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 134
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 135
    iput-boolean p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 136
    iput-wide p5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsTypeZero(I)V
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0, p1, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 v0, 0x3

    .line 116
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsVoicemail(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p2, 0x2

    .line 109
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsWapPush(IIIJZ)V
    .registers 8

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0, p1, p6}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p6, 0x4

    .line 152
    iput p6, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 153
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 154
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 155
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 156
    iput-wide p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onOutgoingShortCodeSms(II)V
    .registers 4

    .line 215
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;-><init>()V

    .line 216
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    .line 217
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    const/4 p1, 0x1

    .line 218
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addOutgoingShortCodeSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIIJZJZZ)V
    .registers 25

    move/from16 v0, p4

    move/from16 v1, p5

    move-object v2, p0

    move v4, p1

    move v3, p2

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move/from16 v11, p12

    .line 174
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/metrics/SmsStats;->getOutgoingDefaultProto(ZZJZJZZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object v5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v6, 0x65

    if-eqz p1, :cond_2d

    .line 182
    iput v0, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz p3, :cond_23

    const/4 p1, 0x4

    .line 184
    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_48

    :cond_23
    if-ne v0, v6, :cond_28

    .line 186
    iput v4, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_48

    :cond_28
    if-eqz v0, :cond_48

    .line 188
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_48

    :cond_2d
    if-ne v0, v6, :cond_32

    .line 193
    iput v4, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_36

    :cond_32
    if-eqz v0, :cond_36

    .line 195
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 197
    :cond_36
    :goto_36
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    const/16 p1, 0x64

    if-ne v0, p1, :cond_48

    const/4 p1, -0x1

    if-ne v1, p1, :cond_48

    if-eqz p2, :cond_44

    const/16 p1, 0x42

    goto :goto_46

    :cond_44
    const/16 p1, 0x14b

    .line 200
    :goto_46
    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 204
    :cond_48
    :goto_48
    iput v0, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    .line 205
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onOutgoingSms(I)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIJZJZZ)V
    .registers 25

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    .line 164
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZ)V

    return-void
.end method
