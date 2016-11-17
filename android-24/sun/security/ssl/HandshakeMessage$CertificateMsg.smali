.class final Lsun/security/ssl/HandshakeMessage$CertificateMsg;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateMsg"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/X509Certificate;

.field private encodedChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private messageLength:I


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 7
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 437
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 438
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    #@6
    move-result v2

    #@7
    .line 439
    .local v2, "chainLen":I
    new-instance v4, Ljava/util/ArrayList;

    #@9
    const/4 v5, 0x4

    #@a
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 441
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v1, 0x0

    #@e
    .line 442
    :goto_0
    if-lez v2, :cond_1

    #@10
    .line 443
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes24()[B

    #@13
    move-result-object v0

    #@14
    .line 444
    .local v0, "cert":[B
    array-length v5, v0

    #@15
    add-int/lit8 v5, v5, 0x3

    #@17
    sub-int/2addr v2, v5

    #@18
    .line 446
    if-nez v1, :cond_0

    #@1a
    .line 447
    :try_start_0
    const-string/jumbo v5, "X.509"

    #@1d
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@20
    move-result-object v1

    #@21
    .line 449
    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@23
    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@26
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    goto :goto_0

    #@2e
    .line 450
    :catch_0
    move-exception v3

    #@2f
    .line 451
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@31
    .line 452
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 451
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Ljavax/net/ssl/SSLProtocolException;

    #@3e
    throw v5

    #@3f
    .line 456
    .end local v0    # "cert":[B
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@42
    move-result v5

    #@43
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@45
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    check-cast v5, [Ljava/security/cert/X509Certificate;

    #@4b
    iput-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@4d
    .line 437
    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 434
    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@5
    .line 433
    return-void
.end method


# virtual methods
.method getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/security/cert/X509Certificate;

    #@8
    return-object v0
.end method

.method messageLength()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 460
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 461
    const/4 v3, 0x3

    #@6
    iput v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    #@8
    .line 462
    new-instance v3, Ljava/util/ArrayList;

    #@a
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@c
    array-length v4, v4

    #@d
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    #@12
    .line 464
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@14
    const/4 v3, 0x0

    #@15
    array-length v5, v4

    #@16
    :goto_0
    if-ge v3, v5, :cond_0

    #@18
    aget-object v1, v4, v3

    #@1a
    .line 465
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@1d
    move-result-object v0

    #@1e
    .line 466
    .local v0, "b":[B
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    #@20
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 467
    iget v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    #@25
    array-length v7, v0

    #@26
    add-int/lit8 v7, v7, 0x3

    #@28
    add-int/2addr v6, v7

    #@29
    iput v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 464
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 469
    .end local v0    # "b":[B
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    #@2f
    .line 470
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    #@31
    .line 471
    new-instance v3, Ljava/lang/RuntimeException;

    #@33
    const-string/jumbo v4, "Could not encode certificates"

    #@36
    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v3

    #@3a
    .line 474
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    iget v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    #@3c
    return v3
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 425
    const/16 v0, 0xb

    #@2
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const-string/jumbo v1, "*** Certificate chain"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 487
    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v1, :cond_1

    #@a
    const-string/jumbo v1, "verbose"

    #@d
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 488
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@16
    array-length v1, v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "chain ["

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "] = "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    #@32
    aget-object v2, v2, v0

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    .line 488
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 490
    :cond_0
    const-string/jumbo v1, "***"

    #@45
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 484
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength()I

    #@3
    move-result v2

    #@4
    add-int/lit8 v2, v2, -0x3

    #@6
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    #@9
    .line 479
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [B

    #@1b
    .line 480
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    #@1e
    goto :goto_0

    #@1f
    .line 477
    .end local v0    # "b":[B
    :cond_0
    return-void
.end method
