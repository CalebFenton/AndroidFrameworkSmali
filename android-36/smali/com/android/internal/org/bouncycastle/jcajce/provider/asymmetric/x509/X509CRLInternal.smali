.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLInternal.java"


# instance fields
.field private final blacklist encoding:[B

.field private final blacklist exception:Ljava/security/cert/CRLException;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V
    .registers 9
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .param p3, "sigAlgName"    # Ljava/lang/String;
    .param p4, "sigAlgParams"    # [B
    .param p5, "isIndirect"    # Z
    .param p6, "encoding"    # [B
    .param p7, "exception"    # Ljava/security/cert/CRLException;

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 25
    move v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .local v0, "isIndirect":Z
    .local p2, "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .local p3, "c":Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .local p4, "sigAlgName":Ljava/lang/String;
    .local p5, "sigAlgParams":[B
    iput-object p6, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    .line 26
    iput-object p7, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    if-nez v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    return-object v0

    .line 38
    :cond_b
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0}, Ljava/security/cert/CRLException;-><init>()V

    throw v0

    .line 33
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    throw v0
.end method
