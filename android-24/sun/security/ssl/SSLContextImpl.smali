.class public abstract Lsun/security/ssl/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;,
        Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;,
        Lsun/security/ssl/SSLContextImpl$TLS10Context;,
        Lsun/security/ssl/SSLContextImpl$TLS11Context;,
        Lsun/security/ssl/SSLContextImpl$TLS12Context;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private final clientCache:Lsun/security/ssl/SSLSessionContextImpl;

.field private defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

.field private defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

.field private final ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

.field private isInitialized:Z

.field private keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverCache:Lsun/security/ssl/SSLSessionContextImpl;

.field private supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

.field private supportedProtocolList:Lsun/security/ssl/ProtocolList;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static synthetic -get0()Lsun/security/ssl/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    #@3
    .line 56
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    #@9
    .line 55
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@b
    .line 69
    new-instance v0, Lsun/security/ssl/EphemeralKeyManager;

    #@d
    invoke-direct {v0}, Lsun/security/ssl/EphemeralKeyManager;-><init>()V

    #@10
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    #@12
    .line 70
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    #@14
    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    #@17
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    #@19
    .line 71
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl;

    #@1b
    invoke-direct {v0}, Lsun/security/ssl/SSLSessionContextImpl;-><init>()V

    #@1e
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    #@20
    .line 68
    return-void
.end method

.method private chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 4
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_6

    #@3
    array-length v2, p1

    #@4
    if-ge v0, v2, :cond_6

    #@6
    .line 146
    aget-object v1, p1, v0

    #@8
    .line 147
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    #@a
    if-nez v2, :cond_0

    #@c
    .line 145
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 150
    :cond_0
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 154
    instance-of v2, v1, Lsun/security/ssl/X509KeyManagerImpl;

    #@17
    if-nez v2, :cond_1

    #@19
    .line 155
    instance-of v2, v1, Lsun/security/ssl/SunX509KeyManagerImpl;

    #@1b
    .line 154
    if-eqz v2, :cond_2

    #@1d
    .line 156
    :cond_1
    nop

    #@1e
    nop

    #@1f
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    #@20
    .line 160
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    new-instance v2, Ljava/security/KeyManagementException;

    #@22
    .line 161
    const-string/jumbo v3, "FIPS mode: only SunJSSE KeyManagers may be used"

    #@25
    .line 160
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 164
    :cond_3
    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 165
    nop

    #@2e
    nop

    #@2f
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    #@30
    .line 167
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_4
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@32
    if-eqz v2, :cond_5

    #@34
    const-string/jumbo v2, "sslctx"

    #@37
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_5

    #@3d
    .line 168
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    .line 169
    const-string/jumbo v3, "X509KeyManager passed to SSLContext.init():  need an X509ExtendedKeyManager for SSLEngine use"

    #@42
    .line 168
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 173
    :cond_5
    new-instance v2, Lsun/security/ssl/AbstractKeyManagerWrapper;

    #@47
    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    #@49
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractKeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    #@4c
    return-object v2

    #@4d
    .line 177
    :cond_6
    sget-object v2, Lsun/security/ssl/DummyX509KeyManager;->INSTANCE:Ljavax/net/ssl/X509ExtendedKeyManager;

    #@4f
    return-object v2
.end method

.method private chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p1, "tm"    # [Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    #@3
    array-length v1, p1

    #@4
    if-ge v0, v1, :cond_4

    #@6
    .line 123
    aget-object v1, p1, v0

    #@8
    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 124
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 125
    aget-object v1, p1, v0

    #@14
    instance-of v1, v1, Lsun/security/ssl/X509TrustManagerImpl;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 130
    :cond_0
    aget-object v1, p1, v0

    #@1a
    instance-of v1, v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 131
    aget-object v1, p1, v0

    #@20
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    #@22
    return-object v1

    #@23
    .line 126
    :cond_1
    new-instance v1, Ljava/security/KeyManagementException;

    #@25
    .line 127
    const-string/jumbo v2, "FIPS mode: only SunJSSE TrustManagers may be used"

    #@28
    .line 126
    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 133
    :cond_2
    new-instance v2, Lsun/security/ssl/AbstractTrustManagerWrapper;

    #@2e
    .line 134
    aget-object v1, p1, v0

    #@30
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    #@32
    .line 133
    invoke-direct {v2, v1}, Lsun/security/ssl/AbstractTrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    #@35
    return-object v2

    #@36
    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 140
    :cond_4
    sget-object v1, Lsun/security/ssl/DummyX509TrustManager;->INSTANCE:Ljavax/net/ssl/X509TrustManager;

    #@3b
    return-object v1
.end method

.method private clearAvailableCache()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 379
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@3
    .line 380
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@5
    .line 381
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@7
    .line 382
    invoke-static {}, Lsun/security/ssl/CipherSuite$BulkCipher;->clearAvailableCache()V

    #@a
    .line 383
    invoke-static {}, Lsun/security/ssl/JsseJce;->clearEcAvailable()V

    #@d
    .line 377
    return-void
.end method

.method private getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;
    .locals 9
    .param p1, "protocols"    # Lsun/security/ssl/ProtocolList;
    .param p2, "onlyEnabled"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 326
    const/4 v1, 0x1

    #@2
    .line 327
    .local v1, "minPriority":I
    if-eqz p2, :cond_0

    #@4
    .line 328
    const/16 v1, 0x12c

    #@6
    .line 332
    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite;->allowedCipherSuites()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    .line 334
    .local v0, "allowedCipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    new-instance v4, Ljava/util/TreeSet;

    #@c
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@f
    .line 335
    .local v4, "suites":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lsun/security/ssl/CipherSuite;>;"
    invoke-virtual {p1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_5

    #@19
    .line 336
    iget-object v5, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@1b
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1d
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@1f
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@21
    if-eq v5, v6, :cond_5

    #@23
    .line 337
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v3

    #@27
    .local v3, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_5

    #@2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lsun/security/ssl/CipherSuite;

    #@33
    .line 338
    .local v2, "suite":Lsun/security/ssl/CipherSuite;
    iget-boolean v5, v2, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@35
    if-eqz v5, :cond_1

    #@37
    iget v5, v2, Lsun/security/ssl/CipherSuite;->priority:I

    #@39
    if-lt v5, v1, :cond_1

    #@3b
    .line 342
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_2

    #@41
    .line 343
    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@43
    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@45
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@47
    if-le v5, v6, :cond_2

    #@49
    .line 344
    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    #@4b
    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@4d
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4f
    if-gt v5, v6, :cond_2

    #@51
    .line 345
    iget-object v5, p0, Lsun/security/ssl/SSLContextImpl;->defaultAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@53
    .line 346
    sget-object v6, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@55
    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@58
    move-result-object v6

    #@59
    .line 347
    iget-object v7, v2, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@5b
    .line 345
    invoke-interface {v5, v6, v7, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_1

    #@61
    .line 348
    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@64
    goto :goto_0

    #@65
    .line 350
    :cond_2
    sget-object v5, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@67
    if-eqz v5, :cond_1

    #@69
    .line 351
    const-string/jumbo v5, "sslctx"

    #@6c
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@6f
    move-result v5

    #@70
    .line 350
    if-eqz v5, :cond_1

    #@72
    .line 351
    const-string/jumbo v5, "verbose"

    #@75
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@78
    move-result v5

    #@79
    .line 350
    if-eqz v5, :cond_1

    #@7b
    .line 352
    iget v5, v2, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@7d
    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@7f
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@81
    if-gt v5, v6, :cond_3

    #@83
    .line 353
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@85
    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v7, "Ignoring obsoleted cipher suite: "

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    .line 353
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    goto :goto_0

    #@9d
    .line 355
    :cond_3
    iget v5, v2, Lsun/security/ssl/CipherSuite;->supported:I

    #@9f
    iget-object v6, p1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@a1
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@a3
    if-le v5, v6, :cond_4

    #@a5
    .line 356
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a7
    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v7, "Ignoring unsupported cipher suite: "

    #@af
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    .line 356
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@be
    goto/16 :goto_0

    #@c0
    .line 359
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c2
    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v7, "Ignoring unavailable cipher suite: "

    #@ca
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v6

    #@d6
    .line 359
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 366
    .end local v2    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v3    # "suite$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v5, Lsun/security/ssl/CipherSuiteList;

    #@dd
    invoke-direct {v5, v4}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    #@e0
    return-object v5
.end method


# virtual methods
.method protected engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    #@0
    .prologue
    .line 196
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 198
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    #@9
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 200
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    #@f
    invoke-direct {v0, p0}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    #@12
    return-object v0
.end method

.method protected engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 204
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 206
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    #@9
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 208
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLEngineImpl;

    #@f
    invoke-direct {v0, p0, p1, p2}, Lsun/security/ssl/SSLEngineImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    #@12
    return-object v0
.end method

.method protected engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->clientCache:Lsun/security/ssl/SSLSessionContextImpl;

    #@2
    return-object v0
.end method

.method protected engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->serverCache:Lsun/security/ssl/SSLSessionContextImpl;

    #@2
    return-object v0
.end method

.method protected engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "SSLContext is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 192
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLServerSocketFactoryImpl;

    #@f
    invoke-direct {v0, p0}, Lsun/security/ssl/SSLServerSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    #@12
    return-object v0
.end method

.method protected engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    #@0
    .prologue
    .line 181
    iget-boolean v0, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 183
    const-string/jumbo v1, "SSLContextImpl is not initialized"

    #@9
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 185
    :cond_0
    new-instance v0, Lsun/security/ssl/SSLSocketFactoryImpl;

    #@f
    invoke-direct {v0, p0}, Lsun/security/ssl/SSLSocketFactoryImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    #@12
    return-object v0
.end method

.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@3
    .line 77
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLContextImpl;->chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    #@9
    .line 79
    if-nez p2, :cond_0

    #@b
    .line 82
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 81
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@12
    move-result-object v1

    #@13
    .line 83
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    #@14
    nop

    #@15
    nop

    #@16
    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@19
    .line 84
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object p2

    #@1d
    .line 89
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lsun/security/ssl/SSLContextImpl;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@23
    .line 91
    if-nez p3, :cond_3

    #@25
    .line 92
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2b
    .line 109
    :goto_1
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@2d
    if-eqz v2, :cond_1

    #@2f
    const-string/jumbo v2, "sslctx"

    #@32
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 110
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v3, "trigger seeding of SecureRandom"

    #@3d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 112
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    #@42
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    #@45
    .line 113
    sget-object v2, Lsun/security/ssl/SSLContextImpl;->debug:Lsun/security/ssl/Debug;

    #@47
    if-eqz v2, :cond_2

    #@49
    const-string/jumbo v2, "sslctx"

    #@4c
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_2

    #@52
    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v3, "done seeding SecureRandom"

    #@57
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    .line 116
    :cond_2
    const/4 v2, 0x1

    #@5b
    iput-boolean v2, p0, Lsun/security/ssl/SSLContextImpl;->isInitialized:Z

    #@5d
    .line 75
    return-void

    #@5e
    .line 94
    :cond_3
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 95
    invoke-virtual {p3}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    #@67
    move-result-object v2

    #@68
    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@6a
    if-eq v2, v3, :cond_4

    #@6c
    .line 96
    new-instance v2, Ljava/security/KeyManagementException;

    #@6e
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v4, "FIPS mode: SecureRandom must be from provider "

    #@76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    .line 98
    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@7c
    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    .line 96
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v2

    #@8c
    .line 100
    :cond_4
    iput-object p3, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    #@8e
    goto :goto_1

    #@8f
    .line 85
    :catch_0
    move-exception v0

    #@90
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;
    .locals 2
    .param p1, "roleIsServer"    # Z

    #@0
    .prologue
    .line 287
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    #@4
    .line 291
    if-eqz p1, :cond_1

    #@6
    .line 292
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 294
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    .line 293
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@16
    .line 297
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v0

    #@1a
    .line 299
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 301
    const/4 v0, 0x0

    #@1f
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@22
    move-result-object v0

    #@23
    const/4 v1, 0x1

    #@24
    .line 300
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@2a
    .line 304
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    return-object v0

    #@2e
    .line 287
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit p0

    #@30
    throw v0
.end method

.method abstract getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;
    .locals 2
    .param p1, "roleIsServer"    # Z

    #@0
    .prologue
    .line 251
    if-eqz p1, :cond_1

    #@2
    .line 252
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 253
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@8
    .line 254
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 253
    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    #@15
    .line 257
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    #@17
    return-object v0

    #@18
    .line 259
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 260
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@1e
    .line 261
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 260
    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@29
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    #@2b
    .line 264
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    #@2d
    return-object v0
.end method

.method abstract getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lsun/security/ssl/EphemeralKeyManager;

    #@2
    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method getSuportedProtocolList()Lsun/security/ssl/ProtocolList;
    .locals 2

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 243
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@6
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@11
    .line 242
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    #@13
    .line 246
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedProtocolList:Lsun/security/ssl/ProtocolList;

    #@15
    return-object v0
.end method

.method getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;
    .locals 2

    #@0
    .prologue
    .line 271
    monitor-enter p0

    #@1
    .line 273
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;->clearAvailableCache()V

    #@4
    .line 275
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 277
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    .line 276
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLContextImpl;->getApplicableCipherSuiteList(Lsun/security/ssl/ProtocolList;Z)Lsun/security/ssl/CipherSuiteList;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;

    #@13
    .line 280
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->supportedCipherSuiteList:Lsun/security/ssl/CipherSuiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    return-object v0

    #@17
    .line 271
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method abstract getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    #@2
    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    return-object v0
.end method

.method isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z
    .locals 2
    .param p1, "protocols"    # Lsun/security/ssl/ProtocolList;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 314
    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultServerProtocolList:Lsun/security/ssl/ProtocolList;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    .line 315
    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl;->defaultClientProtocolList:Lsun/security/ssl/ProtocolList;

    #@7
    if-ne p1, v1, :cond_1

    #@9
    .line 314
    :cond_0
    :goto_0
    return v0

    #@a
    .line 315
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
