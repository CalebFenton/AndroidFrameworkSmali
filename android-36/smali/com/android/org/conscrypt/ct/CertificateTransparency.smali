.class public Lcom/android/org/conscrypt/ct/CertificateTransparency;
.super Ljava/lang/Object;
.source "CertificateTransparency.java"


# instance fields
.field private blacklist logStore:Lcom/android/org/conscrypt/ct/LogStore;

.field private blacklist policy:Lcom/android/org/conscrypt/ct/Policy;

.field private blacklist statsLog:Lcom/android/org/conscrypt/metrics/StatsLog;

.field private blacklist verifier:Lcom/android/org/conscrypt/ct/Verifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/Policy;Lcom/android/org/conscrypt/ct/Verifier;Lcom/android/org/conscrypt/metrics/StatsLog;)V
    .registers 5
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/LogStore;
    .param p2, "policy"    # Lcom/android/org/conscrypt/ct/Policy;
    .param p3, "verifier"    # Lcom/android/org/conscrypt/ct/Verifier;
    .param p4, "statsLog"    # Lcom/android/org/conscrypt/metrics/StatsLog;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->logStore:Lcom/android/org/conscrypt/ct/LogStore;

    .line 50
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->policy:Lcom/android/org/conscrypt/ct/Policy;

    .line 51
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->verifier:Lcom/android/org/conscrypt/ct/Verifier;

    .line 52
    iput-object p4, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->statsLog:Lcom/android/org/conscrypt/metrics/StatsLog;

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist checkCT(Ljava/util/List;[B[BLjava/lang/String;)V
    .registers 11
    .param p2, "ocspData"    # [B
    .param p3, "tlsData"    # [B
    .param p4, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 65
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->logStore:Lcom/android/org/conscrypt/ct/LogStore;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ct/LogStore;->getState()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_17

    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->statsLog:Lcom/android/org/conscrypt/metrics/StatsLog;

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->logStore:Lcom/android/org/conscrypt/ct/LogStore;

    .line 71
    invoke-virtual {p0, p4}, Lcom/android/org/conscrypt/ct/CertificateTransparency;->reasonCTVerificationRequired(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v2

    .line 69
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/android/org/conscrypt/metrics/StatsLog;->reportCTVerificationResult(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;)V

    .line 72
    return-void

    .line 74
    :cond_17
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->verifier:Lcom/android/org/conscrypt/ct/Verifier;

    .line 75
    invoke-virtual {v0, p1, p3, p2}, Lcom/android/org/conscrypt/ct/Verifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/VerificationResult;

    move-result-object v0

    .line 77
    .local v0, "result":Lcom/android/org/conscrypt/ct/VerificationResult;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 78
    .local v1, "leaf":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->policy:Lcom/android/org/conscrypt/ct/Policy;

    invoke-interface {v2, v0, v1}, Lcom/android/org/conscrypt/ct/Policy;->doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v2

    .line 79
    .local v2, "compliance":Lcom/android/org/conscrypt/ct/PolicyCompliance;
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->statsLog:Lcom/android/org/conscrypt/metrics/StatsLog;

    iget-object v4, p0, Lcom/android/org/conscrypt/ct/CertificateTransparency;->logStore:Lcom/android/org/conscrypt/ct/LogStore;

    .line 80
    invoke-virtual {p0, p4}, Lcom/android/org/conscrypt/ct/CertificateTransparency;->reasonCTVerificationRequired(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v5

    .line 79
    invoke-interface {v3, v4, v0, v2, v5}, Lcom/android/org/conscrypt/metrics/StatsLog;->reportCTVerificationResult(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/VerificationResult;Lcom/android/org/conscrypt/ct/PolicyCompliance;Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;)V

    .line 81
    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-ne v2, v3, :cond_3a

    .line 86
    return-void

    .line 82
    :cond_3a
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate chain does not conform to required transparency policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/PolicyCompliance;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist isCTVerificationRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "host"    # Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist reasonCTVerificationRequired(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->reasonCTVerificationRequired(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v0

    return-object v0
.end method
