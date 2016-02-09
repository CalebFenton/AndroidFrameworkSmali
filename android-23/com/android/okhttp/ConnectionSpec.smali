.class public final Lcom/android/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

.field public static final CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 33
    const/16 v0, 0xe

    #@6
    new-array v0, v0, [Lcom/android/okhttp/CipherSuite;

    #@8
    .line 34
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 35
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    #@e
    aput-object v1, v0, v3

    #@10
    .line 36
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    #@12
    aput-object v1, v0, v5

    #@14
    .line 41
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@16
    aput-object v1, v0, v6

    #@18
    .line 42
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@1a
    const/4 v2, 0x4

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 43
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 44
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 45
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 46
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@2e
    const/16 v2, 0x8

    #@30
    aput-object v1, v0, v2

    #@32
    .line 47
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@34
    const/16 v2, 0x9

    #@36
    aput-object v1, v0, v2

    #@38
    .line 48
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    #@3a
    const/16 v2, 0xa

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 49
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@40
    const/16 v2, 0xb

    #@42
    aput-object v1, v0, v2

    #@44
    .line 50
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@46
    const/16 v2, 0xc

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 51
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    #@4c
    const/16 v2, 0xd

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 33
    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    #@52
    .line 55
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@54
    invoke-direct {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    #@57
    .line 56
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    #@59
    .line 55
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@5c
    move-result-object v0

    #@5d
    new-array v1, v6, [Lcom/android/okhttp/TlsVersion;

    #@5f
    .line 57
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    #@61
    aput-object v2, v1, v4

    #@63
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@65
    aput-object v2, v1, v3

    #@67
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@69
    aput-object v2, v1, v5

    #@6b
    .line 55
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@76
    move-result-object v0

    #@77
    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    #@79
    .line 62
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@7b
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    #@7d
    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    #@80
    new-array v1, v3, [Lcom/android/okhttp/TlsVersion;

    #@82
    .line 63
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@84
    aput-object v2, v1, v4

    #@86
    .line 62
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@91
    move-result-object v0

    #@92
    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    #@94
    .line 68
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@96
    invoke-direct {v0, v4}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    #@99
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@9c
    move-result-object v0

    #@9d
    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@9f
    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get2(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@9
    .line 85
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get0(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@f
    .line 86
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get3(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@15
    .line 87
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get1(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@1b
    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V

    #@3
    return-void
.end method

.method private static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 224
    array-length v3, p0

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p0, v1

    #@7
    .line 225
    .local v0, "arrayValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 226
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 224
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 229
    .end local v0    # "arrayValue":Ljava/lang/Object;, "TT;"
    :cond_1
    return v2
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 212
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 213
    :cond_0
    return v2

    #@6
    .line 212
    :cond_1
    array-length v1, p0

    #@7
    if-eqz v1, :cond_0

    #@9
    array-length v1, p1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 215
    array-length v3, p0

    #@d
    move v1, v2

    #@e
    :goto_0
    if-ge v1, v3, :cond_3

    #@10
    aget-object v0, p0, v1

    #@12
    .line 216
    .local v0, "toFind":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/okhttp/ConnectionSpec;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 217
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 220
    .end local v0    # "toFind":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;
    .locals 11
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 139
    const/4 v0, 0x0

    #@2
    .line 140
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 141
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 143
    .local v1, "cipherSuitesToSelectFrom":[Ljava/lang/String;
    const-class v8, Ljava/lang/String;

    #@c
    iget-object v9, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@e
    invoke-static {v8, v9, v1}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .end local v0    # "cipherSuitesToEnable":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    #@14
    .line 146
    .end local v1    # "cipherSuitesToSelectFrom":[Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    #@16
    .line 149
    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    #@19
    .line 151
    .local v2, "fallbackScsv":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@20
    move-result-object v8

    #@21
    const-string/jumbo v9, "TLS_FALLBACK_SCSV"

    #@24
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v7

    #@28
    .line 153
    .local v7, "socketSupportsFallbackScsv":Z
    if-eqz v7, :cond_1

    #@2a
    .line 155
    if-eqz v0, :cond_2

    #@2c
    .line 156
    move-object v4, v0

    #@2d
    .line 158
    .local v4, "oldEnabledCipherSuites":[Ljava/lang/String;
    :goto_0
    array-length v8, v4

    #@2e
    add-int/lit8 v8, v8, 0x1

    #@30
    new-array v3, v8, [Ljava/lang/String;

    #@32
    .line 160
    .local v3, "newEnabledCipherSuites":[Ljava/lang/String;
    array-length v8, v4

    #@33
    .line 159
    invoke-static {v4, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 161
    array-length v8, v3

    #@37
    add-int/lit8 v8, v8, -0x1

    #@39
    const-string/jumbo v9, "TLS_FALLBACK_SCSV"

    #@3c
    aput-object v9, v3, v8

    #@3e
    .line 162
    move-object v0, v3

    #@3f
    .line 166
    .end local v2    # "fallbackScsv":Ljava/lang/String;
    .end local v3    # "newEnabledCipherSuites":[Ljava/lang/String;
    .end local v4    # "oldEnabledCipherSuites":[Ljava/lang/String;
    .end local v7    # "socketSupportsFallbackScsv":Z
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 167
    .local v6, "protocolsToSelectFrom":[Ljava/lang/String;
    const-class v8, Ljava/lang/String;

    #@45
    iget-object v9, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@47
    invoke-static {v8, v9, v6}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, [Ljava/lang/String;

    #@4d
    .line 168
    .local v5, "protocolsToEnable":[Ljava/lang/String;
    new-instance v8, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@4f
    invoke-direct {v8, p0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    #@52
    invoke-virtual {v8, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8, v5}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@5d
    move-result-object v8

    #@5e
    return-object v8

    #@5f
    .line 157
    .end local v5    # "protocolsToEnable":[Ljava/lang/String;
    .end local v6    # "protocolsToSelectFrom":[Ljava/lang/String;
    .restart local v2    # "fallbackScsv":Ljava/lang/String;
    .restart local v7    # "socketSupportsFallbackScsv":Z
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .restart local v4    # "oldEnabledCipherSuites":[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 3
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;

    #@3
    move-result-object v1

    #@4
    .line 125
    .local v1, "specToApply":Lcom/android/okhttp/ConnectionSpec;
    iget-object v2, v1, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@6
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    #@9
    .line 127
    iget-object v0, v1, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@b
    .line 129
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 130
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@10
    .line 122
    :cond_0
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 99
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 100
    return-object v3

    #@6
    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    new-array v1, v2, [Lcom/android/okhttp/CipherSuite;

    #@b
    .line 103
    .local v1, "result":[Lcom/android/okhttp/CipherSuite;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@e
    array-length v2, v2

    #@f
    if-ge v0, v2, :cond_1

    #@11
    .line 104
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-static {v2}, Lcom/android/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/CipherSuite;

    #@18
    move-result-object v2

    #@19
    aput-object v2, v1, v0

    #@1b
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 106
    :cond_1
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 233
    instance-of v1, p1, Lcom/android/okhttp/ConnectionSpec;

    #@4
    if-nez v1, :cond_0

    #@6
    return v3

    #@7
    .line 234
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    return v4

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 236
    check-cast v0, Lcom/android/okhttp/ConnectionSpec;

    #@d
    .line 237
    .local v0, "that":Lcom/android/okhttp/ConnectionSpec;
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@f
    iget-boolean v2, v0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@11
    if-eq v1, v2, :cond_2

    #@13
    return v3

    #@14
    .line 239
    :cond_2
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@16
    if-eqz v1, :cond_5

    #@18
    .line 240
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@1a
    iget-object v2, v0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@1c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    return v3

    #@23
    .line 241
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@25
    iget-object v2, v0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@27
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_4

    #@2d
    return v3

    #@2e
    .line 242
    :cond_4
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@30
    iget-boolean v2, v0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@32
    if-eq v1, v2, :cond_5

    #@34
    return v3

    #@35
    .line 245
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 249
    const/16 v0, 0x11

    #@2
    .line 250
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 251
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@8
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    add-int/lit16 v0, v1, 0x20f

    #@e
    .line 252
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@12
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@15
    move-result v2

    #@16
    add-int v0, v1, v2

    #@18
    .line 253
    mul-int/lit8 v2, v0, 0x1f

    #@1a
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    const/4 v1, 0x0

    #@1f
    :goto_0
    add-int v0, v2, v1

    #@21
    .line 255
    :cond_0
    return v0

    #@22
    .line 253
    :cond_1
    const/4 v1, 0x1

    #@23
    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 186
    iget-boolean v4, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 187
    return v5

    #@6
    .line 190
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 191
    .local v1, "enabledProtocols":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@c
    invoke-static {v4, v1}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    .line 192
    .local v3, "requiredProtocolsEnabled":Z
    if-nez v3, :cond_1

    #@12
    .line 193
    return v5

    #@13
    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@15
    if-nez v4, :cond_3

    #@17
    .line 198
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    array-length v4, v4

    #@1c
    if-lez v4, :cond_2

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 203
    :goto_0
    return v2

    #@20
    .line 198
    :cond_2
    const/4 v2, 0x0

    #@21
    .local v2, "requiredCiphersEnabled":Z
    goto :goto_0

    #@22
    .line 200
    .end local v2    # "requiredCiphersEnabled":Z
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 201
    .local v0, "enabledCipherSuites":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    #@28
    invoke-static {v4, v0}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    .local v2, "requiredCiphersEnabled":Z
    goto :goto_0
.end method

.method public isTls()Z
    .locals 1

    #@0
    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@2
    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    #@0
    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@2
    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@2
    array-length v2, v2

    #@3
    new-array v1, v2, [Lcom/android/okhttp/TlsVersion;

    #@5
    .line 111
    .local v1, "result":[Lcom/android/okhttp/TlsVersion;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 112
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-static {v2}, Lcom/android/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v0

    #@15
    .line 111
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 114
    :cond_0
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 259
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 260
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 261
    .local v0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    if-nez v0, :cond_0

    #@a
    const-string/jumbo v1, "[use default]"

    #@d
    .line 262
    .local v1, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 263
    const-string/jumbo v3, ", tlsVersions="

    #@20
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 263
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    #@27
    move-result-object v3

    #@28
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 264
    const-string/jumbo v3, ", supportsTlsExtensions="

    #@2f
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 264
    iget-boolean v3, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@35
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 265
    const-string/jumbo v3, ")"

    #@3c
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    return-object v2

    #@45
    .line 261
    .end local v1    # "cipherSuitesString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .restart local v1    # "cipherSuitesString":Ljava/lang/String;
    goto :goto_0

    #@4a
    .line 267
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    .end local v1    # "cipherSuitesString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "ConnectionSpec()"

    #@4d
    return-object v2
.end method
