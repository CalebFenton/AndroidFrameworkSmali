.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/jcajce/JcaBasicOCSPRespBuilder;
.super Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.source "JcaBasicOCSPRespBuilder.java"


# direct methods
.method public constructor blacklist <init>(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "digCalc"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/jcajce/JcaRespID;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/jcajce/JcaRespID;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;)V

    .line 22
    return-void
.end method
