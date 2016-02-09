.class Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;,
        Lcom/android/org/conscrypt/Platform$OpenSSLMapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;-><init>(Lcom/android/org/conscrypt/Platform$OpenSSLMapper;)V

    #@9
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->setSource(Lorg/apache/harmony/security/utils/AlgNameMapperSource;)V

    #@c
    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    #@3
    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x509tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    instance-of v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 114
    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@7
    .line 115
    .local v0, "tm":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@a
    .line 112
    .end local v0    # "tm":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_0
    return-void

    #@b
    .line 117
    :cond_0
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@e
    goto :goto_0
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "s"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;
    .locals 6
    .param p0, "openSSLSocketImpl"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 83
    :try_start_0
    const-class v4, Ljava/net/Socket;

    #@2
    const-string/jumbo v5, "impl"

    #@5
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v2

    #@9
    .line 84
    .local v2, "f_impl":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    #@a
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@d
    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 86
    .local v3, "socketImpl":Ljava/lang/Object;
    const-class v4, Ljava/net/SocketImpl;

    #@13
    const-string/jumbo v5, "fd"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@19
    move-result-object v1

    #@1a
    .line 87
    .local v1, "f_fd":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1e
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v4

    #@25
    .line 89
    .end local v1    # "f_fd":Ljava/lang/reflect/Field;
    .end local v2    # "f_impl":Ljava/lang/reflect/Field;
    .end local v3    # "socketImpl":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@26
    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "Can\'t get FileDescriptor from socket"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4
.end method

.method public static isLiteralIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    :try_start_0
    const-string/jumbo v8, "android.os.Process"

    #@3
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v4

    #@7
    .line 135
    .local v4, "processClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    .line 136
    .local v5, "processInstance":Ljava/lang/Object;
    const-string/jumbo v9, "myUid"

    #@e
    const/4 v8, 0x0

    #@f
    check-cast v8, [Ljava/lang/Class;

    #@11
    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v3

    #@15
    .line 137
    .local v3, "myUidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    #@16
    new-array v8, v8, [Ljava/lang/Object;

    #@18
    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v6

    #@22
    .line 139
    .local v6, "uid":I
    const-string/jumbo v8, "android.util.EventLog"

    #@25
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@28
    move-result-object v1

    #@29
    .line 140
    .local v1, "eventLogClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .line 141
    .local v2, "eventLogInstance":Ljava/lang/Object;
    const-string/jumbo v8, "writeEvent"

    #@30
    .line 142
    const/4 v9, 0x2

    #@31
    new-array v9, v9, [Ljava/lang/Class;

    #@33
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@35
    const/4 v11, 0x0

    #@36
    aput-object v10, v9, v11

    #@38
    const-class v10, [Ljava/lang/Object;

    #@3a
    const/4 v11, 0x1

    #@3b
    aput-object v10, v9, v11

    #@3d
    .line 141
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@40
    move-result-object v7

    #@41
    .line 143
    .local v7, "writeEventMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    #@42
    new-array v8, v8, [Ljava/lang/Object;

    #@44
    const v9, 0x534e4554

    #@47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v9

    #@4b
    const/4 v10, 0x0

    #@4c
    aput-object v9, v8, v10

    #@4e
    .line 144
    const/4 v9, 0x3

    #@4f
    new-array v9, v9, [Ljava/lang/Object;

    #@51
    const-string/jumbo v10, "conscrypt"

    #@54
    const/4 v11, 0x0

    #@55
    aput-object v10, v9, v11

    #@57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v10

    #@5b
    const/4 v11, 0x1

    #@5c
    aput-object v10, v9, v11

    #@5e
    const/4 v10, 0x2

    #@5f
    aput-object p0, v9, v10

    #@61
    const/4 v10, 0x1

    #@62
    aput-object v9, v8, v10

    #@64
    .line 143
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 132
    .end local v1    # "eventLogClass":Ljava/lang/Class;
    .end local v2    # "eventLogInstance":Ljava/lang/Object;
    .end local v3    # "myUidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "processClass":Ljava/lang/Class;
    .end local v5    # "processInstance":Ljava/lang/Object;
    .end local v6    # "uid":I
    .end local v7    # "writeEventMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@68
    .line 145
    :catch_0
    move-exception v0

    #@69
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private ping()V
    .locals 0

    #@0
    .prologue
    .line 58
    return-void
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    #@3
    .line 98
    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .locals 5
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@3
    move-result-object v1

    #@4
    .line 105
    .local v1, "tv":Landroid/system/StructTimeval;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@7
    move-result-object v2

    #@8
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@a
    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@c
    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 102
    return-void

    #@10
    .line 106
    :catch_0
    move-exception v0

    #@11
    .line 107
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@14
    move-result-object v2

    #@15
    throw v2
.end method

.method public static setup()V
    .locals 1

    #@0
    .prologue
    .line 52
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    #@2
    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    #@5
    .line 51
    return-void
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .param p0, "factory"    # Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    #@0
    .prologue
    .line 162
    return-object p0
.end method
