.class public Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;
.super Ljava/lang/Object;
.source "CarrierIdMatchStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CarrierIdMatchStats"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 63
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist onCarrierIdMismatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 36
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {p4}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    :cond_2a
    const-string v2, ""

    :goto_2c
    iput-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCarrierIdMismatch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 47
    sget-object v0, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New carrier ID mismatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x139

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 48
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public static blacklist sendCarrierIdTableVersion(I)V
    .registers 4

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->setCarrierIdTableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 57
    sget-object v0, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New carrier ID table version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13a

    .line 58
    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    :cond_29
    return-void
.end method
