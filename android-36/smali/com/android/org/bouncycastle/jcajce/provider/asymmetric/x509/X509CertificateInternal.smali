.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateInternal.java"


# instance fields
.field private final blacklist encoding:[B

.field private final blacklist exception:Ljava/security/cert/CertificateEncodingException;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V
    .registers 9

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 26
    iput-object p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    .line 27
    iput-object p8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    if-nez v0, :cond_f

    .line 37
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz p0, :cond_9

    return-object p0

    .line 39
    :cond_9
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {p0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw p0

    .line 34
    :cond_f
    throw v0
.end method
