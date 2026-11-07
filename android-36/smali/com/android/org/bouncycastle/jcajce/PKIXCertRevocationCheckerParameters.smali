.class public Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
.super Ljava/lang/Object;
.source "PKIXCertRevocationCheckerParameters.java"


# instance fields
.field private final blacklist certPath:Ljava/security/cert/CertPath;

.field private final blacklist index:I

.field private final blacklist paramsPKIX:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final blacklist signingCert:Ljava/security/cert/X509Certificate;

.field private final blacklist validDate:Ljava/util/Date;

.field private final blacklist workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V
    .registers 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 24
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    .line 25
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    .line 26
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    .line 27
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    .line 28
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public blacklist getCertPath()Ljava/security/cert/CertPath;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    return-object p0
.end method

.method public blacklist getIndex()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    return p0
.end method

.method public blacklist getParamsPKIX()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object p0
.end method

.method public blacklist getSigningCert()Ljava/security/cert/X509Certificate;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public blacklist getValidDate()Ljava/util/Date;
    .registers 4

    .line 38
    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getWorkingPublicKey()Ljava/security/PublicKey;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    return-object p0
.end method
