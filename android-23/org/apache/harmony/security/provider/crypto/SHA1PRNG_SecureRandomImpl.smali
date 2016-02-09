.class public Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;
.super Ljava/security/SecureRandomSpi;
.source "SHA1PRNG_SecureRandomImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COUNTER_BASE:I = 0x0

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I = 0x0

.field private static devURandom:Ljava/io/FileInputStream; = null

.field private static myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl; = null

.field private static final serialVersionUID:J = 0x3f0091d1f89aebbL


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x18

    #@2
    const/16 v7, 0x10

    #@4
    const/16 v6, 0x8

    #@6
    const/4 v5, 0x0

    #@7
    .line 50
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@9
    new-instance v2, Ljava/io/File;

    #@b
    const-string/jumbo v3, "/dev/urandom"

    #@e
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@14
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 64
    const/high16 v1, -0x80000000

    #@18
    const/high16 v2, 0x800000

    #@1a
    const v3, 0x8000

    #@1d
    const/16 v4, 0x80

    #@1f
    filled-new-array {v1, v2, v3, v4}, [I

    #@22
    move-result-object v1

    #@23
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    #@25
    .line 66
    const/16 v1, 0x28

    #@27
    const/16 v2, 0x30

    #@29
    const/16 v3, 0x38

    #@2b
    filled-new-array {v5, v1, v2, v3}, [I

    #@2e
    move-result-object v1

    #@2f
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    #@31
    .line 68
    filled-new-array {v5, v6, v7, v8}, [I

    #@34
    move-result-object v1

    #@35
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    #@37
    .line 70
    filled-new-array {v5, v8, v7, v6}, [I

    #@3a
    move-result-object v1

    #@3b
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    #@3d
    .line 72
    const/4 v1, -0x1

    #@3e
    const v2, 0xffffff

    #@41
    const v3, 0xffff

    #@44
    .line 73
    const/16 v4, 0xff

    #@46
    .line 72
    filled-new-array {v1, v2, v3, v4}, [I

    #@49
    move-result-object v1

    #@4a
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    #@4c
    .line 43
    return-void

    #@4d
    .line 51
    :catch_0
    move-exception v0

    #@4e
    .line 52
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@50
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@53
    throw v1
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/16 v3, 0x14

    #@4
    .line 168
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    #@7
    .line 170
    const/16 v0, 0x57

    #@9
    new-array v0, v0, [I

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@d
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@f
    const v1, 0x67452301

    #@12
    const/16 v2, 0x52

    #@14
    aput v1, v0, v2

    #@16
    .line 172
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@18
    const v1, -0x10325477

    #@1b
    const/16 v2, 0x53

    #@1d
    aput v1, v0, v2

    #@1f
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@21
    const v1, -0x67452302

    #@24
    const/16 v2, 0x54

    #@26
    aput v1, v0, v2

    #@28
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@2a
    const v1, 0x10325476

    #@2d
    const/16 v2, 0x55

    #@2f
    aput v1, v0, v2

    #@31
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@33
    const v1, -0x3c2d1e10

    #@36
    const/16 v2, 0x56

    #@38
    aput v1, v0, v2

    #@3a
    .line 177
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@3c
    .line 178
    const/16 v0, 0x25

    #@3e
    new-array v0, v0, [I

    #@40
    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@42
    .line 179
    new-array v0, v3, [B

    #@44
    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@46
    .line 180
    iput v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@48
    .line 181
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@4a
    .line 182
    const/4 v0, 0x0

    #@4b
    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@4d
    .line 168
    return-void
.end method

.method private static getRandomBytes(I)[B
    .locals 6
    .param p0, "byteCount"    # I

    #@0
    .prologue
    .line 548
    if-gtz p0, :cond_0

    #@2
    .line 549
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Too few bytes requested: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 552
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@1f
    move-result-object v1

    #@20
    .line 554
    .local v1, "originalPolicy":Ldalvik/system/BlockGuard$Policy;
    :try_start_0
    sget-object v3, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    #@22
    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    #@25
    .line 555
    new-array v2, p0, [B

    #@27
    .line 556
    .local v2, "result":[B
    sget-object v3, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-static {v3, v2, v4, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 561
    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    #@30
    .line 557
    return-object v2

    #@31
    .line 558
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    #@32
    .line 559
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/security/ProviderException;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Couldn\'t read "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, " random bytes"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 560
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@54
    .line 561
    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    #@57
    .line 560
    throw v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    const/16 v4, 0x51

    #@4
    const/4 v5, 0x5

    #@5
    .line 497
    const/16 v2, 0x57

    #@7
    new-array v2, v2, [I

    #@9
    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@b
    .line 498
    const/16 v2, 0x25

    #@d
    new-array v2, v2, [I

    #@f
    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@11
    .line 499
    const/16 v2, 0x14

    #@13
    new-array v2, v2, [B

    #@15
    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@17
    .line 501
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@1d
    .line 502
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    #@20
    move-result-wide v2

    #@21
    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@23
    .line 503
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@26
    move-result v2

    #@27
    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@29
    .line 504
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@2b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@2e
    move-result v3

    #@2f
    aput v3, v2, v4

    #@31
    .line 506
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@33
    aget v2, v2, v4

    #@35
    add-int/lit8 v2, v2, 0x3

    #@37
    shr-int/lit8 v1, v2, 0x2

    #@39
    .line 508
    .local v1, "nRemaining":I
    iget v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@3b
    const/4 v3, 0x2

    #@3c
    if-eq v2, v3, :cond_1

    #@3e
    .line 510
    const/4 v0, 0x0

    #@3f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@41
    .line 511
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@43
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@46
    move-result v3

    #@47
    aput v3, v2, v0

    #@49
    .line 510
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 513
    :cond_0
    const/4 v0, 0x0

    #@4d
    :goto_1
    if-ge v0, v5, :cond_6

    #@4f
    .line 514
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@51
    add-int/lit8 v3, v0, 0x52

    #@53
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@56
    move-result v4

    #@57
    aput v4, v2, v3

    #@59
    .line 513
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 517
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@5e
    aget v2, v2, v4

    #@60
    const/16 v3, 0x30

    #@62
    if-lt v2, v3, :cond_2

    #@64
    .line 520
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@66
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@69
    move-result v3

    #@6a
    aput v3, v2, v6

    #@6c
    .line 521
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@6e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@71
    move-result v3

    #@72
    const/16 v4, 0x11

    #@74
    aput v3, v2, v4

    #@76
    .line 522
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@78
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7b
    move-result v3

    #@7c
    const/16 v4, 0x1e

    #@7e
    aput v3, v2, v4

    #@80
    .line 523
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@82
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@85
    move-result v3

    #@86
    const/16 v4, 0x1f

    #@88
    aput v3, v2, v4

    #@8a
    .line 526
    :cond_2
    const/4 v0, 0x0

    #@8b
    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_3

    #@8d
    .line 527
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@8f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@92
    move-result v3

    #@93
    aput v3, v2, v0

    #@95
    .line 526
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_2

    #@98
    .line 530
    :cond_3
    const/4 v0, 0x0

    #@99
    :goto_3
    if-ge v0, v1, :cond_4

    #@9b
    .line 531
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@9d
    add-int/lit8 v3, v0, 0x15

    #@9f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@a2
    move-result v4

    #@a3
    aput v4, v2, v3

    #@a5
    .line 530
    add-int/lit8 v0, v0, 0x1

    #@a7
    goto :goto_3

    #@a8
    .line 534
    :cond_4
    const/4 v0, 0x0

    #@a9
    :goto_4
    if-ge v0, v5, :cond_5

    #@ab
    .line 535
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@ad
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@b0
    move-result v3

    #@b1
    aput v3, v2, v0

    #@b3
    .line 534
    add-int/lit8 v0, v0, 0x1

    #@b5
    goto :goto_4

    #@b6
    .line 538
    :cond_5
    const/4 v0, 0x0

    #@b7
    :goto_5
    if-ge v0, v5, :cond_6

    #@b9
    .line 539
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@bb
    add-int/lit8 v3, v0, 0x52

    #@bd
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@c0
    move-result v4

    #@c1
    aput v4, v2, v3

    #@c3
    .line 538
    add-int/lit8 v0, v0, 0x1

    #@c5
    goto :goto_5

    #@c6
    .line 543
    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@c9
    move-result v2

    #@ca
    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@cc
    .line 544
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@ce
    iget v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@d0
    iget v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@d2
    rsub-int/lit8 v4, v4, 0x14

    #@d4
    invoke-static {p1, v2, v3, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@d7
    .line 495
    return-void
.end method

.method private updateSeed([B)V
    .locals 4
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@2
    array-length v1, p1

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, p1, v2, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    #@9
    .line 199
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@b
    array-length v2, p1

    #@c
    int-to-long v2, v2

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@10
    .line 192
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    const/4 v3, 0x0

    #@1
    .line 428
    .local v3, "intData":[I
    const/4 v6, 0x5

    #@2
    .line 429
    .local v6, "only_hash":I
    const/16 v0, 0x1a

    #@4
    .line 430
    .local v0, "hashes_and_frame":I
    const/16 v1, 0x2a

    #@6
    .line 433
    .local v1, "hashes_and_frame_extra":I
    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@8
    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    #@b
    .line 434
    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@d
    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    #@10
    .line 435
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@12
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@15
    .line 436
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@17
    const/16 v8, 0x51

    #@19
    aget v7, v7, v8

    #@1b
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1e
    .line 438
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@20
    const/16 v8, 0x51

    #@22
    aget v7, v7, v8

    #@24
    add-int/lit8 v7, v7, 0x3

    #@26
    shr-int/lit8 v4, v7, 0x2

    #@28
    .line 440
    .local v4, "nRemaining":I
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@2a
    const/4 v8, 0x2

    #@2b
    if-eq v7, v8, :cond_0

    #@2d
    .line 446
    add-int/lit8 v7, v4, 0x5

    #@2f
    new-array v3, v7, [I

    #@31
    .line 448
    .local v3, "intData":[I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@33
    const/4 v8, 0x0

    #@34
    const/4 v9, 0x0

    #@35
    invoke-static {v7, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@38
    .line 449
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@3a
    const/16 v8, 0x52

    #@3c
    .line 450
    const/4 v9, 0x5

    #@3d
    .line 449
    invoke-static {v7, v8, v3, v4, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@40
    .line 486
    :goto_0
    const/4 v2, 0x0

    #@41
    .local v2, "i":I
    :goto_1
    array-length v7, v3

    #@42
    if-ge v2, v7, :cond_2

    #@44
    .line 487
    aget v7, v3, v2

    #@46
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@49
    .line 486
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 457
    .end local v2    # "i":I
    .local v3, "intData":[I
    :cond_0
    const/4 v5, 0x0

    #@4d
    .line 458
    .local v5, "offset":I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@4f
    const/16 v8, 0x51

    #@51
    aget v7, v7, v8

    #@53
    const/16 v8, 0x30

    #@55
    if-ge v7, v8, :cond_1

    #@57
    .line 460
    add-int/lit8 v7, v4, 0x1a

    #@59
    new-array v3, v7, [I

    #@5b
    .line 473
    .local v3, "intData":[I
    :goto_2
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@5d
    const/4 v8, 0x0

    #@5e
    const/16 v9, 0x10

    #@60
    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@63
    .line 474
    add-int/lit8 v5, v5, 0x10

    #@65
    .line 476
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@67
    const/16 v8, 0x15

    #@69
    invoke-static {v7, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@6c
    .line 478
    add-int/2addr v5, v4

    #@6d
    .line 480
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@6f
    const/4 v8, 0x0

    #@70
    const/4 v9, 0x5

    #@71
    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@74
    .line 481
    add-int/lit8 v5, v5, 0x5

    #@76
    .line 483
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@78
    const/16 v8, 0x52

    #@7a
    .line 484
    const/4 v9, 0x5

    #@7b
    .line 483
    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@7e
    goto :goto_0

    #@7f
    .line 464
    .local v3, "intData":[I
    :cond_1
    add-int/lit8 v7, v4, 0x2a

    #@81
    new-array v3, v7, [I

    #@83
    .line 466
    .local v3, "intData":[I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@85
    const/16 v8, 0x10

    #@87
    aget v7, v7, v8

    #@89
    aput v7, v3, v5

    #@8b
    .line 467
    const/4 v7, 0x1

    #@8c
    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@8e
    const/16 v9, 0x11

    #@90
    aget v8, v8, v9

    #@92
    aput v8, v3, v7

    #@94
    .line 468
    const/4 v7, 0x2

    #@95
    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@97
    const/16 v9, 0x1e

    #@99
    aget v8, v8, v9

    #@9b
    aput v8, v3, v7

    #@9d
    .line 469
    const/4 v7, 0x3

    #@9e
    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@a0
    const/16 v9, 0x1f

    #@a2
    aget v8, v8, v9

    #@a4
    aput v8, v3, v7

    #@a6
    .line 470
    const/4 v5, 0x4

    #@a7
    goto :goto_2

    #@a8
    .line 490
    .end local v5    # "offset":I
    .restart local v2    # "i":I
    :cond_2
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@aa
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@ad
    .line 491
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@af
    iget v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@b1
    iget v9, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@b3
    rsub-int/lit8 v9, v9, 0x14

    #@b5
    invoke-virtual {p1, v7, v8, v9}, Ljava/io/ObjectOutputStream;->write([BII)V

    #@b8
    .line 424
    return-void
.end method


# virtual methods
.method protected declared-synchronized engineGenerateSeed(I)[B
    .locals 3
    .param p1, "numBytes"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 247
    if-gez p1, :cond_0

    #@3
    .line 248
    :try_start_0
    new-instance v1, Ljava/lang/NegativeArraySizeException;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1

    #@10
    .line 250
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 251
    :try_start_1
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v1

    #@16
    .line 254
    :cond_1
    :try_start_2
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 255
    new-instance v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@1c
    invoke-direct {v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    #@1f
    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@21
    .line 256
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@23
    const/16 v2, 0x14

    #@25
    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineSetSeed([B)V

    #@2c
    .line 259
    :cond_2
    new-array v0, p1, [B

    #@2e
    .line 260
    .local v0, "myBytes":[B
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@30
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineNextBytes([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 262
    return-object v0
.end method

.method protected declared-synchronized engineNextBytes([B)V
    .locals 18
    .param p1, "bytes"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 288
    const/4 v4, 0x7

    #@2
    .line 290
    .local v4, "extrabytes":I
    if-nez p1, :cond_0

    #@4
    .line 291
    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v12, "bytes == null"

    #@9
    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v11

    #@e
    monitor-exit p0

    #@f
    throw v11

    #@10
    .line 294
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@14
    const/16 v12, 0x51

    #@16
    aget v11, v11, v12

    #@18
    if-nez v11, :cond_2

    #@1a
    const/4 v8, 0x0

    #@1b
    .line 297
    .local v8, "lastWord":I
    :goto_0
    move-object/from16 v0, p0

    #@1d
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@1f
    if-nez v11, :cond_4

    #@21
    .line 300
    const/16 v11, 0x14

    #@23
    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    #@26
    move-result-object v11

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-direct {v0, v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    #@2c
    .line 301
    const/16 v11, 0x14

    #@2e
    move-object/from16 v0, p0

    #@30
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@32
    .line 305
    move-object/from16 v0, p0

    #@34
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@36
    const/16 v12, 0x51

    #@38
    aget v11, v11, v12

    #@3a
    if-nez v11, :cond_3

    #@3c
    const/4 v8, 0x0

    #@3d
    .line 344
    :cond_1
    :goto_1
    const/4 v11, 0x2

    #@3e
    move-object/from16 v0, p0

    #@40
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@42
    .line 346
    move-object/from16 v0, p1

    #@44
    array-length v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    if-nez v11, :cond_7

    #@47
    monitor-exit p0

    #@48
    .line 347
    return-void

    #@49
    .line 295
    .end local v8    # "lastWord":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@4b
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@4d
    const/16 v12, 0x51

    #@4f
    aget v11, v11, v12

    #@51
    add-int/lit8 v11, v11, 0x7

    #@53
    shr-int/lit8 v8, v11, 0x2

    #@55
    .restart local v8    # "lastWord":I
    goto :goto_0

    #@56
    .line 306
    :cond_3
    move-object/from16 v0, p0

    #@58
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@5a
    const/16 v12, 0x51

    #@5c
    aget v11, v11, v12

    #@5e
    add-int/lit8 v11, v11, 0x7

    #@60
    shr-int/lit8 v8, v11, 0x2

    #@62
    goto :goto_1

    #@63
    .line 308
    :cond_4
    move-object/from16 v0, p0

    #@65
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@67
    const/4 v12, 0x1

    #@68
    if-ne v11, v12, :cond_1

    #@6a
    .line 310
    move-object/from16 v0, p0

    #@6c
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@72
    const/16 v13, 0x52

    #@74
    const/4 v14, 0x0

    #@75
    .line 311
    const/4 v15, 0x5

    #@76
    .line 310
    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    #@79
    .line 326
    add-int/lit8 v5, v8, 0x3

    #@7b
    .local v5, "i":I
    :goto_2
    const/16 v11, 0x12

    #@7d
    if-ge v5, v11, :cond_5

    #@7f
    .line 327
    move-object/from16 v0, p0

    #@81
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@83
    const/4 v12, 0x0

    #@84
    aput v12, v11, v5

    #@86
    .line 326
    add-int/lit8 v5, v5, 0x1

    #@88
    goto :goto_2

    #@89
    .line 330
    :cond_5
    move-object/from16 v0, p0

    #@8b
    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    #@8d
    const/4 v11, 0x3

    #@8e
    shl-long/2addr v12, v11

    #@8f
    const-wide/16 v14, 0x40

    #@91
    add-long v2, v12, v14

    #@93
    .line 334
    .local v2, "bits":J
    move-object/from16 v0, p0

    #@95
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@97
    const/16 v12, 0x51

    #@99
    aget v11, v11, v12

    #@9b
    const/16 v12, 0x30

    #@9d
    if-ge v11, v12, :cond_6

    #@9f
    .line 335
    move-object/from16 v0, p0

    #@a1
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@a3
    const/16 v12, 0x20

    #@a5
    ushr-long v12, v2, v12

    #@a7
    long-to-int v12, v12

    #@a8
    const/16 v13, 0xe

    #@aa
    aput v12, v11, v13

    #@ac
    .line 336
    move-object/from16 v0, p0

    #@ae
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@b0
    const-wide/16 v12, -0x1

    #@b2
    and-long/2addr v12, v2

    #@b3
    long-to-int v12, v12

    #@b4
    const/16 v13, 0xf

    #@b6
    aput v12, v11, v13

    #@b8
    .line 342
    :goto_3
    const/16 v11, 0x14

    #@ba
    move-object/from16 v0, p0

    #@bc
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@be
    goto/16 :goto_1

    #@c0
    .line 338
    :cond_6
    move-object/from16 v0, p0

    #@c2
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@c4
    const/16 v12, 0x20

    #@c6
    ushr-long v12, v2, v12

    #@c8
    long-to-int v12, v12

    #@c9
    const/16 v13, 0x13

    #@cb
    aput v12, v11, v13

    #@cd
    .line 339
    move-object/from16 v0, p0

    #@cf
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@d1
    const-wide/16 v12, -0x1

    #@d3
    and-long/2addr v12, v2

    #@d4
    long-to-int v12, v12

    #@d5
    const/16 v13, 0x14

    #@d7
    aput v12, v11, v13

    #@d9
    goto :goto_3

    #@da
    .line 350
    .end local v2    # "bits":J
    .end local v5    # "i":I
    :cond_7
    const/4 v10, 0x0

    #@db
    .line 353
    .local v10, "nextByteToReturn":I
    move-object/from16 v0, p0

    #@dd
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@df
    rsub-int/lit8 v11, v11, 0x14

    #@e1
    move-object/from16 v0, p1

    #@e3
    array-length v12, v0

    #@e4
    add-int/lit8 v12, v12, 0x0

    #@e6
    if-ge v11, v12, :cond_9

    #@e8
    .line 354
    move-object/from16 v0, p0

    #@ea
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@ec
    .line 353
    rsub-int/lit8 v9, v11, 0x14

    #@ee
    .line 356
    .local v9, "n":I
    :goto_4
    if-lez v9, :cond_8

    #@f0
    .line 357
    move-object/from16 v0, p0

    #@f2
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@f8
    move-object/from16 v0, p1

    #@fa
    invoke-static {v11, v12, v0, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@fd
    .line 358
    move-object/from16 v0, p0

    #@ff
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@101
    add-int/2addr v11, v9

    #@102
    move-object/from16 v0, p0

    #@104
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@106
    .line 359
    add-int/lit8 v10, v9, 0x0

    #@108
    .line 362
    :cond_8
    move-object/from16 v0, p1

    #@10a
    array-length v11, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10b
    if-lt v10, v11, :cond_a

    #@10d
    monitor-exit p0

    #@10e
    .line 363
    return-void

    #@10f
    .line 355
    .end local v9    # "n":I
    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    #@111
    array-length v11, v0

    #@112
    add-int/lit8 v9, v11, 0x0

    #@114
    .restart local v9    # "n":I
    goto :goto_4

    #@115
    .line 366
    :cond_a
    move-object/from16 v0, p0

    #@117
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@119
    const/16 v12, 0x51

    #@11b
    aget v11, v11, v12

    #@11d
    and-int/lit8 v9, v11, 0x3

    #@11f
    .line 368
    :cond_b
    if-nez v9, :cond_e

    #@121
    .line 370
    move-object/from16 v0, p0

    #@123
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@125
    move-object/from16 v0, p0

    #@127
    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@129
    const/16 v14, 0x20

    #@12b
    ushr-long/2addr v12, v14

    #@12c
    long-to-int v12, v12

    #@12d
    aput v12, v11, v8

    #@12f
    .line 371
    move-object/from16 v0, p0

    #@131
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@133
    add-int/lit8 v12, v8, 0x1

    #@135
    move-object/from16 v0, p0

    #@137
    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@139
    const-wide/16 v16, -0x1

    #@13b
    and-long v14, v14, v16

    #@13d
    long-to-int v13, v14

    #@13e
    aput v13, v11, v12

    #@140
    .line 372
    move-object/from16 v0, p0

    #@142
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@144
    add-int/lit8 v12, v8, 0x2

    #@146
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    #@148
    const/4 v14, 0x0

    #@149
    aget v13, v13, v14

    #@14b
    aput v13, v11, v12

    #@14d
    .line 380
    :goto_5
    move-object/from16 v0, p0

    #@14f
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@151
    const/16 v12, 0x51

    #@153
    aget v11, v11, v12

    #@155
    const/16 v12, 0x30

    #@157
    if-le v11, v12, :cond_c

    #@159
    .line 381
    move-object/from16 v0, p0

    #@15b
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@161
    const/16 v13, 0x10

    #@163
    aget v12, v12, v13

    #@165
    const/4 v13, 0x5

    #@166
    aput v12, v11, v13

    #@168
    .line 382
    move-object/from16 v0, p0

    #@16a
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@170
    const/16 v13, 0x11

    #@172
    aget v12, v12, v13

    #@174
    const/4 v13, 0x6

    #@175
    aput v12, v11, v13

    #@177
    .line 385
    :cond_c
    move-object/from16 v0, p0

    #@179
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@17b
    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    #@17e
    .line 387
    move-object/from16 v0, p0

    #@180
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@182
    const/16 v12, 0x51

    #@184
    aget v11, v11, v12

    #@186
    const/16 v12, 0x30

    #@188
    if-le v11, v12, :cond_d

    #@18a
    .line 389
    move-object/from16 v0, p0

    #@18c
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@18e
    move-object/from16 v0, p0

    #@190
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@192
    const/4 v13, 0x0

    #@193
    const/16 v14, 0x15

    #@195
    const/16 v15, 0x10

    #@197
    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    #@19a
    .line 390
    move-object/from16 v0, p0

    #@19c
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@1a2
    const/4 v13, 0x5

    #@1a3
    const/4 v14, 0x0

    #@1a4
    .line 391
    const/16 v15, 0x10

    #@1a6
    .line 390
    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    #@1a9
    .line 393
    move-object/from16 v0, p0

    #@1ab
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@1ad
    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    #@1b0
    .line 394
    move-object/from16 v0, p0

    #@1b2
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@1b8
    const/16 v13, 0x15

    #@1ba
    const/4 v14, 0x0

    #@1bb
    const/16 v15, 0x10

    #@1bd
    invoke-static {v11, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c0
    .line 396
    :cond_d
    move-object/from16 v0, p0

    #@1c2
    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@1c4
    const-wide/16 v14, 0x1

    #@1c6
    add-long/2addr v12, v14

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iput-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@1cb
    .line 398
    const/4 v6, 0x0

    #@1cc
    .line 399
    .local v6, "j":I
    const/4 v5, 0x0

    #@1cd
    .restart local v5    # "i":I
    :goto_6
    const/4 v11, 0x5

    #@1ce
    if-ge v5, v11, :cond_f

    #@1d0
    .line 400
    move-object/from16 v0, p0

    #@1d2
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@1d4
    add-int/lit8 v12, v5, 0x52

    #@1d6
    aget v7, v11, v12

    #@1d8
    .line 401
    .local v7, "k":I
    move-object/from16 v0, p0

    #@1da
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@1dc
    ushr-int/lit8 v12, v7, 0x18

    #@1de
    int-to-byte v12, v12

    #@1df
    aput-byte v12, v11, v6

    #@1e1
    .line 402
    move-object/from16 v0, p0

    #@1e3
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@1e5
    add-int/lit8 v12, v6, 0x1

    #@1e7
    ushr-int/lit8 v13, v7, 0x10

    #@1e9
    int-to-byte v13, v13

    #@1ea
    aput-byte v13, v11, v12

    #@1ec
    .line 403
    move-object/from16 v0, p0

    #@1ee
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@1f0
    add-int/lit8 v12, v6, 0x2

    #@1f2
    ushr-int/lit8 v13, v7, 0x8

    #@1f4
    int-to-byte v13, v13

    #@1f5
    aput-byte v13, v11, v12

    #@1f7
    .line 404
    move-object/from16 v0, p0

    #@1f9
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@1fb
    add-int/lit8 v12, v6, 0x3

    #@1fd
    int-to-byte v13, v7

    #@1fe
    aput-byte v13, v11, v12

    #@200
    .line 405
    add-int/lit8 v6, v6, 0x4

    #@202
    .line 399
    add-int/lit8 v5, v5, 0x1

    #@204
    goto :goto_6

    #@205
    .line 376
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_e
    move-object/from16 v0, p0

    #@207
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@209
    aget v12, v11, v8

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@20f
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    #@211
    aget v13, v13, v9

    #@213
    ushr-long/2addr v14, v13

    #@214
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    #@216
    aget v13, v13, v9

    #@218
    int-to-long v0, v13

    #@219
    move-wide/from16 v16, v0

    #@21b
    and-long v14, v14, v16

    #@21d
    long-to-int v13, v14

    #@21e
    or-int/2addr v12, v13

    #@21f
    aput v12, v11, v8

    #@221
    .line 377
    move-object/from16 v0, p0

    #@223
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@225
    add-int/lit8 v12, v8, 0x1

    #@227
    move-object/from16 v0, p0

    #@229
    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@22b
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    #@22d
    aget v13, v13, v9

    #@22f
    ushr-long/2addr v14, v13

    #@230
    const-wide/16 v16, -0x1

    #@232
    and-long v14, v14, v16

    #@234
    long-to-int v13, v14

    #@235
    aput v13, v11, v12

    #@237
    .line 378
    move-object/from16 v0, p0

    #@239
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@23b
    add-int/lit8 v12, v8, 0x2

    #@23d
    move-object/from16 v0, p0

    #@23f
    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    #@241
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    #@243
    aget v13, v13, v9

    #@245
    shl-long/2addr v14, v13

    #@246
    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    #@248
    aget v13, v13, v9

    #@24a
    int-to-long v0, v13

    #@24b
    move-wide/from16 v16, v0

    #@24d
    or-long v14, v14, v16

    #@24f
    long-to-int v13, v14

    #@250
    aput v13, v11, v12

    #@252
    goto/16 :goto_5

    #@254
    .line 408
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_f
    const/4 v11, 0x0

    #@255
    move-object/from16 v0, p0

    #@257
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@259
    .line 409
    move-object/from16 v0, p1

    #@25b
    array-length v11, v0

    #@25c
    sub-int/2addr v11, v10

    #@25d
    const/16 v12, 0x14

    #@25f
    if-ge v12, v11, :cond_11

    #@261
    const/16 v6, 0x14

    #@263
    .line 412
    :goto_7
    if-lez v6, :cond_10

    #@265
    .line 413
    move-object/from16 v0, p0

    #@267
    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    #@269
    const/4 v12, 0x0

    #@26a
    move-object/from16 v0, p1

    #@26c
    invoke-static {v11, v12, v0, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26f
    .line 414
    add-int/2addr v10, v6

    #@270
    .line 415
    move-object/from16 v0, p0

    #@272
    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@274
    add-int/2addr v11, v6

    #@275
    move-object/from16 v0, p0

    #@277
    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    #@279
    .line 418
    :cond_10
    move-object/from16 v0, p1

    #@27b
    array-length v11, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27c
    if-lt v10, v11, :cond_b

    #@27e
    monitor-exit p0

    #@27f
    .line 281
    return-void

    #@280
    .line 410
    :cond_11
    :try_start_4
    move-object/from16 v0, p1

    #@282
    array-length v11, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@283
    sub-int v6, v11, v10

    #@285
    goto :goto_7
.end method

.method protected declared-synchronized engineSetSeed([B)V
    .locals 5
    .param p1, "seed"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 216
    if-nez p1, :cond_0

    #@3
    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "seed == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 220
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@11
    const/4 v1, 0x2

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    #@16
    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    #@18
    const/4 v2, 0x0

    #@19
    const/16 v3, 0x52

    #@1b
    .line 222
    const/4 v4, 0x5

    #@1c
    .line 221
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@1f
    .line 224
    :cond_1
    const/4 v0, 0x1

    #@20
    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    #@22
    .line 226
    array-length v0, p1

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 227
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :cond_2
    monitor-exit p0

    #@29
    .line 214
    return-void
.end method
