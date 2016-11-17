.class final Lsun/security/ssl/ECDHClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "ECDHClientKeyExchange.java"


# instance fields
.field private encodedPoint:[B


# direct methods
.method constructor <init>(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    move-object v0, p1

    #@4
    .line 56
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    #@6
    .line 57
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@9
    move-result-object v2

    #@a
    .line 58
    .local v2, "point":Ljava/security/spec/ECPoint;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@d
    move-result-object v1

    #@e
    .line 59
    .local v1, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@11
    move-result-object v3

    #@12
    invoke-static {v2, v3}, Lsun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    #@15
    move-result-object v3

    #@16
    iput-object v3, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@18
    .line 55
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 63
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@9
    .line 62
    return-void
.end method


# virtual methods
.method getEncodedPoint()[B
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 45
    const/16 v0, 0x10

    #@2
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
    .line 75
    const-string/jumbo v0, "*** ECDHClientKeyExchange"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 77
    sget-object v0, Lsun/security/ssl/ECDHClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "verbose"

    #@d
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 78
    const-string/jumbo v0, "ECDH Public value"

    #@16
    iget-object v1, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@18
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@1b
    .line 74
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
    .line 71
    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@5
    .line 70
    return-void
.end method
