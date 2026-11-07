.class public Lcom/android/org/conscrypt/metrics/NoopStatsLog;
.super Ljava/lang/Object;
.source "NoopStatsLog.java"

# interfaces
.implements Lcom/android/org/conscrypt/metrics/StatsLog;


# static fields
.field private static final blacklist INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/android/org/conscrypt/metrics/NoopStatsLog;

    invoke-direct {v0}, Lcom/android/org/conscrypt/metrics/NoopStatsLog;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/metrics/NoopStatsLog;->INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/org/conscrypt/metrics/StatsLog;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/org/conscrypt/metrics/NoopStatsLog;->INSTANCE:Lcom/android/org/conscrypt/metrics/StatsLog;

    return-object v0
.end method


# virtual methods
.method public blacklist countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "cipherSuite"    # Ljava/lang/String;
    .param p4, "duration"    # J

    .line 35
    return-void
.end method

.method public blacklist reportCTVerificationResult(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;)V
    .registers 5
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/LogStore;
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .param p3, "compliance"    # Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .param p4, "reason"    # Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    .line 40
    return-void
.end method

.method public blacklist updateCTLogListStatusChanged(Lcom/android/org/conscrypt/ct/LogStore;)V
    .registers 2
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/LogStore;

    .line 37
    return-void
.end method
