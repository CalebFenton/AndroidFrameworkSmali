.class final Lsun/security/ssl/CipherBox;
.super Ljava/lang/Object;
.source "CipherBox.java"


# static fields
.field static final NULL:Lsun/security/ssl/CipherBox;

.field private static final debug:Lsun/security/ssl/Debug;

.field private static masks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/spec/IvParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final isCBCMode:Z

.field private final protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Lsun/security/ssl/CipherBox;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/CipherBox;-><init>()V

    #@5
    sput-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@7
    .line 97
    const-string/jumbo v0, "ssl"

    #@a
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    #@10
    .line 91
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@5
    iput-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    .line 135
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@a
    .line 136
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    #@d
    .line 133
    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)V
    .locals 7
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "bulkCipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p3, "key"    # Ljavax/crypto/SecretKey;
    .param p4, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 150
    iget-object v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    #@7
    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@d
    .line 151
    if-eqz p6, :cond_3

    #@f
    const/4 v3, 0x1

    #@10
    .line 153
    .local v3, "mode":I
    :goto_0
    if-nez p5, :cond_0

    #@12
    .line 154
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    #@15
    move-result-object p5

    #@16
    .line 156
    :cond_0
    iput-object p5, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    #@18
    .line 157
    iget-boolean v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->isCBCMode:Z

    #@1a
    iput-boolean v4, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    #@1c
    .line 169
    if-nez p4, :cond_1

    #@1e
    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 170
    const/4 v4, 0x2

    #@23
    if-ne v3, v4, :cond_1

    #@25
    .line 171
    iget v4, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@27
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@29
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2b
    if-lt v4, v5, :cond_1

    #@2d
    .line 172
    iget v4, p2, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    #@2f
    invoke-static {v4}, Lsun/security/ssl/CipherBox;->getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;

    #@32
    move-result-object p4

    #@33
    .line 175
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@35
    invoke-virtual {v4, v3, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@38
    .line 179
    iget-object v4, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@3a
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getBlockSize()I

    #@3d
    move-result v4

    #@3e
    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@40
    .line 181
    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@42
    const/4 v5, 0x1

    #@43
    if-ne v4, v5, :cond_2

    #@45
    .line 182
    const/4 v4, 0x0

    #@46
    iput v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 147
    :cond_2
    return-void

    #@49
    .line 151
    .end local v3    # "mode":I
    :cond_3
    const/4 v3, 0x2

    #@4a
    .restart local v3    # "mode":I
    goto :goto_0

    #@4b
    .line 189
    .end local v3    # "mode":I
    :catch_0
    move-exception v1

    #@4c
    .line 190
    .local v1, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@4e
    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "Could not create cipher "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 190
    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    throw v4

    #@66
    .line 186
    .end local v1    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v0

    #@67
    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@69
    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v6, "Could not create cipher "

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 187
    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@80
    throw v4

    #@81
    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    #@82
    .line 185
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    throw v2
.end method

.method private static addPadding(Ljava/nio/ByteBuffer;I)I
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "blockSize"    # I

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v1

    #@4
    .line 567
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@7
    move-result v3

    #@8
    .line 569
    .local v3, "offset":I
    add-int/lit8 v2, v1, 0x1

    #@a
    .line 573
    .local v2, "newlen":I
    rem-int v6, v2, p1

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 574
    add-int/lit8 v6, p1, -0x1

    #@10
    add-int/2addr v2, v6

    #@11
    .line 575
    rem-int v6, v2, p1

    #@13
    sub-int/2addr v2, v6

    #@14
    .line 577
    :cond_0
    sub-int v6, v2, v1

    #@16
    int-to-byte v5, v6

    #@17
    .line 582
    .local v5, "pad":B
    add-int v6, v2, v3

    #@19
    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@1c
    .line 587
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    add-int/2addr v3, v1

    #@1e
    move v4, v3

    #@1f
    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@21
    .line 588
    add-int/lit8 v3, v4, 0x1

    #@23
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v6, v5, -0x1

    #@25
    int-to-byte v6, v6

    #@26
    invoke-virtual {p0, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@29
    .line 587
    add-int/lit8 v0, v0, 0x1

    #@2b
    move v4, v3

    #@2c
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    #@2d
    .line 591
    :cond_1
    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@30
    .line 592
    invoke-virtual {p0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@33
    .line 594
    return v2
.end method

.method private static addPadding([BIII)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "blockSize"    # I

    #@0
    .prologue
    .line 535
    add-int/lit8 v1, p2, 0x1

    #@2
    .line 539
    .local v1, "newlen":I
    rem-int v4, v1, p3

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 540
    add-int/lit8 v4, p3, -0x1

    #@8
    add-int/2addr v1, v4

    #@9
    .line 541
    rem-int v4, v1, p3

    #@b
    sub-int/2addr v1, v4

    #@c
    .line 543
    :cond_0
    sub-int v4, v1, p2

    #@e
    int-to-byte v3, v4

    #@f
    .line 545
    .local v3, "pad":B
    array-length v4, p0

    #@10
    add-int v5, v1, p1

    #@12
    if-ge v4, v5, :cond_1

    #@14
    .line 546
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v5, "no space to pad buffer"

    #@19
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 552
    :cond_1
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    add-int/2addr p1, p2

    #@1f
    move v2, p1

    #@20
    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@22
    .line 553
    add-int/lit8 p1, v2, 0x1

    #@24
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    add-int/lit8 v4, v3, -0x1

    #@26
    int-to-byte v4, v4

    #@27
    aput-byte v4, p0, v2

    #@29
    .line 552
    add-int/lit8 v0, v0, 0x1

    #@2b
    move v2, p1

    #@2c
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    #@2d
    .line 555
    :cond_2
    return v1
.end method

.method private static checkPadding(Ljava/nio/ByteBuffer;B)[I
    .locals 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "pad"    # B

    #@0
    .prologue
    const/16 v5, 0x100

    #@2
    const/4 v4, 0x0

    #@3
    .line 636
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 637
    new-instance v2, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v3, "hasRemaining() must be positive"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 642
    :cond_0
    filled-new-array {v4, v4}, [I

    #@15
    move-result-object v1

    #@16
    .line 643
    .local v1, "results":[I
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    #@19
    .line 644
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    if-gt v0, v5, :cond_3

    #@1c
    .line 645
    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    if-gt v0, v5, :cond_2

    #@24
    .line 646
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@27
    move-result v2

    #@28
    if-eq v2, p1, :cond_1

    #@2a
    .line 647
    aget v2, v1, v4

    #@2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    aput v2, v1, v4

    #@30
    .line 645
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 649
    :cond_1
    const/4 v2, 0x1

    #@34
    aget v3, v1, v2

    #@36
    add-int/lit8 v3, v3, 0x1

    #@38
    aput v3, v1, v2

    #@3a
    goto :goto_2

    #@3b
    .line 644
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@3e
    goto :goto_0

    #@3f
    .line 654
    :cond_3
    return-object v1
.end method

.method private static checkPadding([BIIB)[I
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "pad"    # B

    #@0
    .prologue
    const/16 v6, 0x100

    #@2
    const/4 v5, 0x0

    #@3
    .line 607
    if-gtz p2, :cond_0

    #@5
    .line 608
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "padding len must be positive"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 613
    :cond_0
    filled-new-array {v5, v5}, [I

    #@11
    move-result-object v2

    #@12
    .line 614
    .local v2, "results":[I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :cond_1
    if-gt v0, v6, :cond_3

    #@15
    .line 615
    const/4 v1, 0x0

    #@16
    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@18
    if-gt v0, v6, :cond_1

    #@1a
    .line 616
    add-int v3, p1, v1

    #@1c
    aget-byte v3, p0, v3

    #@1e
    if-eq v3, p3, :cond_2

    #@20
    .line 617
    aget v3, v2, v5

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    aput v3, v2, v5

    #@26
    .line 615
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 619
    :cond_2
    const/4 v3, 0x1

    #@2c
    aget v4, v2, v3

    #@2e
    add-int/lit8 v4, v4, 0x1

    #@30
    aput v4, v2, v3

    #@32
    goto :goto_1

    #@33
    .line 624
    .end local v1    # "j":I
    :cond_3
    return-object v2
.end method

.method private static getFixedMask(I)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3
    .param p0, "ivSize"    # I

    #@0
    .prologue
    .line 216
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 217
    new-instance v1, Ljava/util/Hashtable;

    #@6
    const/4 v2, 0x5

    #@7
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@a
    sput-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    #@c
    .line 220
    :cond_0
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    #@18
    .line 221
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-nez v0, :cond_1

    #@1a
    .line 222
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    #@1c
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-array v1, p0, [B

    #@1e
    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@21
    .line 223
    .restart local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    sget-object v1, Lsun/security/ssl/CipherBox;->masks:Ljava/util/Hashtable;

    #@23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 226
    :cond_1
    return-object v0
.end method

.method static newCipherBox(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;
    .locals 7
    .param p0, "version"    # Lsun/security/ssl/ProtocolVersion;
    .param p1, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-boolean v0, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 202
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unsupported cipher "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 205
    :cond_0
    sget-object v0, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@20
    if-ne p1, v0, :cond_1

    #@22
    .line 206
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@24
    return-object v0

    #@25
    .line 208
    :cond_1
    new-instance v0, Lsun/security/ssl/CipherBox;

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    move-object v4, p3

    #@2b
    move-object v5, p4

    #@2c
    move v6, p5

    #@2d
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/CipherBox;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)V

    #@30
    return-object v0
.end method

.method private static removePadding(Ljava/nio/ByteBuffer;IILsun/security/ssl/ProtocolVersion;)I
    .locals 9
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tagLen"    # I
    .param p2, "blockSize"    # I
    .param p3, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 713
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@4
    move-result v0

    #@5
    .line 714
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@8
    move-result v2

    #@9
    .line 717
    .local v2, "offset":I
    add-int v6, v2, v0

    #@b
    add-int/lit8 v4, v6, -0x1

    #@d
    .line 718
    .local v4, "padOffset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@10
    move-result v6

    #@11
    and-int/lit16 v3, v6, 0xff

    #@13
    .line 720
    .local v3, "padLen":I
    add-int/lit8 v6, v3, 0x1

    #@15
    sub-int v1, v0, v6

    #@17
    .line 721
    .local v1, "newLen":I
    sub-int v6, v1, p1

    #@19
    if-gez v6, :cond_0

    #@1b
    .line 727
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v6

    #@1f
    and-int/lit16 v7, v3, 0xff

    #@21
    int-to-byte v7, v7

    #@22
    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    #@25
    .line 729
    new-instance v6, Ljavax/crypto/BadPaddingException;

    #@27
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "Invalid Padding length: "

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 734
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@42
    move-result-object v6

    #@43
    add-int v7, v2, v1

    #@45
    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Ljava/nio/ByteBuffer;

    #@4b
    .line 735
    and-int/lit16 v7, v3, 0xff

    #@4d
    int-to-byte v7, v7

    #@4e
    .line 733
    invoke-static {v6, v7}, Lsun/security/ssl/CipherBox;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    #@51
    move-result-object v5

    #@52
    .line 736
    .local v5, "results":[I
    iget v6, p3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@54
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@56
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@58
    if-lt v6, v7, :cond_1

    #@5a
    .line 737
    aget v6, v5, v8

    #@5c
    if-eqz v6, :cond_2

    #@5e
    .line 738
    new-instance v6, Ljavax/crypto/BadPaddingException;

    #@60
    const-string/jumbo v7, "Invalid TLS padding data"

    #@63
    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@66
    throw v6

    #@67
    .line 745
    :cond_1
    if-le v3, p2, :cond_2

    #@69
    .line 746
    new-instance v6, Ljavax/crypto/BadPaddingException;

    #@6b
    const-string/jumbo v7, "Invalid SSLv3 padding"

    #@6e
    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@71
    throw v6

    #@72
    .line 753
    :cond_2
    add-int v6, v2, v1

    #@74
    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@77
    .line 754
    add-int v6, v2, v1

    #@79
    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@7c
    .line 756
    return v1
.end method

.method private static removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "tagLen"    # I
    .param p4, "blockSize"    # I
    .param p5, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 672
    add-int v4, p1, p2

    #@3
    add-int/lit8 v2, v4, -0x1

    #@5
    .line 673
    .local v2, "padOffset":I
    aget-byte v4, p0, v2

    #@7
    and-int/lit16 v1, v4, 0xff

    #@9
    .line 675
    .local v1, "padLen":I
    add-int/lit8 v4, v1, 0x1

    #@b
    sub-int v0, p2, v4

    #@d
    .line 676
    .local v0, "newLen":I
    sub-int v4, v0, p3

    #@f
    if-gez v4, :cond_0

    #@11
    .line 682
    and-int/lit16 v4, v1, 0xff

    #@13
    int-to-byte v4, v4

    #@14
    invoke-static {p0, p1, p2, v4}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    #@17
    .line 684
    new-instance v4, Ljavax/crypto/BadPaddingException;

    #@19
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Invalid Padding length: "

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 688
    :cond_0
    add-int v4, p1, v0

    #@33
    .line 689
    add-int/lit8 v5, v1, 0x1

    #@35
    and-int/lit16 v6, v1, 0xff

    #@37
    int-to-byte v6, v6

    #@38
    .line 688
    invoke-static {p0, v4, v5, v6}, Lsun/security/ssl/CipherBox;->checkPadding([BIIB)[I

    #@3b
    move-result-object v3

    #@3c
    .line 690
    .local v3, "results":[I
    iget v4, p5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3e
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@40
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@42
    if-lt v4, v5, :cond_1

    #@44
    .line 691
    aget v4, v3, v7

    #@46
    if-eqz v4, :cond_2

    #@48
    .line 692
    new-instance v4, Ljavax/crypto/BadPaddingException;

    #@4a
    const-string/jumbo v5, "Invalid TLS padding data"

    #@4d
    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 699
    :cond_1
    if-le v1, p4, :cond_2

    #@53
    .line 700
    new-instance v4, Ljavax/crypto/BadPaddingException;

    #@55
    const-string/jumbo v5, "Invalid SSLv3 padding"

    #@58
    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v4

    #@5c
    .line 703
    :cond_2
    return v0
.end method


# virtual methods
.method decrypt(Ljava/nio/ByteBuffer;I)I
    .locals 17
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "tagLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v9

    #@4
    .line 458
    .local v9, "len":I
    move-object/from16 v0, p0

    #@6
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@8
    if-nez v13, :cond_0

    #@a
    .line 459
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    #@d
    move-result v13

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 460
    return v9

    #@14
    .line 467
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    #@17
    move-result v12

    #@18
    .line 468
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@1b
    move-result-object v4

    #@1c
    .line 469
    .local v4, "dup":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    #@1e
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v13, v4, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@25
    move-result v11

    #@26
    .line 470
    .local v11, "newLen":I
    if-eq v11, v9, :cond_1

    #@28
    .line 472
    new-instance v13, Ljava/lang/RuntimeException;

    #@2a
    new-instance v14, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    #@32
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v14

    #@36
    .line 473
    move-object/from16 v0, p0

    #@38
    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@3a
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    #@3d
    move-result-object v15

    #@3e
    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@41
    move-result-object v15

    #@42
    .line 472
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v14

    #@46
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v14

    #@4a
    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v13
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 526
    .end local v4    # "dup":Ljava/nio/ByteBuffer;
    .end local v11    # "newLen":I
    .end local v12    # "pos":I
    :catch_0
    move-exception v6

    #@4f
    .line 527
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@51
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@54
    move-result-object v13

    #@55
    invoke-direct {v7, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    .line 528
    .local v7, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5b
    .line 529
    throw v7

    #@5c
    .line 476
    .end local v6    # "e":Ljavax/crypto/ShortBufferException;
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    .restart local v4    # "dup":Ljava/nio/ByteBuffer;
    .restart local v11    # "newLen":I
    .restart local v12    # "pos":I
    :cond_1
    :try_start_1
    sget-object v13, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    #@5e
    if-eqz v13, :cond_2

    #@60
    const-string/jumbo v13, "plaintext"

    #@63
    invoke-static {v13}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    #@66
    move-result v13

    #@67
    if-eqz v13, :cond_2

    #@69
    .line 478
    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    #@6b
    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@6e
    .line 480
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70
    .line 481
    new-instance v14, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v15, "Padded plaintext after DECRYPTION:  len = "

    #@78
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v14

    #@7c
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v14

    #@80
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v14

    #@84
    .line 480
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 485
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@8a
    move-result-object v13

    #@8b
    invoke-virtual {v13, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@8e
    move-result-object v13

    #@8f
    check-cast v13, Ljava/nio/ByteBuffer;

    #@91
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@93
    .line 484
    invoke-virtual {v8, v13, v14}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    #@96
    .line 492
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_2
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    #@98
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@9a
    if-eqz v13, :cond_4

    #@9c
    .line 493
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@a1
    .line 495
    move-object/from16 v0, p0

    #@a3
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v14, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@a9
    .line 494
    move-object/from16 v0, p1

    #@ab
    move/from16 v1, p2

    #@ad
    invoke-static {v0, v1, v13, v14}, Lsun/security/ssl/CipherBox;->removePadding(Ljava/nio/ByteBuffer;IILsun/security/ssl/ProtocolVersion;)I

    #@b0
    move-result v11

    #@b1
    .line 497
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@b5
    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    #@b7
    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@b9
    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    #@bb
    if-lt v13, v14, :cond_4

    #@bd
    .line 498
    move-object/from16 v0, p0

    #@bf
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@c1
    if-ge v11, v13, :cond_3

    #@c3
    .line 499
    new-instance v13, Ljavax/crypto/BadPaddingException;

    #@c5
    const-string/jumbo v14, "invalid explicit IV"

    #@c8
    invoke-direct {v13, v14}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v13

    #@cc
    .line 503
    :cond_3
    const/4 v3, 0x0

    #@cd
    .line 504
    .local v3, "buf":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    #@d0
    move-result v10

    #@d1
    .line 505
    .local v10, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@d4
    move-result v13

    #@d5
    if-eqz v13, :cond_5

    #@d7
    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@da
    move-result v2

    #@db
    .line 507
    .local v2, "arrayOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    #@de
    move-result-object v3

    #@df
    .line 508
    .local v3, "buf":[B
    add-int v13, v2, v12

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@e5
    add-int/2addr v13, v14

    #@e6
    .line 509
    add-int v14, v2, v12

    #@e8
    sub-int v15, v10, v12

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget v0, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@ee
    move/from16 v16, v0

    #@f0
    sub-int v15, v15, v16

    #@f2
    .line 508
    invoke-static {v3, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f5
    .line 510
    move-object/from16 v0, p0

    #@f7
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@f9
    sub-int v13, v10, v13

    #@fb
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@100
    .line 521
    .end local v2    # "arrayOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    #@103
    move-result v10

    #@104
    .line 522
    move-object/from16 v0, p1

    #@106
    invoke-virtual {v0, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@109
    .line 525
    .end local v3    # "buf":[B
    .end local v10    # "limit":I
    :cond_4
    return v11

    #@10a
    .line 512
    .local v3, "buf":[B
    .restart local v10    # "limit":I
    :cond_5
    sub-int v13, v10, v12

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget v14, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@110
    sub-int/2addr v13, v14

    #@111
    new-array v3, v13, [B

    #@113
    .line 513
    .local v3, "buf":[B
    move-object/from16 v0, p0

    #@115
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@117
    add-int/2addr v13, v12

    #@118
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@11d
    .line 514
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@122
    .line 515
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v0, v12}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@127
    .line 516
    move-object/from16 v0, p1

    #@129
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@12c
    .line 517
    move-object/from16 v0, p0

    #@12e
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@130
    sub-int v13, v10, v13

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    #@137
    goto :goto_1

    #@138
    .line 486
    .end local v3    # "buf":[B
    .end local v10    # "limit":I
    :catch_1
    move-exception v5

    #@139
    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method decrypt([BIII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "tagLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 399
    return p3

    #@5
    .line 403
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move-object v4, p1

    #@b
    move v5, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    #@f
    move-result v2

    #@10
    .line 404
    .local v2, "newLen":I
    if-eq v2, p3, :cond_1

    #@12
    .line 406
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Cipher buffering error in JCE provider "

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 407
    iget-object v3, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@22
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 439
    .end local v2    # "newLen":I
    :catch_0
    move-exception v7

    #@37
    .line 440
    .local v7, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@39
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 409
    .end local v7    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v2    # "newLen":I
    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    #@43
    if-eqz v0, :cond_2

    #@45
    const-string/jumbo v0, "plaintext"

    #@48
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 411
    :try_start_2
    new-instance v8, Lsun/misc/HexDumpEncoder;

    #@50
    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@53
    .line 413
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@55
    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v3, "Padded plaintext after DECRYPTION:  len = "

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 413
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 417
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6e
    invoke-direct {v0, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@71
    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@73
    .line 416
    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    #@76
    .line 422
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_2
    :goto_0
    :try_start_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@78
    if-eqz v0, :cond_4

    #@7a
    .line 424
    iget v4, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@7c
    iget-object v5, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7e
    move-object v0, p1

    #@7f
    move v1, p2

    #@80
    move v3, p4

    #@81
    .line 423
    invoke-static/range {v0 .. v5}, Lsun/security/ssl/CipherBox;->removePadding([BIIIILsun/security/ssl/ProtocolVersion;)I

    #@84
    move-result v2

    #@85
    .line 426
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@87
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@89
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@8b
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@8d
    if-lt v0, v1, :cond_4

    #@8f
    .line 427
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@91
    if-ge v2, v0, :cond_3

    #@93
    .line 428
    new-instance v0, Ljavax/crypto/BadPaddingException;

    #@95
    const-string/jumbo v1, "invalid explicit IV"

    #@98
    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v0

    #@9c
    .line 432
    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@9e
    add-int/2addr v0, p2

    #@9f
    .line 433
    iget v1, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@a1
    sub-int v1, v2, v1

    #@a3
    .line 432
    invoke-static {p1, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a6
    .line 435
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    #@a8
    sub-int/2addr v2, v0

    #@a9
    .line 438
    :cond_4
    return v2

    #@aa
    .line 419
    :catch_1
    move-exception v6

    #@ab
    .local v6, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 766
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 768
    iget-object v1, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@6
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 764
    :cond_0
    :goto_0
    return-void

    #@a
    .line 770
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Ljava/security/GeneralSecurityException;
    goto :goto_0
.end method

.method encrypt(Ljava/nio/ByteBuffer;)I
    .locals 16
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v8

    #@4
    .line 296
    .local v8, "len":I
    move-object/from16 v0, p0

    #@6
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@8
    if-nez v13, :cond_0

    #@a
    .line 297
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    #@d
    move-result v13

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 298
    return v8

    #@14
    .line 302
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    #@17
    move-result v11

    #@18
    .line 304
    .local v11, "pos":I
    move-object/from16 v0, p0

    #@1a
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@1c
    if-eqz v13, :cond_2

    #@1e
    .line 306
    move-object/from16 v0, p0

    #@20
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@22
    iget v13, v13, Lsun/security/ssl/ProtocolVersion;->v:I

    #@24
    sget-object v14, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@26
    iget v14, v14, Lsun/security/ssl/ProtocolVersion;->v:I

    #@28
    if-lt v13, v14, :cond_1

    #@2a
    .line 308
    move-object/from16 v0, p0

    #@2c
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@2e
    new-array v12, v13, [B

    #@30
    .line 309
    .local v12, "prefix":[B
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    #@34
    invoke-virtual {v13, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@37
    .line 312
    const/4 v2, 0x0

    #@38
    .line 313
    .local v2, "buf":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    #@3b
    move-result v9

    #@3c
    .line 314
    .local v9, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@3f
    move-result v13

    #@40
    if-eqz v13, :cond_4

    #@42
    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@45
    move-result v1

    #@46
    .line 316
    .local v1, "arrayOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    #@49
    move-result-object v2

    #@4a
    .line 317
    .local v2, "buf":[B
    add-int v13, v1, v11

    #@4c
    .line 318
    add-int v14, v1, v11

    #@4e
    array-length v15, v12

    #@4f
    add-int/2addr v14, v15

    #@50
    .line 319
    sub-int v15, v9, v11

    #@52
    .line 317
    invoke-static {v2, v13, v2, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@55
    .line 320
    array-length v13, v12

    #@56
    add-int/2addr v13, v9

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@5c
    .line 328
    .end local v1    # "arrayOffset":I
    :goto_0
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@61
    .line 331
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@66
    .line 332
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@6b
    .line 336
    .end local v2    # "buf":[B
    .end local v9    # "limit":I
    .end local v12    # "prefix":[B
    :cond_1
    move-object/from16 v0, p0

    #@6d
    iget v13, v0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-static {v0, v13}, Lsun/security/ssl/CipherBox;->addPadding(Ljava/nio/ByteBuffer;I)I

    #@74
    move-result v8

    #@75
    .line 337
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@7a
    .line 339
    :cond_2
    sget-object v13, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    #@7c
    if-eqz v13, :cond_3

    #@7e
    const-string/jumbo v13, "plaintext"

    #@81
    invoke-static {v13}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result v13

    #@85
    if-eqz v13, :cond_3

    #@87
    .line 341
    :try_start_1
    new-instance v7, Lsun/misc/HexDumpEncoder;

    #@89
    invoke-direct {v7}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@8c
    .line 343
    .local v7, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8e
    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v15, "Padded plaintext before ENCRYPTION:  len = "

    #@96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v14

    #@9a
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v14

    #@9e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v14

    #@a2
    .line 343
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 346
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v7, v0, v13}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    #@ac
    .line 352
    .end local v7    # "hd":Lsun/misc/HexDumpEncoder;
    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@b1
    .line 358
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@b4
    move-result-object v3

    #@b5
    .line 359
    .local v3, "dup":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    #@b7
    iget-object v13, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v13, v3, v0}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@be
    move-result v10

    #@bf
    .line 361
    .local v10, "newLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    #@c2
    move-result v13

    #@c3
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    #@c6
    move-result v14

    #@c7
    if-eq v13, v14, :cond_5

    #@c9
    .line 362
    new-instance v13, Ljava/lang/RuntimeException;

    #@cb
    const-string/jumbo v14, "bytebuffer padding error"

    #@ce
    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v13
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    #@d2
    .line 371
    .end local v3    # "dup":Ljava/nio/ByteBuffer;
    .end local v10    # "newLen":I
    .end local v11    # "pos":I
    :catch_0
    move-exception v5

    #@d3
    .line 372
    .local v5, "e":Ljavax/crypto/ShortBufferException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@d5
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@d8
    move-result-object v13

    #@d9
    invoke-direct {v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@dc
    .line 373
    .local v6, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@df
    .line 374
    throw v6

    #@e0
    .line 322
    .end local v5    # "e":Ljavax/crypto/ShortBufferException;
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    .local v2, "buf":[B
    .restart local v9    # "limit":I
    .restart local v11    # "pos":I
    .restart local v12    # "prefix":[B
    :cond_4
    sub-int v13, v9, v11

    #@e2
    :try_start_3
    new-array v2, v13, [B

    #@e4
    .line 323
    .local v2, "buf":[B
    sub-int v13, v9, v11

    #@e6
    const/4 v14, 0x0

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-virtual {v0, v2, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@ec
    .line 324
    array-length v13, v12

    #@ed
    add-int/2addr v13, v11

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@f3
    .line 325
    array-length v13, v12

    #@f4
    add-int/2addr v13, v9

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@fa
    .line 326
    move-object/from16 v0, p1

    #@fc
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@ff
    goto/16 :goto_0

    #@101
    .line 365
    .end local v2    # "buf":[B
    .end local v9    # "limit":I
    .end local v12    # "prefix":[B
    .restart local v3    # "dup":Ljava/nio/ByteBuffer;
    .restart local v10    # "newLen":I
    :cond_5
    if-eq v10, v8, :cond_6

    #@103
    .line 367
    new-instance v13, Ljava/lang/RuntimeException;

    #@105
    new-instance v14, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v15, "Cipher buffering error in JCE provider "

    #@10d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v14

    #@111
    .line 368
    move-object/from16 v0, p0

    #@113
    iget-object v15, v0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@115
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    #@118
    move-result-object v15

    #@119
    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@11c
    move-result-object v15

    #@11d
    .line 367
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v14

    #@121
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v14

    #@125
    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@128
    throw v13
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_0

    #@129
    .line 370
    :cond_6
    return v10

    #@12a
    .line 348
    .end local v3    # "dup":Ljava/nio/ByteBuffer;
    .end local v10    # "newLen":I
    :catch_1
    move-exception v4

    #@12b
    .local v4, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method encrypt([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 235
    return p3

    #@5
    .line 239
    :cond_0
    :try_start_0
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 241
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@d
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@f
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@11
    if-lt v0, v1, :cond_1

    #@13
    .line 243
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@15
    new-array v10, v0, [B

    #@17
    .line 244
    .local v10, "prefix":[B
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->random:Ljava/security/SecureRandom;

    #@19
    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@1c
    .line 248
    array-length v0, v10

    #@1d
    add-int/2addr v0, p2

    #@1e
    .line 247
    invoke-static {p1, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 252
    array-length v0, v10

    #@22
    .line 251
    const/4 v1, 0x0

    #@23
    invoke-static {v10, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 254
    array-length v0, v10

    #@27
    add-int/2addr p3, v0

    #@28
    .line 257
    .end local v10    # "prefix":[B
    :cond_1
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@2a
    invoke-static {p1, p2, p3, v0}, Lsun/security/ssl/CipherBox;->addPadding([BIII)I

    #@2d
    move-result p3

    #@2e
    .line 259
    :cond_2
    sget-object v0, Lsun/security/ssl/CipherBox;->debug:Lsun/security/ssl/Debug;

    #@30
    if-eqz v0, :cond_3

    #@32
    const-string/jumbo v0, "plaintext"

    #@35
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 261
    :try_start_1
    new-instance v8, Lsun/misc/HexDumpEncoder;

    #@3d
    invoke-direct {v8}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@40
    .line 263
    .local v8, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Padded plaintext before ENCRYPTION:  len = "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 263
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    .line 267
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@5b
    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@5e
    .line 268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@60
    .line 266
    invoke-virtual {v8, v0, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    #@63
    .line 271
    .end local v8    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@65
    move-object v1, p1

    #@66
    move v2, p2

    #@67
    move v3, p3

    #@68
    move-object v4, p1

    #@69
    move v5, p2

    #@6a
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    #@6d
    move-result v9

    #@6e
    .line 272
    .local v9, "newLen":I
    if-eq v9, p3, :cond_4

    #@70
    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    #@72
    new-instance v1, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v2, "Cipher buffering error in JCE provider "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 275
    iget-object v2, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@80
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0

    #@94
    .line 278
    .end local v9    # "newLen":I
    :catch_0
    move-exception v7

    #@95
    .line 279
    .local v7, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@97
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v0

    #@9f
    .line 277
    .end local v7    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v9    # "newLen":I
    :cond_4
    return v9

    #@a0
    .line 269
    .end local v9    # "newLen":I
    :catch_1
    move-exception v6

    #@a1
    .local v6, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method isCBCMode()Z
    .locals 1

    #@0
    .prologue
    .line 781
    iget-boolean v0, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    #@2
    return v0
.end method

.method isNullCipher()Z
    .locals 1

    #@0
    .prologue
    .line 790
    iget-object v0, p0, Lsun/security/ssl/CipherBox;->cipher:Ljavax/crypto/Cipher;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method sanityCheck(II)Z
    .locals 5
    .param p1, "tagLen"    # I
    .param p2, "fragmentLen"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 807
    iget-boolean v3, p0, Lsun/security/ssl/CipherBox;->isCBCMode:Z

    #@4
    if-nez v3, :cond_1

    #@6
    .line 808
    if-lt p2, p1, :cond_0

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    move v1, v2

    #@a
    goto :goto_0

    #@b
    .line 811
    :cond_1
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@d
    rem-int v3, p2, v3

    #@f
    if-nez v3, :cond_5

    #@11
    .line 812
    add-int/lit8 v0, p1, 0x1

    #@13
    .line 813
    .local v0, "minimal":I
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@15
    if-lt v0, v3, :cond_3

    #@17
    .line 814
    :goto_1
    iget-object v3, p0, Lsun/security/ssl/CipherBox;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@19
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1b
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1d
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1f
    if-lt v3, v4, :cond_2

    #@21
    .line 815
    iget v3, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@23
    add-int/2addr v0, v3

    #@24
    .line 818
    :cond_2
    if-lt p2, v0, :cond_4

    #@26
    :goto_2
    return v1

    #@27
    .line 813
    :cond_3
    iget v0, p0, Lsun/security/ssl/CipherBox;->blockSize:I

    #@29
    goto :goto_1

    #@2a
    :cond_4
    move v1, v2

    #@2b
    .line 818
    goto :goto_2

    #@2c
    .line 821
    .end local v0    # "minimal":I
    :cond_5
    return v2
.end method
