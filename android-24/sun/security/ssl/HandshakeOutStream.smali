.class public Lsun/security/ssl/HandshakeOutStream;
.super Ljava/io/OutputStream;
.source "HandshakeOutStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field r:Lsun/security/ssl/OutputRecord;

.field private socket:Lsun/security/ssl/SSLSocketImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/HandshakeOutStream;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/security/ssl/HandshakeOutStream;->-assertionsDisabled:Z

    #@b
    .line 44
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p4, "engine"    # Lsun/security/ssl/SSLEngineImpl;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 62
    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@5
    .line 63
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    #@7
    const/16 v1, 0x16

    #@9
    invoke-direct {v0, v1, p4}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    #@c
    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@e
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    #@11
    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p4, "socket"    # Lsun/security/ssl/SSLSocketImpl;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 54
    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    #@5
    .line 55
    new-instance v0, Lsun/security/ssl/OutputRecord;

    #@7
    const/16 v1, 0x16

    #@9
    invoke-direct {v0, v1}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    #@c
    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@e
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    #@11
    .line 53
    return-void
.end method

.method private checkOverflow(II)V
    .locals 3
    .param p1, "length"    # I
    .param p2, "overflow"    # I

    #@0
    .prologue
    .line 227
    if-lt p1, p2, :cond_0

    #@2
    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Field length overflow, the field length ("

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 231
    const-string/jumbo v2, ") should be less than "

    #@17
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 229
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 226
    :cond_0
    return-void
.end method

.method private init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@5
    .line 70
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@7
    invoke-virtual {v0, p2}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@a
    .line 71
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@c
    invoke-virtual {v0, p3}, Lsun/security/ssl/OutputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    #@f
    .line 68
    return-void
.end method


# virtual methods
.method doHashes()V
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    #@5
    .line 81
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 117
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    #@6
    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@8
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 114
    :goto_0
    return-void

    #@c
    .line 118
    :catch_0
    move-exception v0

    #@d
    .line 122
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    #@13
    .line 125
    throw v0

    #@14
    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@16
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@18
    check-cast v1, Lsun/security/ssl/EngineOutputRecord;

    #@1a
    invoke-virtual {v2, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    #@1d
    goto :goto_0
.end method

.method public putBytes16([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 205
    if-nez p1, :cond_0

    #@3
    .line 206
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@6
    .line 207
    return-void

    #@7
    .line 209
    :cond_0
    array-length v0, p1

    #@8
    const/high16 v1, 0x10000

    #@a
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@d
    .line 211
    array-length v0, p1

    #@e
    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@11
    .line 212
    array-length v0, p1

    #@12
    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    #@15
    .line 204
    return-void
.end method

.method putBytes24([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 216
    if-nez p1, :cond_0

    #@3
    .line 217
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    #@6
    .line 218
    return-void

    #@7
    .line 220
    :cond_0
    array-length v0, p1

    #@8
    const/high16 v1, 0x1000000

    #@a
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@d
    .line 222
    array-length v0, p1

    #@e
    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    #@11
    .line 223
    array-length v0, p1

    #@12
    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    #@15
    .line 215
    return-void
.end method

.method putBytes8([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 194
    if-nez p1, :cond_0

    #@3
    .line 195
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@6
    .line 196
    return-void

    #@7
    .line 198
    :cond_0
    array-length v0, p1

    #@8
    const/16 v1, 0x100

    #@a
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@d
    .line 200
    array-length v0, p1

    #@e
    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@11
    .line 201
    array-length v0, p1

    #@12
    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    #@15
    .line 193
    return-void
.end method

.method putInt16(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@5
    .line 162
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@7
    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x2

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 163
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@11
    .line 165
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@13
    shr-int/lit8 v1, p1, 0x8

    #@15
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@18
    .line 166
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@1a
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1d
    .line 160
    return-void
.end method

.method putInt24(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    const/high16 v0, 0x1000000

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@5
    .line 171
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@7
    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x3

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 172
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@11
    .line 174
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@13
    shr-int/lit8 v1, p1, 0x10

    #@15
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@18
    .line 175
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@1a
    shr-int/lit8 v1, p1, 0x8

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1f
    .line 176
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@21
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@24
    .line 169
    return-void
.end method

.method putInt32(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 181
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@c
    .line 183
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@e
    shr-int/lit8 v1, p1, 0x18

    #@10
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@13
    .line 184
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@15
    shr-int/lit8 v1, p1, 0x10

    #@17
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1a
    .line 185
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@1c
    shr-int/lit8 v1, p1, 0x8

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@21
    .line 186
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@23
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@26
    .line 179
    return-void
.end method

.method putInt8(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    #@5
    .line 157
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@7
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a
    .line 155
    return-void
.end method

.method setFinishedMsg()V
    .locals 1

    #@0
    .prologue
    .line 144
    sget-boolean v0, Lsun/security/ssl/HandshakeOutStream;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 146
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@15
    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    #@17
    invoke-virtual {v0}, Lsun/security/ssl/EngineOutputRecord;->setFinishedMsg()V

    #@1a
    .line 143
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 109
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@c
    .line 111
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@e
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@11
    .line 107
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    :goto_0
    if-lez p3, :cond_1

    #@2
    .line 92
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@4
    invoke-virtual {v1}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@7
    move-result v1

    #@8
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    .line 94
    .local v0, "howmuch":I
    if-nez v0, :cond_0

    #@e
    .line 95
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@11
    goto :goto_0

    #@12
    .line 97
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@14
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@17
    .line 98
    add-int/2addr p2, v0

    #@18
    .line 99
    sub-int/2addr p3, v0

    #@19
    goto :goto_0

    #@1a
    .line 90
    .end local v0    # "howmuch":I
    :cond_1
    return-void
.end method
