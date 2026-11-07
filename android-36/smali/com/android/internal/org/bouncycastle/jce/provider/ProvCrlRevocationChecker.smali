.class Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
.super Ljava/lang/Object;
.source "ProvCrlRevocationChecker.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private blacklist currentDate:Ljava/util/Date;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 3
    .param p1, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 23
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist check(Ljava/security/cert/Certificate;)V
    .registers 11
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getParamsPKIX()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 55
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getWorkingPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 56
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 54
    invoke-static/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2e
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 66
    nop

    .line 67
    return-void

    .line 58
    :catch_30
    move-exception v0

    .line 60
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v1, v0

    .line 61
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 63
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 65
    :cond_3c
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
.end method

.method public blacklist init(Z)V
    .registers 4
    .param p1, "forForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 40
    if-nez p1, :cond_d

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 47
    return-void

    .line 42
    :cond_d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .registers 3
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 33
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 35
    return-void
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 29
    return-void
.end method
