.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLInternal.java"


# instance fields
.field private final blacklist encoding:[B

.field private final blacklist exception:Ljava/security/cert/CRLException;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V
    .registers 8

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 25
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    .line 26
    iput-object p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    if-nez v0, :cond_f

    .line 36
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz p0, :cond_9

    return-object p0

    .line 38
    :cond_9
    new-instance p0, Ljava/security/cert/CRLException;

    invoke-direct {p0}, Ljava/security/cert/CRLException;-><init>()V

    throw p0

    .line 33
    :cond_f
    throw v0
.end method
