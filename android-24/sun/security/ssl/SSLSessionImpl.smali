.class final Lsun/security/ssl/SSLSessionImpl;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "SSLSessionImpl.java"


# static fields
.field private static final compression_null:B

.field private static volatile counter:I

.field private static final debug:Lsun/security/ssl/Debug;

.field private static defaultRejoinable:Z

.field static final nullSession:Lsun/security/ssl/SSLSessionImpl;


# instance fields
.field private acceptLargeFragments:Z

.field private cipherSuite:Lsun/security/ssl/CipherSuite;

.field private compressionMethod:B

.field private context:Lsun/security/ssl/SSLSessionContextImpl;

.field private final creationTime:J

.field private final host:Ljava/lang/String;

.field private invalidated:Z

.field private lastUsedTime:J

.field private localCerts:[Ljava/security/cert/X509Certificate;

.field private localPrincipal:Ljava/security/Principal;

.field private localPrivateKey:Ljava/security/PrivateKey;

.field private localSupportedSignAlgs:[Ljava/lang/String;

.field private masterSecret:Ljavax/crypto/SecretKey;

.field private peerCerts:[Ljava/security/cert/X509Certificate;

.field private peerPrincipal:Ljava/security/Principal;

.field private peerSupportedSignAlgs:[Ljava/lang/String;

.field private final port:I

.field private final protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private sessionCount:I

.field private final sessionId:Lsun/security/ssl/SessionId;

.field private table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/ssl/SecureKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Lsun/security/ssl/SSLSessionImpl;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/SSLSessionImpl;-><init>()V

    #@5
    sput-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    #@7
    .line 124
    const/4 v0, 0x0

    #@8
    sput v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    #@a
    .line 129
    const/4 v0, 0x1

    #@b
    sput-boolean v0, Lsun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    #@d
    .line 132
    const-string/jumbo v0, "ssl"

    #@10
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    #@16
    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@3
    sget-object v2, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    #@5
    .line 142
    new-instance v4, Lsun/security/ssl/SessionId;

    #@7
    const/4 v0, 0x0

    #@8
    invoke-direct {v4, v0, v3}, Lsun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    #@b
    const/4 v6, -0x1

    #@c
    move-object v0, p0

    #@d
    move-object v5, v3

    #@e
    .line 141
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    #@11
    .line 140
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Ljava/security/SecureRandom;Ljava/lang/String;I)V
    .locals 7
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "cipherSuite"    # Lsun/security/ssl/CipherSuite;
    .param p4, "generator"    # Ljava/security/SecureRandom;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/ProtocolVersion;",
            "Lsun/security/ssl/CipherSuite;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/security/SecureRandom;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p3, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v4, Lsun/security/ssl/SessionId;

    #@2
    sget-boolean v0, Lsun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    #@4
    invoke-direct {v4, v0, p4}, Lsun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v5, p5

    #@c
    move v6, p6

    #@d
    .line 153
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    #@10
    .line 152
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V
    .locals 4
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "cipherSuite"    # Lsun/security/ssl/CipherSuite;
    .param p4, "id"    # Lsun/security/ssl/SessionId;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/ProtocolVersion;",
            "Lsun/security/ssl/CipherSuite;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/SessionId;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 160
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    #@5
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    #@b
    .line 104
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    #@f
    .line 621
    new-instance v0, Ljava/util/Hashtable;

    #@11
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@14
    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    #@16
    .line 720
    const-string/jumbo v0, "jsse.SSLEngine.acceptLargeFragments"

    #@19
    invoke-static {v0, v3}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@1c
    move-result v0

    #@1d
    .line 719
    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z

    #@1f
    .line 163
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@21
    .line 164
    iput-object p4, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@23
    .line 165
    iput-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@25
    .line 166
    iput-byte v3, p0, Lsun/security/ssl/SSLSessionImpl;->compressionMethod:B

    #@27
    .line 167
    iput-object p2, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@29
    .line 168
    iput-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    #@2b
    .line 169
    iput-object p5, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    #@2d
    .line 170
    iput p6, p0, Lsun/security/ssl/SSLSessionImpl;->port:I

    #@2f
    .line 171
    sget v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    sput v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    #@35
    iput v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionCount:I

    #@37
    .line 173
    invoke-static {p3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 172
    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    #@3d
    .line 175
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    #@3f
    if-eqz v0, :cond_0

    #@41
    const-string/jumbo v0, "session"

    #@44
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_0

    #@4a
    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4c
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "%% Initialized:  "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@63
    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 360
    if-ne p1, p0, :cond_0

    #@3
    .line 361
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 364
    :cond_0
    instance-of v2, p1, Lsun/security/ssl/SSLSessionImpl;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 365
    nop

    #@b
    nop

    #@c
    .line 366
    .local v0, "sess":Lsun/security/ssl/SSLSessionImpl;
    iget-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@e
    if-eqz v2, :cond_1

    #@10
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@12
    .line 367
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@15
    move-result-object v2

    #@16
    .line 366
    invoke-virtual {v1, v2}, Lsun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    :cond_1
    return v1

    #@1b
    .line 370
    .end local v0    # "sess":Lsun/security/ssl/SSLSessionImpl;
    :cond_2
    return v1
.end method

.method protected declared-synchronized expandBufferSizes()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 727
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 726
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public finalize()V
    .locals 3

    #@0
    .prologue
    .line 783
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getValueNames()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 784
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 785
    aget-object v2, v1, v0

    #@a
    invoke-virtual {p0, v2}, Lsun/security/ssl/SSLSessionImpl;->removeValue(Ljava/lang/String;)V

    #@d
    .line 784
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 782
    :cond_0
    return-void
.end method

.method public declared-synchronized getApplicationBufferSize()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 744
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, -0x5

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 482
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@a
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 483
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@12
    const-string/jumbo v1, "no certificates expected for Kerberos cipher suites"

    #@15
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 486
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 487
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [Ljava/security/cert/X509Certificate;

    #@25
    return-object v0

    #@26
    .line 489
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@28
    const-string/jumbo v1, "peer not authenticated"

    #@2b
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method getCompression()B
    .locals 1

    #@0
    .prologue
    .line 344
    iget-byte v0, p0, Lsun/security/ssl/SSLSessionImpl;->compressionMethod:B

    #@2
    return v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 545
    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    #@2
    return-wide v0
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    #@0
    .prologue
    .line 553
    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    #@a
    :goto_0
    return-wide v0

    #@b
    :cond_0
    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    #@d
    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 419
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 420
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/security/cert/Certificate;

    #@e
    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 532
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@3
    iget-object v1, v1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5
    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 533
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@b
    iget-object v1, v1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@d
    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@f
    if-ne v1, v2, :cond_2

    #@11
    .line 535
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    #@13
    if-nez v1, :cond_1

    #@15
    :goto_0
    return-object v0

    #@16
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    #@18
    goto :goto_0

    #@19
    .line 537
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    #@1b
    if-nez v1, :cond_3

    #@1d
    :goto_1
    return-object v0

    #@1e
    .line 538
    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    #@20
    const/4 v1, 0x0

    #@21
    aget-object v0, v0, v1

    #@23
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@26
    move-result-object v0

    #@27
    goto :goto_1
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 753
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 756
    :cond_0
    const/4 v0, 0x0

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    return-object v0
.end method

.method getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public declared-synchronized getPacketBufferSize()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 735
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 736
    const v0, 0x8219

    #@8
    :goto_0
    monitor-exit p0

    #@9
    .line 735
    return v0

    #@a
    .line 736
    :cond_0
    const/16 v0, 0x4219

    #@c
    goto :goto_0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public getPeerAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 570
    :catch_0
    move-exception v0

    #@8
    .line 571
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    iget-object v5, v5, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4
    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    if-eq v5, v6, :cond_0

    #@8
    .line 441
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@a
    iget-object v5, v5, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@c
    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@e
    if-ne v5, v6, :cond_1

    #@10
    .line 442
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@12
    const-string/jumbo v6, "no certificates expected for Kerberos cipher suites"

    #@15
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@18
    throw v5

    #@19
    .line 445
    :cond_1
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@1b
    if-nez v5, :cond_2

    #@1d
    .line 446
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@1f
    const-string/jumbo v6, "peer not authenticated"

    #@22
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5

    #@26
    .line 449
    :cond_2
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@28
    array-length v5, v5

    #@29
    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    #@2b
    .line 450
    .local v0, "certs":[Ljavax/security/cert/X509Certificate;
    const/4 v4, 0x0

    #@2c
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@2e
    array-length v5, v5

    #@2f
    if-ge v4, v5, :cond_3

    #@31
    .line 451
    const/4 v1, 0x0

    #@32
    .line 453
    .local v1, "der":[B
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@34
    aget-object v5, v5, v4

    #@36
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@39
    move-result-object v1

    #@3a
    .line 454
    .local v1, "der":[B
    invoke-static {v1}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    #@3d
    move-result-object v5

    #@3e
    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 450
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_0

    #@43
    .line 457
    .end local v1    # "der":[B
    :catch_0
    move-exception v3

    #@44
    .line 458
    .local v3, "e":Ljavax/security/cert/CertificateException;
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@46
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 455
    .end local v3    # "e":Ljavax/security/cert/CertificateException;
    :catch_1
    move-exception v2

    #@4f
    .line 456
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@51
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@58
    throw v5

    #@59
    .line 462
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_3
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 392
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@a
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 393
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@12
    const-string/jumbo v1, "no certificates expected for Kerberos cipher suites"

    #@15
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 396
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 397
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@1f
    const-string/jumbo v1, "peer not authenticated"

    #@22
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 402
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@28
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, [Ljava/security/cert/Certificate;

    #@2e
    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 584
    iget v0, p0, Lsun/security/ssl/SSLSessionImpl;->port:I

    #@2
    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 508
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@a
    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@e
    if-ne v0, v1, :cond_2

    #@10
    .line 509
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 510
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@16
    const-string/jumbo v1, "peer not authenticated"

    #@19
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 513
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    #@1f
    return-object v0

    #@20
    .line 516
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@22
    if-nez v0, :cond_3

    #@24
    .line 517
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@26
    const-string/jumbo v1, "peer not authenticated"

    #@29
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 519
    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@2f
    const/4 v1, 0x0

    #@30
    aget-object v0, v0, v1

    #@32
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 765
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 768
    :cond_0
    const/4 v0, 0x0

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 337
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method getProtocolVersion()Lsun/security/ssl/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 3

    #@0
    .prologue
    .line 291
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 292
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    #@8
    const-string/jumbo v2, "getSSLSessionContext"

    #@b
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 295
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    #@13
    return-object v1
.end method

.method getSessionId()Lsun/security/ssl/SessionId;
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@2
    return-object v0
.end method

.method getSuite()Lsun/security/ssl/CipherSuite;
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 654
    if-nez p1, :cond_0

    #@2
    .line 655
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "argument can not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 658
    :cond_0
    new-instance v0, Lsun/security/ssl/SecureKey;

    #@d
    invoke-direct {v0, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    #@10
    .line 659
    .local v0, "secureKey":Lsun/security/ssl/SecureKey;
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 689
    new-instance v4, Ljava/util/Vector;

    #@2
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@5
    .line 691
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-static {}, Lsun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 693
    .local v3, "securityCtx":Ljava/lang/Object;
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/ssl/SecureKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 694
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lsun/security/ssl/SecureKey;

    #@1b
    .line 696
    .local v1, "key":Lsun/security/ssl/SecureKey;
    invoke-virtual {v1}, Lsun/security/ssl/SecureKey;->getSecurityContext()Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 697
    invoke-virtual {v1}, Lsun/security/ssl/SecureKey;->getAppKey()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2c
    goto :goto_0

    #@2d
    .line 700
    .end local v1    # "key":Lsun/security/ssl/SecureKey;
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@30
    move-result v5

    #@31
    new-array v2, v5, [Ljava/lang/String;

    #@33
    .line 701
    .local v2, "names":[Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    #@36
    .line 703
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 603
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne p0, v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 604
    return-void

    #@7
    .line 606
    :cond_0
    const/4 v0, 0x1

    #@8
    :try_start_1
    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->invalidated:Z

    #@a
    .line 607
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    #@c
    if-eqz v0, :cond_1

    #@e
    const-string/jumbo v0, "session"

    #@11
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 608
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "%% Invalidated:  "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 610
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 611
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    #@36
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@38
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLSessionContextImpl;->remove(Lsun/security/ssl/SessionId;)V

    #@3b
    .line 612
    const/4 v0, 0x0

    #@3c
    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    :cond_2
    monitor-exit p0

    #@3f
    .line 597
    return-void

    #@40
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0
.end method

.method isLocalAuthenticationValid()Z
    .locals 2

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 257
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    #@6
    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 263
    :cond_0
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 258
    :catch_0
    move-exception v0

    #@c
    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@f
    .line 260
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method isRejoinable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 239
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    #@7
    invoke-virtual {v1}, Lsun/security/ssl/SessionId;->length()I

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 240
    iget-boolean v1, p0, Lsun/security/ssl/SSLSessionImpl;->invalidated:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 239
    :cond_0
    :goto_0
    return v0

    #@12
    .line 240
    :cond_1
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->isLocalAuthenticationValid()Z

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 244
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 628
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 629
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v4, "arguments can not be null"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 632
    :cond_1
    new-instance v2, Lsun/security/ssl/SecureKey;

    #@f
    invoke-direct {v2, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    #@12
    .line 633
    .local v2, "secureKey":Lsun/security/ssl/SecureKey;
    iget-object v3, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v3, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 635
    .local v1, "oldValue":Ljava/lang/Object;
    instance-of v3, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 638
    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1e
    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@21
    .line 639
    .local v0, "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    #@23
    .end local v1    # "oldValue":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@26
    .line 641
    .end local v0    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_2
    instance-of v3, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 644
    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@2c
    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@2f
    .line 645
    .restart local v0    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@31
    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@34
    .line 627
    .end local v0    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 668
    if-nez p1, :cond_0

    #@2
    .line 669
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "argument can not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 672
    :cond_0
    new-instance v1, Lsun/security/ssl/SecureKey;

    #@d
    invoke-direct {v1, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    #@10
    .line 673
    .local v1, "secureKey":Lsun/security/ssl/SecureKey;
    iget-object v3, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    .line 675
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 678
    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1c
    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@1f
    .line 679
    .local v0, "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    check-cast v2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@21
    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@24
    .line 667
    .end local v0    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_1
    return-void
.end method

.method setContext(Lsun/security/ssl/SSLSessionContextImpl;)V
    .locals 1
    .param p1, "ctx"    # Lsun/security/ssl/SSLSessionContextImpl;

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 589
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    #@6
    .line 587
    :cond_0
    return-void
.end method

.method setLastAccessedTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 557
    iput-wide p1, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    #@2
    .line 556
    return-void
.end method

.method setLocalCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "local"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 202
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    #@2
    .line 201
    return-void
.end method

.method setLocalPrincipal(Ljava/security/Principal;)V
    .locals 0
    .param p1, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    #@2
    .line 227
    return-void
.end method

.method setLocalPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    #@2
    .line 205
    return-void
.end method

.method setMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 2
    .param p1, "secret"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 182
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    #@6
    .line 180
    return-void

    #@7
    .line 184
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "setMasterSecret() error"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method setPeerCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "peer"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 197
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    #@6
    .line 195
    :cond_0
    return-void
.end method

.method setPeerPrincipal(Ljava/security/Principal;)V
    .locals 1
    .param p1, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 220
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    #@6
    .line 218
    :cond_0
    return-void
.end method

.method setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p1, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-static {p1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 211
    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    #@6
    .line 210
    return-void
.end method

.method setSuite(Lsun/security/ssl/CipherSuite;)V
    .locals 3
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    .line 317
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "session"

    #@9
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "%% Negotiating:  "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 314
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[Session-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionCount:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 774
    const-string/jumbo v1, ", "

    #@15
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 774
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 775
    const-string/jumbo v1, "]"

    #@24
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method
