.class public Lsun/misc/BASE64Encoder;
.super Lsun/misc/CharacterEncoder;
.source "BASE64Encoder.java"


# static fields
.field private static final greylist pem_array:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lsun/misc/BASE64Encoder;->pem_array:[C

    return-void

    :array_a
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
    .registers 1

    .line 47
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist bytesPerAtom()I
    .registers 2

    .line 51
    const/4 v0, 0x3

    return v0
.end method

.method protected blacklist bytesPerLine()I
    .registers 2

    .line 60
    const/16 v0, 0x39

    return v0
.end method

.method protected blacklist encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 12
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p4, v0, :cond_2b

    .line 87
    aget-byte v0, p2, p3

    .line 88
    .local v0, "a":B
    const/4 v2, 0x0

    .line 89
    .local v2, "b":B
    const/4 v3, 0x0

    .line 90
    .local v3, "c":B
    sget-object v4, Lsun/misc/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 91
    sget-object v4, Lsun/misc/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 92
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 93
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_a2

    .line 94
    .end local v0    # "a":B
    .end local v2    # "b":B
    .end local v3    # "c":B
    :cond_2b
    const/4 v0, 0x2

    if-ne p4, v0, :cond_64

    .line 95
    aget-byte v0, p2, p3

    .line 96
    .restart local v0    # "a":B
    add-int/lit8 v2, p3, 0x1

    aget-byte v2, p2, v2

    .line 97
    .restart local v2    # "b":B
    const/4 v3, 0x0

    .line 98
    .restart local v3    # "c":B
    sget-object v4, Lsun/misc/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 99
    sget-object v4, Lsun/misc/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 100
    sget-object v4, Lsun/misc/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, 0x3c

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 101
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_a2

    .line 103
    .end local v0    # "a":B
    .end local v2    # "b":B
    .end local v3    # "c":B
    :cond_64
    aget-byte v0, p2, p3

    .line 104
    .restart local v0    # "a":B
    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p2, v1

    .line 105
    .restart local v2    # "b":B
    add-int/lit8 v1, p3, 0x2

    aget-byte v3, p2, v1

    .line 106
    .restart local v3    # "c":B
    sget-object v1, Lsun/misc/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 107
    sget-object v1, Lsun/misc/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 108
    sget-object v1, Lsun/misc/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3c

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 109
    sget-object v1, Lsun/misc/BASE64Encoder;->pem_array:[C

    and-int/lit8 v4, v3, 0x3f

    aget-char v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 111
    :goto_a2
    return-void
.end method
