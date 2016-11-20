.class public Lsun/misc/BASE64Decoder;
.super Lsun/misc/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field decode_buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 77
    const/16 v1, 0x40

    #@2
    new-array v1, v1, [C

    #@4
    fill-array-data v1, :array_0

    #@7
    sput-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    #@9
    .line 89
    const/16 v1, 0x100

    #@b
    new-array v1, v1, [B

    #@d
    sput-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@f
    .line 92
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 93
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@16
    const/4 v2, -0x1

    #@17
    aput-byte v2, v1, v0

    #@19
    .line 92
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 95
    :cond_0
    const/4 v0, 0x0

    #@1d
    :goto_1
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    #@1f
    array-length v1, v1

    #@20
    if-ge v0, v1, :cond_1

    #@22
    .line 96
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@24
    sget-object v2, Lsun/misc/BASE64Decoder;->pem_array:[C

    #@26
    aget-char v2, v2, v0

    #@28
    int-to-byte v3, v0

    #@29
    aput-byte v3, v1, v2

    #@2b
    .line 95
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 61
    :cond_1
    return-void

    #@2f
    .line 77
    nop

    #@30
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    #@3
    .line 100
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@8
    .line 61
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    #@0
    .prologue
    .line 70
    const/16 v0, 0x48

    #@2
    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 12
    .param p1, "inStream"    # Ljava/io/PushbackInputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "rem"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v8, 0x3

    #@4
    const/4 v7, 0x2

    #@5
    .line 109
    const/4 v0, -0x1

    #@6
    .local v0, "a":B
    const/4 v1, -0x1

    #@7
    .local v1, "b":B
    const/4 v2, -0x1

    #@8
    .local v2, "c":B
    const/4 v3, -0x1

    #@9
    .line 111
    .local v3, "d":B
    if-ge p3, v7, :cond_1

    #@b
    .line 112
    new-instance v5, Lsun/misc/CEFormatException;

    #@d
    const-string/jumbo v6, "BASE64Decoder: Not enough bytes for an atom."

    #@10
    invoke-direct {v5, v6}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 119
    .local v4, "i":I
    :cond_0
    const/16 v5, 0xa

    #@16
    if-eq v4, v5, :cond_1

    #@18
    const/16 v5, 0xd

    #@1a
    if-ne v4, v5, :cond_2

    #@1c
    .line 115
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    #@1f
    move-result v4

    #@20
    .line 116
    .restart local v4    # "i":I
    if-ne v4, v9, :cond_0

    #@22
    .line 117
    new-instance v5, Lsun/misc/CEStreamExhausted;

    #@24
    invoke-direct {v5}, Lsun/misc/CEStreamExhausted;-><init>()V

    #@27
    throw v5

    #@28
    .line 120
    :cond_2
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@2a
    int-to-byte v6, v4

    #@2b
    aput-byte v6, v5, v10

    #@2d
    .line 122
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@2f
    add-int/lit8 v6, p3, -0x1

    #@31
    invoke-virtual {p0, p1, v5, v11, v6}, Lsun/misc/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    #@34
    move-result v4

    #@35
    .line 123
    if-ne v4, v9, :cond_3

    #@37
    .line 124
    new-instance v5, Lsun/misc/CEStreamExhausted;

    #@39
    invoke-direct {v5}, Lsun/misc/CEStreamExhausted;-><init>()V

    #@3c
    throw v5

    #@3d
    .line 127
    :cond_3
    if-le p3, v8, :cond_4

    #@3f
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@41
    aget-byte v5, v5, v8

    #@43
    const/16 v6, 0x3d

    #@45
    if-ne v5, v6, :cond_4

    #@47
    .line 128
    const/4 p3, 0x3

    #@48
    .line 130
    :cond_4
    if-le p3, v7, :cond_5

    #@4a
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@4c
    aget-byte v5, v5, v7

    #@4e
    const/16 v6, 0x3d

    #@50
    if-ne v5, v6, :cond_5

    #@52
    .line 131
    const/4 p3, 0x2

    #@53
    .line 133
    :cond_5
    packed-switch p3, :pswitch_data_0

    #@56
    .line 146
    .end local v0    # "a":B
    .end local v1    # "b":B
    .end local v2    # "c":B
    .end local v3    # "d":B
    :goto_0
    packed-switch p3, :pswitch_data_1

    #@59
    .line 160
    :goto_1
    return-void

    #@5a
    .line 135
    .restart local v0    # "a":B
    .restart local v1    # "b":B
    .restart local v2    # "c":B
    .restart local v3    # "d":B
    :pswitch_0
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@5c
    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@5e
    aget-byte v6, v6, v8

    #@60
    and-int/lit16 v6, v6, 0xff

    #@62
    aget-byte v3, v5, v6

    #@64
    .line 138
    .end local v3    # "d":B
    :pswitch_1
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@66
    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@68
    aget-byte v6, v6, v7

    #@6a
    and-int/lit16 v6, v6, 0xff

    #@6c
    aget-byte v2, v5, v6

    #@6e
    .line 141
    .end local v2    # "c":B
    :pswitch_2
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@70
    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@72
    aget-byte v6, v6, v11

    #@74
    and-int/lit16 v6, v6, 0xff

    #@76
    aget-byte v1, v5, v6

    #@78
    .line 142
    .local v1, "b":B
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    #@7a
    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    #@7c
    aget-byte v6, v6, v10

    #@7e
    and-int/lit16 v6, v6, 0xff

    #@80
    aget-byte v0, v5, v6

    #@82
    .local v0, "a":B
    goto :goto_0

    #@83
    .line 148
    .end local v0    # "a":B
    .end local v1    # "b":B
    :pswitch_3
    shl-int/lit8 v5, v0, 0x2

    #@85
    and-int/lit16 v5, v5, 0xfc

    #@87
    ushr-int/lit8 v6, v1, 0x4

    #@89
    and-int/lit8 v6, v6, 0x3

    #@8b
    or-int/2addr v5, v6

    #@8c
    int-to-byte v5, v5

    #@8d
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@90
    goto :goto_1

    #@91
    .line 151
    :pswitch_4
    shl-int/lit8 v5, v0, 0x2

    #@93
    and-int/lit16 v5, v5, 0xfc

    #@95
    ushr-int/lit8 v6, v1, 0x4

    #@97
    and-int/lit8 v6, v6, 0x3

    #@99
    or-int/2addr v5, v6

    #@9a
    int-to-byte v5, v5

    #@9b
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@9e
    .line 152
    shl-int/lit8 v5, v1, 0x4

    #@a0
    and-int/lit16 v5, v5, 0xf0

    #@a2
    ushr-int/lit8 v6, v2, 0x2

    #@a4
    and-int/lit8 v6, v6, 0xf

    #@a6
    or-int/2addr v5, v6

    #@a7
    int-to-byte v5, v5

    #@a8
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@ab
    goto :goto_1

    #@ac
    .line 155
    :pswitch_5
    shl-int/lit8 v5, v0, 0x2

    #@ae
    and-int/lit16 v5, v5, 0xfc

    #@b0
    ushr-int/lit8 v6, v1, 0x4

    #@b2
    and-int/lit8 v6, v6, 0x3

    #@b4
    or-int/2addr v5, v6

    #@b5
    int-to-byte v5, v5

    #@b6
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@b9
    .line 156
    shl-int/lit8 v5, v1, 0x4

    #@bb
    and-int/lit16 v5, v5, 0xf0

    #@bd
    ushr-int/lit8 v6, v2, 0x2

    #@bf
    and-int/lit8 v6, v6, 0xf

    #@c1
    or-int/2addr v5, v6

    #@c2
    int-to-byte v5, v5

    #@c3
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@c6
    .line 157
    shl-int/lit8 v5, v2, 0x6

    #@c8
    and-int/lit16 v5, v5, 0xc0

    #@ca
    and-int/lit8 v6, v3, 0x3f

    #@cc
    or-int/2addr v5, v6

    #@cd
    int-to-byte v5, v5

    #@ce
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@d1
    goto :goto_1

    #@d2
    .line 133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@dc
    .line 146
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
