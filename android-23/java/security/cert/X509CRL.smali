.class public abstract Ljava/security/cert/X509CRL;
.super Ljava/security/cert/CRL;
.source "X509CRL.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    #@6
    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 60
    if-ne p1, p0, :cond_0

    #@3
    .line 61
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 63
    :cond_0
    instance-of v2, p1, Ljava/security/cert/X509CRL;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 64
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 66
    check-cast v1, Ljava/security/cert/X509CRL;

    #@d
    .line 68
    .local v1, "obj":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 69
    :catch_0
    move-exception v0

    #@1b
    .line 70
    .local v0, "e":Ljava/security/cert/CRLException;
    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    .line 174
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@3
    .line 173
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v2

    #@7
    .line 177
    .local v2, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    .line 176
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/X509CRL;

    #@16
    .line 179
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 181
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v2    # "factory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@1c
    .line 182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v4, "Failed to get X500Principal issuer"

    #@21
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v3
.end method

.method public abstract getNextUpdate()Ljava/util/Date;
.end method

.method public abstract getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 220
    if-nez p1, :cond_0

    #@2
    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "certificate == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public abstract getRevokedCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSignature()[B
.end method

.method public abstract getTBSCertList()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getThisUpdate()Ljava/util/Date;
.end method

.method public abstract getVersion()I
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 81
    const/4 v3, 0x0

    #@1
    .line 82
    .local v3, "res":I
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 83
    .local v0, "array":[B
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v2, v4, :cond_0

    #@9
    .line 84
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    and-int/lit16 v4, v4, 0xff

    #@d
    add-int/2addr v3, v4

    #@e
    .line 83
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 86
    :cond_0
    return v3

    #@12
    .line 87
    .end local v0    # "array":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@13
    .line 88
    .local v1, "e":Ljava/security/cert/CRLException;
    const/4 v4, 0x0

    #@14
    return v4
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
