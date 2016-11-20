.class public Lsun/misc/BASE64Encoder;
.super Lsun/misc/CharacterEncoder;
.source "BASE64Encoder.java"


# static fields
.field private static final pem_array:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@9
    .line 47
    return-void

    #@a
    .line 64
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
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    #@0
    .prologue
    .line 51
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/16 v0, 0x39

    #@2
    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 7
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x3d

    #@2
    .line 86
    const/4 v3, 0x1

    #@3
    if-ne p4, v3, :cond_0

    #@5
    .line 87
    aget-byte v0, p2, p3

    #@7
    .line 89
    .local v0, "a":B
    const/4 v2, 0x0

    #@8
    .line 90
    .local v2, "c":B
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@a
    ushr-int/lit8 v4, v0, 0x2

    #@c
    and-int/lit8 v4, v4, 0x3f

    #@e
    aget-char v3, v3, v4

    #@10
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@13
    .line 91
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@15
    shl-int/lit8 v4, v0, 0x4

    #@17
    and-int/lit8 v4, v4, 0x30

    #@19
    add-int/lit8 v4, v4, 0x0

    #@1b
    aget-char v3, v3, v4

    #@1d
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@20
    .line 92
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@23
    .line 93
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@26
    .line 83
    .end local v2    # "c":B
    :goto_0
    return-void

    #@27
    .line 94
    .end local v0    # "a":B
    :cond_0
    const/4 v3, 0x2

    #@28
    if-ne p4, v3, :cond_1

    #@2a
    .line 95
    aget-byte v0, p2, p3

    #@2c
    .line 96
    .restart local v0    # "a":B
    add-int/lit8 v3, p3, 0x1

    #@2e
    aget-byte v1, p2, v3

    #@30
    .line 98
    .local v1, "b":B
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@32
    ushr-int/lit8 v4, v0, 0x2

    #@34
    and-int/lit8 v4, v4, 0x3f

    #@36
    aget-char v3, v3, v4

    #@38
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@3b
    .line 99
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@3d
    shl-int/lit8 v4, v0, 0x4

    #@3f
    and-int/lit8 v4, v4, 0x30

    #@41
    ushr-int/lit8 v5, v1, 0x4

    #@43
    and-int/lit8 v5, v5, 0xf

    #@45
    add-int/2addr v4, v5

    #@46
    aget-char v3, v3, v4

    #@48
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@4b
    .line 100
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@4d
    shl-int/lit8 v4, v1, 0x2

    #@4f
    and-int/lit8 v4, v4, 0x3c

    #@51
    add-int/lit8 v4, v4, 0x0

    #@53
    aget-char v3, v3, v4

    #@55
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@58
    .line 101
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@5b
    goto :goto_0

    #@5c
    .line 103
    .end local v0    # "a":B
    .end local v1    # "b":B
    :cond_1
    aget-byte v0, p2, p3

    #@5e
    .line 104
    .restart local v0    # "a":B
    add-int/lit8 v3, p3, 0x1

    #@60
    aget-byte v1, p2, v3

    #@62
    .line 105
    .restart local v1    # "b":B
    add-int/lit8 v3, p3, 0x2

    #@64
    aget-byte v2, p2, v3

    #@66
    .line 106
    .local v2, "c":B
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@68
    ushr-int/lit8 v4, v0, 0x2

    #@6a
    and-int/lit8 v4, v4, 0x3f

    #@6c
    aget-char v3, v3, v4

    #@6e
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@71
    .line 107
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@73
    shl-int/lit8 v4, v0, 0x4

    #@75
    and-int/lit8 v4, v4, 0x30

    #@77
    ushr-int/lit8 v5, v1, 0x4

    #@79
    and-int/lit8 v5, v5, 0xf

    #@7b
    add-int/2addr v4, v5

    #@7c
    aget-char v3, v3, v4

    #@7e
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@81
    .line 108
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@83
    shl-int/lit8 v4, v1, 0x2

    #@85
    and-int/lit8 v4, v4, 0x3c

    #@87
    ushr-int/lit8 v5, v2, 0x6

    #@89
    and-int/lit8 v5, v5, 0x3

    #@8b
    add-int/2addr v4, v5

    #@8c
    aget-char v3, v3, v4

    #@8e
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@91
    .line 109
    sget-object v3, Lsun/misc/BASE64Encoder;->pem_array:[C

    #@93
    and-int/lit8 v4, v2, 0x3f

    #@95
    aget-char v3, v3, v4

    #@97
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@9a
    goto :goto_0
.end method
