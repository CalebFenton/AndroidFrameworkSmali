.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/jcajce/JcaRespID;
.super Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
.source "JcaRespID.java"


# direct methods
.method public constructor blacklist <init>(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 4
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "digCalc"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .line 22
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 23
    return-void
.end method
