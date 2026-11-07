.class public Lcom/android/internal/telephony/metrics/ServiceStateStats;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "ServiceStateStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ServiceStateStats"


# instance fields
.field private blacklist mCurrentDataRat:I

.field private final blacklist mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

.field private blacklist mExistAnyConnectedInternetPdn:Z

.field private final blacklist mLastState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method public static synthetic blacklist $r8$lambda$2FfGbpmycSAbjm9lOowU6VIzEkI(JZLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 5

    .line 433
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_d

    .line 434
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2

    .line 436
    :cond_d
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 437
    iput-boolean p2, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 438
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2
.end method

.method public static synthetic blacklist $r8$lambda$2uF6qbq-jxSO_duJdOmtYaI2CbM(IJLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 4

    .line 172
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 173
    iput p0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 174
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$U1TDr_x3xGFEy_kQ0WlTesiws-w(Lcom/android/internal/telephony/metrics/ServiceStateStats;JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->lambda$onImsVoiceRegistrationChanged$1(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bUeuVpxFkTiBvGJZkFk0WSRO0OY(Lcom/android/internal/telephony/metrics/ServiceStateStats;JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->lambda$onVoiceServiceStateOverrideChanged$3(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qeXdWq0NdFhfdzjpUXakHQIVc8Y(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 4

    .line 82
    new-instance v0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 7

    .line 71
    new-instance v0, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getDeviceStateHelper()Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    return-void
.end method

.method private blacklist addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V
    .registers 5

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    return-void
.end method

.method private blacklist addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 8

    .line 208
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 212
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmTimestamp(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_24

    .line 213
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmTimestamp(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)J

    move-result-wide v1

    sub-long/2addr p2, v1

    iput-wide p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCellularServiceStateAndCellularDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    return-void

    .line 217
    :cond_24
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    const-string p1, "addServiceState: durationMillis<0"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 4

    .line 308
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    .line 309
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 310
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    .line 311
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 312
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 313
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 314
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 315
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 316
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    .line 317
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 319
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 320
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 321
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 322
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    .line 323
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    .line 324
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 325
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    return-object v0
.end method

.method static blacklist getBand(Landroid/telephony/ServiceState;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 264
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    const-string v1, "getBand: serviceState=null"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 267
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v1

    const/4 v2, 0x2

    .line 269
    invoke-static {p0, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v3

    if-nez v3, :cond_1a

    .line 271
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    :cond_1a
    const/4 p0, 0x1

    if-eq v3, p0, :cond_60

    if-eq v3, v2, :cond_60

    const/4 p0, 0x3

    if-eq v3, p0, :cond_5b

    const/16 p0, 0xd

    if-eq v3, p0, :cond_56

    const/16 p0, 0xf

    if-eq v3, p0, :cond_5b

    const/16 p0, 0x10

    if-eq v3, p0, :cond_60

    const/16 p0, 0x13

    if-eq v3, p0, :cond_56

    const/16 p0, 0x14

    if-eq v3, p0, :cond_51

    packed-switch v3, :pswitch_data_88

    .line 294
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBand: unknown WWAN RAT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_64

    .line 291
    :cond_51
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForNrarfcn(I)I

    move-result p0

    goto :goto_64

    .line 288
    :cond_56
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result p0

    goto :goto_64

    .line 284
    :cond_5b
    :pswitch_5b
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForUarfcn(I)I

    move-result p0

    goto :goto_64

    .line 277
    :cond_60
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForArfcn(I)I

    move-result p0

    :goto_64
    const/4 v2, -0x1

    if-ne p0, v2, :cond_86

    .line 299
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBand: band invalid for rat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_86
    return p0

    nop

    :pswitch_data_88
    .packed-switch 0x8
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method

.method static blacklist getBand(Lcom/android/internal/telephony/Phone;)I
    .registers 1

    .line 254
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Landroid/telephony/ServiceState;)I

    move-result p0

    return p0
.end method

.method private blacklist getDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 4

    if-eqz p1, :cond_31

    .line 225
    iget-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-ne p0, v0, :cond_31

    iget p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-ne p0, v0, :cond_31

    iget p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eq p0, v0, :cond_31

    .line 229
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    .line 230
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    .line 231
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    .line 232
    iget-boolean p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    .line 233
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    .line 234
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    const/4 p1, 0x1

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNetworkRoamingState(Landroid/telephony/ServiceState;I)I
    .registers 3

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 451
    :cond_9
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result p1

    .line 452
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_16

    if-nez p1, :cond_16

    return v0

    :cond_16
    return p1
.end method

.method public static blacklist getRat(Landroid/telephony/ServiceState;I)I
    .registers 3

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 398
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 399
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;
    .registers 1

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I
    .registers 3

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method public static blacklist getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_25

    if-eqz p0, :cond_25

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getImsVoiceRadioTech()I

    move-result p0

    if-eqz p0, :cond_25

    const/16 v3, 0x12

    if-eq p0, v3, :cond_24

    .line 370
    invoke-static {p1, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    return p0

    :cond_25
    if-ne p2, v1, :cond_28

    return v0

    .line 380
    :cond_28
    invoke-static {p1, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method private blacklist isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 386
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method private static blacklist isEmergencyOnly(Landroid/telephony/ServiceState;)Z
    .registers 3

    const/4 v0, 0x1

    .line 405
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 408
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isEndc(Landroid/telephony/ServiceState;)Z
    .registers 5

    const/4 v0, 0x2

    .line 412
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    return v3

    .line 415
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_16

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    return v3

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isInternetPdnUp(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getInternetDataNetworkState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method

.method private static blacklist isModemOff(Landroid/telephony/ServiceState;)Z
    .registers 2

    .line 337
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isNetworkRoaming(Landroid/telephony/ServiceState;)Z
    .registers 3

    const/4 v0, 0x1

    .line 472
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    .line 473
    invoke-static {p0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public static blacklist isNetworkRoaming(Landroid/telephony/ServiceState;I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 466
    invoke-virtual {p0, p1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 467
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method private synthetic blacklist lambda$onImsVoiceRegistrationChanged$1(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 6

    .line 92
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_d

    .line 93
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0

    .line 95
    :cond_d
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I

    move-result v0

    iput v0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    .line 99
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0
.end method

.method private synthetic blacklist lambda$onVoiceServiceStateOverrideChanged$3(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .registers 5

    .line 190
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_d

    .line 191
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0

    .line 193
    :cond_d
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    iput-boolean p0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 195
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0
.end method

.method private blacklist onInternetDataNetworkChanged(Z)V
    .registers 6

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;-><init>(JZ)V

    .line 431
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 440
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method private blacklist writeDataRatAtom(Landroid/telephony/ServiceState;)V
    .registers 13

    .line 478
    invoke-static {}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getActiveDataSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_e

    goto/16 :goto_8c

    :cond_e
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 481
    invoke-virtual {p1, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    if-nez v2, :cond_18

    goto/16 :goto_8c

    .line 487
    :cond_18
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    .line 488
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v3

    .line 489
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    .line 492
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_30
    move v0, v1

    goto/16 :goto_81

    :cond_33
    const/16 v4, 0xe

    const/4 v5, 0x3

    if-eq v2, v4, :cond_80

    const/16 v4, 0xf

    if-eq v2, v4, :cond_80

    if-eq v2, v5, :cond_80

    const/16 v4, 0x8

    if-eq v2, v4, :cond_80

    const/16 v6, 0x9

    if-eq v2, v6, :cond_80

    const/16 v7, 0xa

    if-eq v2, v7, :cond_80

    const/4 v7, 0x5

    if-eq v2, v7, :cond_80

    const/4 v8, 0x6

    if-eq v2, v8, :cond_80

    const/16 v9, 0xc

    if-ne v2, v9, :cond_55

    goto :goto_80

    :cond_55
    const/4 v9, 0x7

    if-eq v2, v9, :cond_81

    if-eq v2, v1, :cond_81

    if-eq v2, v0, :cond_81

    const/4 v1, 0x4

    if-eq v2, v1, :cond_81

    const/16 v10, 0x10

    if-ne v2, v10, :cond_64

    goto :goto_81

    :cond_64
    const/16 v10, 0x14

    if-ne v2, v10, :cond_6e

    if-eq v3, v1, :cond_6c

    move v0, v4

    goto :goto_81

    :cond_6c
    move v0, v6

    goto :goto_81

    :cond_6e
    const/16 v4, 0xd

    if-ne v2, v4, :cond_7e

    if-ne p1, v5, :cond_7a

    if-eq v3, v1, :cond_78

    move v0, v8

    goto :goto_81

    :cond_78
    move v0, v9

    goto :goto_81

    :cond_7a
    if-ne p1, v0, :cond_30

    move v0, v7

    goto :goto_81

    :cond_7e
    const/4 v0, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    move v0, v5

    .line 528
    :cond_81
    :goto_81
    iget p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    if-eq v0, p1, :cond_8c

    const/16 p1, 0x356

    .line 529
    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    .line 530
    iput v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    :cond_8c
    :goto_8c
    return-void
.end method


# virtual methods
.method public blacklist conclude()V
    .registers 5

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda4;-><init>(J)V

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 83
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method blacklist getCurrentDataRat()I
    .registers 1

    .line 535
    iget p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    return p0
.end method

.method protected blacklist getTimeMillis()J
    .registers 3

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mExistAnyConnectedInternetPdn:Z

    if-eq v0, p1, :cond_f

    .line 114
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mExistAnyConnectedInternetPdn:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onInternetDataNetworkChanged(Z)V

    :cond_f
    return-void
.end method

.method public blacklist onFoldStateChanged(I)V
    .registers 6

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 164
    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-ne v2, p1, :cond_17

    goto :goto_27

    .line 169
    :cond_17
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 170
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 176
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    :cond_27
    :goto_27
    return-void
.end method

.method public blacklist onImsVoiceRegistrationChanged()V
    .registers 5

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/metrics/ServiceStateStats;J)V

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 101
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method public blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 122
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isModemOff(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    goto/16 :goto_c0

    .line 126
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    .line 128
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    const/4 v4, 0x2

    .line 129
    invoke-static {p1, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    const/4 v5, 0x1

    .line 131
    invoke-static {p1, v5}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getNetworkRoamingState(Landroid/telephony/ServiceState;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 133
    invoke-static {p1, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getNetworkRoamingState(Landroid/telephony/ServiceState;I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 134
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isEndc(Landroid/telephony/ServiceState;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 135
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 137
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    .line 138
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 139
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isInternetPdnUp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 140
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->getFoldState()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 141
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 142
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    .line 143
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-eqz v2, :cond_a3

    .line 145
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInSatelliteModeForCarrierRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 146
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    goto :goto_a8

    :cond_a3
    const/4 v2, 0x0

    .line 148
    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 149
    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    .line 151
    :goto_a8
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    .line 152
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 153
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v4

    .line 154
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object v3

    .line 153
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    .line 157
    :goto_c0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->writeDataRatAtom(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public blacklist onVoiceServiceStateOverrideChanged(Z)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/metrics/ServiceStateStats;J)V

    .line 188
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method public blacklist registerDataNetworkControllerCallback()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method
