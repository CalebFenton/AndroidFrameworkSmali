.class public Lcom/sun/security/cert/internal/x509/X509V1CertImpl;
.super Ljavax/security/cert/X509Certificate;
.source "X509V1CertImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x1c6d8776efacf2edL


# instance fields
.field private wrappedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    #@3
    .line 101
    :try_start_0
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@a
    move-result-object v1

    #@b
    .line 100
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@d
    iput-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 98
    return-void

    #@10
    .line 102
    :catch_0
    move-exception v0

    #@11
    .line 103
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    #@3
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@8
    .line 85
    .local v0, "bs":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v2

    #@10
    .line 84
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@12
    iput-object v2, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 79
    return-void

    #@15
    .line 86
    .end local v0    # "bs":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    #@16
    .line 87
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    #@18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2
.end method

.method private static declared-synchronized getFactory()Ljava/security/cert/CertificateFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    #@2
    monitor-enter v1

    #@3
    .line 58
    :try_start_0
    const-string/jumbo v0, "X.509"

    #@6
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 317
    :try_start_0
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@8
    move-result-object v1

    #@9
    .line 316
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@b
    iput-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 314
    return-void

    #@f
    .line 318
    :catch_0
    move-exception v0

    #@10
    .line 319
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "generateCertificate failed: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getEncoded()[B

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_0
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 305
    return-void

    #@a
    .line 308
    :catch_0
    move-exception v0

    #@b
    .line 309
    .local v0, "e":Ljavax/security/cert/CertificateEncodingException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "getEncoded failed: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .end local v0    # "e":Ljavax/security/cert/CertificateEncodingException;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 167
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v2, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 180
    return-void

    #@6
    .line 185
    :catch_0
    move-exception v0

    #@7
    .line 186
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Ljavax/security/cert/CertificateExpiredException;

    #@9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 183
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    #@12
    .line 184
    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Ljavax/security/cert/CertificateNotYetValidException;

    #@14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 116
    :catch_0
    move-exception v0

    #@8
    .line 117
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    #@a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    #@0
    .prologue
    .line 207
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v0

    #@6
    .line 208
    .local v0, "key":Ljava/security/PublicKey;
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    return v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 3
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

    #@0
    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 132
    return-void

    #@6
    .line 136
    :catch_0
    move-exception v0

    #@7
    .line 137
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
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

    #@0
    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 153
    return-void

    #@6
    .line 157
    :catch_0
    move-exception v0

    #@7
    .line 158
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method
