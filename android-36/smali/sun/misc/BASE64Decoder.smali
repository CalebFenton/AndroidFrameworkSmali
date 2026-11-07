.class public Lsun/misc/BASE64Decoder;
.super Lsun/misc/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final blacklist pem_array:[C

.field private static final greylist pem_convert_array:[B


# instance fields
.field blacklist decode_buffer:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 77
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_30

    sput-object v0, Lsun/misc/BASE64Decoder;->pem_array:[C

    .line 89
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/16 v1, 0xff

    if-ge v0, v1, :cond_1c

    .line 93
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 95
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 96
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    sget-object v2, Lsun/misc/BASE64Decoder;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 98
    .end local v0    # "i":I
    :cond_2e
    return-void

    nop

    :array_30
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

.method public constructor greylist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    return-void
.end method


# virtual methods
.method protected blacklist bytesPerAtom()I
    .registers 2

    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method protected blacklist bytesPerLine()I
    .registers 2

    .line 70
    const/16 v0, 0x48

    return v0
.end method

.method protected blacklist decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 15
    .param p1, "inStream"    # Ljava/io/PushbackInputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "rem"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, -0x1

    .local v0, "a":B
    const/4 v1, -0x1

    .local v1, "b":B
    const/4 v2, -0x1

    .local v2, "c":B
    const/4 v3, -0x1

    .line 112
    .local v3, "d":B
    const/4 v4, 0x2

    if-lt p3, v4, :cond_c5

    .line 116
    :cond_7
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v5

    .line 117
    .local v5, "i":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_bf

    .line 120
    const/16 v7, 0xa

    if-eq v5, v7, :cond_7

    const/16 v7, 0xd

    if-eq v5, v7, :cond_7

    .line 121
    iget-object v7, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    int-to-byte v8, v5

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 123
    iget-object v7, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    add-int/lit8 v8, p3, -0x1

    const/4 v10, 0x1

    invoke-virtual {p0, p1, v7, v10, v8}, Lsun/misc/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 124
    if-eq v5, v6, :cond_b9

    .line 128
    const/16 v6, 0x3d

    const/4 v7, 0x3

    if-le p3, v7, :cond_33

    iget-object v8, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v8, v8, v7

    if-ne v8, v6, :cond_33

    .line 129
    const/4 p3, 0x3

    .line 131
    :cond_33
    if-le p3, v4, :cond_3c

    iget-object v8, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v8, v8, v4

    if-ne v8, v6, :cond_3c

    .line 132
    const/4 p3, 0x2

    .line 134
    :cond_3c
    packed-switch p3, :pswitch_data_ce

    goto :goto_68

    .line 136
    :pswitch_40
    sget-object v6, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v8, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    aget-byte v3, v6, v8

    .line 139
    :pswitch_4a
    sget-object v6, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v8, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v6, v4

    .line 142
    :pswitch_54
    sget-object v4, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    aget-byte v1, v4, v6

    .line 143
    sget-object v4, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    aget-byte v0, v4, v6

    .line 147
    :goto_68
    packed-switch p3, :pswitch_data_d8

    goto :goto_b8

    .line 156
    :pswitch_6c
    shl-int/lit8 v4, v0, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 157
    shl-int/lit8 v4, v1, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 158
    shl-int/lit8 v4, v2, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_b8

    .line 152
    :pswitch_91
    shl-int/lit8 v4, v0, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 153
    shl-int/lit8 v4, v1, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 154
    goto :goto_b8

    .line 149
    :pswitch_ab
    shl-int/lit8 v4, v0, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 150
    nop

    .line 161
    :goto_b8
    return-void

    .line 125
    :cond_b9
    new-instance v4, Lsun/misc/CEStreamExhausted;

    invoke-direct {v4}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v4

    .line 118
    :cond_bf
    new-instance v4, Lsun/misc/CEStreamExhausted;

    invoke-direct {v4}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v4

    .line 113
    .end local v5    # "i":I
    :cond_c5
    new-instance v4, Lsun/misc/CEFormatException;

    const-string v5, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v4, v5}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_54
        :pswitch_4a
        :pswitch_40
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x2
        :pswitch_ab
        :pswitch_91
        :pswitch_6c
    .end packed-switch
.end method
