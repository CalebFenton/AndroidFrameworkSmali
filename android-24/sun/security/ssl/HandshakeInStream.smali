.class public Lsun/security/ssl/HandshakeInStream;
.super Ljava/io/InputStream;
.source "HandshakeInStream.java"


# instance fields
.field r:Lsun/security/ssl/InputRecord;


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 64
    new-instance v0, Lsun/security/ssl/InputRecord;

    #@5
    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@a
    .line 65
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    #@f
    .line 63
    return-void
.end method

.method private verifyLength(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->available()I

    #@3
    move-result v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 221
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@8
    .line 222
    const-string/jumbo v1, "Not enough data to fill declared vector size"

    #@b
    .line 221
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method digestNow()V
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->doHashes()V

    #@5
    .line 150
    return-void
.end method

.method public getBytes16()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@3
    move-result v1

    #@4
    .line 202
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    #@7
    .line 203
    new-array v0, v1, [B

    #@9
    .line 205
    .local v0, "b":[B
    const/4 v2, 0x0

    #@a
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    #@d
    .line 206
    return-object v0
.end method

.method getBytes24()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    #@3
    move-result v1

    #@4
    .line 211
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    #@7
    .line 212
    new-array v0, v1, [B

    #@9
    .line 214
    .local v0, "b":[B
    const/4 v2, 0x0

    #@a
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    #@d
    .line 215
    return-object v0
.end method

.method getBytes8()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3
    move-result v1

    #@4
    .line 193
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    #@7
    .line 194
    new-array v0, v1, [B

    #@9
    .line 196
    .local v0, "b":[B
    const/4 v2, 0x0

    #@a
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    #@d
    .line 197
    return-object v0
.end method

.method getInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3
    move-result v0

    #@4
    shl-int/lit8 v0, v0, 0x8

    #@6
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method getInt24()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3
    move-result v0

    #@4
    shl-int/lit8 v0, v0, 0x10

    #@6
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@9
    move-result v1

    #@a
    shl-int/lit8 v1, v1, 0x8

    #@c
    or-int/2addr v0, v1

    #@d
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@10
    move-result v1

    #@11
    or-int/2addr v0, v1

    #@12
    return v0
.end method

.method getInt32()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3
    move-result v0

    #@4
    shl-int/lit8 v0, v0, 0x18

    #@6
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@9
    move-result v1

    #@a
    shl-int/lit8 v1, v1, 0x10

    #@c
    or-int/2addr v0, v1

    #@d
    .line 184
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@10
    move-result v1

    #@11
    shl-int/lit8 v1, v1, 0x8

    #@13
    .line 183
    or-int/2addr v0, v1

    #@14
    .line 184
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@17
    move-result v1

    #@18
    .line 183
    or-int/2addr v0, v1

    #@19
    return v0
.end method

.method getInt8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->read()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method ignore(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->ignore(I)V

    #@5
    .line 158
    return-void
.end method

.method incomingRecord(Lsun/security/ssl/InputRecord;)V
    .locals 1
    .param p1, "in"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->queueHandshake(Lsun/security/ssl/InputRecord;)V

    #@5
    .line 140
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@5
    .line 120
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 129
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 86
    .local v0, "n":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 87
    new-instance v1, Ljavax/net/ssl/SSLException;

    #@b
    const-string/jumbo v2, "Unexpected end of handshake data"

    #@e
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 89
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 99
    .local v0, "n":I
    if-eq v0, p3, :cond_0

    #@8
    .line 100
    new-instance v1, Ljavax/net/ssl/SSLException;

    #@a
    const-string/jumbo v2, "Unexpected end of handshake data"

    #@d
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 102
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@5
    .line 124
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
