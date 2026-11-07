.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field private final greylist-max-o mCheckServerTrusted:Ljava/lang/reflect/Method;

.field private final blacklist mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

.field private final greylist-max-o mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private final greylist-max-o mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

.field private final greylist-max-o mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor whitelist <init>(Ljavax/net/ssl/X509TrustManager;)V
    .registers 12
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    const-class v0, [B

    const-string v1, "checkServerTrusted"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    instance-of v2, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 65
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 66
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    .line 67
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    .line 68
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    .line 69
    return-void

    .line 72
    :cond_1a
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 73
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 76
    :try_start_1e
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_3a} :catch_7a

    .line 83
    nop

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "checkServerTrustedOcspAndTlsData":Ljava/lang/reflect/Method;
    :try_start_3c
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const-class v9, [Ljava/security/cert/X509Certificate;

    aput-object v9, v5, v6

    aput-object v0, v5, v7

    aput-object v0, v5, v8

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v3

    const-class v0, Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v0, v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3c .. :try_end_58} :catch_5a

    move-object v2, v0

    goto :goto_5b

    .line 93
    :catch_5a
    move-exception v0

    :goto_5b
    nop

    .line 94
    iput-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "isSameTrustConfiguration":Ljava/lang/reflect/Method;
    :try_start_5f
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "isSameTrustConfiguration"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_74
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5f .. :try_end_74} :catch_76

    move-object v0, v1

    .line 102
    goto :goto_77

    .line 101
    :catch_76
    move-exception v1

    .line 103
    :goto_77
    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    .line 104
    return-void

    .line 80
    .end local v0    # "isSameTrustConfiguration":Ljava/lang/reflect/Method;
    .end local v2    # "checkServerTrustedOcspAndTlsData":Ljava/lang/reflect/Method;
    :catch_7a
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required method checkServerTrusted(X509Certificate[], String, String) missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 122
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_19} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_19} :catch_1a

    return-object v0

    .line 126
    :catch_1a
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_3e

    .line 130
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_32

    .line 131
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 133
    :cond_32
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "checkServerTrusted failed"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateException;

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_45
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to call checkServerTrusted"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v0, :cond_28

    .line 165
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;->certificateTransparencyCheckservertrustedApi()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 166
    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .end local p3    # "tlsSctData":[B
    .end local p4    # "authType":Ljava/lang/String;
    .end local p5    # "host":Ljava/lang/String;
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    .local v3, "ocspData":[B
    .local v4, "tlsSctData":[B
    .local v5, "authType":Ljava/lang/String;
    .local v6, "host":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 167
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_1d

    :cond_1c
    move-object p2, p1

    :goto_1d
    return-object p2

    .line 170
    .end local v2    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspData":[B
    .end local v4    # "tlsSctData":[B
    .end local v5    # "authType":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .local p1, "chain":[Ljava/security/cert/X509Certificate;
    .restart local p2    # "ocspData":[B
    .restart local p3    # "tlsSctData":[B
    .restart local p4    # "authType":Ljava/lang/String;
    .restart local p5    # "host":Ljava/lang/String;
    :cond_1e
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .restart local v2    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspData":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required method checkServerTrusted(X509Certificate[], byte[], byte[], String, String) not available in TrustManagerImpl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    .end local v2    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspData":[B
    .restart local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local p2    # "ocspData":[B
    :cond_28
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .end local p3    # "tlsSctData":[B
    .end local p4    # "authType":Ljava/lang/String;
    .end local p5    # "host":Ljava/lang/String;
    .restart local v2    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspData":[B
    .restart local v4    # "tlsSctData":[B
    .restart local v5    # "authType":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    iget-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_7e

    .line 181
    :try_start_31
    iget-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    iget-object p2, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 183
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_46

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2
    :try_end_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_45} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_45} :catch_48

    goto :goto_47

    :cond_46
    move-object p2, p1

    :goto_47
    return-object p2

    .line 186
    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_48
    move-exception v0

    move-object p1, v0

    .line 187
    .local p1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-nez p2, :cond_6d

    .line 190
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_61

    .line 191
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 193
    :cond_61
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "checkServerTrusted failed"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 188
    :cond_6d
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/security/cert/CertificateException;

    throw p2

    .line 184
    .end local p1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_74
    move-exception v0

    move-object p1, v0

    .line 185
    .local p1, "e":Ljava/lang/IllegalAccessException;
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Failed to call checkServerTrusted"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 176
    .end local p1    # "e":Ljava/lang/IllegalAccessException;
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required method checkServerTrusted(X509Certificate[], byte[], byte[], String, String) missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "hostname1"    # Ljava/lang/String;
    .param p2, "hostname2"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    .line 217
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_18} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_18} :catch_19

    return v0

    .line 223
    :catch_19
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_29

    .line 225
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 227
    :cond_29
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "isSameTrustConfiguration failed"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 221
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_36
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to call isSameTrustConfiguration"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 208
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/net/config/UserCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
