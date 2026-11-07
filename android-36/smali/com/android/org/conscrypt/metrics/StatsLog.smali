.class public interface abstract Lcom/android/org/conscrypt/metrics/StatsLog;
.super Ljava/lang/Object;
.source "StatsLog.java"


# virtual methods
.method public abstract blacklist countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract blacklist reportCTVerificationResult(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;)V
.end method

.method public abstract blacklist updateCTLogListStatusChanged(Lcom/android/org/conscrypt/ct/LogStore;)V
.end method
