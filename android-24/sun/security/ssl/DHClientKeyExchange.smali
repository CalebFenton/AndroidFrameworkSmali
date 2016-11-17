.class final Lsun/security/ssl/DHClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "DHClientKeyExchange.java"


# instance fields
.field private dh_Yc:[B


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@6
    .line 65
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 62
    invoke-static {p1}, Lsun/security/ssl/DHClientKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@9
    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 2
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 75
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->available()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 76
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@10
    .line 74
    return-void

    #@11
    .line 80
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@13
    .line 81
    const-string/jumbo v1, "Unsupported implicit client DiffieHellman public key"

    #@16
    .line 80
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method


# virtual methods
.method getClientPublicKey()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@8
    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@a
    const/4 v2, 0x1

    #@b
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@e
    goto :goto_0
.end method

.method messageLength()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 87
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 89
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@8
    array-length v0, v0

    #@9
    add-int/lit8 v0, v0, 0x2

    #@b
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 43
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
    .line 100
    const-string/jumbo v0, "*** ClientKeyExchange, DH"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 102
    sget-object v0, Lsun/security/ssl/DHClientKeyExchange;->debug:Lsun/security/ssl/Debug;

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
    .line 103
    const-string/jumbo v0, "DH Public key"

    #@16
    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@18
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@1b
    .line 99
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
    .line 94
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@6
    array-length v0, v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 95
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    #@b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@e
    .line 93
    :cond_0
    return-void
.end method
