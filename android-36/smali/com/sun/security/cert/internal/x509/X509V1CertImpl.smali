.class public Lcom/sun/security/cert/internal/x509/X509V1CertImpl;
.super Ljavax/security/cert/X509Certificate;
.source "X509V1CertImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = -0x1c6d8776efacf2edL


# instance fields
.field private blacklist wrappedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    .line 100
    nop

    .line 101
    :try_start_4
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_10} :catch_12

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catch_12
    move-exception v0

    .line 103
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    .line 83
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v0, "bs":Ljava/io/ByteArrayInputStream;
    nop

    .line 85
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_15} :catch_17

    .line 88
    .end local v0    # "bs":Ljava/io/ByteArrayInputStream;
    nop

    .line 89
    return-void

    .line 86
    :catch_17
    move-exception v0

    .line 87
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static declared-synchronized blacklist getFactory()Ljava/security/cert/CertificateFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    monitor-enter v0

    .line 58
    :try_start_3
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method private declared-synchronized whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 316
    nop

    .line 317
    :try_start_2
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_e} :catch_13
    .catchall {:try_start_2 .. :try_end_e} :catchall_11

    .line 320
    nop

    .line 321
    monitor-exit p0

    return-void

    .line 315
    .end local p0    # "this":Lcom/sun/security/cert/internal/x509/X509V1CertImpl;
    .end local p1    # "stream":Ljava/io/ObjectInputStream;
    :catchall_11
    move-exception p1

    goto :goto_31

    .line 318
    .restart local p1    # "stream":Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v0

    .line 319
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_14
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateCertificate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local p1    # "stream":Ljava/io/ObjectInputStream;
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_11

    throw p1
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_8
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_8} :catch_d
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 310
    nop

    .line 311
    monitor-exit p0

    return-void

    .line 306
    .end local p0    # "this":Lcom/sun/security/cert/internal/x509/X509V1CertImpl;
    .end local p1    # "stream":Ljava/io/ObjectOutputStream;
    :catchall_b
    move-exception p1

    goto :goto_2b

    .line 308
    .restart local p1    # "stream":Ljava/io/ObjectOutputStream;
    :catch_d
    move-exception v0

    .line 309
    .local v0, "e":Ljavax/security/cert/CertificateEncodingException;
    :try_start_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEncoded failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0    # "e":Ljavax/security/cert/CertificateEncodingException;
    .end local p1    # "stream":Ljava/io/ObjectOutputStream;
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_b

    throw p1
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 169
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_5} :catch_12
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_5} :catch_7

    .line 187
    nop

    .line 188
    return-void

    .line 185
    :catch_7
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_12
    move-exception v0

    .line 184
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 116
    :catch_7
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 208
    .local v0, "key":Ljava/security/PublicKey;
    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getX509Certificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_7

    .line 138
    nop

    .line 139
    return-void

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_7

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
