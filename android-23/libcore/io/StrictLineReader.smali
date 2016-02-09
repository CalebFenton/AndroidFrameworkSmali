.class public Llibcore/io/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method static synthetic -get0(Llibcore/io/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 69
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I

    #@0
    .prologue
    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@2
    invoke-direct {p0, p1, p2, v0}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    #@5
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    if-nez p1, :cond_0

    #@5
    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "in == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 111
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "charset == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 114
    :cond_1
    if-gez p2, :cond_2

    #@1b
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "capacity <= 0"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 117
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@26
    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_3

    #@2c
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2e
    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3

    #@34
    .line 118
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@36
    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    .line 117
    :goto_0
    if-nez v0, :cond_4

    #@3c
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v1, "Unsupported encoding"

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 117
    :cond_3
    const/4 v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 122
    :cond_4
    iput-object p1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    #@49
    .line 123
    iput-object p3, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    #@4b
    .line 124
    new-array v0, p2, [B

    #@4d
    iput-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@4f
    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 94
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0, p2}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    #@5
    .line 93
    return-void
.end method

.method private fillBuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 235
    iget-object v1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    #@3
    iget-object v2, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@5
    iget-object v3, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@7
    array-length v3, v3

    #@8
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    #@b
    move-result v0

    #@c
    .line 236
    .local v0, "result":I
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 237
    new-instance v1, Ljava/io/EOFException;

    #@11
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v1

    #@15
    .line 239
    :cond_0
    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I

    #@17
    .line 240
    iput v0, p0, Llibcore/io/StrictLineReader;->end:I

    #@19
    .line 234
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    #@2
    monitor-enter v1

    #@3
    .line 136
    :try_start_0
    iget-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 137
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@a
    .line 138
    iget-object v0, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 134
    return-void

    #@11
    .line 135
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    #@0
    .prologue
    .line 224
    iget v0, p0, Llibcore/io/StrictLineReader;->end:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    invoke-virtual {p0}, Llibcore/io/StrictLineReader;->readLine()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 211
    .local v1, "intString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 212
    :catch_0
    move-exception v0

    #@a
    .line 213
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "expected an int but was \""

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, "\""

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    .line 152
    iget-object v5, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    #@4
    monitor-enter v5

    #@5
    .line 153
    :try_start_0
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@7
    if-nez v4, :cond_0

    #@9
    .line 154
    new-instance v4, Ljava/io/IOException;

    #@b
    const-string/jumbo v6, "LineReader is closed"

    #@e
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 152
    :catchall_0
    move-exception v4

    #@13
    monitor-exit v5

    #@14
    throw v4

    #@15
    .line 160
    :cond_0
    :try_start_1
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    #@17
    iget v6, p0, Llibcore/io/StrictLineReader;->end:I

    #@19
    if-lt v4, v6, :cond_1

    #@1b
    .line 161
    invoke-direct {p0}, Llibcore/io/StrictLineReader;->fillBuf()V

    #@1e
    .line 164
    :cond_1
    iget v0, p0, Llibcore/io/StrictLineReader;->pos:I

    #@20
    .local v0, "i":I
    :goto_0
    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    #@22
    if-eq v0, v4, :cond_4

    #@24
    .line 165
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@26
    aget-byte v4, v4, v0

    #@28
    if-ne v4, v9, :cond_3

    #@2a
    .line 166
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    #@2c
    if-eq v0, v4, :cond_2

    #@2e
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@30
    add-int/lit8 v6, v0, -0x1

    #@32
    aget-byte v4, v4, v6

    #@34
    const/16 v6, 0xd

    #@36
    if-ne v4, v6, :cond_2

    #@38
    add-int/lit8 v1, v0, -0x1

    #@3a
    .line 167
    .local v1, "lineEnd":I
    :goto_1
    new-instance v3, Ljava/lang/String;

    #@3c
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@3e
    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    #@40
    iget v7, p0, Llibcore/io/StrictLineReader;->pos:I

    #@42
    sub-int v7, v1, v7

    #@44
    iget-object v8, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    #@46
    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@49
    .line 168
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    #@4b
    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit v5

    #@4e
    .line 169
    return-object v3

    #@4f
    .line 166
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_2
    move v1, v0

    #@50
    .restart local v1    # "lineEnd":I
    goto :goto_1

    #@51
    .line 164
    .end local v1    # "lineEnd":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 174
    :cond_4
    :try_start_2
    new-instance v2, Llibcore/io/StrictLineReader$1;

    #@56
    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    #@58
    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    #@5a
    sub-int/2addr v4, v6

    #@5b
    add-int/lit8 v4, v4, 0x50

    #@5d
    invoke-direct {v2, p0, v4}, Llibcore/io/StrictLineReader$1;-><init>(Llibcore/io/StrictLineReader;I)V

    #@60
    .line 183
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@62
    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    #@64
    iget v7, p0, Llibcore/io/StrictLineReader;->end:I

    #@66
    iget v8, p0, Llibcore/io/StrictLineReader;->pos:I

    #@68
    sub-int/2addr v7, v8

    #@69
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@6c
    .line 185
    const/4 v4, -0x1

    #@6d
    iput v4, p0, Llibcore/io/StrictLineReader;->end:I

    #@6f
    .line 186
    invoke-direct {p0}, Llibcore/io/StrictLineReader;->fillBuf()V

    #@72
    .line 188
    iget v0, p0, Llibcore/io/StrictLineReader;->pos:I

    #@74
    :goto_2
    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    #@76
    if-eq v0, v4, :cond_5

    #@78
    .line 189
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@7a
    aget-byte v4, v4, v0

    #@7c
    if-ne v4, v9, :cond_7

    #@7e
    .line 190
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    #@80
    if-eq v0, v4, :cond_6

    #@82
    .line 191
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    #@84
    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    #@86
    iget v7, p0, Llibcore/io/StrictLineReader;->pos:I

    #@88
    sub-int v7, v0, v7

    #@8a
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@8d
    .line 193
    :cond_6
    add-int/lit8 v4, v0, 0x1

    #@8f
    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I

    #@91
    .line 194
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    move-result-object v4

    #@95
    monitor-exit v5

    #@96
    return-object v4

    #@97
    .line 188
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@99
    goto :goto_2
.end method
