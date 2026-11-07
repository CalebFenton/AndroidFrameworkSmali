.class public abstract Landroid/util/apk/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceStampVerifier.java"


# static fields
.field private static final blacklist APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final blacklist APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final blacklist PROOF_OF_ROTATION_ATTR_ID:I = -0x629cfc09

.field private static final blacklist SOURCE_STAMP_BLOCK_ID:I = 0x6dff800d

.field private static final blacklist SOURCE_STAMP_CERTIFICATE_HASH_ZIP_ENTRY_NAME:Ljava/lang/String; = "stamp-cert-sha256"

.field private static final blacklist TAG:Ljava/lang/String; = "SourceStampVerifier"

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V2:I = 0x2

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V3:I = 0x3

.field private static final blacklist VERSION_JAR_SIGNATURE_SCHEME:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static blacklist closeApkJar(Landroid/util/jar/StrictJarFile;)V
    .registers 4
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;

    .line 506
    if-nez p0, :cond_3

    .line 507
    return-void

    .line 509
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 512
    goto :goto_f

    .line 510
    :catch_7
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SourceStampVerifier"

    const-string v2, "Could not close APK jar"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f
    return-void
.end method

.method private static blacklist computeSha256Digest([B)[B
    .registers 4
    .param p0, "input"    # [B

    .line 496
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 497
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 498
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 499
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_e
    move-exception v0

    .line 500
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to find SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist encodeApkContentDigests(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;)[B"
        }
    .end annotation

    .line 438
    .local p0, "apkContentDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    const/4 v0, 0x0

    .line 439
    .local v0, "resultSize":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 440
    .local v2, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, 0xc

    add-int/2addr v0, v3

    .line 441
    .end local v2    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    goto :goto_5

    .line 442
    :cond_1a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    .local v1, "result":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 445
    .local v3, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    .line 446
    .local v4, "second":[B
    array-length v5, v4

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 447
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 448
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 449
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 450
    .end local v3    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    .end local v4    # "second":[B
    goto :goto_27

    .line 451
    :cond_50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .registers 11
    .param p0, "signatureBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v0, "apkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 381
    .local v1, "signers":Ljava/nio/ByteBuffer;
    :goto_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 382
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 383
    .local v2, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 384
    .local v3, "signedData":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 385
    .local v4, "digests":Ljava/nio/ByteBuffer;
    :goto_1b
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 386
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 387
    .local v5, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 388
    .local v6, "sigAlgorithm":I
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 389
    .local v7, "contentDigest":[B
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v8

    .line 390
    .local v8, "digestAlgorithm":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v5    # "digest":Ljava/nio/ByteBuffer;
    .end local v6    # "sigAlgorithm":I
    .end local v7    # "contentDigest":[B
    .end local v8    # "digestAlgorithm":I
    goto :goto_1b

    .line 392
    .end local v2    # "signer":Ljava/nio/ByteBuffer;
    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .end local v4    # "digests":Ljava/nio/ByteBuffer;
    :cond_39
    goto :goto_9

    .line 393
    :cond_3a
    return-object v0
.end method

.method private static blacklist getApkDigests(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .line 411
    .local p0, "apkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "digests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, "apkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v2    # "apkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    goto :goto_d

    .line 415
    :cond_2d
    new-instance v1, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 416
    return-object v0
.end method

.method private static blacklist getManifestBytes(Landroid/util/jar/StrictJarFile;)[B
    .registers 3
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 431
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_a

    .line 432
    const/4 v1, 0x0

    return-object v1

    .line 434
    :cond_a
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;
    .registers 6
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "manifestBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    nop

    .line 346
    const v1, -0xfac9740

    :try_start_9
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 347
    .local v1, "v3SignatureInfo":Landroid/util/apk/SignatureInfo;
    nop

    .line 348
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 349
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3

    .line 347
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9 .. :try_end_1c} :catch_1e

    .line 352
    nop

    .end local v1    # "v3SignatureInfo":Landroid/util/apk/SignatureInfo;
    goto :goto_1f

    .line 350
    :catch_1e
    move-exception v1

    .line 356
    :goto_1f
    nop

    .line 357
    const v1, 0x7109871a

    :try_start_23
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 358
    .local v1, "v2SignatureInfo":Landroid/util/apk/SignatureInfo;
    nop

    .line 359
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 360
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3

    .line 358
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_23 .. :try_end_36} :catch_38

    .line 363
    nop

    .end local v1    # "v2SignatureInfo":Landroid/util/apk/SignatureInfo;
    goto :goto_39

    .line 361
    :catch_38
    move-exception v1

    .line 366
    :goto_39
    if-eqz p1, :cond_56

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v1, "jarSignatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    nop

    .line 369
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object v3

    .line 368
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    nop

    .line 371
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 370
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v1    # "jarSignatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_56
    return-object v0
.end method

.method private static blacklist getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 398
    .local p0, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v0, "digests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 401
    .local v2, "signatureSchemeApkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    nop

    .line 402
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkDigests(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 403
    .local v3, "apkDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    nop

    .line 404
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->encodeApkContentDigests(Ljava/util/List;)[B

    move-result-object v5

    .line 403
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v2    # "signatureSchemeApkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    .end local v3    # "apkDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    goto :goto_d

    .line 406
    :cond_33
    return-object v0
.end method

.method private static blacklist getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B
    .registers 3
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "stamp-cert-sha256"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 421
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_b

    .line 424
    const/4 v1, 0x0

    return-object v1

    .line 426
    :cond_b
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getApkDigests$0(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 2
    .param p0, "pair"    # Landroid/util/Pair;

    .line 415
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static blacklist verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;
    .registers 13
    .param p0, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "sourceStampCertificateDigest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/apk/SignatureInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;[B)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    .local p1, "signatureSchemeDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget-object v0, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 170
    .local v0, "sourceStampBlock":Ljava/nio/ByteBuffer;
    nop

    .line 171
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 173
    .local v1, "sourceStampBlockData":Ljava/nio/ByteBuffer;
    nop

    .line 174
    invoke-static {v1, p2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 177
    .local v2, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    nop

    .line 178
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 179
    .local v3, "signedSignatureSchemes":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v4, "signedSignatureSchemeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    :goto_16
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 181
    nop

    .line 182
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 183
    .local v5, "signedSignatureScheme":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 184
    .local v6, "signatureSchemeId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v5    # "signedSignatureScheme":Ljava/nio/ByteBuffer;
    .end local v6    # "signatureSchemeId":I
    goto :goto_16

    .line 187
    :cond_2d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 188
    .local v6, "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 194
    nop

    .line 195
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 194
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 196
    .local v7, "signatures":Ljava/nio/ByteBuffer;
    nop

    .line 197
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 196
    invoke-static {v8, v2, v7}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 200
    .end local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v7    # "signatures":Ljava/nio/ByteBuffer;
    goto :goto_35

    .line 189
    .restart local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    :cond_65
    new-instance v5, Ljava/lang/SecurityException;

    .line 192
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 190
    const-string v8, "No signatures found for signature scheme %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    :cond_79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 203
    .local v5, "sourceStampCertificateLineage":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 205
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 206
    .local v6, "stampAttributeData":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 208
    .local v7, "stampAttributeDataSignatures":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    new-array v8, v8, [B

    .line 209
    .local v8, "stampAttributeBytes":[B
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    invoke-static {v8, v2, v7}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 214
    nop

    .line 215
    invoke-static {v6, v2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v9

    .line 216
    .local v9, "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    if-eqz v9, :cond_a3

    .line 217
    iget-object v5, v9, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 221
    .end local v6    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .end local v7    # "stampAttributeDataSignatures":Ljava/nio/ByteBuffer;
    .end local v8    # "stampAttributeBytes":[B
    .end local v9    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_a3
    invoke-static {v2, v5}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;
    .registers 6
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "sourceStampCertificateDigest"    # [B
    .param p2, "manifestBytes"    # [B

    .line 147
    nop

    .line 148
    const v0, 0x6dff800d

    :try_start_4
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_1e

    .line 151
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    nop

    .line 153
    nop

    .line 154
    :try_start_a
    invoke-static {p0, p2}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;

    move-result-object v1

    .line 155
    .local v1, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    nop

    .line 157
    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 155
    invoke-static {v0, v2, p1}, Landroid/util/apk/SourceStampVerifier;->verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_17} :catch_18

    return-object v2

    .line 159
    .end local v1    # "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    :catch_18
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    return-object v2

    .line 149
    .end local v0    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;
    .registers 6
    .param p0, "apkFile"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "apkJar":Landroid/util/jar/StrictJarFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_3c
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    .line 121
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_9
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v2

    .line 126
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B

    move-result-object v2

    .line 127
    .local v2, "sourceStampCertificateDigest":[B
    if-nez v2, :cond_21

    .line 130
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_30

    .line 134
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3c
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3a

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 130
    return-object v3

    .line 132
    :cond_21
    :try_start_21
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->getManifestBytes(Landroid/util/jar/StrictJarFile;)[B

    move-result-object v3

    .line 133
    .local v3, "manifestBytes":[B
    invoke-static {v1, v2, v3}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_30

    .line 134
    :try_start_29
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_3c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3a

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 133
    return-object v4

    .line 120
    .end local v2    # "sourceStampCertificateDigest":[B
    .end local v3    # "manifestBytes":[B
    :catchall_30
    move-exception v2

    :try_start_31
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "apkJar":Landroid/util/jar/StrictJarFile;
    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_39
    throw v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3c
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 139
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apkJar":Landroid/util/jar/StrictJarFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    goto :goto_45

    .line 134
    :catch_3c
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    :try_start_3d
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 137
    return-object v2

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :goto_45
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 140
    throw v1
.end method

.method public static blacklist verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .line 97
    .local p0, "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "stampCertificate":Ljava/security/cert/Certificate;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "stampCertificateLineage":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "apkFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v4

    .line 101
    .local v4, "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 102
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_4a

    .line 105
    :cond_26
    if-eqz v0, :cond_41

    .line 106
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 108
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v5

    .line 107
    invoke-interface {v1, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 109
    :cond_3c
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    return-object v2

    .line 111
    :cond_41
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 112
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v1

    .line 113
    .end local v3    # "apkFile":Ljava/lang/String;
    .end local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    goto :goto_9

    .line 103
    .restart local v3    # "apkFile":Ljava/lang/String;
    .restart local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_4a
    :goto_4a
    return-object v4

    .line 114
    .end local v3    # "apkFile":Ljava/lang/String;
    .end local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_4b
    invoke-static {v0, v1}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .registers 10
    .param p0, "stampAttributeData"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceStampCertificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_68

    .line 463
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 464
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 465
    .local v1, "stampAttributes":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 466
    .local v2, "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :goto_c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 467
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 468
    .local v3, "attribute":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 469
    .local v4, "id":I
    const v5, -0x629cfc09

    if-ne v4, v5, :cond_66

    .line 470
    if-nez v2, :cond_5e

    .line 474
    invoke-static {v3, v0}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v2

    .line 478
    :try_start_25
    iget-object v5, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_54

    iget-object v5, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v6, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 480
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 479
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 480
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 481
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    .line 479
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_54

    .line 482
    :cond_4c
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Terminal certificate in Proof-of-rotation record does not match source stamp certificate"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .end local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v3    # "attribute":Ljava/nio/ByteBuffer;
    .end local v4    # "id":I
    .end local p0    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .end local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    throw v5
    :try_end_54
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25 .. :try_end_54} :catch_55

    .line 488
    .restart local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .restart local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "attribute":Ljava/nio/ByteBuffer;
    .restart local v4    # "id":I
    .restart local p0    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .restart local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    :cond_54
    :goto_54
    goto :goto_66

    .line 485
    :catch_55
    move-exception v5

    .line 486
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Failed to encode certificate when comparing Proof-of-rotation record and source stamp certificate"

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 471
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_5e
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Encountered multiple Proof-of-rotation records when verifying source stamp signature"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 490
    .end local v3    # "attribute":Ljava/nio/ByteBuffer;
    .end local v4    # "id":I
    :cond_66
    :goto_66
    goto :goto_c

    .line 491
    :cond_67
    return-object v2

    .line 461
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .end local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :catch_68
    move-exception v0

    .line 462
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p0, "sourceStampBlockData"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceStampCertificateDigest"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_3a

    .line 242
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 245
    nop

    .line 246
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 249
    .local v1, "sourceStampEncodedCertificate":[B
    :try_start_c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_17} :catch_31

    .line 255
    .local v2, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    nop

    .line 257
    nop

    .line 258
    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object v3

    .line 259
    .local v3, "sourceStampBlockCertificateDigest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 263
    new-instance v4, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v4, v2, v1}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v4

    .line 260
    :cond_29
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Certificate mismatch between APK and signature block"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 253
    .end local v2    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "sourceStampBlockCertificateDigest":[B
    :catch_31
    move-exception v2

    .line 254
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Failed to decode certificate"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 240
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "sourceStampEncodedCertificate":[B
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_3a
    move-exception v0

    .line 241
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V
    .registers 14
    .param p0, "data"    # [B
    .param p1, "sourceStampCertificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "signatures"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "signatureCount":I
    const/4 v1, -0x1

    .line 282
    .local v1, "bestSigAlgorithm":I
    const/4 v2, 0x0

    .line 283
    .local v2, "bestSigAlgorithmSignatureBytes":[B
    :goto_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_54

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 286
    :try_start_c
    invoke-static {p2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 287
    .local v3, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_32

    .line 290
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 291
    .local v5, "sigAlgorithm":I
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 292
    goto :goto_3

    .line 294
    :cond_23
    if-eq v1, v4, :cond_2b

    .line 295
    invoke-static {v5, v1}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v4

    if-lez v4, :cond_31

    .line 296
    :cond_2b
    move v1, v5

    .line 297
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    move-object v2, v4

    .line 302
    .end local v3    # "signature":Ljava/nio/ByteBuffer;
    .end local v5    # "sigAlgorithm":I
    :cond_31
    goto :goto_3

    .line 288
    .restart local v3    # "signature":Ljava/nio/ByteBuffer;
    :cond_32
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Signature record too short"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signatureCount":I
    .end local v1    # "bestSigAlgorithm":I
    .end local v2    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "data":[B
    .end local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local p2    # "signatures":Ljava/nio/ByteBuffer;
    throw v4
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3a} :catch_3a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_c .. :try_end_3a} :catch_3a

    .line 299
    .end local v3    # "signature":Ljava/nio/ByteBuffer;
    .restart local v0    # "signatureCount":I
    .restart local v1    # "bestSigAlgorithm":I
    .restart local v2    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "data":[B
    .restart local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .restart local p2    # "signatures":Ljava/nio/ByteBuffer;
    :catch_3a
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse signature record #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_54
    if-ne v1, v4, :cond_68

    .line 305
    if-nez v0, :cond_60

    .line 306
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No signatures found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_60
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No supported signatures found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_68
    nop

    .line 314
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v3

    .line 315
    .local v3, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    .line 317
    .local v5, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 320
    .local v6, "publicKey":Ljava/security/PublicKey;
    :try_start_79
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .line 321
    .local v7, "sig":Ljava/security/Signature;
    invoke-virtual {v7, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 322
    if-eqz v5, :cond_85

    .line 323
    invoke-virtual {v7, v5}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 325
    :cond_85
    invoke-virtual {v7, p0}, Ljava/security/Signature;->update([B)V

    .line 326
    invoke-virtual {v7, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v8
    :try_end_8c
    .catch Ljava/security/InvalidKeyException; {:try_start_79 .. :try_end_8c} :catch_a9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_79 .. :try_end_8c} :catch_a9
    .catch Ljava/security/SignatureException; {:try_start_79 .. :try_end_8c} :catch_a9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_79 .. :try_end_8c} :catch_a9

    .line 333
    .end local v7    # "sig":Ljava/security/Signature;
    .local v8, "sigVerified":Z
    nop

    .line 334
    if-eqz v8, :cond_90

    .line 337
    return-void

    .line 335
    :cond_90
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signature did not verify"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 327
    .end local v8    # "sigVerified":Z
    :catch_a9
    move-exception v7

    .line 331
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to verify "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signature"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
