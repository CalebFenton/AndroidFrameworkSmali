.class public abstract Lsun/security/ssl/HandshakeMessage;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/HandshakeMessage$CertificateMsg;,
        Lsun/security/ssl/HandshakeMessage$CertificateRequest;,
        Lsun/security/ssl/HandshakeMessage$CertificateVerify;,
        Lsun/security/ssl/HandshakeMessage$ClientHello;,
        Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$DistinguishedName;,
        Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$Finished;,
        Lsun/security/ssl/HandshakeMessage$HelloRequest;,
        Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$ServerHello;,
        Lsun/security/ssl/HandshakeMessage$ServerHelloDone;,
        Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    }
.end annotation


# static fields
.field static final MD5_pad1:[B

.field static final MD5_pad2:[B

.field static final SHA_pad1:[B

.field static final SHA_pad2:[B

.field public static final debug:Lsun/security/ssl/Debug;

.field static final ht_certificate:B = 0xbt

.field static final ht_certificate_request:B = 0xdt

.field static final ht_certificate_verify:B = 0xft

.field static final ht_client_hello:B = 0x1t

.field static final ht_client_key_exchange:B = 0x10t

.field static final ht_finished:B = 0x14t

.field static final ht_hello_request:B = 0x0t

.field static final ht_server_hello:B = 0x2t

.field static final ht_server_hello_done:B = 0xet

.field static final ht_server_key_exchange:B = 0xct


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x5c

    #@2
    const/16 v3, 0x36

    #@4
    const/16 v2, 0x30

    #@6
    const/16 v1, 0x28

    #@8
    .line 93
    const-string/jumbo v0, "ssl"

    #@b
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lsun/security/ssl/HandshakeMessage;->debug:Lsun/security/ssl/Debug;

    #@11
    .line 116
    invoke-static {v3, v2}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lsun/security/ssl/HandshakeMessage;->MD5_pad1:[B

    #@17
    .line 117
    invoke-static {v4, v2}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lsun/security/ssl/HandshakeMessage;->MD5_pad2:[B

    #@1d
    .line 119
    invoke-static {v3, v1}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    #@20
    move-result-object v0

    #@21
    sput-object v0, Lsun/security/ssl/HandshakeMessage;->SHA_pad1:[B

    #@23
    .line 120
    invoke-static {v4, v1}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    #@26
    move-result-object v0

    #@27
    sput-object v0, Lsun/security/ssl/HandshakeMessage;->SHA_pad2:[B

    #@29
    .line 74
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static genPad(II)[B
    .locals 2
    .param p0, "b"    # I
    .param p1, "count"    # I

    #@0
    .prologue
    .line 123
    new-array v0, p1, [B

    #@2
    .line 124
    .local v0, "padding":[B
    int-to-byte v1, p0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    #@6
    .line 125
    return-object v0
.end method

.method static toByteArray(Ljava/math/BigInteger;)[B
    .locals 6
    .param p0, "bi"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 102
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    .line 103
    .local v0, "b":[B
    array-length v3, v0

    #@7
    if-le v3, v5, :cond_0

    #@9
    aget-byte v3, v0, v4

    #@b
    if-nez v3, :cond_0

    #@d
    .line 104
    array-length v3, v0

    #@e
    add-int/lit8 v1, v3, -0x1

    #@10
    .line 105
    .local v1, "n":I
    new-array v2, v1, [B

    #@12
    .line 106
    .local v2, "newarray":[B
    invoke-static {v0, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 107
    move-object v0, v2

    #@16
    .line 109
    .end local v1    # "n":I
    .end local v2    # "newarray":[B
    :cond_0
    return-object v0
.end method


# virtual methods
.method abstract messageLength()I
.end method

.method abstract messageType()I
.end method

.method abstract print(Ljava/io/PrintStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract send(Lsun/security/ssl/HandshakeOutStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final write(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageLength()I

    #@3
    move-result v0

    #@4
    .line 137
    .local v0, "len":I
    const/high16 v1, 0x1000000

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 138
    new-instance v1, Ljavax/net/ssl/SSLException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Handshake message too big, type = "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 139
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    #@19
    move-result v3

    #@1a
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 139
    const-string/jumbo v3, ", len = "

    #@21
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 141
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    #@34
    move-result v1

    #@35
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeOutStream;->write(I)V

    #@38
    .line 142
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    #@3b
    .line 143
    invoke-virtual {p0, p1}, Lsun/security/ssl/HandshakeMessage;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@3e
    .line 135
    return-void
.end method
