.class final Lsun/security/ssl/X509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/X509KeyManagerImpl$CheckResult;,
        Lsun/security/ssl/X509KeyManagerImpl$CheckType;,
        Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;,
        Lsun/security/ssl/X509KeyManagerImpl$KeyType;,
        Lsun/security/ssl/X509KeyManagerImpl$SizedMap;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;

.field private static final useDebug:Z

.field private static verificationDate:Ljava/util/Date;


# instance fields
.field private final builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uidCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 66
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@b
    if-eqz v0, :cond_0

    #@d
    const-string/jumbo v0, "keymanager"

    #@10
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    .line 65
    :goto_0
    sput-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@16
    .line 60
    return-void

    #@17
    .line 66
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 1
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    #@0
    .prologue
    .line 81
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    #@7
    .line 80
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 84
    .local p1, "builders":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    #@5
    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@a
    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    .line 88
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, v1}, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>(Lsun/security/ssl/X509KeyManagerImpl$SizedMap;)V

    #@12
    .line 87
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    #@18
    .line 84
    return-void
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;
    .locals 13
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;[",
            "Ljava/security/Principal;",
            "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p1, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 333
    :cond_0
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 336
    :cond_1
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 337
    .local v3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v7, 0x0

    #@f
    .line 338
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    #@12
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@15
    move-result v10

    #@16
    .local v10, "n":I
    move-object v8, v7

    #@17
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v8, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_0
    if-ge v1, v10, :cond_4

    #@19
    .line 341
    const/4 v4, 0x0

    #@1a
    move-object v0, p0

    #@1b
    move-object v2, p1

    #@1c
    move-object/from16 v5, p3

    #@1e
    move-object/from16 v6, p4

    #@20
    .line 340
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    #@23
    move-result-object v11

    #@24
    .line 342
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v11, :cond_9

    #@26
    .line 346
    const/4 v0, 0x0

    #@27
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v12

    #@2b
    check-cast v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@2d
    .line 347
    .local v12, "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    iget-object v0, v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2f
    sget-object v2, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@31
    if-ne v0, v2, :cond_3

    #@33
    .line 348
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 349
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "KeyMgr: choosing key: "

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@50
    .line 351
    :cond_2
    invoke-direct {p0, v12}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 353
    :cond_3
    if-nez v8, :cond_8

    #@57
    .line 354
    new-instance v7, Ljava/util/ArrayList;

    #@59
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 356
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5f
    .line 338
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@61
    move-object v8, v7

    #@62
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_0

    #@63
    .line 362
    :cond_4
    if-nez v8, :cond_6

    #@65
    .line 363
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@67
    if-eqz v0, :cond_5

    #@69
    .line 364
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@6b
    const-string/jumbo v2, "KeyMgr: no matching key found"

    #@6e
    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@71
    .line 366
    :cond_5
    const/4 v0, 0x0

    #@72
    return-object v0

    #@73
    .line 368
    :cond_6
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@76
    .line 369
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@78
    if-eqz v0, :cond_7

    #@7a
    .line 370
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@7c
    const-string/jumbo v2, "KeyMgr: no good matching key found, returning best match out of:"

    #@7f
    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@82
    .line 372
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@84
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@8b
    .line 374
    :cond_7
    const/4 v0, 0x0

    #@8c
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@92
    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    return-object v0

    #@97
    .line 358
    :catch_0
    move-exception v9

    #@98
    .local v9, "e":Ljava/lang/Exception;
    move-object v7, v8

    #@99
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2

    #@9a
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :catch_1
    move-exception v9

    #@9b
    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@9c
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_8
    move-object v7, v8

    #@9d
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    #@9e
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_9
    move-object v7, v8

    #@9f
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2
.end method

.method private static conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z
    .locals 6
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 719
    new-instance v1, Lsun/security/provider/certpath/AlgorithmChecker;

    #@3
    invoke-direct {v1, p0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    #@6
    .line 721
    .local v1, "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v4, 0x0

    #@7
    :try_start_0
    invoke-virtual {v1, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 728
    array-length v4, p1

    #@b
    add-int/lit8 v3, v4, -0x1

    #@d
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@f
    .line 729
    aget-object v0, p1, v3

    #@11
    .line 732
    .local v0, "cert":Ljava/security/cert/Certificate;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v1, v0, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    .line 728
    add-int/lit8 v3, v3, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 722
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@1c
    .line 724
    .local v2, "cpve":Ljava/security/cert/CertPathValidatorException;
    return v5

    #@1d
    .line 733
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v3    # "i":I
    :catch_1
    move-exception v2

    #@1e
    .line 734
    .restart local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    return v5

    #@1f
    .line 738
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    const/4 v4, 0x1

    #@20
    return v4
.end method

.method private getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;
    .locals 8
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 152
    if-eqz p1, :cond_2

    #@4
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_2

    #@a
    .line 153
    instance-of v6, p1, Ljavax/net/ssl/SSLSocket;

    #@c
    .line 152
    if-eqz v6, :cond_2

    #@e
    move-object v4, p1

    #@f
    .line 155
    nop

    #@10
    nop

    #@11
    .line 156
    .local v4, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@14
    move-result-object v3

    #@15
    .line 158
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_1

    #@17
    .line 160
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    #@1e
    move-result-object v2

    #@1f
    .line 161
    .local v2, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v5, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@21
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@23
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@25
    if-lt v5, v6, :cond_1

    #@27
    .line 162
    const/4 v1, 0x0

    #@28
    .line 164
    .local v1, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v5, v3, Ljavax/net/ssl/ExtendedSSLSession;

    #@2a
    if-eqz v5, :cond_0

    #@2c
    move-object v0, v3

    #@2d
    .line 166
    nop

    #@2e
    nop

    #@2f
    .line 168
    .local v0, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 171
    .end local v0    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v1    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_0
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@35
    invoke-direct {v5, v4, v1, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    #@38
    return-object v5

    #@39
    .line 176
    .end local v2    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_1
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@3b
    invoke-direct {v5, v4, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    #@3e
    return-object v5

    #@3f
    .line 179
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    new-instance v6, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@41
    nop

    #@42
    nop

    #@43
    invoke-direct {v6, v5, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    #@46
    return-object v6
.end method

.method private getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;
    .locals 7
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 184
    if-eqz p1, :cond_1

    #@3
    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@6
    move-result-object v3

    #@7
    .line 186
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_1

    #@9
    .line 188
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-static {v4}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    #@10
    move-result-object v2

    #@11
    .line 189
    .local v2, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v4, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@13
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@15
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@17
    if-lt v4, v5, :cond_1

    #@19
    .line 190
    const/4 v1, 0x0

    #@1a
    .line 192
    .local v1, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v4, v3, Ljavax/net/ssl/ExtendedSSLSession;

    #@1c
    if-eqz v4, :cond_0

    #@1e
    move-object v0, v3

    #@1f
    .line 194
    nop

    #@20
    nop

    #@21
    .line 196
    .local v0, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 199
    .end local v0    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v1    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_0
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@27
    invoke-direct {v4, p1, v1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    #@2a
    return-object v4

    #@2b
    .line 205
    .end local v2    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@2d
    invoke-direct {v4, p1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    #@30
    return-object v4
.end method

.method private getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;
    .locals 23
    .param p1, "builderIndex"    # I
    .param p4, "findAll"    # Z
    .param p5, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p6, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;Z",
            "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p2, "keyTypes":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    .local p3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    #@4
    move/from16 v0, p1

    #@6
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v8

    #@a
    check-cast v8, Ljava/security/KeyStore$Builder;

    #@c
    .line 614
    .local v8, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v8}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    #@f
    move-result-object v17

    #@10
    .line 615
    .local v17, "ks":Ljava/security/KeyStore;
    const/16 v19, 0x0

    #@12
    .line 616
    .local v19, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    sget-object v10, Lsun/security/ssl/X509KeyManagerImpl;->verificationDate:Ljava/util/Date;

    #@14
    .line 617
    .local v10, "date":Ljava/util/Date;
    const/16 v18, 0x0

    #@16
    .line 618
    .local v18, "preferred":Z
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@19
    move-result-object v11

    #@1a
    .end local v19    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v11, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_f

    #@20
    .line 619
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    check-cast v5, Ljava/lang/String;

    #@26
    .line 621
    .local v5, "alias":Ljava/lang/String;
    move-object/from16 v0, v17

    #@28
    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    .line 625
    move-object/from16 v0, v17

    #@30
    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@33
    move-result-object v6

    #@34
    .line 626
    .local v6, "chain":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_0

    #@36
    array-length v3, v6

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 631
    const/4 v13, 0x0

    #@3a
    .line 632
    .local v13, "incompatible":Z
    const/4 v3, 0x0

    #@3b
    array-length v0, v6

    #@3c
    move/from16 v21, v0

    #@3e
    :goto_1
    move/from16 v0, v21

    #@40
    if-ge v3, v0, :cond_1

    #@42
    aget-object v9, v6, v3

    #@44
    .line 633
    .local v9, "cert":Ljava/security/cert/Certificate;
    instance-of v0, v9, Ljava/security/cert/X509Certificate;

    #@46
    move/from16 v22, v0

    #@48
    if-nez v22, :cond_3

    #@4a
    .line 635
    const/4 v13, 0x1

    #@4b
    .line 639
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    if-nez v13, :cond_0

    #@4d
    .line 644
    const/4 v4, -0x1

    #@4e
    .line 645
    .local v4, "keyIndex":I
    const/4 v14, 0x0

    #@4f
    .line 646
    .local v14, "j":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v16

    #@53
    .local v16, "keyType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_2

    #@59
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v15

    #@5d
    check-cast v15, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    #@5f
    .line 647
    .local v15, "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    invoke-virtual {v15, v6}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->matches([Ljava/security/cert/Certificate;)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_4

    #@65
    .line 648
    move v4, v14

    #@66
    .line 653
    .end local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    :cond_2
    const/4 v3, -0x1

    #@67
    if-ne v4, v3, :cond_5

    #@69
    .line 654
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@6b
    if-eqz v3, :cond_0

    #@6d
    .line 655
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@6f
    new-instance v21, Ljava/lang/StringBuilder;

    #@71
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v22, "Ignoring alias "

    #@77
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v21

    #@7b
    move-object/from16 v0, v21

    #@7d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v21

    #@81
    .line 656
    const-string/jumbo v22, ": key algorithm does not match"

    #@84
    .line 655
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v21

    #@88
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v21

    #@8c
    move-object/from16 v0, v21

    #@8e
    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@91
    goto :goto_0

    #@92
    .line 632
    .end local v4    # "keyIndex":I
    .end local v14    # "j":I
    .end local v16    # "keyType$iterator":Ljava/util/Iterator;
    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@94
    goto :goto_1

    #@95
    .line 651
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "keyIndex":I
    .restart local v14    # "j":I
    .restart local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    .restart local v16    # "keyType$iterator":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    #@97
    goto :goto_2

    #@98
    .line 661
    .end local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    :cond_5
    if-eqz p3, :cond_8

    #@9a
    .line 662
    const/4 v12, 0x0

    #@9b
    .line 663
    .local v12, "found":Z
    const/4 v3, 0x0

    #@9c
    array-length v0, v6

    #@9d
    move/from16 v21, v0

    #@9f
    :goto_3
    move/from16 v0, v21

    #@a1
    if-ge v3, v0, :cond_6

    #@a3
    aget-object v9, v6, v3

    #@a5
    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v20, v9

    #@a7
    .line 664
    check-cast v20, Ljava/security/cert/X509Certificate;

    #@a9
    .line 665
    .local v20, "xcert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@ac
    move-result-object v22

    #@ad
    move-object/from16 v0, p3

    #@af
    move-object/from16 v1, v22

    #@b1
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b4
    move-result v22

    #@b5
    if-eqz v22, :cond_7

    #@b7
    .line 666
    const/4 v12, 0x1

    #@b8
    .line 670
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_6
    if-nez v12, :cond_8

    #@ba
    .line 671
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@bc
    if-eqz v3, :cond_0

    #@be
    .line 672
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@c0
    new-instance v21, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v22, "Ignoring alias "

    #@c8
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v21

    #@cc
    move-object/from16 v0, v21

    #@ce
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v21

    #@d2
    .line 673
    const-string/jumbo v22, ": issuers do not match"

    #@d5
    .line 672
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v21

    #@d9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v21

    #@dd
    move-object/from16 v0, v21

    #@df
    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@e2
    goto/16 :goto_0

    #@e4
    .line 663
    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@e6
    goto :goto_3

    #@e7
    .line 680
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "found":Z
    .end local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_8
    if-eqz p6, :cond_9

    #@e9
    .line 681
    move-object/from16 v0, p6

    #@eb
    invoke-static {v0, v6}, Lsun/security/ssl/X509KeyManagerImpl;->conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z

    #@ee
    move-result v3

    #@ef
    if-eqz v3, :cond_c

    #@f1
    .line 691
    :cond_9
    if-nez v10, :cond_a

    #@f3
    .line 692
    new-instance v10, Ljava/util/Date;

    #@f5
    .end local v10    # "date":Ljava/util/Date;
    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    #@f8
    .line 695
    .restart local v10    # "date":Ljava/util/Date;
    :cond_a
    const/4 v3, 0x0

    #@f9
    aget-object v3, v6, v3

    #@fb
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@fd
    move-object/from16 v0, p5

    #@ff
    invoke-virtual {v0, v3, v10}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->check(Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@102
    move-result-object v7

    #@103
    .line 697
    .local v7, "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    new-instance v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@105
    move/from16 v3, p1

    #@107
    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;-><init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lsun/security/ssl/X509KeyManagerImpl$CheckResult;)V

    #@10a
    .line 699
    .local v2, "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    if-nez v18, :cond_b

    #@10c
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@10e
    if-ne v7, v3, :cond_b

    #@110
    if-nez v4, :cond_b

    #@112
    .line 700
    const/16 v18, 0x1

    #@114
    .line 702
    :cond_b
    if-eqz v18, :cond_d

    #@116
    if-nez p4, :cond_d

    #@118
    .line 705
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@11b
    move-result-object v3

    #@11c
    return-object v3

    #@11d
    .line 683
    .end local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .end local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :cond_c
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@11f
    if-eqz v3, :cond_0

    #@121
    .line 684
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@123
    new-instance v21, Ljava/lang/StringBuilder;

    #@125
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v22, "Ignoring alias "

    #@12b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v21

    #@12f
    move-object/from16 v0, v21

    #@131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v21

    #@135
    .line 685
    const-string/jumbo v22, ": certificate list does not conform to "

    #@138
    .line 684
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v21

    #@13c
    .line 686
    const-string/jumbo v22, "algorithm constraints"

    #@13f
    .line 684
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v21

    #@143
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v21

    #@147
    move-object/from16 v0, v21

    #@149
    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 707
    .restart local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .restart local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :cond_d
    if-nez v19, :cond_e

    #@150
    .line 708
    new-instance v19, Ljava/util/ArrayList;

    #@152
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@155
    .line 710
    :cond_e
    move-object/from16 v0, v19

    #@157
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15a
    goto/16 :goto_0

    #@15c
    .line 713
    .end local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .end local v4    # "keyIndex":I
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "chain":[Ljava/security/cert/Certificate;
    .end local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .end local v13    # "incompatible":Z
    .end local v14    # "j":I
    .end local v16    # "keyType$iterator":Ljava/util/Iterator;
    :cond_f
    return-object v19
.end method

.method private getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 14
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x2e

    #@2
    const/4 v12, 0x0

    #@3
    .line 219
    if-nez p1, :cond_0

    #@5
    .line 220
    return-object v12

    #@6
    .line 224
    :cond_0
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    #@8
    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v9

    #@c
    check-cast v9, Ljava/lang/ref/Reference;

    #@e
    .line 225
    .local v9, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/security/KeyStore$PrivateKeyEntry;>;"
    if-eqz v9, :cond_1

    #@10
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@13
    move-result-object v11

    #@14
    check-cast v11, Ljava/security/KeyStore$PrivateKeyEntry;

    #@16
    move-object v4, v11

    #@17
    .line 226
    .local v4, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    if-eqz v4, :cond_2

    #@19
    .line 227
    return-object v4

    #@1a
    .end local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_1
    move-object v4, v12

    #@1b
    .line 225
    goto :goto_0

    #@1c
    .line 231
    .restart local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_2
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v5

    #@20
    .line 232
    .local v5, "firstDot":I
    add-int/lit8 v11, v5, 0x1

    #@22
    invoke-virtual {p1, v13, v11}, Ljava/lang/String;->indexOf(II)I

    #@25
    move-result v10

    #@26
    .line 233
    .local v10, "secondDot":I
    const/4 v11, -0x1

    #@27
    if-eq v5, v11, :cond_3

    #@29
    if-ne v10, v5, :cond_4

    #@2b
    .line 235
    :cond_3
    return-object v12

    #@2c
    .line 239
    :cond_4
    add-int/lit8 v11, v5, 0x1

    #@2e
    :try_start_0
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 238
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v2

    #@36
    .line 240
    .local v2, "builderIndex":I
    add-int/lit8 v11, v10, 0x1

    #@38
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 241
    .local v6, "keyStoreAlias":Ljava/lang/String;
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    #@3e
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Ljava/security/KeyStore$Builder;

    #@44
    .line 242
    .local v1, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v1}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    #@47
    move-result-object v7

    #@48
    .line 244
    .local v7, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, p1}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    #@4b
    move-result-object v11

    #@4c
    .line 243
    invoke-virtual {v7, v6, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    #@4f
    move-result-object v8

    #@50
    .line 245
    .local v8, "newEntry":Ljava/security/KeyStore$Entry;
    instance-of v11, v8, Ljava/security/KeyStore$PrivateKeyEntry;

    #@52
    if-nez v11, :cond_5

    #@54
    .line 247
    return-object v12

    #@55
    .line 249
    :cond_5
    move-object v0, v8

    #@56
    nop

    #@57
    nop

    #@58
    move-object v4, v0

    #@59
    .line 250
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    #@5b
    new-instance v13, Ljava/lang/ref/SoftReference;

    #@5d
    invoke-direct {v13, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@60
    invoke-interface {v11, p1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 251
    return-object v4

    #@64
    .line 252
    .end local v1    # "builder":Ljava/security/KeyStore$Builder;
    .end local v2    # "builderIndex":I
    .end local v6    # "keyStoreAlias":Ljava/lang/String;
    .end local v7    # "ks":Ljava/security/KeyStore;
    .end local v8    # "newEntry":Ljava/security/KeyStore$Entry;
    :catch_0
    move-exception v3

    #@65
    .line 254
    .local v3, "e":Ljava/lang/Exception;
    return-object v12
.end method

.method private getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;
    .locals 2
    .param p1, "issuers"    # [Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 431
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 432
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@f
    return-object v0

    #@10
    .line 434
    :cond_0
    return-object v1
.end method

.method private static varargs getKeyTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "keyTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 306
    if-eqz p0, :cond_0

    #@4
    .line 307
    array-length v3, p0

    #@5
    if-nez v3, :cond_1

    #@7
    .line 308
    :cond_0
    return-object v4

    #@8
    .line 307
    :cond_1
    aget-object v3, p0, v2

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 310
    new-instance v1, Ljava/util/ArrayList;

    #@e
    array-length v3, p0

    #@f
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 311
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    array-length v3, p0

    #@13
    :goto_0
    if-ge v2, v3, :cond_2

    #@15
    aget-object v0, p0, v2

    #@17
    .line 312
    .local v0, "keyType":Ljava/lang/String;
    new-instance v4, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    #@19
    invoke-direct {v4, v0}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 311
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 314
    .end local v0    # "keyType":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;
    .locals 4
    .param p1, "entry"    # Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "."

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 214
    iget-object v1, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    #@25
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method private toAliases(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 421
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    new-array v4, v5, [Ljava/lang/String;

    #@6
    .line 422
    .local v4, "s":[Ljava/lang/String;
    const/4 v0, 0x0

    #@7
    .line 423
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .local v3, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@17
    .line 424
    .local v2, "result":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    add-int/lit8 v1, v0, 0x1

    #@19
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v2}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    aput-object v5, v4, v0

    #@1f
    move v0, v1

    #@20
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@21
    .line 426
    .end local v2    # "result":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 116
    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@6
    .line 117
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    #@9
    move-result-object v2

    #@a
    .line 116
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@6
    .line 123
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    #@9
    move-result-object v2

    #@a
    .line 122
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@c
    .line 135
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    #@f
    move-result-object v2

    #@10
    .line 134
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 128
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@c
    .line 129
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    #@f
    move-result-object v2

    #@10
    .line 128
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;
    .locals 12
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    .line 385
    if-nez p1, :cond_0

    #@2
    .line 386
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 389
    :cond_0
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    #@7
    move-result-object v3

    #@8
    .line 390
    .local v3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const/4 v4, 0x0

    #@c
    aput-object p1, v0, v4

    #@e
    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 391
    .local v2, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    const/4 v7, 0x0

    #@13
    .line 392
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v10

    #@1a
    .local v10, "n":I
    move-object v8, v7

    #@1b
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v8, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_0
    if-ge v1, v10, :cond_1

    #@1d
    .line 395
    const/4 v4, 0x1

    #@1e
    move-object v0, p0

    #@1f
    move-object v5, p3

    #@20
    move-object/from16 v6, p4

    #@22
    .line 394
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    #@25
    move-result-object v11

    #@26
    .line 396
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v11, :cond_7

    #@28
    .line 397
    if-nez v8, :cond_6

    #@2a
    .line 398
    new-instance v7, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 400
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    .line 392
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@34
    move-object v8, v7

    #@35
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_0

    #@36
    .line 406
    :cond_1
    if-eqz v8, :cond_2

    #@38
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_4

    #@3e
    .line 407
    :cond_2
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 408
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@44
    const-string/jumbo v4, "KeyMgr: no matching alias found"

    #@47
    invoke-virtual {v0, v4}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@4a
    .line 410
    :cond_3
    const/4 v0, 0x0

    #@4b
    return-object v0

    #@4c
    .line 412
    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@4f
    .line 413
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    #@51
    if-eqz v0, :cond_5

    #@53
    .line 414
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "KeyMgr: getting aliases: "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v0, v4}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    #@6c
    .line 416
    :cond_5
    invoke-direct {p0, v8}, Lsun/security/ssl/X509KeyManagerImpl;->toAliases(Ljava/util/List;)[Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    return-object v0

    #@71
    .line 402
    :catch_0
    move-exception v9

    #@72
    .local v9, "e":Ljava/lang/Exception;
    move-object v7, v8

    #@73
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2

    #@74
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_1
    move-exception v9

    #@75
    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@76
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_6
    move-object v7, v8

    #@77
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    #@78
    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_7
    move-object v7, v8

    #@79
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    #@4
    move-result-object v0

    #@5
    .line 105
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [Ljava/security/cert/X509Certificate;

    #@e
    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 139
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    #@4
    move-result-object v0

    #@5
    .line 111
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 143
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
