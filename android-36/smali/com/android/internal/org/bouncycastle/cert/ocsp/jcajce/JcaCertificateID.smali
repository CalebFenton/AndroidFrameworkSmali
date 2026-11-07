.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/jcajce/JcaCertificateID;
.super Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
.source "JcaCertificateID.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "digestCalculator"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "number"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 23
    return-void
.end method
