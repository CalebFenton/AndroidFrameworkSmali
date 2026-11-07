.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    }
.end annotation


# static fields
.field static final blacklist APK_SIGNATURE_SCHEME_V31_BLOCK_ID:I = 0x1b93ad61

.field static final greylist-max-o APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final greylist-max-o PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c

.field private static final blacklist ROTATION_MIN_SDK_VERSION_ATTR_ID:I = 0x559f8b02

.field private static final blacklist ROTATION_ON_DEV_RELEASE_ATTR_ID:I = -0x3d594c46

.field public static final greylist-max-o SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x3


# instance fields
.field private final blacklist mApk:Ljava/io/RandomAccessFile;

.field private blacklist mBlockId:I

.field private blacklist mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

.field private blacklist mSignerMinSdkVersion:I

.field private final blacklist mVerifyIntegrity:Z


# direct methods
.method private constructor blacklist <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "verifyIntegrity"    # Z

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 189
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    .line 190
    iput-boolean p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    .line 191
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

    .line 166
    const v0, -0xfac9740

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .registers 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 179
    invoke-static {p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

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

    .line 542
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 544
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 545
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 544
    return-object v2

    .line 542
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

    .line 532
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 534
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v2

    .line 535
    .local v2, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 536
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 535
    return-object v3

    .line 532
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v2    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
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

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 83
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 84
    nop

    .line 85
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_c .. :try_end_f} :catch_1b

    .line 84
    const/4 v1, 0x1

    return v1

    .line 82
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

    .line 85
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 86
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private blacklist verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 14
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 202
    iput p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "signerCount":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v0

    .line 205
    .local v6, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x0

    .line 208
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;>;"
    :try_start_a
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_10} :catch_d2

    move-object v8, v0

    .line 211
    .local v8, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 214
    :try_start_12
    iget-object v0, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_c7

    move-object v9, v0

    .line 217
    .local v9, "signers":Ljava/nio/ByteBuffer;
    move-object v10, v2

    .line 218
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;>;"
    .local v10, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;>;"
    :goto_1a
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 220
    :try_start_20
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 221
    .local v0, "signer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0, v6, v8}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;

    move-result-object v2
    :try_end_28
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_20 .. :try_end_28} :catch_4d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_2d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_20 .. :try_end_28} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_28} :catch_2d

    move-object v10, v2

    .line 222
    nop

    .end local v0    # "signer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    .line 230
    goto :goto_1a

    .line 226
    :catch_2d
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse/verify signer #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v0

    .line 225
    .local v0, "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    goto :goto_1a

    .line 233
    .end local v0    # "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    :cond_4f
    const/4 v0, 0x1

    if-lt v1, v0, :cond_b1

    if-nez v10, :cond_56

    move v7, p2

    goto :goto_b2

    .line 243
    :cond_56
    if-ne v1, v0, :cond_a8

    .line 248
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 252
    iget-boolean v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    if-eqz v0, :cond_67

    .line 253
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    invoke-static {v6, v0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 256
    :cond_67
    const/4 v0, 0x0

    .line 257
    .local v0, "verityRootHash":[B
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 259
    .local v2, "verityDigest":[B
    iget-object v3, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    .line 260
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 259
    invoke-static {v2, v3, v4, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v0

    move-object v5, v0

    goto :goto_8e

    .line 257
    .end local v2    # "verityDigest":[B
    :cond_8d
    move-object v5, v0

    .line 263
    .end local v0    # "verityRootHash":[B
    .local v5, "verityRootHash":[B
    :goto_8e
    new-instance v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/security/cert/X509Certificate;

    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move v7, p2

    .end local p2    # "blockId":I
    .local v7, "blockId":I
    invoke-direct/range {v2 .. v7}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;[BLjava/util/Map;I)V

    return-object v2

    .line 249
    .end local v5    # "verityRootHash":[B
    .end local v7    # "blockId":I
    .restart local p2    # "blockId":I
    :cond_9f
    move v7, p2

    .end local p2    # "blockId":I
    .restart local v7    # "blockId":I
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "No content digests found"

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 244
    .end local v7    # "blockId":I
    .restart local p2    # "blockId":I
    :cond_a8
    move v7, p2

    .end local p2    # "blockId":I
    .restart local v7    # "blockId":I
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 233
    .end local v7    # "blockId":I
    .restart local p2    # "blockId":I
    :cond_b1
    move v7, p2

    .line 236
    .end local p2    # "blockId":I
    .restart local v7    # "blockId":I
    :goto_b2
    const p2, -0xfac9740

    if-ne v7, p2, :cond_bf

    .line 237
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "No signers found"

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    :cond_bf
    new-instance p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    const-string v0, "None of the signers support the current platform version"

    invoke-direct {p2, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 215
    .end local v7    # "blockId":I
    .end local v9    # "signers":Ljava/nio/ByteBuffer;
    .end local v10    # "result":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;>;"
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;>;"
    .restart local p2    # "blockId":I
    :catch_c7
    move-exception v0

    move v7, p2

    move-object p2, v0

    .line 216
    .restart local v7    # "blockId":I
    .local p2, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Failed to read list of signers"

    invoke-direct {v0, v3, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 209
    .end local v7    # "blockId":I
    .end local v8    # "certFactory":Ljava/security/cert/CertificateFactory;
    .local p2, "blockId":I
    :catch_d2
    move-exception v0

    move v7, p2

    move-object p2, v0

    .line 210
    .restart local v7    # "blockId":I
    .local p2, "e":Ljava/security/cert/CertificateException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v0, v3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 5
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;

    invoke-direct {v0, p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 141
    .local v0, "verifier":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    const v1, 0x1b93ad61

    :try_start_8
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 142
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_10
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_8 .. :try_end_10} :catch_13
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v1

    .line 145
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_11
    move-exception v1

    goto :goto_15

    .line 143
    :catch_13
    move-exception v1

    .line 148
    nop

    .line 150
    :goto_15
    const v1, -0xfac9740

    :try_start_18
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 151
    .restart local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_20
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v1

    .line 152
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_21
    move-exception v1

    .line 153
    .local v1, "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static greylist-max-o verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
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

    .line 121
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 123
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 122
    return-object v1

    .line 121
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

.method private blacklist verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;
    .registers 13
    .param p1, "attrs"    # Ljava/nio/ByteBuffer;
    .param p3, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 447
    .local p2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 448
    .local v0, "certChain":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 450
    .local v1, "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 451
    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 452
    .local v2, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_12d

    .line 456
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 457
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_150

    goto/16 :goto_12b

    .line 480
    :sswitch_27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v4, :cond_83

    .line 486
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 487
    .local v4, "attrRotationMinSdkVersion":I
    iget-object v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v5

    const-string v6, "Expected a v3.1 signing block targeting SDK version "

    if-eqz v5, :cond_66

    .line 493
    iget-object v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v5

    .line 494
    .local v5, "rotationMinSdkVersion":I
    if-ne v5, v4, :cond_45

    goto/16 :goto_12b

    .line 495
    :cond_45
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", but the v3.1 block was targeting "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 488
    .end local v5    # "rotationMinSdkVersion":I
    :cond_66
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but a v3.1 block was not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    .end local v4    # "attrRotationMinSdkVersion":I
    :cond_83
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining buffer too short to contain rotation minSdkVersion value. Remaining: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 484
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 459
    :sswitch_a0
    if-nez v1, :cond_e2

    .line 463
    invoke-static {v2, p3}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v1

    .line 467
    :try_start_a6
    iget-object v4, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d8

    iget-object v4, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v5, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 468
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    .line 469
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 468
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_d0

    goto :goto_d8

    .line 470
    :cond_d0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    .end local v3    # "id":I
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "attrs":Ljava/nio/ByteBuffer;
    .end local p2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v4
    :try_end_d8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a6 .. :try_end_d8} :catch_d9

    .line 476
    .restart local v0    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v2    # "attr":Ljava/nio/ByteBuffer;
    .restart local v3    # "id":I
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "attrs":Ljava/nio/ByteBuffer;
    .restart local p2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_d8
    :goto_d8
    goto :goto_12b

    .line 473
    :catch_d9
    move-exception v4

    .line 474
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 460
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_e2
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 505
    :sswitch_ea
    iget v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v5, 0x1b93ad61

    if-ne v4, v5, :cond_12b

    .line 510
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    if-ne v4, v5, :cond_12b

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 511
    const-string v5, "REL"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_102

    goto :goto_12b

    .line 514
    :cond_102
    iget v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-static {v4}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v4

    iput-object v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 515
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device is running a release version of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but the signer is targeting a dev release"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 526
    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    .end local v3    # "id":I
    :cond_12b
    :goto_12b
    goto/16 :goto_d

    .line 453
    .restart local v2    # "attr":Ljava/nio/ByteBuffer;
    :cond_12d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 454
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 527
    .end local v2    # "attr":Ljava/nio/ByteBuffer;
    :cond_14a
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_150
    .sparse-switch
        -0x3d594c46 -> :sswitch_ea
        0x3ba06f8c -> :sswitch_a0
        0x559f8b02 -> :sswitch_27
    .end sparse-switch
.end method

.method private blacklist verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;
    .registers 35
    .param p1, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p3, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 273
    .local p2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 274
    .local v3, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 275
    .local v4, "minSdkVersion":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 277
    .local v5, "maxSdkVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2ca

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_1c

    move-object/from16 v21, v3

    goto/16 :goto_2cc

    .line 294
    :cond_1c
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 295
    .local v6, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 297
    .local v7, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 298
    .local v0, "signatureCount":I
    const/4 v8, -0x1

    .line 299
    .local v8, "bestSigAlgorithm":I
    const/4 v9, 0x0

    .line 300
    .local v9, "bestSigAlgorithmSignatureBytes":[B
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v9

    move v9, v8

    move v8, v0

    .line 301
    .end local v0    # "signatureCount":I
    .local v8, "signatureCount":I
    .local v9, "bestSigAlgorithm":I
    .local v10, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    :goto_2f
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/16 v12, 0x8

    const/4 v13, -0x1

    if-eqz v0, :cond_87

    .line 302
    add-int/lit8 v8, v8, 0x1

    .line 304
    :try_start_3a
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 305
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-lt v14, v12, :cond_65

    .line 308
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 309
    .local v12, "sigAlgorithm":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {v12}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v14

    if-nez v14, :cond_56

    .line 311
    goto :goto_2f

    .line 313
    :cond_56
    if-eq v9, v13, :cond_5e

    .line 314
    invoke-static {v12, v9}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v13

    if-lez v13, :cond_64

    .line 315
    :cond_5e
    move v9, v12

    .line 316
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    move-object v11, v13

    .line 322
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .end local v12    # "sigAlgorithm":I
    :cond_64
    goto :goto_2f

    .line 306
    .restart local v0    # "signature":Ljava/nio/ByteBuffer;
    :cond_65
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Signature record too short"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .end local v4    # "minSdkVersion":I
    .end local v5    # "maxSdkVersion":I
    .end local v6    # "signatures":Ljava/nio/ByteBuffer;
    .end local v7    # "publicKeyBytes":[B
    .end local v8    # "signatureCount":I
    .end local v9    # "bestSigAlgorithm":I
    .end local v10    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v12
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6d} :catch_6d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3a .. :try_end_6d} :catch_6d

    .line 318
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .restart local v3    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v4    # "minSdkVersion":I
    .restart local v5    # "maxSdkVersion":I
    .restart local v6    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v7    # "publicKeyBytes":[B
    .restart local v8    # "signatureCount":I
    .restart local v9    # "bestSigAlgorithm":I
    .restart local v10    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_6d
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse signature record #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    if-ne v9, v13, :cond_9b

    .line 325
    if-nez v8, :cond_93

    .line 326
    new-instance v0, Ljava/lang/SecurityException;

    const-string v12, "No signatures found"

    invoke-direct {v0, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_93
    new-instance v0, Ljava/lang/SecurityException;

    const-string v12, "No supported signatures found"

    invoke-direct {v0, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_9b
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 334
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v14

    .line 335
    .local v14, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 336
    .local v15, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    .line 339
    .local v12, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 340
    :try_start_af
    invoke-static {v13}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_af .. :try_end_b3} :catch_29e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_af .. :try_end_b3} :catch_29e
    .catch Ljava/security/InvalidKeyException; {:try_start_af .. :try_end_b3} :catch_29e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_af .. :try_end_b3} :catch_29e
    .catch Ljava/security/SignatureException; {:try_start_af .. :try_end_b3} :catch_29e

    move-object/from16 v17, v6

    .end local v6    # "signatures":Ljava/nio/ByteBuffer;
    .local v17, "signatures":Ljava/nio/ByteBuffer;
    :try_start_b5
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 341
    invoke-virtual {v0, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 342
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v15}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 343
    .local v6, "sig":Ljava/security/Signature;
    invoke-virtual {v6, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b5 .. :try_end_c5} :catch_292
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b5 .. :try_end_c5} :catch_292
    .catch Ljava/security/InvalidKeyException; {:try_start_b5 .. :try_end_c5} :catch_292
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b5 .. :try_end_c5} :catch_292
    .catch Ljava/security/SignatureException; {:try_start_b5 .. :try_end_c5} :catch_292

    .line 344
    if-eqz v12, :cond_d8

    .line 345
    :try_start_c7
    invoke-virtual {v6, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/InvalidKeyException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/SignatureException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_d8

    .line 349
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v6    # "sig":Ljava/security/Signature;
    :catch_cb
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v8

    move/from16 v16, v9

    move-object/from16 v24, v11

    move-object/from16 v20, v12

    goto/16 :goto_2ab

    .line 347
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "sig":Ljava/security/Signature;
    :cond_d8
    :goto_d8
    :try_start_d8
    invoke-virtual {v6, v3}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 348
    invoke-virtual {v6, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v18
    :try_end_df
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d8 .. :try_end_df} :catch_292
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d8 .. :try_end_df} :catch_292
    .catch Ljava/security/InvalidKeyException; {:try_start_d8 .. :try_end_df} :catch_292
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d8 .. :try_end_df} :catch_292
    .catch Ljava/security/SignatureException; {:try_start_d8 .. :try_end_df} :catch_292

    .line 353
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v6    # "sig":Ljava/security/Signature;
    .local v18, "sigVerified":Z
    nop

    .line 354
    if-eqz v18, :cond_277

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "contentDigest":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 362
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 363
    .local v6, "digests":Ljava/nio/ByteBuffer;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v19

    .line 364
    .local v20, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    move-object/from16 v21, v3

    move-object v3, v0

    .line 365
    .end local v0    # "contentDigest":[B
    .local v3, "contentDigest":[B
    .local v19, "digestCount":I
    .local v21, "signedData":Ljava/nio/ByteBuffer;
    :goto_f6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 366
    move-object/from16 v22, v6

    .end local v6    # "digests":Ljava/nio/ByteBuffer;
    .local v22, "digests":Ljava/nio/ByteBuffer;
    add-int/lit8 v6, v19, 0x1

    .line 368
    .end local v19    # "digestCount":I
    .local v6, "digestCount":I
    :try_start_100
    invoke-static/range {v22 .. v22}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 369
    .local v0, "digest":Ljava/nio/ByteBuffer;
    move-object/from16 v19, v0

    .end local v0    # "digest":Ljava/nio/ByteBuffer;
    .local v19, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_10a} :catch_145
    .catch Ljava/nio/BufferUnderflowException; {:try_start_100 .. :try_end_10a} :catch_145

    move/from16 v23, v8

    const/16 v8, 0x8

    .end local v8    # "signatureCount":I
    .local v23, "signatureCount":I
    if-lt v0, v8, :cond_137

    .line 372
    :try_start_110
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 373
    .local v0, "sigAlgorithm":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_118} :catch_131
    .catch Ljava/nio/BufferUnderflowException; {:try_start_110 .. :try_end_118} :catch_131

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v24, "bestSigAlgorithmSignatureBytes":[B
    :try_start_11c
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    if-ne v0, v9, :cond_126

    .line 375
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    move-object v3, v8

    .line 379
    .end local v0    # "sigAlgorithm":I
    .end local v19    # "digest":Ljava/nio/ByteBuffer;
    :cond_126
    move/from16 v19, v6

    move-object/from16 v20, v11

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v11, v24

    goto :goto_f6

    .line 377
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_131
    move-exception v0

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    goto :goto_14c

    .line 370
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    .restart local v19    # "digest":Ljava/nio/ByteBuffer;
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_137
    move-object/from16 v24, v11

    move-object/from16 v11, v20

    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Record too short"

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "contentDigest":[B
    .end local v4    # "minSdkVersion":I
    .end local v5    # "maxSdkVersion":I
    .end local v6    # "digestCount":I
    .end local v7    # "publicKeyBytes":[B
    .end local v9    # "bestSigAlgorithm":I
    .end local v10    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v13    # "keyAlgorithm":Ljava/lang/String;
    .end local v14    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v15    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v17    # "signatures":Ljava/nio/ByteBuffer;
    .end local v18    # "sigVerified":Z
    .end local v21    # "signedData":Ljava/nio/ByteBuffer;
    .end local v22    # "digests":Ljava/nio/ByteBuffer;
    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v0
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_143} :catch_143
    .catch Ljava/nio/BufferUnderflowException; {:try_start_11c .. :try_end_143} :catch_143

    .line 377
    .end local v19    # "digest":Ljava/nio/ByteBuffer;
    .restart local v3    # "contentDigest":[B
    .restart local v4    # "minSdkVersion":I
    .restart local v5    # "maxSdkVersion":I
    .restart local v6    # "digestCount":I
    .restart local v7    # "publicKeyBytes":[B
    .restart local v9    # "bestSigAlgorithm":I
    .restart local v10    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v13    # "keyAlgorithm":Ljava/lang/String;
    .restart local v14    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v15    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v17    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v18    # "sigVerified":Z
    .restart local v21    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v22    # "digests":Ljava/nio/ByteBuffer;
    .restart local v23    # "signatureCount":I
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_143
    move-exception v0

    goto :goto_14c

    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "signatureCount":I
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    .restart local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_145
    move-exception v0

    move/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    .line 378
    .end local v8    # "signatureCount":I
    .end local v20    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v11, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "signatureCount":I
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    :goto_14c
    new-instance v8, Ljava/io/IOException;

    move/from16 v16, v9

    .end local v9    # "bestSigAlgorithm":I
    .local v16, "bestSigAlgorithm":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v20, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v12, "Failed to parse digest record #"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "bestSigAlgorithm":I
    .end local v22    # "digests":Ljava/nio/ByteBuffer;
    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .local v6, "digests":Ljava/nio/ByteBuffer;
    .restart local v8    # "signatureCount":I
    .restart local v9    # "bestSigAlgorithm":I
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    .restart local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v19, "digestCount":I
    .local v20, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_169
    move-object/from16 v22, v6

    move/from16 v23, v8

    move/from16 v16, v9

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    .end local v6    # "digests":Ljava/nio/ByteBuffer;
    .end local v8    # "signatureCount":I
    .end local v9    # "bestSigAlgorithm":I
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v11, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "bestSigAlgorithm":I
    .local v20, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v22    # "digests":Ljava/nio/ByteBuffer;
    .restart local v23    # "signatureCount":I
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    invoke-interface {v10, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 386
    invoke-static/range {v16 .. v16}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v6

    .line 387
    .local v6, "digestAlgorithm":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B

    .line 388
    .local v9, "previousSignerDigest":[B
    if-eqz v9, :cond_1b6

    .line 389
    invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_197

    move-object/from16 v25, v3

    goto :goto_1b8

    .line 390
    :cond_197
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    move-object/from16 v25, v3

    .end local v3    # "contentDigest":[B
    .local v25, "contentDigest":[B
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    .end local v25    # "contentDigest":[B
    .restart local v3    # "contentDigest":[B
    :cond_1b6
    move-object/from16 v25, v3

    .line 396
    .end local v3    # "contentDigest":[B
    .restart local v25    # "contentDigest":[B
    :goto_1b8
    invoke-static/range {v21 .. v21}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 397
    .local v3, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 398
    .local v12, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 399
    .local v0, "certificateCount":I
    :goto_1c3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v26

    if-eqz v26, :cond_20d

    .line 400
    move-object/from16 v26, v3

    .end local v3    # "certificates":Ljava/nio/ByteBuffer;
    .local v26, "certificates":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v0, 0x1

    .line 401
    .end local v0    # "certificateCount":I
    .local v3, "certificateCount":I
    move/from16 v27, v6

    .end local v6    # "digestAlgorithm":I
    .local v27, "digestAlgorithm":I
    invoke-static/range {v26 .. v26}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 404
    .local v6, "encodedCert":[B
    :try_start_1d3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 405
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1de
    .catch Ljava/security/cert/CertificateException; {:try_start_1d3 .. :try_end_1de} :catch_1ef

    .line 408
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 409
    new-instance v8, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v8, v0, v6}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 410
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .local v8, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v6    # "encodedCert":[B
    .end local v8    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v8, p2

    move v0, v3

    move-object/from16 v3, v26

    move/from16 v6, v27

    goto :goto_1c3

    .line 406
    .restart local v6    # "encodedCert":[B
    :catch_1ef
    move-exception v0

    .line 407
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/lang/SecurityException;

    move-object/from16 v28, v6

    .end local v6    # "encodedCert":[B
    .local v28, "encodedCert":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v9

    .end local v9    # "previousSignerDigest":[B
    .local v29, "previousSignerDigest":[B
    const-string v9, "Failed to decode certificate #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 413
    .end local v26    # "certificates":Ljava/nio/ByteBuffer;
    .end local v27    # "digestAlgorithm":I
    .end local v28    # "encodedCert":[B
    .end local v29    # "previousSignerDigest":[B
    .local v0, "certificateCount":I
    .local v3, "certificates":Ljava/nio/ByteBuffer;
    .local v6, "digestAlgorithm":I
    .restart local v9    # "previousSignerDigest":[B
    :cond_20d
    move-object/from16 v26, v3

    move/from16 v27, v6

    move-object/from16 v29, v9

    .end local v3    # "certificates":Ljava/nio/ByteBuffer;
    .end local v6    # "digestAlgorithm":I
    .end local v9    # "previousSignerDigest":[B
    .restart local v26    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v27    # "digestAlgorithm":I
    .restart local v29    # "previousSignerDigest":[B
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_265

    .line 416
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 417
    .local v3, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 418
    .local v6, "certificatePublicKeyBytes":[B
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_25b

    .line 423
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 424
    .local v8, "signedMinSDK":I
    if-ne v8, v4, :cond_251

    .line 428
    iput v8, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    .line 430
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 431
    .local v9, "signedMaxSDK":I
    if-ne v9, v5, :cond_247

    .line 436
    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .local v28, "certificateCount":I
    invoke-static/range {v21 .. v21}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 437
    .local v0, "additionalAttrs":Ljava/nio/ByteBuffer;
    invoke-direct {v1, v0, v12, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;

    move-result-object v30

    return-object v30

    .line 432
    .end local v28    # "certificateCount":I
    .local v0, "certificateCount":I
    :cond_247
    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .restart local v28    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    .end local v9    # "signedMaxSDK":I
    .end local v28    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_251
    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .restart local v28    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    .end local v8    # "signedMinSDK":I
    .end local v28    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_25b
    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .restart local v28    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    .end local v3    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificatePublicKeyBytes":[B
    .end local v28    # "certificateCount":I
    .restart local v0    # "certificateCount":I
    :cond_265
    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .restart local v28    # "certificateCount":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No certificates listed"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .end local v12    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v25    # "contentDigest":[B
    .end local v26    # "certificates":Ljava/nio/ByteBuffer;
    .end local v27    # "digestAlgorithm":I
    .end local v28    # "certificateCount":I
    .end local v29    # "previousSignerDigest":[B
    .local v3, "contentDigest":[B
    :cond_26f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    .end local v16    # "bestSigAlgorithm":I
    .end local v19    # "digestCount":I
    .end local v20    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v21    # "signedData":Ljava/nio/ByteBuffer;
    .end local v22    # "digests":Ljava/nio/ByteBuffer;
    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .local v3, "signedData":Ljava/nio/ByteBuffer;
    .local v8, "signatureCount":I
    .local v9, "bestSigAlgorithm":I
    .local v11, "bestSigAlgorithmSignatureBytes":[B
    .local v12, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_277
    move-object/from16 v21, v3

    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v21    # "signedData":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature did not verify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    .end local v18    # "sigVerified":Z
    .end local v21    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v3    # "signedData":Ljava/nio/ByteBuffer;
    :catch_292
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v8

    move/from16 v16, v9

    move-object/from16 v24, v11

    move-object/from16 v20, v12

    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .end local v8    # "signatureCount":I
    .end local v9    # "bestSigAlgorithm":I
    .end local v11    # "bestSigAlgorithmSignatureBytes":[B
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v16    # "bestSigAlgorithm":I
    .restart local v20    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v21    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v23    # "signatureCount":I
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    goto :goto_2ab

    .end local v16    # "bestSigAlgorithm":I
    .end local v17    # "signatures":Ljava/nio/ByteBuffer;
    .end local v20    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v21    # "signedData":Ljava/nio/ByteBuffer;
    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v3    # "signedData":Ljava/nio/ByteBuffer;
    .local v6, "signatures":Ljava/nio/ByteBuffer;
    .restart local v8    # "signatureCount":I
    .restart local v9    # "bestSigAlgorithm":I
    .restart local v11    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_29e
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v17, v6

    move/from16 v23, v8

    move/from16 v16, v9

    move-object/from16 v24, v11

    move-object/from16 v20, v12

    .line 351
    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .end local v6    # "signatures":Ljava/nio/ByteBuffer;
    .end local v8    # "signatureCount":I
    .end local v9    # "bestSigAlgorithm":I
    .end local v11    # "bestSigAlgorithmSignatureBytes":[B
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v16    # "bestSigAlgorithm":I
    .restart local v17    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v20    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v21    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v23    # "signatureCount":I
    .restart local v24    # "bestSigAlgorithmSignatureBytes":[B
    :goto_2ab
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to verify "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " signature"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "publicKeyBytes":[B
    .end local v10    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "keyAlgorithm":Ljava/lang/String;
    .end local v14    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v15    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v16    # "bestSigAlgorithm":I
    .end local v17    # "signatures":Ljava/nio/ByteBuffer;
    .end local v20    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v21    # "signedData":Ljava/nio/ByteBuffer;
    .end local v23    # "signatureCount":I
    .end local v24    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v3    # "signedData":Ljava/nio/ByteBuffer;
    :cond_2ca
    move-object/from16 v21, v3

    .line 280
    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v21    # "signedData":Ljava/nio/ByteBuffer;
    :goto_2cc
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v2, 0x1b93ad61

    if-ne v0, v2, :cond_2e9

    .line 281
    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2e3

    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 282
    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    if-le v0, v4, :cond_2e9

    .line 283
    :cond_2e3
    invoke-static {v4}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 287
    :cond_2e9
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signer not supported by this platform version. This platform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", signer minSdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxSdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
