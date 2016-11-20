.class final Lsun/security/ssl/HandshakeMessage$ClientHello;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientHello"
.end annotation


# static fields
.field private static final NULL_COMPRESSION:[B


# instance fields
.field private cipherSuites:Lsun/security/ssl/CipherSuiteList;

.field clnt_random:Lsun/security/ssl/RandomCookie;

.field compression_methods:[B

.field extensions:Lsun/security/ssl/HelloExtensions;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field sessionId:Lsun/security/ssl/SessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [B

    #@4
    aput-byte v1, v0, v1

    #@6
    sput-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    #@8
    .line 210
    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V
    .locals 2
    .param p1, "generator"    # Ljava/security/SecureRandom;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "sessionId"    # Lsun/security/ssl/SessionId;
    .param p4, "cipherSuites"    # Lsun/security/ssl/CipherSuiteList;

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 218
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@5
    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    .line 225
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c
    .line 226
    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@e
    .line 227
    iput-object p4, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@10
    .line 229
    invoke-virtual {p4}, Lsun/security/ssl/CipherSuiteList;->containsEC()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 230
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@18
    sget-object v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    #@1d
    .line 231
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@1f
    sget-object v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->DEFAULT:Lsun/security/ssl/HelloExtension;

    #@21
    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    #@24
    .line 234
    :cond_0
    new-instance v0, Lsun/security/ssl/RandomCookie;

    #@26
    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    #@29
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@2b
    .line 235
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    #@2d
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    #@2f
    .line 223
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 218
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@5
    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    .line 239
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@11
    move-result v1

    #@12
    invoke-static {v0, v1}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@18
    .line 240
    new-instance v0, Lsun/security/ssl/RandomCookie;

    #@1a
    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@1d
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@1f
    .line 241
    new-instance v0, Lsun/security/ssl/SessionId;

    #@21
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lsun/security/ssl/SessionId;-><init>([B)V

    #@28
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@2a
    .line 242
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    #@2c
    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@2f
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@31
    .line 243
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    #@37
    .line 244
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$ClientHello;->messageLength()I

    #@3a
    move-result v0

    #@3b
    if-eq v0, p2, :cond_0

    #@3d
    .line 245
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    #@3f
    invoke-direct {v0, p1}, Lsun/security/ssl/HelloExtensions;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@42
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@44
    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method addRenegotiationInfoExtension([B)V
    .locals 2
    .param p1, "clientVerifyData"    # [B

    #@0
    .prologue
    .line 255
    new-instance v0, Lsun/security/ssl/RenegotiationInfoExtension;

    #@2
    .line 256
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [B

    #@5
    .line 255
    invoke-direct {v0, p1, v1}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    #@8
    .line 257
    .local v0, "renegotiationInfo":Lsun/security/ssl/HelloExtension;
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@a
    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    #@d
    .line 254
    return-void
.end method

.method addServerNameIndicationExtension(Ljava/lang/String;)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 264
    .local v0, "hostnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 267
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@b
    new-instance v3, Lsun/security/ssl/ServerNameExtension;

    #@d
    invoke-direct {v3, v0}, Lsun/security/ssl/ServerNameExtension;-><init>(Ljava/util/List;)V

    #@10
    invoke-virtual {v2, v3}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 261
    :goto_0
    return-void

    #@14
    .line 268
    :catch_0
    move-exception v1

    #@15
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method addSignatureAlgorithmsExtension(Ljava/util/Collection;)V
    .locals 2
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
    .line 277
    .local p1, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Lsun/security/ssl/SignatureAlgorithmsExtension;

    #@2
    invoke-direct {v0, p1}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Ljava/util/Collection;)V

    #@5
    .line 278
    .local v0, "signatureAlgorithm":Lsun/security/ssl/HelloExtension;
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    #@a
    .line 275
    return-void
.end method

.method getCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 2

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->length()I

    #@5
    move-result v0

    #@6
    .line 290
    add-int/lit8 v0, v0, 0x26

    #@8
    .line 292
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@a
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    #@d
    move-result v1

    #@e
    mul-int/lit8 v1, v1, 0x2

    #@10
    .line 290
    add-int/2addr v0, v1

    #@11
    .line 293
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    #@13
    array-length v1, v1

    #@14
    .line 290
    add-int/2addr v0, v1

    #@15
    .line 294
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@17
    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->length()I

    #@1a
    move-result v1

    #@1b
    .line 290
    add-int/2addr v0, v1

    #@1c
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 282
    const/4 v0, 0x1

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
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "*** ClientHello, "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

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
    .line 312
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->debug:Lsun/security/ssl/Debug;

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
    .line 313
    const-string/jumbo v0, "RandomCookie:  "

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2c
    .line 314
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@2e
    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->print(Ljava/io/PrintStream;)V

    #@31
    .line 316
    const-string/jumbo v0, "Session ID:  "

    #@34
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@37
    .line 317
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@3c
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v1, "Cipher Suites: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

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
    .line 321
    const-string/jumbo v0, "Compression Methods"

    #@58
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    #@5a
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@5d
    .line 322
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@5f
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->print(Ljava/io/PrintStream;)V

    #@62
    .line 323
    const-string/jumbo v0, "***"

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 309
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
    .line 299
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->major:B

    #@4
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@7
    .line 300
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@9
    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@e
    .line 301
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@10
    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@13
    .line 302
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@15
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@1c
    .line 303
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@1e
    invoke-virtual {v0, p1}, Lsun/security/ssl/CipherSuiteList;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@21
    .line 304
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    #@23
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@26
    .line 305
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@28
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@2b
    .line 298
    return-void
.end method
