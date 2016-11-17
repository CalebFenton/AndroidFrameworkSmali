.class final Lsun/security/ssl/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# static fields
.field private static final BLOCK_OFFSET_TYPE:I = 0x8

.field private static final BLOCK_OFFSET_VERSION:I = 0x9

.field private static final BLOCK_SIZE_SSL:I = 0xb

.field private static final BLOCK_SIZE_TLS:I = 0xd

.field static final NULL:Lsun/security/ssl/MAC;

.field private static final nullMAC:[B


# instance fields
.field private final block:[B

.field private final mac:Ljavax/crypto/Mac;

.field private final macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

.field private final macSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Lsun/security/ssl/MAC;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/MAC;-><init>()V

    #@5
    sput-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@7
    .line 59
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [B

    #@a
    sput-object v0, Lsun/security/ssl/MAC;->nullMAC:[B

    #@c
    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lsun/security/ssl/MAC;->macSize:I

    #@7
    .line 88
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    #@9
    iput-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@b
    .line 89
    iput-object v1, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@d
    .line 90
    iput-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    #@f
    .line 86
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/CipherSuite$MacAlg;Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)V
    .locals 5
    .param p1, "macAlg"    # Lsun/security/ssl/CipherSuite$MacAlg;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput-object p1, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@5
    .line 99
    iget v2, p1, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    #@7
    iput v2, p0, Lsun/security/ssl/MAC;->macSize:I

    #@9
    .line 102
    iget v2, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@b
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@d
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f
    if-lt v2, v3, :cond_0

    #@11
    const/4 v1, 0x1

    #@12
    .line 104
    .local v1, "tls":Z
    :goto_0
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    #@14
    if-ne p1, v2, :cond_2

    #@16
    .line 105
    if-eqz v1, :cond_1

    #@18
    const-string/jumbo v0, "HmacMD5"

    #@1b
    .line 116
    .local v0, "algorithm":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@21
    .line 117
    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@23
    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    #@26
    .line 119
    if-eqz v1, :cond_7

    #@28
    .line 120
    const/16 v2, 0xd

    #@2a
    new-array v2, v2, [B

    #@2c
    iput-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@2e
    .line 121
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@30
    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    #@32
    const/16 v4, 0x9

    #@34
    aput-byte v3, v2, v4

    #@36
    .line 122
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@38
    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@3a
    const/16 v4, 0xa

    #@3c
    aput-byte v3, v2, v4

    #@3e
    .line 97
    :goto_2
    return-void

    #@3f
    .line 102
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "tls":Z
    :cond_0
    const/4 v1, 0x0

    #@40
    .restart local v1    # "tls":Z
    goto :goto_0

    #@41
    .line 105
    :cond_1
    const-string/jumbo v0, "SslMacMD5"

    #@44
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_1

    #@45
    .line 106
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_2
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    #@47
    if-ne p1, v2, :cond_4

    #@49
    .line 107
    if-eqz v1, :cond_3

    #@4b
    const-string/jumbo v0, "HmacSHA1"

    #@4e
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_1

    #@4f
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "SslMacSHA1"

    #@52
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_1

    #@53
    .line 108
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_4
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    #@55
    if-ne p1, v2, :cond_5

    #@57
    .line 109
    const-string/jumbo v0, "HmacSHA256"

    #@5a
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_1

    #@5b
    .line 110
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_5
    sget-object v2, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    #@5d
    if-ne p1, v2, :cond_6

    #@5f
    .line 111
    const-string/jumbo v0, "HmacSHA384"

    #@62
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_1

    #@63
    .line 113
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "Unknown Mac "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2

    #@7d
    .line 124
    .restart local v0    # "algorithm":Ljava/lang/String;
    :cond_7
    const/16 v2, 0xb

    #@7f
    new-array v2, v2, [B

    #@81
    iput-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@83
    goto :goto_2
.end method

.method private compute(BLjava/nio/ByteBuffer;[BIIZ)[B
    .locals 3
    .param p1, "type"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "buf"    # [B
    .param p4, "offset"    # I
    .param p5, "len"    # I
    .param p6, "isSimulated"    # Z

    #@0
    .prologue
    .line 231
    iget v0, p0, Lsun/security/ssl/MAC;->macSize:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 232
    sget-object v0, Lsun/security/ssl/MAC;->nullMAC:[B

    #@6
    return-object v0

    #@7
    .line 236
    :cond_0
    if-nez p6, :cond_1

    #@9
    .line 237
    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    #@b
    const/16 v1, 0x8

    #@d
    aput-byte p1, v0, v1

    #@f
    .line 238
    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    #@11
    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    #@13
    array-length v1, v1

    #@14
    add-int/lit8 v1, v1, -0x2

    #@16
    shr-int/lit8 v2, p5, 0x8

    #@18
    int-to-byte v2, v2

    #@19
    aput-byte v2, v0, v1

    #@1b
    .line 239
    iget-object v0, p0, Lsun/security/ssl/MAC;->block:[B

    #@1d
    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    #@1f
    array-length v1, v1

    #@20
    add-int/lit8 v1, v1, -0x1

    #@22
    int-to-byte v2, p5

    #@23
    aput-byte v2, v0, v1

    #@25
    .line 241
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@27
    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    #@29
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    #@2c
    .line 242
    invoke-direct {p0}, Lsun/security/ssl/MAC;->incrementSequenceNumber()V

    #@2f
    .line 246
    :cond_1
    if-eqz p2, :cond_2

    #@31
    .line 247
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@33
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    #@36
    .line 252
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@38
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 249
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@3f
    invoke-virtual {v0, p3, p4, p5}, Ljavax/crypto/Mac;->update([BII)V

    #@42
    goto :goto_0
.end method

.method private incrementSequenceNumber()V
    .locals 3

    #@0
    .prologue
    .line 218
    const/4 v0, 0x7

    #@1
    .line 219
    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    #@3
    iget-object v1, p0, Lsun/security/ssl/MAC;->block:[B

    #@5
    aget-byte v2, v1, v0

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    int-to-byte v2, v2

    #@a
    aput-byte v2, v1, v0

    #@c
    if-nez v2, :cond_0

    #@e
    .line 220
    add-int/lit8 v0, v0, -0x1

    #@10
    goto :goto_0

    #@11
    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method MAClen()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Lsun/security/ssl/MAC;->macSize:I

    #@2
    return v0
.end method

.method final compute(BLjava/nio/ByteBuffer;Z)[B
    .locals 7
    .param p1, "type"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "isSimulated"    # Z

    #@0
    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v5

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move-object v2, p2

    #@9
    move v6, p3

    #@a
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;[BIIZ)[B

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method final compute(B[BIIZ)[B
    .locals 7
    .param p1, "type"    # B
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "isSimulated"    # Z

    #@0
    .prologue
    .line 160
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;[BIIZ)[B

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method hashBlockLen()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@2
    iget v0, v0, Lsun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    #@4
    return v0
.end method

.method minimalPaddingLen()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lsun/security/ssl/MAC;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@2
    iget v0, v0, Lsun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    #@4
    return v0
.end method

.method final seqNumIsHuge()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 211
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@5
    if-eqz v2, :cond_1

    #@7
    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 212
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@d
    aget-byte v2, v2, v1

    #@f
    if-ne v2, v3, :cond_1

    #@11
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@13
    aget-byte v2, v2, v0

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 211
    :goto_0
    return v0

    #@18
    :cond_0
    move v0, v1

    #@19
    .line 212
    goto :goto_0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    .line 211
    goto :goto_0
.end method

.method final seqNumOverflow()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    .line 191
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@5
    if-eqz v2, :cond_1

    #@7
    iget-object v2, p0, Lsun/security/ssl/MAC;->mac:Ljavax/crypto/Mac;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 192
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@d
    aget-byte v2, v2, v1

    #@f
    if-ne v2, v4, :cond_1

    #@11
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@13
    aget-byte v2, v2, v0

    #@15
    if-ne v2, v4, :cond_1

    #@17
    .line 193
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@19
    const/4 v3, 0x2

    #@1a
    aget-byte v2, v2, v3

    #@1c
    if-ne v2, v4, :cond_1

    #@1e
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@20
    const/4 v3, 0x3

    #@21
    aget-byte v2, v2, v3

    #@23
    if-ne v2, v4, :cond_1

    #@25
    .line 194
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@27
    const/4 v3, 0x4

    #@28
    aget-byte v2, v2, v3

    #@2a
    if-ne v2, v4, :cond_1

    #@2c
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@2e
    const/4 v3, 0x5

    #@2f
    aget-byte v2, v2, v3

    #@31
    if-ne v2, v4, :cond_1

    #@33
    .line 195
    iget-object v2, p0, Lsun/security/ssl/MAC;->block:[B

    #@35
    const/4 v3, 0x6

    #@36
    aget-byte v2, v2, v3

    #@38
    if-ne v2, v4, :cond_0

    #@3a
    .line 191
    :goto_0
    return v0

    #@3b
    :cond_0
    move v0, v1

    #@3c
    .line 195
    goto :goto_0

    #@3d
    :cond_1
    move v0, v1

    #@3e
    .line 191
    goto :goto_0
.end method
