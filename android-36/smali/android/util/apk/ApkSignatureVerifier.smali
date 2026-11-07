.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist sOverrideSigningDetails:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/SigningDetails;",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .registers 4
    .param p0, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "newSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 131
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist clearOverrideSigningDetails()V
    .registers 2

    .line 153
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 154
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 2
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .line 562
    if-eqz p0, :cond_7

    .line 564
    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 566
    goto :goto_7

    .line 565
    :catch_6
    move-exception v0

    .line 568
    :cond_7
    :goto_7
    return-void
.end method

.method private static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 554
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 555
    .local v0, "res":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 556
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 558
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 624
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 625
    :catch_5
    move-exception v0

    .line 628
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2
    .param p0, "targetSdk"    # I

    .line 575
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    .line 576
    const/4 v0, 0x2

    return v0

    .line 578
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 602
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 603
    :catch_5
    move-exception v0

    .line 607
    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 608
    :catch_b
    move-exception v0

    .line 609
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 515
    const/4 v0, 0x0

    .line 519
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 520
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 521
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_17
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    return-object v1

    .line 526
    :catchall_15
    move-exception v1

    goto :goto_43

    .line 522
    :catch_17
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    const/16 v3, -0x66

    invoke-interface {p0, v3, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 523
    return-object v2

    .line 526
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 527
    throw v1
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 532
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 533
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 536
    :cond_f
    const/4 v1, 0x0

    .line 537
    .local v1, "n":I
    const/4 v2, 0x0

    .line 538
    .local v2, "count":I
    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 539
    add-int/2addr v2, v1

    goto :goto_11

    .line 542
    :cond_1d
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public static blacklist removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .registers 3
    .param p0, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 144
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 103
    nop

    .line 104
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 105
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 108
    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 109
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 111
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 112
    :try_start_21
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningDetails;

    .line 113
    .local v3, "overrideSigningDetails":Landroid/content/pm/SigningDetails;
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_46

    .line 114
    if-eqz v3, :cond_49

    .line 115
    const-string v2, "ApkSignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying override signing details for APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object v1, v3

    goto :goto_49

    .line 113
    .end local v3    # "overrideSigningDetails":Landroid/content/pm/SigningDetails;
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3

    .line 119
    :cond_49
    :goto_49
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 168
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/16 v2, -0x67

    const/4 v3, 0x4

    if-le p2, v3, :cond_27

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 177
    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v0

    .line 178
    :catch_2c
    move-exception v4

    .line 180
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_47

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 186
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_47
    const/4 v3, 0x3

    if-le p2, v3, :cond_68

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 193
    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 424
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "Failed to collect certificates from "

    const-string v0, "AndroidManifest.xml"

    const/4 v5, 0x0

    .line 430
    .local v5, "jarFile":Landroid/util/jar/StrictJarFile;
    const/16 v6, -0x67

    const-wide/32 v7, 0x40000

    :try_start_10
    const-string/jumbo v9, "strictJarFileCtor"

    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 434
    new-instance v9, Landroid/util/jar/StrictJarFile;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v5, v9

    .line 438
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v9, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {v5, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_26} :catch_1ba
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_199
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_26} :catch_199
    .catchall {:try_start_10 .. :try_end_26} :catchall_195

    .line 444
    .local v11, "manifestEntry":Ljava/util/zip/ZipEntry;
    const-string v12, "Package "

    if-nez v11, :cond_4e

    .line 445
    :try_start_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " has no manifest"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, -0x65

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_47
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a .. :try_end_47} :catch_1ba
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_47} :catch_199
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_47} :catch_199
    .catchall {:try_start_2a .. :try_end_47} :catchall_195

    .line 508
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 445
    return-object v0

    .line 448
    :cond_4e
    nop

    .line 449
    :try_start_4f
    invoke-static {v1, v5, v11}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    .line 450
    .local v13, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_64

    .line 451
    invoke-interface {v1, v13}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5d
    .catch Ljava/security/GeneralSecurityException; {:try_start_4f .. :try_end_5d} :catch_1ba
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5d} :catch_199
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_5d} :catch_199
    .catchall {:try_start_4f .. :try_end_5d} :catchall_195

    .line 508
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 451
    return-object v0

    .line 453
    :cond_64
    :try_start_64
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Ljava/security/cert/Certificate;

    .line 454
    .local v14, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v15
    :try_end_6e
    .catch Ljava/security/GeneralSecurityException; {:try_start_64 .. :try_end_6e} :catch_1ba
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_199
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_6e} :catch_199
    .catchall {:try_start_64 .. :try_end_6e} :catchall_195

    move-wide/from16 v16, v7

    const-string v7, " has no certificates at entry "

    if-eqz v15, :cond_98

    .line 455
    :try_start_74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_91
    .catch Ljava/security/GeneralSecurityException; {:try_start_74 .. :try_end_91} :catch_193
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_91} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_91} :catch_191
    .catchall {:try_start_74 .. :try_end_91} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 455
    return-object v0

    .line 459
    :cond_98
    :try_start_98
    invoke-static {v14}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 462
    .local v8, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_17a

    .line 463
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 464
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_a2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_de

    .line 465
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v18

    .line 466
    .local v19, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_b7

    goto :goto_a2

    .line 468
    :cond_b7
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    .line 469
    .local v20, "entryName":Ljava/lang/String;
    const-string v10, "META-INF/"

    move-object/from16 v6, v20

    .end local v20    # "entryName":Ljava/lang/String;
    .local v6, "entryName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    const/16 v6, -0x67

    const/4 v10, 0x1

    goto :goto_a2

    .line 470
    :cond_cb
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    const/16 v6, -0x67

    const/4 v10, 0x1

    goto :goto_a2

    .line 472
    :cond_d5
    move-object/from16 v10, v19

    .end local v19    # "entry":Ljava/util/zip/ZipEntry;
    .local v10, "entry":Ljava/util/zip/ZipEntry;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const/16 v6, -0x67

    const/4 v10, 0x1

    .end local v6    # "entryName":Ljava/lang/String;
    .end local v10    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_a2

    .line 475
    :cond_de
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 477
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 478
    invoke-static {v1, v5, v6}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 479
    .local v10, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v19

    if-eqz v19, :cond_104

    .line 480
    invoke-interface {v1, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_fd
    .catch Ljava/security/GeneralSecurityException; {:try_start_98 .. :try_end_fd} :catch_193
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_fd} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_fd} :catch_191
    .catchall {:try_start_98 .. :try_end_fd} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 480
    return-object v0

    .line 482
    :cond_104
    :try_start_104
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Ljava/security/cert/Certificate;

    .line 483
    .local v19, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13a

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    const/16 v7, -0x67

    invoke-interface {v1, v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_133
    .catch Ljava/security/GeneralSecurityException; {:try_start_104 .. :try_end_133} :catch_193
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_133} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_133} :catch_191
    .catchall {:try_start_104 .. :try_end_133} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 484
    return-object v0

    .line 490
    :cond_13a
    :try_start_13a
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v20

    move-object/from16 v21, v20

    .line 491
    .local v21, "entrySigs":[Landroid/content/pm/Signature;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "entrySigs":[Landroid/content/pm/Signature;
    .local v0, "entrySigs":[Landroid/content/pm/Signature;
    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_176

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " has mismatched certificates at entry "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 495
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    const/16 v12, -0x68

    invoke-interface {v1, v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_16f
    .catch Ljava/security/GeneralSecurityException; {:try_start_13a .. :try_end_16f} :catch_193
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_16f} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_16f} :catch_191
    .catchall {:try_start_13a .. :try_end_16f} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 492
    return-object v4

    .line 497
    .end local v0    # "entrySigs":[Landroid/content/pm/Signature;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v19    # "entryCerts":[[Ljava/security/cert/Certificate;
    :cond_176
    move-object/from16 v0, v20

    goto/16 :goto_e2

    .line 499
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_17a
    :try_start_17a
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x1

    invoke-direct {v6, v8, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_18a
    .catch Ljava/security/GeneralSecurityException; {:try_start_17a .. :try_end_18a} :catch_193
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_18a} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_18a} :catch_191
    .catchall {:try_start_17a .. :try_end_18a} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 499
    return-object v0

    .line 504
    .end local v8    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v9    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v14    # "lastCerts":[[Ljava/security/cert/Certificate;
    :catch_191
    move-exception v0

    goto :goto_19c

    .line 501
    :catch_193
    move-exception v0

    goto :goto_1bd

    .line 508
    :catchall_195
    move-exception v0

    move-wide/from16 v16, v7

    goto :goto_1dc

    .line 504
    :catch_199
    move-exception v0

    move-wide/from16 v16, v7

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    :goto_19c
    :try_start_19c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, -0x67

    invoke-interface {v1, v7, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1b3
    .catchall {:try_start_19c .. :try_end_1b3} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 505
    return-object v4

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1ba
    move-exception v0

    move-wide/from16 v16, v7

    .line 502
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1bd
    :try_start_1bd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    invoke-interface {v1, v6, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1d4
    .catchall {:try_start_1bd .. :try_end_1d4} :catchall_1db

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 502
    return-object v4

    .line 508
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1db
    move-exception v0

    :goto_1dc
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 510
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 397
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 399
    nop

    .line 400
    :try_start_f
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 401
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 402
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 403
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_2a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 403
    return-object v5

    .line 413
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_2e
    move-exception v0

    goto :goto_57

    .line 407
    :catch_30
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_2e

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    return-object v3

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v0

    .line 406
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    .line 413
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_57
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 414
    throw v0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 201
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 202
    :catch_5
    move-exception v0

    .line 204
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 211
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 220
    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object v0

    .line 221
    :catch_4d
    move-exception v4

    .line 223
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_68

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 230
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 238
    :cond_89
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 356
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 359
    if-eqz p2, :cond_15

    :try_start_10
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_19

    .line 360
    :cond_15
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_19
    nop

    .line 362
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 363
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 364
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .line 365
    .local v5, "pastSignerSigs":[Landroid/content/pm/Signature;
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v6, :cond_65

    .line 367
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v6, v6, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Signature;

    move-object v5, v6

    .line 368
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    array-length v7, v5

    if-ge v6, v7, :cond_65

    .line 369
    new-instance v7, Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v6

    .line 370
    aget-object v7, v5, v6

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 373
    .end local v6    # "i":I
    :cond_65
    new-instance v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v7, Landroid/content/pm/SigningDetails;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v8, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_76
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_76} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_76} :catch_7c
    .catchall {:try_start_10 .. :try_end_76} :catchall_7a

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    return-object v6

    .line 384
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "pastSignerSigs":[Landroid/content/pm/Signature;
    :catchall_7a
    move-exception v0

    goto :goto_a3

    .line 378
    :catch_7c
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_9c
    .catchall {:try_start_7d .. :try_end_9c} :catchall_7a

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    return-object v3

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7a

    .line 384
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_a3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw v0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_a

    const-string/jumbo v0, "verifyV4"

    goto :goto_c

    :cond_a
    const-string v0, "certsOnlyV4"

    :goto_c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    nop

    .line 254
    :try_start_13
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    move-object v5, v0

    .line 255
    .local v5, "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$HashingInfo;

    move-object v6, v0

    .line 256
    .local v6, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    move-object v7, v0

    .line 258
    .local v7, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    const/4 v8, 0x0

    .line 259
    .local v8, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 260
    .local v9, "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v10, 0x0

    .line 262
    .local v10, "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    const/4 v11, -0x1

    .line 266
    .local v11, "v3BlockId":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->alwaysLoadPastCertsV4()Z

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_3a

    if-nez p3, :cond_3a

    iget-object v0, v7, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_33
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13 .. :try_end_33} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_167
    .catchall {:try_start_13 .. :try_end_33} :catchall_163

    if-lez v0, :cond_36

    goto :goto_3a

    :cond_36
    move-wide/from16 v16, v3

    goto/16 :goto_a6

    .line 271
    :cond_3a
    :goto_3a
    nop

    .line 272
    :try_start_3b
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 273
    .local v0, "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v14

    .line 274
    new-array v14, v13, [[Ljava/security/cert/Certificate;

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v15, v14, v12

    move-object v10, v14

    .line 275
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v14, :cond_8e

    .line 277
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/Signature;

    move-object v8, v14

    .line 278
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_59
    array-length v15, v8

    if-ge v14, v15, :cond_8b

    .line 279
    new-instance v15, Landroid/content/pm/Signature;
    :try_end_5e
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3b .. :try_end_5e} :catch_96
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5e} :catch_167
    .catchall {:try_start_3b .. :try_end_5e} :catchall_163

    move-wide/from16 v16, v3

    :try_start_60
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 280
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v8, v14

    .line 281
    aget-object v3, v8, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 278
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v16

    goto :goto_59

    :cond_8b
    move-wide/from16 v16, v3

    goto :goto_90

    .line 275
    .end local v14    # "i":I
    :cond_8e
    move-wide/from16 v16, v3

    .line 284
    :goto_90
    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_92
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_60 .. :try_end_92} :catch_94
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_92} :catch_147
    .catchall {:try_start_60 .. :try_end_92} :catchall_192

    move v11, v3

    .line 296
    .end local v0    # "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_a6

    .line 285
    :catch_94
    move-exception v0

    goto :goto_99

    :catch_96
    move-exception v0

    move-wide/from16 v16, v3

    :goto_99
    move-object v3, v0

    .line 287
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .line 288
    :try_start_9b
    invoke-static {v2, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 289
    .local v0, "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v4

    .line 290
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_a4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9b .. :try_end_a4} :catch_149
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a4} :catch_147
    .catchall {:try_start_9b .. :try_end_a4} :catchall_192

    move-object v10, v4

    .line 295
    .end local v0    # "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    nop

    .line 299
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_a6
    nop

    .line 300
    :try_start_a7
    invoke-static {v2, v6, v7, v11}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    .line 302
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    new-array v3, v13, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v4, v3, v12

    .line 303
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 305
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    if-eqz p3, :cond_12e

    .line 306
    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 307
    .local v12, "nonstreamingSigs":[Landroid/content/pm/Signature;
    array-length v13, v12

    array-length v14, v4

    if-ne v13, v14, :cond_112

    .line 312
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v4

    .local v14, "size":I
    :goto_c1
    if-ge v13, v14, :cond_dc

    .line 313
    aget-object v15, v12, v13

    move-object/from16 v18, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v18, "signerCerts":[[Ljava/security/cert/Certificate;
    aget-object v3, v4, v13

    invoke-virtual {v15, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 312
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v18

    goto :goto_c1

    .line 314
    :cond_d4
    new-instance v3, Ljava/lang/SecurityException;

    const-string v15, "V4 signature certificate does not match V2/V3"

    invoke-direct {v3, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 312
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_dc
    move-object/from16 v18, v3

    .line 319
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .line 320
    .local v3, "found":Z
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_105

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 321
    .local v14, "nonstreamingDigest":[B
    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    move/from16 v19, v3

    .end local v3    # "found":Z
    .local v19, "found":Z
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v3, v3

    invoke-static {v15, v14, v3}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 323
    const/4 v3, 0x1

    .line 324
    .end local v19    # "found":Z
    .restart local v3    # "found":Z
    goto :goto_107

    .line 326
    .end local v3    # "found":Z
    .end local v14    # "nonstreamingDigest":[B
    .restart local v19    # "found":Z
    :cond_102
    move/from16 v3, v19

    goto :goto_e7

    .line 320
    .end local v19    # "found":Z
    .restart local v3    # "found":Z
    :cond_105
    move/from16 v19, v3

    .line 327
    :goto_107
    if-eqz v3, :cond_10a

    goto :goto_130

    .line 328
    :cond_10a
    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v13

    .line 308
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_112
    move-object/from16 v18, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 305
    .end local v12    # "nonstreamingSigs":[Landroid/content/pm/Signature;
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_12e
    move-object/from16 v18, v3

    .line 332
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    :goto_130
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v12, Landroid/content/pm/SigningDetails;

    const/4 v13, 0x4

    invoke-direct {v12, v4, v13, v8}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v12, v13}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_141
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_a7 .. :try_end_141} :catch_145
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_141} :catch_147
    .catchall {:try_start_a7 .. :try_end_141} :catchall_192

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 332
    return-object v3

    .line 335
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    :catch_145
    move-exception v0

    goto :goto_190

    .line 337
    :catch_147
    move-exception v0

    goto :goto_16a

    .line 291
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .restart local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .restart local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .restart local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .restart local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .restart local v11    # "v3BlockId":I
    :catch_149
    move-exception v0

    .line 292
    .local v0, "ee":Landroid/util/apk/SignatureNotFoundException;
    :try_start_14a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v4
    :try_end_163
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_14a .. :try_end_163} :catch_145
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_163} :catch_147
    .catchall {:try_start_14a .. :try_end_163} :catchall_192

    .line 343
    .end local v0    # "ee":Landroid/util/apk/SignatureNotFoundException;
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_163
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_193

    .line 337
    :catch_167
    move-exception v0

    move-wide/from16 v16, v3

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    :goto_16a
    :try_start_16a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {v1, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_189
    .catchall {:try_start_16a .. :try_end_189} :catchall_192

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    return-object v3

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_18d
    move-exception v0

    move-wide/from16 v16, v3

    .line 336
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_190
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    :try_start_191
    throw v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_192

    .line 343
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_192
    move-exception v0

    :goto_193
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    throw v0
.end method
