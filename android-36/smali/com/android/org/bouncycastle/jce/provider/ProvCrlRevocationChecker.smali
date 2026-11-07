.class Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
.super Ljava/lang/Object;
.source "ProvCrlRevocationChecker.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private blacklist currentDate:Ljava/util/Date;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public blacklist check(Ljava/security/cert/Certificate;)V
    .registers 11

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getParamsPKIX()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getWorkingPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iget-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 54
    invoke-static/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    move-object v0, p1

    .line 65
    :goto_3b
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result p0

    invoke-direct {v1, p1, v0, v2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public blacklist initialize(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 34
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    return-void
.end method
