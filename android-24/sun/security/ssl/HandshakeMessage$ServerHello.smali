.class final Lsun/security/ssl/HandshakeMessage$ServerHello;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHello"
.end annotation


# instance fields
.field cipherSuite:Lsun/security/ssl/CipherSuite;

.field compression_method:B

.field extensions:Lsun/security/ssl/HelloExtensions;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field sessionId:Lsun/security/ssl/SessionId;

.field svr_random:Lsun/security/ssl/RandomCookie;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 347
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 345
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@5
    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    .line 347
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 2
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 345
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@5
    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    .line 353
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@d
    move-result v0

    #@e
    .line 354
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@11
    move-result v1

    #@12
    .line 353
    invoke-static {v0, v1}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@18
    .line 355
    new-instance v0, Lsun/security/ssl/RandomCookie;

    #@1a
    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@1d
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    #@1f
    .line 356
    new-instance v0, Lsun/security/ssl/SessionId;

    #@21
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lsun/security/ssl/SessionId;-><init>([B)V

    #@28
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@2a
    .line 357
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@31
    move-result v1

    #@32
    invoke-static {v0, v1}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@38
    .line 358
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3b
    move-result v0

    #@3c
    int-to-byte v0, v0

    #@3d
    iput-byte v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@3f
    .line 359
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$ServerHello;->messageLength()I

    #@42
    move-result v0

    #@43
    if-eq v0, p2, :cond_0

    #@45
    .line 360
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@47
    invoke-direct {v0, p1}, Lsun/security/ssl/HelloExtensions;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@4a
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@4c
    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method messageLength()I
    .locals 2

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->length()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x26

    #@8
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->length()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 338
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "*** ServerHello, "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 391
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->debug:Lsun/security/ssl/Debug;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    const-string/jumbo v0, "verbose"

    #@20
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 392
    const-string/jumbo v0, "RandomCookie:  "

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2c
    .line 393
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    #@2e
    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->print(Ljava/io/PrintStream;)V

    #@31
    .line 397
    const-string/jumbo v0, "Session ID:  "

    #@34
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@37
    .line 398
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@3c
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v1, "Cipher Suite: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v1, "Compression Method: "

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    iget-byte v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6e
    .line 402
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@70
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->print(Ljava/io/PrintStream;)V

    #@73
    .line 403
    const-string/jumbo v0, "***"

    #@76
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@79
    .line 387
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->major:B

    #@4
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@7
    .line 378
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@9
    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@e
    .line 379
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    #@10
    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@13
    .line 380
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@15
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@1c
    .line 381
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@1e
    iget v0, v0, Lsun/security/ssl/CipherSuite;->id:I

    #@20
    shr-int/lit8 v0, v0, 0x8

    #@22
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@25
    .line 382
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@27
    iget v0, v0, Lsun/security/ssl/CipherSuite;->id:I

    #@29
    and-int/lit16 v0, v0, 0xff

    #@2b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2e
    .line 383
    iget-byte v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@30
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@33
    .line 384
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@35
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@38
    .line 375
    return-void
.end method
