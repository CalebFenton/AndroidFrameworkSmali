.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 8

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    :try_start_0
    const-string/jumbo v4, "X.509"

    #@6
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@9
    move-result-object v3

    #@a
    .line 80
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v4, 0x0

    #@b
    check-cast v4, Ljava/security/KeyStore;

    #@d
    invoke-virtual {v3, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@10
    .line 81
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@13
    move-result-object v5

    #@14
    const/4 v4, 0x0

    #@15
    array-length v6, v5

    #@16
    :goto_0
    if-ge v4, v6, :cond_1

    #@18
    aget-object v2, v5, v4

    #@1a
    .line 82
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v2, Ljavax/net/ssl/X509TrustManager;

    #@1c
    if-eqz v7, :cond_0

    #@1e
    .line 83
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    #@20
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    iput-object v2, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 88
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    #@26
    .line 89
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "X.509 TrustManagerFactory cannot be initialized"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4

    #@2f
    .line 86
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    #@30
    .line 87
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v5, "X.509 TrustManagerFactory must be available"

    #@35
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v4

    #@39
    .line 92
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    iget-object v4, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 93
    new-instance v4, Ljava/lang/RuntimeException;

    #@3f
    .line 94
    const-string/jumbo v5, "None of the X.509 TrustManagers are X509TrustManager"

    #@42
    .line 93
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4

    #@46
    .line 77
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/CertificateChainValidator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    #@3
    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    if-eqz p1, :cond_1

    #@2
    .line 267
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@5
    move-result-object v0

    #@6
    .line 268
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    #@8
    .line 269
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    #@b
    .line 272
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    #@e
    .line 275
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    #@10
    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    if-eqz p2, :cond_0

    #@2
    .line 256
    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@5
    .line 255
    return-void

    #@6
    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    #@7
    .line 257
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->-get0()Landroid/net/http/CertificateChainValidator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 13

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 174
    :try_start_0
    const-string/jumbo v8, "X.509"

    #@4
    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@7
    move-result-object v5

    #@8
    .line 175
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v8, 0x0

    #@9
    check-cast v8, Ljava/security/KeyStore;

    #@b
    invoke-virtual {v5, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 184
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@11
    move-result-object v6

    #@12
    .line 185
    .local v6, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    #@13
    .line 186
    .local v3, "sentUpdate":Z
    array-length v10, v6

    #@14
    move v8, v9

    #@15
    :goto_0
    if-ge v8, v10, :cond_0

    #@17
    aget-object v4, v6, v8

    #@19
    .line 188
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v9

    #@1d
    const-string/jumbo v11, "handleTrustStorageUpdate"

    #@20
    const/4 v12, 0x0

    #@21
    new-array v12, v12, [Ljava/lang/Class;

    #@23
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@26
    move-result-object v7

    #@27
    .line 189
    .local v7, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    #@28
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@2b
    .line 190
    const/4 v9, 0x0

    #@2c
    new-array v9, v9, [Ljava/lang/Object;

    #@2e
    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@31
    .line 191
    const/4 v3, 0x1

    #@32
    .line 186
    .end local v7    # "updateMethod":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@34
    goto :goto_0

    #@35
    .line 179
    .end local v3    # "sentUpdate":Z
    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v6    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    #@36
    .line 180
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v8, "CertificateChainValidator"

    #@39
    const-string/jumbo v9, "Couldn\'t initialize default X.509 TrustManagerFactory"

    #@3c
    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 181
    return-void

    #@40
    .line 176
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v2

    #@41
    .line 177
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v8, "CertificateChainValidator"

    #@44
    const-string/jumbo v9, "Couldn\'t find default X.509 TrustManagerFactory"

    #@47
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 178
    return-void

    #@4b
    .line 195
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "sentUpdate":Z
    .restart local v6    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_0
    if-nez v3, :cond_1

    #@4d
    .line 196
    const-string/jumbo v8, "CertificateChainValidator"

    #@50
    const-string/jumbo v9, "Didn\'t find a TrustManager to handle CA list update"

    #@53
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 171
    :cond_1
    return-void

    #@57
    .line 192
    .restart local v4    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_2
    move-exception v0

    #@58
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 150
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "bad certificate chain"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 153
    :cond_1
    array-length v4, p0

    #@f
    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    #@11
    .line 156
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string/jumbo v4, "X.509"

    #@14
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17
    move-result-object v0

    #@18
    .line 157
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_0
    array-length v4, p0

    #@1a
    if-ge v2, v4, :cond_2

    #@1c
    .line 159
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@1e
    aget-object v5, p0, v2

    #@20
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@23
    .line 158
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@29
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 157
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 161
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@2f
    .line 162
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    #@31
    const-string/jumbo v5, "can\'t read certificate"

    #@34
    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v4

    #@38
    .line 165
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "i":I
    :cond_2
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    #@3b
    move-result-object v4

    #@3c
    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 9
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 212
    const/4 v6, 0x0

    #@2
    aget-object v1, p0, v6

    #@4
    .line 213
    .local v1, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_0

    #@6
    .line 214
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "certificate for this site is null"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 217
    :cond_0
    if-eqz p1, :cond_1

    #@11
    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_2

    #@17
    .line 217
    :cond_1
    const/4 v4, 0x0

    #@18
    .line 221
    :goto_0
    if-nez v4, :cond_3

    #@1a
    .line 225
    new-instance v6, Landroid/net/http/SslError;

    #@1c
    const/4 v7, 0x2

    #@1d
    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    #@20
    return-object v6

    #@21
    .line 219
    :cond_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->-get1()Ljavax/net/ssl/HostnameVerifier;

    #@24
    move-result-object v6

    #@25
    .line 220
    new-instance v7, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    #@27
    invoke-direct {v7, v1}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    #@2a
    .line 219
    invoke-interface {v6, p1, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@2d
    move-result v4

    #@2e
    .local v4, "valid":Z
    goto :goto_0

    #@2f
    .line 229
    .end local v4    # "valid":Z
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@32
    move-result-object v5

    #@33
    .line 230
    .local v5, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v6, v5, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@35
    if-eqz v6, :cond_4

    #@37
    .line 231
    move-object v0, v5

    #@38
    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@3a
    move-object v3, v0

    #@3b
    .line 232
    .local v3, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v3, p0, p2, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@3e
    .line 236
    .end local v3    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_1
    return-object v8

    #@3f
    .line 234
    :cond_4
    invoke-interface {v5, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    goto :goto_1

    #@43
    .line 237
    .end local v5    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    #@44
    .line 242
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Landroid/net/http/SslError;

    #@46
    const/4 v7, 0x3

    #@47
    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    #@4a
    return-object v6
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 112
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@4
    move-result-object v1

    #@5
    .line 113
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 114
    const-string/jumbo v2, "failed to perform SSL handshake"

    #@e
    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@11
    .line 119
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@18
    move-result-object v0

    #@19
    .line 121
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    #@1b
    array-length v2, v0

    #@1c
    if-nez v2, :cond_3

    #@1e
    .line 123
    :cond_1
    const-string/jumbo v2, "failed to retrieve peer certificates"

    #@21
    .line 122
    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@24
    .line 134
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    #@26
    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    const-string/jumbo v2, "RSA"

    #@29
    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 126
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    #@30
    .line 127
    aget-object v2, v0, v4

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 129
    new-instance v3, Landroid/net/http/SslCertificate;

    #@36
    aget-object v2, v0, v4

    #@38
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@3a
    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3d
    .line 128
    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    #@40
    goto :goto_0
.end method
