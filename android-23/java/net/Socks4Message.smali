.class Ljava/net/Socks4Message;
.super Ljava/lang/Object;
.source "Socks4Message.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x100

.field static final COMMAND_BIND:I = 0x2

.field static final COMMAND_CONNECT:I = 0x1

.field private static final INDEX_COMMAND:I = 0x1

.field private static final INDEX_IP:I = 0x4

.field private static final INDEX_PORT:I = 0x2

.field private static final INDEX_USER_ID:I = 0x8

.field static final INDEX_VERSION:I = 0x0

.field private static final MAX_USER_ID_LENGTH:I = 0xf8

.field static final REPLY_LENGTH:I = 0x8

.field static final RETURN_CANNOT_CONNECT_TO_IDENTD:I = 0x5c

.field static final RETURN_DIFFERENT_USER_IDS:I = 0x5d

.field static final RETURN_FAILURE:I = 0x5b

.field static final RETURN_SUCCESS:I = 0x5a

.field private static final SOCKS_VERSION:I = 0x4


# instance fields
.field protected buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/16 v0, 0x100

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@9
    .line 59
    const/4 v0, 0x4

    #@a
    invoke-direct {p0, v0}, Ljava/net/Socks4Message;->setVersionNumber(I)V

    #@d
    .line 57
    return-void
.end method

.method private getString(II)Ljava/lang/String;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "maxLength"    # I

    #@0
    .prologue
    .line 186
    move v0, p1

    #@1
    .line 187
    .local v0, "index":I
    add-int v1, v0, p2

    #@3
    .line 188
    .local v1, "lastIndex":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    #@7
    aget-byte v2, v2, v0

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 189
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 191
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@10
    iget-object v3, p0, Ljava/net/Socks4Message;->buffer:[B

    #@12
    sub-int v4, v0, p1

    #@14
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@16
    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@19
    return-object v2
.end method

.method private getVersionNumber()I
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    const/4 v1, 0x0

    #@3
    aget-byte v0, v0, v1

    #@5
    return v0
.end method

.method private setString(IILjava/lang/String;)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "maxLength"    # I
    .param p3, "theString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 205
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@3
    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@6
    move-result-object v1

    #@7
    .line 206
    .local v1, "stringBytes":[B
    array-length v2, v1

    #@8
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    .line 207
    .local v0, "length":I
    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    #@e
    invoke-static {v1, v4, v2, p1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 208
    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    #@13
    add-int v3, p1, v0

    #@15
    aput-byte v4, v2, v3

    #@17
    .line 204
    return-void
.end method

.method private setVersionNumber(I)V
    .locals 3
    .param p1, "number"    # I

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    aput-byte v1, v0, v2

    #@6
    .line 214
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    return-object v0
.end method

.method public getCommandOrResult()I
    .locals 2

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    const/4 v1, 0x1

    #@3
    aget-byte v0, v0, v1

    #@5
    return v0
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    #@3
    .line 170
    const-string/jumbo v0, "Success"

    #@6
    return-object v0

    #@7
    .line 164
    :pswitch_0
    const-string/jumbo v0, "Failure to connect to SOCKS server"

    #@a
    return-object v0

    #@b
    .line 166
    :pswitch_1
    const-string/jumbo v0, "Unable to connect to identd to verify user"

    #@e
    return-object v0

    #@f
    .line 168
    :pswitch_2
    const-string/jumbo v0, "Failure - user ids do not match"

    #@12
    return-object v0

    #@13
    .line 162
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIP()I
    .locals 3

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 143
    const/4 v0, 0x0

    #@1
    .line 146
    .local v0, "index":I
    const/16 v0, 0x8

    #@3
    :goto_0
    iget-object v1, p0, Ljava/net/Socks4Message;->buffer:[B

    #@5
    aget-byte v1, v1, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    .line 155
    return v0
.end method

.method public getPort()I
    .locals 3

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    const/4 v2, 0x2

    #@5
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
    const/16 v0, 0x8

    #@2
    const/16 v1, 0xf8

    #@4
    invoke-direct {p0, v0, v1}, Ljava/net/Socks4Message;->getString(II)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setCommandOrResult(I)V
    .locals 3
    .param p1, "command"    # I

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x1

    #@4
    aput-byte v1, v0, v2

    #@6
    .line 72
    return-void
.end method

.method public setIP([B)V
    .locals 3
    .param p1, "ip"    # [B

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    const/4 v1, 0x0

    #@3
    aget-byte v1, p1, v1

    #@5
    const/4 v2, 0x4

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 102
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@a
    const/4 v1, 0x1

    #@b
    aget-byte v1, p1, v1

    #@d
    const/4 v2, 0x5

    #@e
    aput-byte v1, v0, v2

    #@10
    .line 103
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@12
    const/4 v1, 0x2

    #@13
    aget-byte v1, p1, v1

    #@15
    const/4 v2, 0x6

    #@16
    aput-byte v1, v0, v2

    #@18
    .line 104
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@1a
    const/4 v1, 0x3

    #@1b
    aget-byte v1, p1, v1

    #@1d
    const/4 v2, 0x7

    #@1e
    aput-byte v1, v0, v2

    #@20
    .line 100
    return-void
.end method

.method public setPort(I)V
    .locals 4
    .param p1, "port"    # I

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    #@2
    int-to-short v1, p1

    #@3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    const/4 v3, 0x2

    #@6
    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@9
    .line 86
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    const/16 v0, 0x8

    #@2
    const/16 v1, 0xf8

    #@4
    invoke-direct {p0, v0, v1, p1}, Ljava/net/Socks4Message;->setString(IILjava/lang/String;)V

    #@7
    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x32

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 124
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Version: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 125
    invoke-direct {p0}, Ljava/net/Socks4Message;->getVersionNumber()I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 126
    const-string/jumbo v1, " Command: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 127
    invoke-virtual {p0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@21
    move-result v1

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 128
    const-string/jumbo v1, " Port: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 129
    invoke-virtual {p0}, Ljava/net/Socks4Message;->getPort()I

    #@32
    move-result v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    .line 130
    const-string/jumbo v1, " IP: "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 131
    invoke-virtual {p0}, Ljava/net/Socks4Message;->getIP()I

    #@3f
    move-result v1

    #@40
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 132
    const-string/jumbo v1, " User ID: "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 133
    invoke-virtual {p0}, Ljava/net/Socks4Message;->getUserId()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    return-object v1
.end method
