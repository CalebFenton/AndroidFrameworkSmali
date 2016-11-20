.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field private final mCheckServerTrusted:Ljava/lang/reflect/Method;

.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private final mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

.field private final mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 8
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    instance-of v3, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 57
    check-cast p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@a
    .end local p1    # "tm":Ljavax/net/ssl/X509TrustManager;
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@c
    .line 58
    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@e
    .line 59
    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    #@10
    .line 60
    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    #@12
    .line 61
    return-void

    #@13
    .line 64
    .restart local p1    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@15
    .line 65
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@17
    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "checkServerTrusted"

    #@1e
    const/4 v5, 0x3

    #@1f
    new-array v5, v5, [Ljava/lang/Class;

    #@21
    .line 69
    const-class v6, [Ljava/security/cert/X509Certificate;

    #@23
    const/4 v7, 0x0

    #@24
    aput-object v6, v5, v7

    #@26
    .line 70
    const-class v6, Ljava/lang/String;

    #@28
    const/4 v7, 0x1

    #@29
    aput-object v6, v5, v7

    #@2b
    .line 71
    const-class v6, Ljava/lang/String;

    #@2d
    const/4 v7, 0x2

    #@2e
    aput-object v6, v5, v7

    #@30
    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 77
    const/4 v2, 0x0

    #@37
    .line 79
    .local v2, "isSameTrustConfiguration":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3a
    move-result-object v3

    #@3b
    const-string/jumbo v4, "isSameTrustConfiguration"

    #@3e
    const/4 v5, 0x2

    #@3f
    new-array v5, v5, [Ljava/lang/Class;

    #@41
    .line 80
    const-class v6, Ljava/lang/String;

    #@43
    const/4 v7, 0x0

    #@44
    aput-object v6, v5, v7

    #@46
    .line 81
    const-class v6, Ljava/lang/String;

    #@48
    const/4 v7, 0x1

    #@49
    aput-object v6, v5, v7

    #@4b
    .line 79
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    #@4e
    move-result-object v2

    #@4f
    .line 84
    .end local v2    # "isSameTrustConfiguration":Ljava/lang/reflect/Method;
    :goto_0
    iput-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    #@51
    .line 55
    return-void

    #@52
    .line 72
    :catch_0
    move-exception v0

    #@53
    .line 73
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v4, "Required method checkServerTrusted(X509Certificate[], String, String, String) missing"

    #@58
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "isSameTrustConfiguration":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    #@5d
    .local v1, "ignored":Ljava/lang/ReflectiveOperationException;
    goto :goto_0
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 100
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@6
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 103
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    #@d
    iget-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@f
    const/4 v4, 0x3

    #@10
    new-array v4, v4, [Ljava/lang/Object;

    #@12
    const/4 v5, 0x0

    #@13
    aput-object p1, v4, v5

    #@15
    .line 104
    const/4 v5, 0x1

    #@16
    aput-object p2, v4, v5

    #@18
    const/4 v5, 0x2

    #@19
    aput-object p3, v4, v5

    #@1b
    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    return-object v2

    #@22
    .line 107
    :catch_0
    move-exception v1

    #@23
    .line 108
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@26
    move-result-object v2

    #@27
    instance-of v2, v2, Ljava/security/cert/CertificateException;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 109
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/security/cert/CertificateException;

    #@31
    throw v2

    #@32
    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@35
    move-result-object v2

    #@36
    instance-of v2, v2, Ljava/lang/RuntimeException;

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 112
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/lang/RuntimeException;

    #@40
    throw v2

    #@41
    .line 114
    :cond_2
    new-instance v2, Ljava/security/cert/CertificateException;

    #@43
    const-string/jumbo v3, "checkServerTrusted failed"

    #@46
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v2, v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4d
    throw v2

    #@4e
    .line 105
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@4f
    .line 106
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@51
    const-string/jumbo v3, "Failed to call checkServerTrusted"

    #@54
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v2
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "hostname1"    # Ljava/lang/String;
    .param p2, "hostname2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 141
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 142
    return v3

    #@6
    .line 145
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    #@8
    iget-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@a
    const/4 v4, 0x2

    #@b
    new-array v4, v4, [Ljava/lang/Object;

    #@d
    const/4 v5, 0x0

    #@e
    aput-object p1, v4, v5

    #@10
    const/4 v5, 0x1

    #@11
    aput-object p2, v4, v5

    #@13
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Boolean;

    #@19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v2

    #@1d
    return v2

    #@1e
    .line 148
    :catch_0
    move-exception v1

    #@1f
    .line 149
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@22
    move-result-object v2

    #@23
    instance-of v2, v2, Ljava/lang/RuntimeException;

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 150
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/RuntimeException;

    #@2d
    throw v2

    #@2e
    .line 152
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@30
    const-string/jumbo v3, "isSameTrustConfiguration failed"

    #@33
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@36
    move-result-object v4

    #@37
    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v2

    #@3b
    .line 146
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@3c
    .line 147
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@3e
    const-string/jumbo v3, "Failed to call isSameTrustConfiguration"

    #@41
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v2
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/security/net/config/UserCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
