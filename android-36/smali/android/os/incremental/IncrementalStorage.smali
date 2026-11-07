.class public final Landroid/os/incremental/IncrementalStorage;
.super Ljava/lang/Object;
.source "IncrementalStorage.java"


# static fields
.field private static final blacklist INCFS_MAX_ADD_DATA_SIZE:I = 0x80

.field private static final blacklist INCFS_MAX_HASH_SIZE:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalStorage"

.field private static final blacklist UUID_BYTE_SIZE:I = 0x10


# instance fields
.field private final blacklist mId:I

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;I)V
    .registers 3
    .param p1, "is"    # Landroid/os/incremental/IIncrementalService;
    .param p2, "id"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    .line 53
    iput p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    .line 54
    return-void
.end method

.method public static blacklist bytesToId([B)Ljava/util/UUID;
    .registers 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 462
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 466
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 467
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 468
    .local v1, "msb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 469
    .local v3, "lsb":J
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5

    .line 463
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "msb":J
    .end local v3    # "lsb":J
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected array of size 16, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist idToBytes(Ljava/util/UUID;)[B
    .registers 4
    .param p0, "id"    # Ljava/util/UUID;

    .line 445
    if-nez p0, :cond_6

    .line 446
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 448
    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 449
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 451
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist validateV4Signature([B)V
    .registers 7
    .param p0, "v4signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    if-eqz p0, :cond_d5

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_d5

    .line 497
    :cond_7
    :try_start_7
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_cc

    .line 500
    .local v0, "signature":Landroid/os/incremental/V4Signature;
    nop

    .line 502
    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 507
    iget-object v1, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v1

    .line 509
    .local v1, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v2, v0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {v2}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object v2

    .line 512
    .local v2, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    iget v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8f

    .line 515
    iget-byte v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v4, 0xc

    if-ne v3, v4, :cond_74

    .line 518
    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    if-eqz v3, :cond_52

    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    array-length v3, v3

    if-gtz v3, :cond_33

    goto :goto_52

    .line 519
    :cond_33
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported salt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :cond_52
    :goto_52
    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v3, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6b

    .line 524
    iget-object v3, v2, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iget-object v3, v3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    array-length v3, v3

    const/16 v4, 0x80

    if-gt v3, v4, :cond_63

    .line 528
    return-void

    .line 525
    :cond_63
    new-instance v3, Ljava/io/IOException;

    const-string v4, "additionalData has to be at most 128 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_6b
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "rawRootHash has to be 32 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 516
    :cond_74
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported log2BlockSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    :cond_8f
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported hashAlgorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    .end local v1    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v2    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    :cond_aa
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v4 signature version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    .end local v0    # "signature":Landroid/os/incremental/V4Signature;
    :catch_cc
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to read v4 signature:"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 492
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d5
    :goto_d5
    return-void
.end method


# virtual methods
.method public blacklist bind(Ljava/lang/String;)V
    .registers 3
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public blacklist bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "res":I
    if-ltz v0, :cond_c

    .line 88
    .end local v0    # "res":I
    goto :goto_2a

    .line 84
    .restart local v0    # "res":I
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 86
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;)V
    .registers 3
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bindPermanent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "res":I
    if-ltz v0, :cond_c

    .line 119
    .end local v0    # "res":I
    goto :goto_2a

    .line 115
    .restart local v0    # "res":I
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() permanent failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 117
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "apkFullPath"    # Ljava/lang/String;
    .param p2, "libDirRelativePath"    # Ljava/lang/String;
    .param p3, "abi"    # Ljava/lang/String;
    .param p4, "extractNativeLibs"    # Z

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "apkFullPath":Ljava/lang/String;
    .end local p2    # "libDirRelativePath":Ljava/lang/String;
    .end local p3    # "abi":Ljava/lang/String;
    .end local p4    # "extractNativeLibs":Z
    .local v2, "apkFullPath":Ljava/lang/String;
    .local v3, "libDirRelativePath":Ljava/lang/String;
    .local v4, "abi":Ljava/lang/String;
    .local v5, "extractNativeLibs":Z
    :try_start_8
    invoke-interface/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 547
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v2    # "apkFullPath":Ljava/lang/String;
    .end local v3    # "libDirRelativePath":Ljava/lang/String;
    .end local v4    # "abi":Ljava/lang/String;
    .end local v5    # "extractNativeLibs":Z
    .restart local p1    # "apkFullPath":Ljava/lang/String;
    .restart local p2    # "libDirRelativePath":Ljava/lang/String;
    .restart local p3    # "abi":Ljava/lang/String;
    .restart local p4    # "extractNativeLibs":Z
    :catch_10
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 548
    .end local p2    # "libDirRelativePath":Ljava/lang/String;
    .end local p3    # "abi":Ljava/lang/String;
    .end local p4    # "extractNativeLibs":Z
    .restart local v2    # "apkFullPath":Ljava/lang/String;
    .restart local v3    # "libDirRelativePath":Ljava/lang/String;
    .restart local v4    # "abi":Ljava/lang/String;
    .restart local v5    # "extractNativeLibs":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 549
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist disallowReadLogs()V
    .registers 3

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->disallowReadLogs(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 483
    goto :goto_c

    .line 481
    :catch_8
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist getFileMetadata(Ljava/lang/String;)[B
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 378
    :catch_9
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 380
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFileMetadata(Ljava/util/UUID;)[B
    .registers 5
    .param p1, "id"    # Ljava/util/UUID;

    .line 393
    :try_start_0
    invoke-static {p1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    .line 394
    .local v0, "rawId":[B
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, v0}, Landroid/os/incremental/IIncrementalService;->getMetadataById(I[B)[B

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 395
    .end local v0    # "rawId":[B
    :catch_d
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 397
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getId()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return v0
.end method

.method public blacklist getLoadingProgress()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->getLoadingProgress(I)F

    move-result v1

    .line 357
    .local v1, "res":F
    cmpg-float v2, v1, v0

    if-ltz v2, :cond_e

    .line 361
    return v1

    .line 358
    :cond_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoadingProgress() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-float v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    throw v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_28

    .line 362
    .end local v1    # "res":F
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    :catch_28
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 364
    return v0
.end method

.method public blacklist getMetrics()Landroid/os/PersistableBundle;
    .registers 3

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 599
    :catch_9
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 601
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist isFileFullyLoaded(Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1}, Landroid/os/incremental/IIncrementalService;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result v1

    .line 321
    .local v1, "res":I
    if-ltz v1, :cond_f

    .line 324
    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 322
    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFileFullyLoaded() failed, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2a

    .line 325
    .end local v1    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_2a
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 327
    return v0
.end method

.method public blacklist isFullyLoaded()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->isFullyLoaded(I)I

    move-result v1

    .line 338
    .local v1, "res":I
    if-ltz v1, :cond_f

    .line 342
    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 339
    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFullyLoaded() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    throw v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2a

    .line 343
    .end local v1    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    :catch_2a
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 345
    return v0
.end method

.method public blacklist makeDirectories(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectories(ILjava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "res":I
    if-ltz v0, :cond_b

    .line 168
    .end local v0    # "res":I
    goto :goto_2a

    .line 164
    .restart local v0    # "res":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 166
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist makeDirectory(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectory(ILjava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "res":I
    if-ltz v0, :cond_b

    .line 151
    .end local v0    # "res":I
    goto :goto_2a

    .line 147
    .restart local v0    # "res":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 149
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "mode"    # I
    .param p5, "id"    # Ljava/util/UUID;
    .param p6, "metadata"    # [B
    .param p7, "v4signatureBytes"    # [B
    .param p8, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-nez p5, :cond_12

    if-eqz p6, :cond_5

    goto :goto_12

    .line 186
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File ID and metadata cannot both be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "size":J
    .end local p4    # "mode":I
    .end local p5    # "id":Ljava/util/UUID;
    .end local p6    # "metadata":[B
    .end local p7    # "v4signatureBytes":[B
    .end local p8    # "content":[B
    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_d

    .line 198
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "size":J
    .restart local p4    # "mode":I
    .restart local p5    # "id":Ljava/util/UUID;
    .restart local p6    # "metadata":[B
    .restart local p7    # "v4signatureBytes":[B
    .restart local p8    # "content":[B
    :catch_d
    move-exception v0

    move-object v3, p1

    move v4, p4

    move-object v6, p8

    goto :goto_5d

    .line 188
    :cond_12
    :goto_12
    :try_start_12
    invoke-static {p7}, Landroid/os/incremental/IncrementalStorage;->validateV4Signature([B)V

    .line 189
    new-instance v0, Landroid/os/incremental/IncrementalNewFileParams;

    invoke-direct {v0}, Landroid/os/incremental/IncrementalNewFileParams;-><init>()V

    move-object v5, v0

    .line 190
    .local v5, "params":Landroid/os/incremental/IncrementalNewFileParams;
    iput-wide p2, v5, Landroid/os/incremental/IncrementalNewFileParams;->size:J
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_59

    .line 191
    if-nez p6, :cond_23

    const/4 v0, 0x0

    :try_start_20
    new-array v0, v0, [B
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_22} :catch_d

    goto :goto_24

    :cond_23
    move-object v0, p6

    :goto_24
    :try_start_24
    iput-object v0, v5, Landroid/os/incremental/IncrementalNewFileParams;->metadata:[B

    .line 192
    invoke-static {p5}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    iput-object v0, v5, Landroid/os/incremental/IncrementalNewFileParams;->fileId:[B

    .line 193
    iput-object p7, v5, Landroid/os/incremental/IncrementalNewFileParams;->signature:[B

    .line 194
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_59

    move-object v3, p1

    move v4, p4

    move-object v6, p8

    .end local p1    # "path":Ljava/lang/String;
    .end local p4    # "mode":I
    .end local p8    # "content":[B
    .local v3, "path":Ljava/lang/String;
    .local v4, "mode":I
    .local v6, "content":[B
    :try_start_35
    invoke-interface/range {v1 .. v6}, Landroid/os/incremental/IIncrementalService;->makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result p1

    .line 195
    .local p1, "res":I
    if-nez p1, :cond_3c

    .line 200
    .end local v5    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .end local p1    # "res":I
    goto :goto_60

    .line 196
    .restart local v5    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .restart local p1    # "res":I
    :cond_3c
    new-instance p4, Ljava/io/IOException;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "makeFile() failed with errno "

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    neg-int v0, p1

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-direct {p4, p8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v6    # "content":[B
    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p2    # "size":J
    .end local p5    # "id":Ljava/util/UUID;
    .end local p6    # "metadata":[B
    .end local p7    # "v4signatureBytes":[B
    throw p4
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_57} :catch_57

    .line 198
    .end local v5    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .end local p1    # "res":I
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "mode":I
    .restart local v6    # "content":[B
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p2    # "size":J
    .restart local p5    # "id":Ljava/util/UUID;
    .restart local p6    # "metadata":[B
    .restart local p7    # "v4signatureBytes":[B
    :catch_57
    move-exception v0

    goto :goto_5d

    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v6    # "content":[B
    .local p1, "path":Ljava/lang/String;
    .restart local p4    # "mode":I
    .restart local p8    # "content":[B
    :catch_59
    move-exception v0

    move-object v3, p1

    move v4, p4

    move-object v6, p8

    .line 199
    .end local p1    # "path":Ljava/lang/String;
    .end local p4    # "mode":I
    .end local p8    # "content":[B
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "mode":I
    .restart local v6    # "content":[B
    :goto_5d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_60
    return-void
.end method

.method public blacklist makeFileFromRange(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "rangeStart"    # J
    .param p5, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_2d

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "destPath":Ljava/lang/String;
    .end local p2    # "sourcePath":Ljava/lang/String;
    .end local p3    # "rangeStart":J
    .end local p5    # "rangeEnd":J
    .local v2, "destPath":Ljava/lang/String;
    .local v3, "sourcePath":Ljava/lang/String;
    .local v4, "rangeStart":J
    .local v6, "rangeEnd":J
    :try_start_8
    invoke-interface/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result p1

    .line 217
    .local p1, "res":I
    if-ltz p1, :cond_f

    .line 222
    .end local p1    # "res":I
    goto :goto_36

    .line 218
    .restart local p1    # "res":I
    :cond_f
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "makeFileFromRange() failed, errno "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    neg-int p4, p1

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "destPath":Ljava/lang/String;
    .end local v3    # "sourcePath":Ljava/lang/String;
    .end local v4    # "rangeStart":J
    .end local v6    # "rangeEnd":J
    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    throw p2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2a} :catch_2a

    .line 220
    .end local p1    # "res":I
    .restart local v2    # "destPath":Ljava/lang/String;
    .restart local v3    # "sourcePath":Ljava/lang/String;
    .restart local v4    # "rangeStart":J
    .restart local v6    # "rangeEnd":J
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    :catch_2a
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v2    # "destPath":Ljava/lang/String;
    .end local v3    # "sourcePath":Ljava/lang/String;
    .end local v4    # "rangeStart":J
    .end local v6    # "rangeEnd":J
    .local p1, "destPath":Ljava/lang/String;
    .restart local p2    # "sourcePath":Ljava/lang/String;
    .restart local p3    # "rangeStart":J
    .restart local p5    # "rangeEnd":J
    :catch_2d
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object p1, v0

    .line 221
    .end local p2    # "sourcePath":Ljava/lang/String;
    .end local p3    # "rangeStart":J
    .end local p5    # "rangeEnd":J
    .restart local v2    # "destPath":Ljava/lang/String;
    .restart local v3    # "sourcePath":Ljava/lang/String;
    .restart local v4    # "rangeStart":J
    .restart local v6    # "rangeEnd":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 223
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .registers 8
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destStorage"    # Landroid/os/incremental/IncrementalStorage;
    .param p3, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p3}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "res":I
    if-ltz v0, :cond_f

    .line 243
    .end local v0    # "res":I
    goto :goto_2e

    .line 239
    .restart local v0    # "res":I
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeLink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destStorage":Landroid/os/incremental/IncrementalStorage;
    .end local p3    # "destPath":Ljava/lang/String;
    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    .line 241
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "destStorage":Landroid/os/incremental/IncrementalStorage;
    .restart local p3    # "destPath":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public blacklist moveDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 298
    :try_start_b
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, "res":I
    if-ltz v0, :cond_17

    .line 305
    .end local v0    # "res":I
    goto :goto_36

    .line 301
    .restart local v0    # "res":I
    :cond_17
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveDir() failed at making bind mount, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destPath":Ljava/lang/String;
    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_32} :catch_32

    .line 303
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "destPath":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    :try_start_36
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 309
    goto :goto_3f

    .line 308
    :catch_3e
    move-exception v0

    .line 310
    :goto_3f
    return-void

    .line 295
    :cond_40
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "moveDir() requires that destination dir already exists."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sourcepath"    # Ljava/lang/String;
    .param p2, "destpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1, v2, p2}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "res":I
    if-ltz v0, :cond_d

    .line 278
    .end local v0    # "res":I
    goto :goto_2c

    .line 274
    .restart local v0    # "res":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveFile() failed at makeLink(), errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcepath":Ljava/lang/String;
    .end local p2    # "destpath":Ljava/lang/String;
    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_28

    .line 276
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcepath":Ljava/lang/String;
    .restart local p2    # "destpath":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 282
    goto :goto_35

    .line 281
    :catch_34
    move-exception v0

    .line 283
    :goto_35
    return-void
.end method

.method public blacklist onInstallationComplete()V
    .registers 3

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->onInstallationComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 431
    goto :goto_c

    .line 429
    :catch_8
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/os/incremental/IStorageLoadingProgressListener;

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 574
    :catch_9
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 576
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .registers 13
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p3, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p4, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p5, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;

    .line 413
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :try_start_3
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_17

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .end local p3    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local p4    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .end local p5    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .local v3, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .local v4, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .local v5, "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .local v6, "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    :try_start_f
    invoke-interface/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p2

    .line 417
    :catch_14
    move-exception v0

    move-object p2, v0

    goto :goto_1d

    .end local v3    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .end local v4    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v5    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .end local v6    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .restart local p2    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local p3    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local p4    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .restart local p5    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    :catch_17
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p2, v0

    .line 418
    .end local p3    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local p4    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .end local p5    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .restart local v3    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v4    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v5    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .restart local v6    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 419
    const/4 p3, 0x0

    return p3
.end method

.method public blacklist unBind(Ljava/lang/String;)V
    .registers 6
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "res":I
    if-ltz v0, :cond_b

    .line 135
    .end local v0    # "res":I
    goto :goto_2a

    .line 131
    .restart local v0    # "res":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 133
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "targetPath":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist unlink(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "res":I
    if-ltz v0, :cond_b

    .line 259
    .end local v0    # "res":I
    goto :goto_2a

    .line 255
    .restart local v0    # "res":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 257
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist unregisterLoadingProgressListener()Z
    .registers 3

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->unregisterLoadingProgressListener(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 586
    :catch_9
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 588
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist waitForNativeBinariesExtraction()Z
    .registers 3

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->waitForNativeBinariesExtraction(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 561
    :catch_9
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 563
    const/4 v1, 0x0

    return v1
.end method
