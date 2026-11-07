.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateInternal.java"


# instance fields
.field private final blacklist encoding:[B

.field private final blacklist exception:Ljava/security/cert/CertificateEncodingException;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V
    .registers 10
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p3, "basicConstraints"    # Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .param p4, "keyUsage"    # [Z
    .param p5, "sigAlgName"    # Ljava/lang/String;
    .param p6, "sigAlgParams"    # [B
    .param p7, "encoding"    # [B
    .param p8, "exception"    # Ljava/security/cert/CertificateEncodingException;

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 26
    move-object v0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .local v0, "sigAlgParams":[B
    .local p2, "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .local p3, "c":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .local p4, "basicConstraints":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .local p5, "keyUsage":[Z
    .local p6, "sigAlgName":Ljava/lang/String;
    iput-object p7, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    .line 27
    iput-object p8, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    if-nez v0, :cond_11

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    return-object v0

    .line 39
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0

    .line 34
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    throw v0
.end method
