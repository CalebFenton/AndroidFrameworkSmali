.class public Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaX509CertificateHolder;
.super Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
.source "JcaX509CertificateHolder.java"


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 27
    return-void
.end method
