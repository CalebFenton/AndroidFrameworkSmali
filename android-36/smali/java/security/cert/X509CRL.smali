.class public abstract Ljava/security/cert/X509CRL;
.super Ljava/security/cert/CRL;
.source "X509CRL.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private transient greylist-max-o issuerPrincipal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 120
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 136
    if-ne p0, p1, :cond_4

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_4
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 140
    return v1

    .line 143
    :cond_a
    :try_start_a
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v0

    .line 144
    .local v0, "thisCRL":[B
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-static {v2}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v2

    .line 146
    .local v2, "otherCRL":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_19
    .catch Ljava/security/cert/CRLException; {:try_start_a .. :try_end_19} :catch_1a

    return v1

    .line 147
    .end local v0    # "thisCRL":[B
    .end local v2    # "otherCRL":[B
    :catch_1a
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/cert/CRLException;
    return v1
.end method

.method public abstract whitelist test-api getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getIssuerDN()Ljava/security/Principal;
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 325
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_a

    .line 326
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 328
    :cond_a
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public abstract whitelist test-api getNextUpdate()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 5
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 383
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 384
    .local v0, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 385
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 386
    const/4 v2, 0x0

    return-object v2

    .line 388
    :cond_10
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v2

    return-object v2
.end method

.method public abstract whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getSigAlgName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgParams()[B
.end method

.method public abstract whitelist test-api getSignature()[B
.end method

.method public abstract whitelist test-api getTBSCertList()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getThisUpdate()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getVersion()I
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "retval":I
    :try_start_1
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v1

    .line 162
    .local v1, "crlData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 163
    aget-byte v3, v1, v2
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_11

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 165
    .end local v2    # "i":I
    :cond_10
    return v0

    .line 166
    .end local v1    # "crlData":[B
    :catch_11
    move-exception v1

    .line 167
    .local v1, "e":Ljava/security/cert/CRLException;
    return v0
.end method

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;)V
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

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
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

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "X509CRL instance doesn\'t not support X509CRL#verify(PublicKey, Provider)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
