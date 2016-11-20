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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    :try_start_0
    const-string/jumbo v4, "X.509"

    #@6
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@9
    move-result-object v3

    #@a
    .line 81
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v4, 0x0

    #@b
    nop

    #@c
    nop

    #@d
    invoke-virtual {v3, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@10
    .line 82
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
    .line 83
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v2, Ljavax/net/ssl/X509TrustManager;

    #@1c
    if-eqz v7, :cond_0

    #@1e
    .line 84
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    #@20
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    iput-object v2, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 82
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 89
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    #@26
    .line 90
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "X.509 TrustManagerFactory cannot be initialized"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4

    #@2f
    .line 87
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    #@30
    .line 88
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v5, "X.509 TrustManagerFactory must be available"

    #@35
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v4

    #@39
    .line 93
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    iget-object v4, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 94
    new-instance v4, Ljava/lang/RuntimeException;

    #@3f
    .line 95
    const-string/jumbo v5, "None of the X.509 TrustManagers are X509TrustManager"

    #@42
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4

    #@46
    .line 78
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
    .line 277
    if-eqz p1, :cond_1

    #@2
    .line 278
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@5
    move-result-object v0

    #@6
    .line 279
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    #@8
    .line 280
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    #@b
    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    #@e
    .line 286
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
    .line 268
    if-eqz p2, :cond_0

    #@2
    .line 267
    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@5
    .line 266
    return-void

    #@6
    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    #@7
    .line 268
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    #@0
    .prologue
    .line 71
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
    .line 261
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
    .line 175
    :try_start_0
    const-string/jumbo v8, "X.509"

    #@4
    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@7
    move-result-object v5

    #@8
    .line 176
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v8, 0x0

    #@9
    nop

    #@a
    nop

    #@b
    invoke-virtual {v5, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 185
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@11
    move-result-object v6

    #@12
    .line 186
    .local v6, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    #@13
    .line 187
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
    .line 189
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
    .line 190
    .local v7, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    #@28
    invoke-virtual {v7, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@2b
    .line 191
    const/4 v9, 0x0

    #@2c
    new-array v9, v9, [Ljava/lang/Object;

    #@2e
    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@31
    .line 192
    const/4 v3, 0x1

    #@32
    .line 187
    .end local v7    # "updateMethod":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@34
    goto :goto_0

    #@35
    .line 180
    .end local v3    # "sentUpdate":Z
    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v6    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    #@36
    .line 181
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v8, "CertificateChainValidator"

    #@39
    const-string/jumbo v9, "Couldn\'t initialize default X.509 TrustManagerFactory"

    #@3c
    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 182
    return-void

    #@40
    .line 177
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v2

    #@41
    .line 178
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v8, "CertificateChainValidator"

    #@44
    const-string/jumbo v9, "Couldn\'t find default X.509 TrustManagerFactory"

    #@47
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 179
    return-void

    #@4b
    .line 196
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "sentUpdate":Z
    .restart local v6    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_0
    if-nez v3, :cond_1

    #@4d
    .line 197
    const-string/jumbo v8, "CertificateChainValidator"

    #@50
    const-string/jumbo v9, "Didn\'t find a TrustManager to handle CA list update"

    #@53
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 172
    :cond_1
    return-void

    #@57
    .line 193
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
    .line 150
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 151
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "bad certificate chain"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 154
    :cond_1
    array-length v4, p0

    #@f
    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    #@11
    .line 157
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string/jumbo v4, "X.509"

    #@14
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17
    move-result-object v0

    #@18
    .line 158
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_0
    array-length v4, p0

    #@1a
    if-ge v2, v4, :cond_2

    #@1c
    .line 160
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@1e
    aget-object v5, p0, v2

    #@20
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@23
    .line 159
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
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 162
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@2f
    .line 163
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    #@31
    const-string/jumbo v5, "can\'t read certificate"

    #@34
    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v4

    #@38
    .line 166
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
    .locals 12
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
    .line 213
    const/4 v7, 0x0

    #@1
    aget-object v0, p0, v7

    #@3
    .line 214
    .local v0, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@5
    .line 215
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v8, "certificate for this site is null"

    #@a
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v7

    #@e
    .line 218
    :cond_0
    if-eqz p1, :cond_1

    #@10
    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_2

    #@16
    .line 218
    :cond_1
    const/4 v5, 0x0

    #@17
    .line 222
    .local v5, "valid":Z
    :goto_0
    if-nez v5, :cond_3

    #@19
    .line 226
    new-instance v7, Landroid/net/http/SslError;

    #@1b
    const/4 v8, 0x2

    #@1c
    invoke-direct {v7, v8, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    #@1f
    return-object v7

    #@20
    .line 220
    .end local v5    # "valid":Z
    :cond_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->-get1()Ljavax/net/ssl/HostnameVerifier;

    #@23
    move-result-object v7

    #@24
    .line 221
    new-instance v8, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    #@26
    invoke-direct {v8, v0}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    #@29
    .line 220
    invoke-interface {v7, p1, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@2c
    move-result v5

    #@2d
    goto :goto_0

    #@2e
    .line 230
    .restart local v5    # "valid":Z
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@31
    move-result-object v6

    #@32
    .line 234
    .local v6, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v7

    #@36
    const-string/jumbo v8, "checkServerTrusted"

    #@39
    const/4 v9, 0x3

    #@3a
    new-array v9, v9, [Ljava/lang/Class;

    #@3c
    .line 235
    const-class v10, [Ljava/security/cert/X509Certificate;

    #@3e
    const/4 v11, 0x0

    #@3f
    aput-object v10, v9, v11

    #@41
    .line 236
    const-class v10, Ljava/lang/String;

    #@43
    const/4 v11, 0x1

    #@44
    aput-object v10, v9, v11

    #@46
    .line 237
    const-class v10, Ljava/lang/String;

    #@48
    const/4 v11, 0x2

    #@49
    aput-object v10, v9, v11

    #@4b
    .line 234
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4e
    move-result-object v4

    #@4f
    .line 238
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    #@50
    new-array v7, v7, [Ljava/lang/Object;

    #@52
    const/4 v8, 0x0

    #@53
    aput-object p0, v7, v8

    #@55
    const/4 v8, 0x1

    #@56
    aput-object p2, v7, v8

    #@58
    const/4 v8, 0x2

    #@59
    aput-object p1, v7, v8

    #@5b
    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@5e
    .line 247
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_1
    const/4 v7, 0x0

    #@5f
    return-object v7

    #@60
    .line 241
    :catch_0
    move-exception v2

    #@61
    .line 242
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@64
    move-result-object v7

    #@65
    instance-of v7, v7, Ljava/security/cert/CertificateException;

    #@67
    if-eqz v7, :cond_4

    #@69
    .line 243
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@6c
    move-result-object v7

    #@6d
    check-cast v7, Ljava/security/cert/CertificateException;

    #@6f
    throw v7
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    #@70
    .line 248
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v3

    #@71
    .line 253
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Landroid/net/http/SslError;

    #@73
    const/4 v8, 0x3

    #@74
    invoke-direct {v7, v8, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    #@77
    return-object v7

    #@78
    .line 245
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :try_start_3
    new-instance v7, Ljava/lang/RuntimeException;

    #@7a
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@7d
    move-result-object v8

    #@7e
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@81
    throw v7

    #@82
    .line 239
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    #@83
    .line 240
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-interface {v6, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    #@86
    goto :goto_1
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
    .line 113
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@4
    move-result-object v1

    #@5
    .line 114
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 115
    const-string/jumbo v2, "failed to perform SSL handshake"

    #@e
    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@11
    .line 120
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@18
    move-result-object v0

    #@19
    .line 122
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    #@1b
    array-length v2, v0

    #@1c
    if-nez v2, :cond_3

    #@1e
    .line 124
    :cond_1
    const-string/jumbo v2, "failed to retrieve peer certificates"

    #@21
    .line 123
    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    #@24
    .line 135
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
    .line 127
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    #@30
    .line 128
    aget-object v2, v0, v4

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 130
    new-instance v3, Landroid/net/http/SslCertificate;

    #@36
    aget-object v2, v0, v4

    #@38
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@3a
    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3d
    .line 129
    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    #@40
    goto :goto_0
.end method
