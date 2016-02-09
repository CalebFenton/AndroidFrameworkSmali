.class public Lcom/android/org/bouncycastle/jce/PrincipalUtil;
.super Ljava/lang/Object;
.source "PrincipalUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v2

    #@8
    .line 71
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@b
    move-result-object v1

    #@c
    .line 74
    .local v1, "tbsCertList":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v2

    #@1a
    .line 77
    .end local v1    # "tbsCertList":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    :catch_0
    move-exception v0

    #@1b
    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    #@1d
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v2

    #@8
    .line 32
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@b
    move-result-object v1

    #@c
    .line 35
    .local v1, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v2

    #@1a
    .line 38
    .end local v1    # "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_0
    move-exception v0

    #@1b
    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    #@1d
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method

.method public static getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v2

    #@8
    .line 52
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@b
    move-result-object v1

    #@c
    .line 54
    .local v1, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v2

    #@1a
    .line 57
    .end local v1    # "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_0
    move-exception v0

    #@1b
    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    #@1d
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method
