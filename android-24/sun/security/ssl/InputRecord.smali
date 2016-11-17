.class Lsun/security/ssl/InputRecord;
.super Ljava/io/ByteArrayInputStream;
.source "InputRecord.java"

# interfaces
.implements Lsun/security/ssl/Record;


# static fields
.field static final debug:Lsun/security/ssl/Debug;

.field private static final v2NoCipher:[B


# instance fields
.field private appDataValid:Z

.field private exlen:I

.field formatVerified:Z

.field private handshakeHash:Lsun/security/ssl/HandshakeHash;

.field private helloVersion:Lsun/security/ssl/ProtocolVersion;

.field private isClosed:Z

.field private lastHashed:I

.field private v2Buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 432
    const/4 v0, 0x5

    #@a
    new-array v0, v0, [B

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    #@11
    .line 57
    return-void

    #@12
    .line 432
    :array_0
    .array-data 1
        -0x80t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 84
    const/16 v0, 0x4219

    #@3
    new-array v0, v0, [B

    #@5
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@8
    .line 61
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@b
    .line 85
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    #@d
    invoke-virtual {p0, v0}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@10
    .line 86
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@12
    .line 87
    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@14
    .line 88
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@16
    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@18
    .line 89
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@1b
    .line 90
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@1e
    .line 83
    return-void
.end method

.method private V2toV3ClientHello([B)V
    .locals 11
    .param p1, "v2Msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 705
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@2
    const/16 v8, 0x16

    #@4
    const/4 v9, 0x0

    #@5
    aput-byte v8, v7, v9

    #@7
    .line 706
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@9
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@b
    const/4 v9, 0x3

    #@c
    aget-byte v8, v8, v9

    #@e
    const/4 v9, 0x1

    #@f
    aput-byte v8, v7, v9

    #@11
    .line 707
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@13
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@15
    const/4 v9, 0x4

    #@16
    aget-byte v8, v8, v9

    #@18
    const/4 v9, 0x2

    #@19
    aput-byte v8, v7, v9

    #@1b
    .line 714
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@1d
    const/4 v8, 0x1

    #@1e
    const/4 v9, 0x5

    #@1f
    aput-byte v8, v7, v9

    #@21
    .line 721
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@23
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@25
    const/4 v9, 0x1

    #@26
    aget-byte v8, v8, v9

    #@28
    const/16 v9, 0x9

    #@2a
    aput-byte v8, v7, v9

    #@2c
    .line 722
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@2e
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@30
    const/4 v9, 0x2

    #@31
    aget-byte v8, v8, v9

    #@33
    const/16 v9, 0xa

    #@35
    aput-byte v8, v7, v9

    #@37
    .line 724
    const/16 v7, 0xb

    #@39
    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@3b
    .line 731
    const/4 v7, 0x0

    #@3c
    aget-byte v7, p1, v7

    #@3e
    and-int/lit16 v7, v7, 0xff

    #@40
    shl-int/lit8 v7, v7, 0x8

    #@42
    const/4 v8, 0x1

    #@43
    aget-byte v8, p1, v8

    #@45
    and-int/lit16 v8, v8, 0xff

    #@47
    add-int v0, v7, v8

    #@49
    .line 732
    .local v0, "cipherSpecLen":I
    const/4 v7, 0x2

    #@4a
    aget-byte v7, p1, v7

    #@4c
    and-int/lit16 v7, v7, 0xff

    #@4e
    shl-int/lit8 v7, v7, 0x8

    #@50
    const/4 v8, 0x3

    #@51
    aget-byte v8, p1, v8

    #@53
    and-int/lit16 v8, v8, 0xff

    #@55
    add-int v6, v7, v8

    #@57
    .line 733
    .local v6, "sessionIdLen":I
    const/4 v7, 0x4

    #@58
    aget-byte v7, p1, v7

    #@5a
    and-int/lit16 v7, v7, 0xff

    #@5c
    shl-int/lit8 v7, v7, 0x8

    #@5e
    const/4 v8, 0x5

    #@5f
    aget-byte v8, p1, v8

    #@61
    and-int/lit16 v8, v8, 0xff

    #@63
    add-int v4, v7, v8

    #@65
    .line 740
    .local v4, "nonceLen":I
    add-int/lit8 v7, v0, 0x6

    #@67
    add-int v5, v7, v6

    #@69
    .line 742
    .local v5, "offset":I
    const/16 v7, 0x20

    #@6b
    if-ge v4, v7, :cond_1

    #@6d
    .line 743
    const/4 v1, 0x0

    #@6e
    .local v1, "i":I
    :goto_0
    rsub-int/lit8 v7, v4, 0x20

    #@70
    if-ge v1, v7, :cond_0

    #@72
    .line 744
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@74
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@76
    add-int/lit8 v9, v8, 0x1

    #@78
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@7a
    const/4 v9, 0x0

    #@7b
    aput-byte v9, v7, v8

    #@7d
    .line 743
    add-int/lit8 v1, v1, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 745
    :cond_0
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@82
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@84
    invoke-static {p1, v5, v7, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@87
    .line 746
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@89
    add-int/2addr v7, v4

    #@8a
    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@8c
    .line 756
    .end local v1    # "i":I
    :goto_1
    sub-int/2addr v5, v6

    #@8d
    .line 757
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8f
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@91
    add-int/lit8 v9, v8, 0x1

    #@93
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@95
    int-to-byte v9, v6

    #@96
    aput-byte v9, v7, v8

    #@98
    .line 759
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@9a
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@9c
    invoke-static {p1, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9f
    .line 760
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@a1
    add-int/2addr v7, v6

    #@a2
    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@a4
    .line 778
    sub-int/2addr v5, v0

    #@a5
    .line 779
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@a7
    add-int/lit8 v2, v7, 0x2

    #@a9
    .line 781
    .local v2, "j":I
    const/4 v1, 0x0

    #@aa
    .restart local v1    # "i":I
    move v3, v2

    #@ab
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_2
    if-ge v1, v0, :cond_3

    #@ad
    .line 782
    add-int v7, v5, v1

    #@af
    aget-byte v7, p1, v7

    #@b1
    if-eqz v7, :cond_2

    #@b3
    move v2, v3

    #@b4
    .line 781
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_3
    add-int/lit8 v1, v1, 0x3

    #@b6
    move v3, v2

    #@b7
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    #@b8
    .line 748
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v7, v4, -0x20

    #@ba
    add-int/2addr v7, v5

    #@bb
    .line 749
    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@bd
    iget v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@bf
    const/16 v10, 0x20

    #@c1
    .line 748
    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c4
    .line 750
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@c6
    add-int/lit8 v7, v7, 0x20

    #@c8
    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@ca
    goto :goto_1

    #@cb
    .line 784
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_2
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@cd
    add-int/lit8 v2, v3, 0x1

    #@cf
    .end local v3    # "j":I
    .restart local v2    # "j":I
    add-int v8, v5, v1

    #@d1
    add-int/lit8 v8, v8, 0x1

    #@d3
    aget-byte v8, p1, v8

    #@d5
    aput-byte v8, v7, v3

    #@d7
    .line 785
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@d9
    add-int/lit8 v3, v2, 0x1

    #@db
    .end local v2    # "j":I
    .restart local v3    # "j":I
    add-int v8, v5, v1

    #@dd
    add-int/lit8 v8, v8, 0x2

    #@df
    aget-byte v8, p1, v8

    #@e1
    aput-byte v8, v7, v2

    #@e3
    move v2, v3

    #@e4
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_3

    #@e5
    .line 788
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_3
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@e7
    add-int/lit8 v7, v7, 0x2

    #@e9
    sub-int v2, v3, v7

    #@eb
    .line 789
    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@ed
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@ef
    add-int/lit8 v9, v8, 0x1

    #@f1
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@f3
    ushr-int/lit8 v9, v2, 0x8

    #@f5
    int-to-byte v9, v9

    #@f6
    aput-byte v9, v7, v8

    #@f8
    .line 790
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@fa
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@fc
    add-int/lit8 v9, v8, 0x1

    #@fe
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@100
    int-to-byte v9, v2

    #@101
    aput-byte v9, v7, v8

    #@103
    .line 791
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@105
    add-int/2addr v7, v2

    #@106
    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@108
    .line 796
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@10a
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@10c
    add-int/lit8 v9, v8, 0x1

    #@10e
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@110
    const/4 v9, 0x1

    #@111
    aput-byte v9, v7, v8

    #@113
    .line 797
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@115
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@117
    add-int/lit8 v9, v8, 0x1

    #@119
    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@11b
    const/4 v9, 0x0

    #@11c
    aput-byte v9, v7, v8

    #@11e
    .line 803
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@120
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@122
    add-int/lit8 v8, v8, -0x5

    #@124
    int-to-byte v8, v8

    #@125
    const/4 v9, 0x3

    #@126
    aput-byte v8, v7, v9

    #@128
    .line 804
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@12a
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@12c
    add-int/lit8 v8, v8, -0x5

    #@12e
    ushr-int/lit8 v8, v8, 0x8

    #@130
    int-to-byte v8, v8

    #@131
    const/4 v9, 0x4

    #@132
    aput-byte v8, v7, v9

    #@134
    .line 806
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@136
    const/4 v8, 0x0

    #@137
    const/4 v9, 0x6

    #@138
    aput-byte v8, v7, v9

    #@13a
    .line 807
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@13c
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@13e
    add-int/lit8 v8, v8, -0x5

    #@140
    add-int/lit8 v8, v8, -0x4

    #@142
    ushr-int/lit8 v8, v8, 0x8

    #@144
    int-to-byte v8, v8

    #@145
    const/4 v9, 0x7

    #@146
    aput-byte v8, v7, v9

    #@148
    .line 808
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@14a
    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@14c
    add-int/lit8 v8, v8, -0x5

    #@14e
    add-int/lit8 v8, v8, -0x4

    #@150
    int-to-byte v8, v8

    #@151
    const/16 v9, 0x8

    #@153
    aput-byte v8, v7, v9

    #@155
    .line 810
    const/4 v7, 0x5

    #@156
    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@158
    .line 697
    return-void
.end method

.method static calculateRemainingLen(Lsun/security/ssl/MAC;II)I
    .locals 10
    .param p0, "signer"    # Lsun/security/ssl/MAC;
    .param p1, "fullLen"    # I
    .param p2, "usedLen"    # I

    #@0
    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@2
    .line 288
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    #@5
    move-result v0

    #@6
    .line 289
    .local v0, "blockLen":I
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->minimalPaddingLen()I

    #@9
    move-result v1

    #@a
    .line 294
    .local v1, "minimalPaddingLen":I
    sub-int v2, v0, v1

    #@c
    rsub-int/lit8 v2, v2, 0xd

    #@e
    add-int/2addr p1, v2

    #@f
    .line 295
    sub-int v2, v0, v1

    #@11
    rsub-int/lit8 v2, v2, 0xd

    #@13
    add-int/2addr p2, v2

    #@14
    .line 302
    int-to-double v2, p1

    #@15
    int-to-double v4, v0

    #@16
    mul-double/2addr v4, v8

    #@17
    div-double/2addr v2, v4

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@1b
    move-result-wide v2

    #@1c
    .line 303
    int-to-double v4, p2

    #@1d
    int-to-double v6, v0

    #@1e
    mul-double/2addr v6, v8

    #@1f
    div-double/2addr v4, v6

    #@20
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@23
    move-result-wide v4

    #@24
    .line 302
    sub-double/2addr v2, v4

    #@25
    double-to-int v2, v2

    #@26
    .line 303
    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    #@29
    move-result v3

    #@2a
    .line 302
    mul-int/2addr v2, v3

    #@2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    return v2
.end method

.method static checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z
    .locals 10
    .param p0, "contentType"    # B
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "contentLen"    # I
    .param p4, "signer"    # Lsun/security/ssl/MAC;
    .param p5, "isSimulated"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 242
    invoke-virtual {p4}, Lsun/security/ssl/MAC;->MAClen()I

    #@4
    move-result v8

    #@5
    .local v8, "tagLen":I
    move-object v0, p4

    #@6
    move v1, p0

    #@7
    move-object v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p5

    #@b
    .line 243
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    #@e
    move-result-object v6

    #@f
    .line 245
    .local v6, "hash":[B
    if-eqz v6, :cond_0

    #@11
    array-length v0, v6

    #@12
    if-eq v8, v0, :cond_1

    #@14
    .line 247
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v1, "Internal MAC error"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 250
    :cond_1
    add-int v0, p2, p3

    #@1f
    invoke-static {p1, v0, v6}, Lsun/security/ssl/InputRecord;->compareMacTags([BI[B)[I

    #@22
    move-result-object v7

    #@23
    .line 251
    .local v7, "results":[I
    aget v0, v7, v9

    #@25
    if-eqz v0, :cond_2

    #@27
    const/4 v0, 0x1

    #@28
    :goto_0
    return v0

    #@29
    :cond_2
    move v0, v9

    #@2a
    goto :goto_0
.end method

.method private static compareMacTags([BI[B)[I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "tag"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 264
    filled-new-array {v4, v4}, [I

    #@4
    move-result-object v1

    #@5
    .line 268
    .local v1, "results":[I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 269
    add-int v2, p1, v0

    #@b
    aget-byte v2, p0, v2

    #@d
    aget-byte v3, p2, v0

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 270
    aget v2, v1, v4

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    aput v2, v1, v4

    #@17
    .line 268
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 272
    :cond_0
    const/4 v2, 0x1

    #@1b
    aget v3, v1, v2

    #@1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    aput v3, v1, v2

    #@21
    goto :goto_1

    #@22
    .line 276
    :cond_1
    return-object v1
.end method

.method static contentName(I)Ljava/lang/String;
    .locals 2
    .param p0, "contentType"    # I

    #@0
    .prologue
    .line 819
    packed-switch p0, :pswitch_data_0

    #@3
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "contentType = "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 821
    :pswitch_0
    const-string/jumbo v0, "Change Cipher Spec"

    #@1b
    return-object v0

    #@1c
    .line 823
    :pswitch_1
    const-string/jumbo v0, "Alert"

    #@1f
    return-object v0

    #@20
    .line 825
    :pswitch_2
    const-string/jumbo v0, "Handshake"

    #@23
    return-object v0

    #@24
    .line 827
    :pswitch_3
    const-string/jumbo v0, "Application Data"

    #@27
    return-object v0

    #@28
    .line 819
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleUnknownRecord(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, 0x2

    #@4
    const/4 v9, 0x0

    #@5
    .line 591
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@7
    aget-byte v5, v5, v9

    #@9
    and-int/lit16 v5, v5, 0x80

    #@b
    if-eqz v5, :cond_5

    #@d
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@f
    aget-byte v5, v5, v10

    #@11
    if-ne v5, v8, :cond_5

    #@13
    .line 597
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@15
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@17
    if-eq v5, v6, :cond_0

    #@19
    .line 598
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    #@1b
    const-string/jumbo v6, "SSLv2Hello is disabled"

    #@1e
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v5

    #@22
    .line 602
    :cond_0
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@24
    aget-byte v5, v5, v12

    #@26
    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@28
    const/4 v7, 0x4

    #@29
    aget-byte v6, v6, v7

    #@2b
    invoke-static {v5, v6}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@2e
    move-result-object v4

    #@2f
    .line 604
    .local v4, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@31
    if-ne v4, v5, :cond_1

    #@33
    .line 612
    :try_start_0
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    #@35
    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    #@37
    array-length v6, v6

    #@38
    const/4 v7, 0x0

    #@39
    invoke-virtual {p0, p2, v5, v7, v6}, Lsun/security/ssl/InputRecord;->writeBuffer(Ljava/io/OutputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 616
    :goto_0
    new-instance v5, Ljavax/net/ssl/SSLException;

    #@3e
    const-string/jumbo v6, "Unsupported SSL v2.0 ClientHello"

    #@41
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@44
    throw v5

    #@45
    .line 624
    :cond_1
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@47
    aget-byte v5, v5, v9

    #@49
    and-int/lit8 v5, v5, 0x7f

    #@4b
    shl-int/lit8 v5, v5, 0x8

    #@4d
    .line 625
    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@4f
    aget-byte v6, v6, v8

    #@51
    and-int/lit16 v6, v6, 0xff

    #@53
    .line 624
    add-int/2addr v5, v6

    #@54
    add-int/lit8 v2, v5, -0x3

    #@56
    .line 626
    .local v2, "len":I
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@58
    if-nez v5, :cond_2

    #@5a
    .line 627
    new-array v5, v2, [B

    #@5c
    iput-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@5e
    .line 629
    :cond_2
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@60
    add-int/lit8 v6, v2, 0x5

    #@62
    if-ge v5, v6, :cond_3

    #@64
    .line 631
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@66
    iget v6, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@68
    add-int/lit8 v6, v6, -0x5

    #@6a
    add-int/lit8 v7, v2, 0x5

    #@6c
    iget v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@6e
    sub-int/2addr v7, v8

    #@6f
    .line 630
    invoke-direct {p0, p1, v5, v6, v7}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    #@72
    move-result v3

    #@73
    .line 632
    .local v3, "really":I
    if-gez v3, :cond_3

    #@75
    .line 633
    new-instance v5, Ljava/io/EOFException;

    #@77
    const-string/jumbo v6, "SSL peer shut down incorrectly"

    #@7a
    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v5

    #@7e
    .line 638
    .end local v3    # "really":I
    :cond_3
    iput v9, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@80
    .line 640
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@82
    invoke-direct {p0, v5, v10, v12}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    #@85
    .line 641
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@87
    invoke-direct {p0, v5, v9, v2}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    #@8a
    .line 642
    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@8c
    invoke-direct {p0, v5}, Lsun/security/ssl/InputRecord;->V2toV3ClientHello([B)V

    #@8f
    .line 643
    iput-object v11, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    #@91
    .line 644
    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@93
    iput v5, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@95
    .line 646
    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    #@97
    if-eqz v5, :cond_4

    #@99
    const-string/jumbo v5, "record"

    #@9c
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@9f
    move-result v5

    #@a0
    if-eqz v5, :cond_4

    #@a2
    .line 647
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a4
    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v6

    #@b5
    .line 649
    const-string/jumbo v7, ", READ:  SSL v2, contentType = "

    #@b8
    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v6

    #@bc
    .line 650
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    #@bf
    move-result v7

    #@c0
    invoke-static {v7}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    .line 651
    const-string/jumbo v7, ", translated length = "

    #@cb
    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v6

    #@cf
    .line 651
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@d2
    move-result v7

    #@d3
    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    .line 647
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@de
    .line 653
    :cond_4
    return-void

    #@df
    .line 659
    .end local v2    # "len":I
    .end local v4    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_5
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@e1
    aget-byte v5, v5, v9

    #@e3
    and-int/lit16 v5, v5, 0x80

    #@e5
    if-eqz v5, :cond_6

    #@e7
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@e9
    aget-byte v5, v5, v10

    #@eb
    const/4 v6, 0x4

    #@ec
    if-ne v5, v6, :cond_6

    #@ee
    .line 660
    new-instance v5, Ljavax/net/ssl/SSLException;

    #@f0
    .line 661
    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    #@f3
    .line 660
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@f6
    throw v5

    #@f7
    .line 669
    :cond_6
    const/4 v1, 0x0

    #@f8
    .local v1, "i":I
    :goto_1
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    #@fa
    array-length v5, v5

    #@fb
    if-ge v1, v5, :cond_8

    #@fd
    .line 670
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@ff
    aget-byte v5, v5, v1

    #@101
    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    #@103
    aget-byte v6, v6, v1

    #@105
    if-eq v5, v6, :cond_7

    #@107
    .line 671
    new-instance v5, Ljavax/net/ssl/SSLException;

    #@109
    .line 672
    const-string/jumbo v6, "Unrecognized SSL message, plaintext connection?"

    #@10c
    .line 671
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v5

    #@110
    .line 669
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@112
    goto :goto_1

    #@113
    .line 676
    :cond_8
    new-instance v5, Ljavax/net/ssl/SSLException;

    #@115
    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    #@118
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@11b
    throw v5

    #@11c
    .line 613
    .end local v1    # "i":I
    .restart local v4    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :catch_0
    move-exception v0

    #@11d
    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private hashInternal([BII)V
    .locals 5
    .param p1, "databuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 338
    sget-object v2, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "data"

    #@7
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 340
    :try_start_0
    new-instance v1, Lsun/misc/HexDumpEncoder;

    #@f
    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@12
    .line 342
    .local v1, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "[read] MD5 and SHA1 hashes:  len = "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 344
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@2d
    invoke-direct {v2, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@30
    .line 345
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    .line 344
    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 348
    .end local v1    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@37
    invoke-virtual {v2, p1, p2, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    #@3a
    .line 337
    return-void

    #@3b
    .line 346
    :catch_0
    move-exception v0

    #@3c
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private readFully(Ljava/io/InputStream;[BII)I
    .locals 8
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    const/4 v3, 0x0

    #@1
    .line 441
    .local v3, "n":I
    :goto_0
    if-ge v3, p4, :cond_2

    #@3
    .line 442
    add-int v5, p3, v3

    #@5
    sub-int v6, p4, v3

    #@7
    invoke-virtual {p1, p2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    #@a
    move-result v4

    #@b
    .line 443
    .local v4, "readLen":I
    if-gez v4, :cond_0

    #@d
    .line 444
    return v4

    #@e
    .line 447
    :cond_0
    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    #@10
    if-eqz v5, :cond_1

    #@12
    const-string/jumbo v5, "packet"

    #@15
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 449
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@1d
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@20
    .line 450
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v5, p3, v3

    #@22
    invoke-static {p2, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@25
    move-result-object v0

    #@26
    .line 452
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "[Raw read]: length = "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    .line 453
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@37
    move-result v7

    #@38
    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 454
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    invoke-virtual {v2, v0, v5}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 458
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_1
    :goto_1
    add-int/2addr v3, v4

    #@49
    .line 459
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@4b
    add-int/2addr v5, v4

    #@4c
    iput v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@4e
    goto :goto_0

    #@4f
    .line 462
    .end local v4    # "readLen":I
    :cond_2
    return v3

    #@50
    .line 455
    .restart local v4    # "readLen":I
    :catch_0
    move-exception v1

    #@51
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 518
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@3
    const/4 v5, 0x1

    #@4
    aget-byte v4, v4, v5

    #@6
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8
    const/4 v6, 0x2

    #@9
    aget-byte v5, v5, v6

    #@b
    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@e
    move-result-object v3

    #@f
    .line 522
    .local v3, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v4, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@11
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    #@13
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@15
    if-lt v4, v5, :cond_0

    #@17
    .line 523
    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    #@19
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    #@1b
    iget-byte v5, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    #@1d
    if-le v4, v5, :cond_1

    #@1f
    .line 524
    :cond_0
    new-instance v4, Ljavax/net/ssl/SSLException;

    #@21
    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Unsupported record version "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 524
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 531
    :cond_1
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@3b
    const/4 v5, 0x3

    #@3c
    aget-byte v4, v4, v5

    #@3e
    and-int/lit16 v4, v4, 0xff

    #@40
    shl-int/lit8 v4, v4, 0x8

    #@42
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@44
    const/4 v6, 0x4

    #@45
    aget-byte v5, v5, v6

    #@47
    and-int/lit16 v5, v5, 0xff

    #@49
    add-int v0, v4, v5

    #@4b
    .line 536
    .local v0, "contentLen":I
    if-ltz v0, :cond_2

    #@4d
    const v4, 0x8214

    #@50
    if-le v0, v4, :cond_3

    #@52
    .line 537
    :cond_2
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    #@54
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "Bad InputRecord size, count = "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 539
    const-string/jumbo v6, ", buf.length = "

    #@67
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 539
    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@6d
    array-length v6, v6

    #@6e
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4

    #@7a
    .line 547
    :cond_3
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@7c
    array-length v4, v4

    #@7d
    add-int/lit8 v4, v4, -0x5

    #@7f
    if-le v0, v4, :cond_4

    #@81
    .line 548
    add-int/lit8 v4, v0, 0x5

    #@83
    new-array v1, v4, [B

    #@85
    .line 549
    .local v1, "newbuf":[B
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@87
    const/4 v5, 0x5

    #@88
    invoke-static {v4, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8b
    .line 550
    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8d
    .line 553
    .end local v1    # "newbuf":[B
    :cond_4
    iget v4, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@8f
    add-int/lit8 v5, v0, 0x5

    #@91
    if-ge v4, v5, :cond_5

    #@93
    .line 555
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@95
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@97
    add-int/lit8 v6, v0, 0x5

    #@99
    iget v7, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@9b
    sub-int/2addr v6, v7

    #@9c
    .line 554
    invoke-direct {p0, p1, v4, v5, v6}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    #@9f
    move-result v2

    #@a0
    .line 556
    .local v2, "really":I
    if-gez v2, :cond_5

    #@a2
    .line 557
    new-instance v4, Ljavax/net/ssl/SSLException;

    #@a4
    const-string/jumbo v5, "SSL peer shut down incorrectly"

    #@a7
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v4

    #@ab
    .line 562
    .end local v2    # "really":I
    :cond_5
    add-int/lit8 v4, v0, 0x5

    #@ad
    iput v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@af
    .line 563
    iput v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@b1
    .line 565
    sget-object v4, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    #@b3
    if-eqz v4, :cond_8

    #@b5
    const-string/jumbo v4, "record"

    #@b8
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_8

    #@be
    .line 566
    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@c0
    if-ltz v4, :cond_6

    #@c2
    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@c4
    const/16 v5, 0x4214

    #@c6
    if-le v4, v5, :cond_7

    #@c8
    .line 567
    :cond_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ca
    new-instance v5, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d2
    move-result-object v6

    #@d3
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v5

    #@db
    .line 568
    const-string/jumbo v6, ", Bad InputRecord size"

    #@de
    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    .line 568
    const-string/jumbo v6, ", count = "

    #@e5
    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    .line 568
    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@eb
    .line 567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f6
    .line 570
    :cond_7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f8
    new-instance v5, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@100
    move-result-object v6

    #@101
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@104
    move-result-object v6

    #@105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v5

    #@109
    .line 571
    const-string/jumbo v6, ", READ: "

    #@10c
    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v5

    #@110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v5

    #@114
    .line 571
    const-string/jumbo v6, " "

    #@117
    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    .line 572
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    #@11e
    move-result v6

    #@11f
    invoke-static {v6}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    #@122
    move-result-object v6

    #@123
    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v5

    #@127
    .line 572
    const-string/jumbo v6, ", length = "

    #@12a
    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v5

    #@12e
    .line 572
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@131
    move-result v6

    #@132
    .line 570
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v5

    #@136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v5

    #@13a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13d
    .line 517
    :cond_8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 419
    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    #@3
    .line 420
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    #@6
    .line 421
    iput v1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@8
    .line 422
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@a
    .line 423
    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@c
    .line 418
    return-void
.end method

.method contentType()B
    .locals 2

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@2
    const/4 v1, 0x0

    #@3
    aget-byte v0, v0, v1

    #@5
    return v0
.end method

.method decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 16
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .param p2, "box"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const/4 v14, 0x0

    #@1
    .line 141
    .local v14, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/MAC;->MAClen()I

    #@4
    move-result v15

    #@5
    .line 142
    .local v15, "tagLen":I
    move-object/from16 v0, p0

    #@7
    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    #@9
    add-int/lit8 v12, v1, -0x5

    #@b
    .line 144
    .local v12, "cipheredLength":I
    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isNullCipher()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 146
    move-object/from16 v0, p2

    #@13
    invoke-virtual {v0, v15, v12}, Lsun/security/ssl/CipherBox;->sanityCheck(II)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 147
    new-instance v1, Ljavax/crypto/BadPaddingException;

    #@1b
    .line 148
    const-string/jumbo v2, "ciphertext sanity check failed"

    #@1e
    .line 147
    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 155
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    #@24
    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@26
    const/4 v2, 0x5

    #@27
    move-object/from16 v0, p2

    #@29
    invoke-virtual {v0, v1, v2, v12, v15}, Lsun/security/ssl/CipherBox;->decrypt([BIII)I

    #@2c
    move-result v1

    #@2d
    .line 154
    add-int/lit8 v1, v1, 0x5

    #@2f
    move-object/from16 v0, p0

    #@31
    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 169
    .end local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :cond_1
    :goto_0
    if-eqz v15, :cond_6

    #@35
    .line 170
    move-object/from16 v0, p0

    #@37
    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    #@39
    sub-int v13, v1, v15

    #@3b
    .line 171
    .local v13, "macOffset":I
    add-int/lit8 v4, v13, -0x5

    #@3d
    .line 176
    .local v4, "contentLen":I
    if-gez v4, :cond_3

    #@3f
    .line 178
    if-nez v14, :cond_2

    #@41
    .line 179
    new-instance v14, Ljavax/crypto/BadPaddingException;

    #@43
    const-string/jumbo v1, "bad record"

    #@46
    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@49
    .line 183
    :cond_2
    add-int/lit8 v1, v12, 0x5

    #@4b
    sub-int v13, v1, v15

    #@4d
    .line 184
    add-int/lit8 v4, v13, -0x5

    #@4f
    .line 187
    :cond_3
    move-object/from16 v0, p0

    #@51
    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    #@53
    sub-int/2addr v1, v15

    #@54
    move-object/from16 v0, p0

    #@56
    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    #@58
    .line 194
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    #@5b
    move-result v1

    #@5c
    .line 195
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@60
    const/4 v3, 0x5

    #@61
    const/4 v6, 0x0

    #@62
    move-object/from16 v5, p1

    #@64
    .line 194
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_4

    #@6a
    .line 196
    if-nez v14, :cond_4

    #@6c
    .line 197
    new-instance v14, Ljavax/crypto/BadPaddingException;

    #@6e
    const-string/jumbo v1, "bad record MAC"

    #@71
    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@74
    .line 205
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_6

    #@7a
    .line 206
    move-object/from16 v0, p1

    #@7c
    invoke-static {v0, v12, v4}, Lsun/security/ssl/InputRecord;->calculateRemainingLen(Lsun/security/ssl/MAC;II)I

    #@7f
    move-result v8

    #@80
    .line 214
    .local v8, "remainingLen":I
    move-object/from16 v0, p0

    #@82
    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@84
    array-length v1, v1

    #@85
    if-le v8, v1, :cond_5

    #@87
    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    #@89
    .line 217
    const-string/jumbo v2, "Internal buffer capacity error"

    #@8c
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v1

    #@90
    .line 156
    .end local v4    # "contentLen":I
    .end local v8    # "remainingLen":I
    .end local v13    # "macOffset":I
    .restart local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catch_0
    move-exception v11

    #@91
    .line 165
    .local v11, "bpe":Ljavax/crypto/BadPaddingException;
    move-object v14, v11

    #@92
    .local v14, "reservedBPE":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    #@93
    .line 224
    .end local v11    # "bpe":Ljavax/crypto/BadPaddingException;
    .end local v14    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v4    # "contentLen":I
    .restart local v8    # "remainingLen":I
    .restart local v13    # "macOffset":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    #@96
    move-result v5

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v6, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@9b
    const/4 v7, 0x0

    #@9c
    const/4 v10, 0x1

    #@9d
    move-object/from16 v9, p1

    #@9f
    invoke-static/range {v5 .. v10}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    #@a2
    .line 229
    .end local v4    # "contentLen":I
    .end local v8    # "remainingLen":I
    .end local v13    # "macOffset":I
    :cond_6
    if-eqz v14, :cond_7

    #@a4
    .line 230
    throw v14

    #@a5
    .line 138
    :cond_7
    return-void
.end method

.method doHashes()V
    .locals 3

    #@0
    .prologue
    .line 326
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@2
    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 328
    .local v0, "len":I
    if-lez v0, :cond_0

    #@8
    .line 329
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@a
    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@c
    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    #@f
    .line 330
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@11
    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@13
    .line 325
    :cond_0
    return-void
.end method

.method enableFormatChecks()V
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@3
    .line 104
    return-void
.end method

.method getHandshakeHash()Lsun/security/ssl/HandshakeHash;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@2
    return-object v0
.end method

.method getHelloVersion()Lsun/security/ssl/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    return-object v0
.end method

.method ignore(I)V
    .locals 1
    .param p1, "bytes"    # I

    #@0
    .prologue
    .line 311
    if-lez p1, :cond_0

    #@2
    .line 312
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@4
    add-int/2addr v0, p1

    #@5
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@7
    .line 313
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@9
    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@b
    .line 310
    :cond_0
    return-void
.end method

.method isAppDataValid()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-boolean v0, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    #@2
    return v0
.end method

.method queueHandshake(Lsun/security/ssl/InputRecord;)V
    .locals 8
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x5

    #@2
    .line 364
    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->doHashes()V

    #@5
    .line 370
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@7
    if-le v2, v7, :cond_1

    #@9
    .line 371
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@b
    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@d
    sub-int v0, v2, v3

    #@f
    .line 372
    .local v0, "len":I
    if-eqz v0, :cond_0

    #@11
    .line 373
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@13
    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@15
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@17
    invoke-static {v2, v3, v4, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 375
    :cond_0
    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@1c
    .line 376
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@1e
    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@20
    .line 377
    add-int/lit8 v2, v0, 0x5

    #@22
    iput v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@24
    .line 383
    .end local v0    # "len":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@27
    move-result v2

    #@28
    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@2a
    add-int v0, v2, v3

    #@2c
    .line 384
    .restart local v0    # "len":I
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@2e
    array-length v2, v2

    #@2f
    if-ge v2, v0, :cond_2

    #@31
    .line 387
    new-array v1, v0, [B

    #@33
    .line 388
    .local v1, "newbuf":[B
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@35
    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@37
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3a
    .line 389
    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@3c
    .line 395
    .end local v1    # "newbuf":[B
    :cond_2
    iget-object v2, p1, Ljava/io/ByteArrayInputStream;->buf:[B

    #@3e
    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    #@40
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@42
    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@44
    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@46
    sub-int v6, v0, v6

    #@48
    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4b
    .line 396
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@4d
    .line 403
    iget v2, p1, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@4f
    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    #@51
    sub-int v0, v2, v3

    #@53
    .line 404
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@55
    if-ne v2, v7, :cond_3

    #@57
    .line 405
    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@59
    add-int/2addr v2, v0

    #@5a
    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@5c
    .line 410
    iget v2, p1, Ljava/io/ByteArrayInputStream;->count:I

    #@5e
    iput v2, p1, Ljava/io/ByteArrayInputStream;->pos:I

    #@60
    .line 358
    return-void

    #@61
    .line 407
    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@63
    const-string/jumbo v3, "?? confused buffer hashing ??"

    #@66
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@69
    throw v2
.end method

.method read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x0

    #@2
    .line 471
    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 472
    return-void

    #@7
    .line 479
    :cond_0
    iget v1, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@9
    if-ge v1, v5, :cond_2

    #@b
    .line 480
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@d
    iget v2, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@f
    iget v3, p0, Lsun/security/ssl/InputRecord;->exlen:I

    #@11
    rsub-int/lit8 v3, v3, 0x5

    #@13
    invoke-direct {p0, p1, v1, v2, v3}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    #@16
    move-result v0

    #@17
    .line 481
    .local v0, "really":I
    if-gez v0, :cond_1

    #@19
    .line 482
    new-instance v1, Ljava/io/EOFException;

    #@1b
    const-string/jumbo v2, "SSL peer shut down incorrectly"

    #@1e
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 485
    :cond_1
    iput v5, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@24
    .line 486
    iput v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@26
    .line 487
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@28
    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    #@2a
    .line 496
    .end local v0    # "really":I
    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@2c
    if-nez v1, :cond_4

    #@2e
    .line 497
    const/4 v1, 0x1

    #@2f
    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@31
    .line 503
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@33
    aget-byte v1, v1, v4

    #@35
    const/16 v2, 0x16

    #@37
    if-eq v1, v2, :cond_3

    #@39
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@3b
    aget-byte v1, v1, v4

    #@3d
    const/16 v2, 0x15

    #@3f
    if-eq v1, v2, :cond_3

    #@41
    .line 504
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->handleUnknownRecord(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@44
    .line 470
    :goto_0
    return-void

    #@45
    .line 506
    :cond_3
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@48
    goto :goto_0

    #@49
    .line 509
    :cond_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@4c
    goto :goto_0
.end method

.method setAppDataValid(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 114
    iput-boolean p1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    #@2
    .line 113
    return-void
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 0
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@2
    .line 130
    return-void
.end method

.method setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    .line 93
    return-void
.end method

.method writeBuffer(Ljava/io/OutputStream;[BII)V
    .locals 1
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 687
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, p2, v0, p4}, Ljava/io/OutputStream;->write([BII)V

    #@4
    .line 688
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@7
    .line 686
    return-void
.end method
