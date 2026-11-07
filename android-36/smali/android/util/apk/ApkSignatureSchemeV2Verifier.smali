.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field private static final greylist-max-o APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final blacklist MAX_V2_SIGNERS:I = 0xa

.field public static final greylist-max-o SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field private static final greylist-max-o STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .registers 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 160
    const v0, 0x7109871a

    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 5
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

    .line 414
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 416
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 417
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 416
    return-object v2

    .line 414
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_14
    move-exception v1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v1
.end method

.method static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 406
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v2

    .line 407
    .local v2, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 408
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 407
    return-object v3

    .line 404
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v2    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1
.end method

.method public static greylist-max-o hasSignature(Ljava/lang/String;)Z
    .registers 4
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 89
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 90
    nop

    .line 91
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_c .. :try_end_f} :catch_1b

    .line 90
    const/4 v1, 0x1

    return v1

    .line 88
    :catchall_11
    move-exception v1

    :try_start_12
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_1a
    throw v1
    :try_end_1b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 91
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 92
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 123
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 12
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "doVerifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "signerCount":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    .local v1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "signerCerts":Ljava/util/List;, "Ljava/util/List<[Ljava/security/cert/X509Certificate;>;"
    :try_start_b
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_11} :catch_b6

    .line 182
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 185
    :try_start_12
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_ad

    .line 188
    .local v4, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 189
    :goto_19
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 191
    const/16 v5, 0xa

    if-gt v0, v5, :cond_52

    .line 197
    :try_start_25
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 198
    .local v5, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 199
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_32
    .catch Ljava/nio/BufferUnderflowException; {:try_start_25 .. :try_end_30} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_30} :catch_32

    .line 204
    nop

    .end local v5    # "signer":Ljava/nio/ByteBuffer;
    .end local v6    # "certs":[Ljava/security/cert/X509Certificate;
    goto :goto_19

    .line 200
    :catch_32
    move-exception v5

    .line 201
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse/verify signer #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " block"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_52
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "APK Signature Scheme v2 only supports a maximum of 10 signers"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_5a
    const/4 v5, 0x1

    if-lt v0, v5, :cond_a5

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9d

    .line 215
    if-eqz p2, :cond_68

    .line 216
    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 219
    :cond_68
    const/4 v5, 0x0

    .line 220
    .local v5, "verityRootHash":[B
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 222
    .local v6, "verityDigest":[B
    nop

    .line 223
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 222
    invoke-static {v6, v7, v8, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v5

    .line 226
    .end local v6    # "verityDigest":[B
    :cond_8b
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    .line 227
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7, v5, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;-><init>([[Ljava/security/cert/X509Certificate;[BLjava/util/Map;)V

    .line 226
    return-object v6

    .line 212
    .end local v5    # "verityRootHash":[B
    :cond_9d
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_a5
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    .end local v4    # "signers":Ljava/nio/ByteBuffer;
    :catch_ad
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 180
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b6
    move-exception v3

    .line 181
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 4
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 148
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 5
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 133
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 132
    return-object v1

    .line 131
    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
.end method

.method public static greylist-max-o verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 108
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static greylist-max-o verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p0, "attrs"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 376
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 377
    .local v0, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4e

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 382
    .local v1, "id":I
    packed-switch v1, :pswitch_data_6c

    goto :goto_4d

    .line 384
    :pswitch_1a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_30

    .line 389
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 390
    .local v2, "vers":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    goto :goto_4d

    .line 391
    :cond_28
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    .end local v2    # "vers":I
    :cond_30
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2 Signature Scheme Stripping Protection Attribute  value too small.  Expected 4 bytes, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    .end local v1    # "id":I
    :goto_4d
    goto :goto_1

    .line 378
    .restart local v0    # "attr":Ljava/nio/ByteBuffer;
    :cond_4e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    :cond_6b
    return-void

    :pswitch_data_6c
    .packed-switch -0x41100ff3
        :pswitch_1a
    .end packed-switch
.end method

.method private static greylist-max-o verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .registers 29
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 236
    .local v1, "signedData":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 237
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 239
    .local v3, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 240
    .local v0, "signatureCount":I
    const/4 v4, -0x1

    .line 241
    .local v4, "bestSigAlgorithm":I
    const/4 v5, 0x0

    .line 242
    .local v5, "bestSigAlgorithmSignatureBytes":[B
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    move v5, v4

    move v4, v0

    .line 243
    .end local v0    # "signatureCount":I
    .local v4, "signatureCount":I
    .local v5, "bestSigAlgorithm":I
    .local v6, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    :goto_17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/16 v8, 0x8

    const/4 v9, -0x1

    if-eqz v0, :cond_6f

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 246
    :try_start_22
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v8, :cond_4d

    .line 250
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 251
    .local v8, "sigAlgorithm":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v10

    if-nez v10, :cond_3e

    .line 253
    goto :goto_17

    .line 255
    :cond_3e
    if-eq v5, v9, :cond_46

    .line 256
    invoke-static {v8, v5}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v9

    if-lez v9, :cond_4c

    .line 257
    :cond_46
    move v5, v8

    .line 258
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    move-object v7, v9

    .line 264
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .end local v8    # "sigAlgorithm":I
    :cond_4c
    goto :goto_17

    .line 248
    .restart local v0    # "signature":Ljava/nio/ByteBuffer;
    :cond_4d
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Signature record too short"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v3    # "publicKeyBytes":[B
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v8
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_55} :catch_55
    .catch Ljava/nio/BufferUnderflowException; {:try_start_22 .. :try_end_55} :catch_55

    .line 260
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v3    # "publicKeyBytes":[B
    .restart local v4    # "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_55
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse signature record #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6f
    if-ne v5, v9, :cond_83

    .line 267
    if-nez v4, :cond_7b

    .line 268
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_7b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No supported signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_83
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 276
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v10

    .line 277
    .local v10, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 278
    .local v11, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    .line 281
    .local v12, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 282
    :try_start_97
    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v13, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v13, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 283
    invoke-virtual {v0, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 284
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .line 285
    .local v13, "sig":Ljava/security/Signature;
    invoke-virtual {v13, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_ab
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_97 .. :try_end_ab} :catch_247
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_97 .. :try_end_ab} :catch_247
    .catch Ljava/security/InvalidKeyException; {:try_start_97 .. :try_end_ab} :catch_247
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_97 .. :try_end_ab} :catch_247
    .catch Ljava/security/SignatureException; {:try_start_97 .. :try_end_ab} :catch_247

    .line 286
    if-eqz v12, :cond_be

    .line 287
    :try_start_ad
    invoke-virtual {v13, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_b0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/security/SignatureException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_be

    .line 291
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    :catch_b1
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move/from16 v20, v4

    move/from16 v23, v5

    move-object/from16 v25, v6

    goto/16 :goto_252

    .line 289
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v13    # "sig":Ljava/security/Signature;
    :cond_be
    :goto_be
    :try_start_be
    invoke-virtual {v13, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 290
    invoke-virtual {v13, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v14
    :try_end_c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_be .. :try_end_c5} :catch_247
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_be .. :try_end_c5} :catch_247
    .catch Ljava/security/InvalidKeyException; {:try_start_be .. :try_end_c5} :catch_247
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_be .. :try_end_c5} :catch_247
    .catch Ljava/security/SignatureException; {:try_start_be .. :try_end_c5} :catch_247

    .line 295
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    .local v14, "sigVerified":Z
    nop

    .line 296
    if-eqz v14, :cond_22a

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "contentDigest":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 304
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 305
    .local v13, "digests":Ljava/nio/ByteBuffer;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v15, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    move-object/from16 v17, v0

    .line 307
    .end local v0    # "contentDigest":[B
    .local v16, "digestCount":I
    .local v17, "contentDigest":[B
    :goto_d9
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_133

    .line 308
    add-int/lit8 v8, v16, 0x1

    .line 310
    .end local v16    # "digestCount":I
    .local v8, "digestCount":I
    :try_start_e1
    invoke-static {v13}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 311
    .local v16, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e9} :catch_113
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e1 .. :try_end_e9} :catch_113

    move-object/from16 v19, v1

    const/16 v1, 0x8

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .local v19, "signedData":Ljava/nio/ByteBuffer;
    if-lt v0, v1, :cond_10b

    .line 314
    :try_start_ef
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 315
    .local v0, "sigAlgorithm":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    if-ne v0, v5, :cond_102

    .line 317
    invoke-static/range {v16 .. v16}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    move-object/from16 v17, v1

    .line 321
    .end local v0    # "sigAlgorithm":I
    .end local v16    # "digest":Ljava/nio/ByteBuffer;
    :cond_102
    move/from16 v16, v8

    move-object/from16 v1, v19

    const/16 v8, 0x8

    goto :goto_d9

    .line 319
    :catch_109
    move-exception v0

    goto :goto_116

    .line 312
    .restart local v16    # "digest":Ljava/nio/ByteBuffer;
    :cond_10b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v3    # "publicKeyBytes":[B
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "digestCount":I
    .end local v9    # "keyAlgorithm":Ljava/lang/String;
    .end local v10    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v11    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v13    # "digests":Ljava/nio/ByteBuffer;
    .end local v14    # "sigVerified":Z
    .end local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "contentDigest":[B
    .end local v19    # "signedData":Ljava/nio/ByteBuffer;
    .end local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v0
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_113} :catch_109
    .catch Ljava/nio/BufferUnderflowException; {:try_start_ef .. :try_end_113} :catch_109

    .line 319
    .end local v16    # "digest":Ljava/nio/ByteBuffer;
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v3    # "publicKeyBytes":[B
    .restart local v4    # "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "digestCount":I
    .restart local v9    # "keyAlgorithm":Ljava/lang/String;
    .restart local v10    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v11    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v13    # "digests":Ljava/nio/ByteBuffer;
    .restart local v14    # "sigVerified":Z
    .restart local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "contentDigest":[B
    .restart local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_113
    move-exception v0

    move-object/from16 v19, v1

    .line 320
    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "signedData":Ljava/nio/ByteBuffer;
    :goto_116
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v18, v2

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .local v18, "signatures":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4    # "signatureCount":I
    .local v20, "signatureCount":I
    const-string v4, "Failed to parse digest record #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "digestCount":I
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signedData":Ljava/nio/ByteBuffer;
    .end local v20    # "signatureCount":I
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v4    # "signatureCount":I
    .local v16, "digestCount":I
    :cond_133
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move/from16 v20, v4

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v20    # "signatureCount":I
    invoke-interface {v6, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 328
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 329
    .local v1, "digestAlgorithm":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p1

    move-object/from16 v4, v17

    .end local v17    # "contentDigest":[B
    .local v4, "contentDigest":[B
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [B

    .line 330
    .local v8, "previousSignerDigest":[B
    if-eqz v8, :cond_17c

    .line 331
    invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_15d

    move/from16 v17, v1

    goto :goto_17e

    .line 332
    :cond_15d
    new-instance v0, Ljava/lang/SecurityException;

    move/from16 v17, v1

    .end local v1    # "digestAlgorithm":I
    .local v17, "digestAlgorithm":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-static/range {v17 .. v17}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    .end local v17    # "digestAlgorithm":I
    .restart local v1    # "digestAlgorithm":I
    :cond_17c
    move/from16 v17, v1

    .line 337
    .end local v1    # "digestAlgorithm":I
    .restart local v17    # "digestAlgorithm":I
    :goto_17e
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 338
    .local v1, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 339
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 340
    .local v0, "certificateCount":I
    :goto_189
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v21

    if-eqz v21, :cond_1db

    .line 341
    move-object/from16 v21, v1

    .end local v1    # "certificates":Ljava/nio/ByteBuffer;
    .local v21, "certificates":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v0, 0x1

    .line 342
    .end local v0    # "certificateCount":I
    .local v1, "certificateCount":I
    move-object/from16 v22, v4

    .end local v4    # "contentDigest":[B
    .local v22, "contentDigest":[B
    invoke-static/range {v21 .. v21}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 345
    .local v4, "encodedCert":[B
    :try_start_199
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_19e
    .catch Ljava/security/cert/CertificateException; {:try_start_199 .. :try_end_19e} :catch_1bb

    .line 346
    move/from16 v23, v5

    move-object/from16 v5, p2

    .end local v5    # "bestSigAlgorithm":I
    .local v23, "bestSigAlgorithm":I
    :try_start_1a2
    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1a8
    .catch Ljava/security/cert/CertificateException; {:try_start_1a2 .. :try_end_1a8} :catch_1b9

    .line 349
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 350
    new-instance v5, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v5, v0, v4}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 351
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v4    # "encodedCert":[B
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    move v0, v1

    move-object/from16 v1, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    goto :goto_189

    .line 347
    .restart local v4    # "encodedCert":[B
    :catch_1b9
    move-exception v0

    goto :goto_1be

    .end local v23    # "bestSigAlgorithm":I
    .local v5, "bestSigAlgorithm":I
    :catch_1bb
    move-exception v0

    move/from16 v23, v5

    .line 348
    .end local v5    # "bestSigAlgorithm":I
    .local v0, "e":Ljava/security/cert/CertificateException;
    .restart local v23    # "bestSigAlgorithm":I
    :goto_1be
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v24, v4

    .end local v4    # "encodedCert":[B
    .local v24, "encodedCert":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v25, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v6, "Failed to decode certificate #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 354
    .end local v21    # "certificates":Ljava/nio/ByteBuffer;
    .end local v22    # "contentDigest":[B
    .end local v23    # "bestSigAlgorithm":I
    .end local v24    # "encodedCert":[B
    .end local v25    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "certificateCount":I
    .local v1, "certificates":Ljava/nio/ByteBuffer;
    .local v4, "contentDigest":[B
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1db
    move-object/from16 v21, v1

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v6

    .end local v1    # "certificates":Ljava/nio/ByteBuffer;
    .end local v4    # "contentDigest":[B
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v22    # "contentDigest":[B
    .restart local v23    # "bestSigAlgorithm":I
    .restart local v25    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21a

    .line 357
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 358
    .local v1, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 359
    .local v4, "certificatePublicKeyBytes":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_212

    .line 364
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 365
    .local v5, "additionalAttrs":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V

    .line 367
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    return-object v6

    .line 360
    .end local v5    # "additionalAttrs":Ljava/nio/ByteBuffer;
    :cond_212
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Public key mismatch between certificate and signature record"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    .end local v1    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "certificatePublicKeyBytes":[B
    :cond_21a
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "No certificates listed"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    .end local v0    # "certificateCount":I
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "previousSignerDigest":[B
    .end local v21    # "certificates":Ljava/nio/ByteBuffer;
    .end local v22    # "contentDigest":[B
    .end local v23    # "bestSigAlgorithm":I
    .end local v25    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "contentDigest":[B
    :cond_222
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    .end local v13    # "digests":Ljava/nio/ByteBuffer;
    .end local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "digestCount":I
    .end local v17    # "contentDigest":[B
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signedData":Ljava/nio/ByteBuffer;
    .end local v20    # "signatureCount":I
    .local v1, "signedData":Ljava/nio/ByteBuffer;
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    .local v4, "signatureCount":I
    :cond_22a
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signedData":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    .end local v14    # "sigVerified":Z
    .end local v18    # "signatures":Ljava/nio/ByteBuffer;
    .end local v19    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    :catch_247
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move/from16 v20, v4

    move/from16 v23, v5

    move-object/from16 v25, v6

    .line 293
    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v18    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v19    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v20    # "signatureCount":I
    .restart local v23    # "bestSigAlgorithm":I
    .restart local v25    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_252
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " signature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
