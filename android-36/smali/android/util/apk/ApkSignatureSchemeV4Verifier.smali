.class public Landroid/util/apk/ApkSignatureSchemeV4Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV4Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field static final blacklist APK_SIGNATURE_SCHEME_DEFAULT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToContentDigestType(I)I
    .registers 4
    .param p0, "hashAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 246
    const/4 v0, 0x3

    return v0

    .line 248
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hashAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 5
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/SignatureException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 70
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/incremental/V4Signature$HashingInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/incremental/V4Signature$SigningInfos;

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist extractSignature(Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/incremental/V4Signature$HashingInfo;",
            "Landroid/os/incremental/V4Signature$SigningInfos;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 79
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "apk":Ljava/io/File;
    nop

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    .local v1, "signatureBytes":[B
    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "needsConsistencyCheck":Z
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v3

    .local v3, "signature":Landroid/os/incremental/V4Signature;
    goto :goto_47

    .line 95
    .end local v2    # "needsConsistencyCheck":Z
    .end local v3    # "signature":Landroid/os/incremental/V4Signature;
    :cond_19
    const/4 v2, 0x1

    .line 97
    .restart local v2    # "needsConsistencyCheck":Z
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".idsig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_36} :catch_d1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_c8
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_36} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_bf

    .line 98
    .local v3, "idsig":Ljava/io/File;
    :try_start_36
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_b6
    .catch Ljava/io/EOFException; {:try_start_36 .. :try_end_3f} :catch_d1
    .catch Ljava/security/DigestException; {:try_start_36 .. :try_end_3f} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_3f} :catch_bf

    .line 99
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3f
    invoke-static {v4}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object v5
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_ac

    .line 100
    .local v5, "signature":Landroid/os/incremental/V4Signature;
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_b6
    .catch Ljava/io/EOFException; {:try_start_43 .. :try_end_46} :catch_d1
    .catch Ljava/security/DigestException; {:try_start_43 .. :try_end_46} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_43 .. :try_end_46} :catch_bf

    .line 103
    .end local v4    # "fis":Ljava/io/FileInputStream;
    move-object v3, v5

    .line 105
    .end local v5    # "signature":Landroid/os/incremental/V4Signature;
    .local v3, "signature":Landroid/os/incremental/V4Signature;
    :goto_47
    :try_start_47
    invoke-virtual {v3}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 109
    iget-object v4, v3, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v4}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v4

    .line 111
    .local v4, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v5, v3, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {v5}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object v5

    .line 114
    .local v5, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    if-eqz v2, :cond_85

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v6

    .line 116
    .local v6, "actualDigest":[B
    if-eqz v6, :cond_7d

    .line 119
    nop

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8, v4}, Lcom/android/internal/security/VerityUtils;->generateFsVerityDigest(JLandroid/os/incremental/V4Signature$HashingInfo;)[B

    move-result-object v7

    .line 121
    .local v7, "computedDigest":[B
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_75

    goto :goto_85

    .line 122
    :cond_75
    new-instance v8, Ljava/security/SignatureException;

    const-string v9, "Actual digest does not match the v4 signature"

    invoke-direct {v8, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    throw v8

    .line 117
    .end local v7    # "computedDigest":[B
    .restart local p0    # "apkFile":Ljava/lang/String;
    :cond_7d
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "The APK does not have fs-verity"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    throw v7

    .line 126
    .end local v6    # "actualDigest":[B
    .restart local p0    # "apkFile":Ljava/lang/String;
    :cond_85
    :goto_85
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 106
    .end local v4    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v5    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    :cond_8a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "v4 signature version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    throw v4
    :try_end_ac
    .catch Ljava/io/EOFException; {:try_start_47 .. :try_end_ac} :catch_d1
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_ac} :catch_c8
    .catch Ljava/security/DigestException; {:try_start_47 .. :try_end_ac} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_ac} :catch_bf

    .line 98
    .local v3, "idsig":Ljava/io/File;
    .local v4, "fis":Ljava/io/FileInputStream;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catchall_ac
    move-exception v5

    :try_start_ad
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v6

    :try_start_b2
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "signatureBytes":[B
    .end local v2    # "needsConsistencyCheck":Z
    .end local v3    # "idsig":Ljava/io/File;
    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_b5
    throw v5
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_b6
    .catch Ljava/io/EOFException; {:try_start_b2 .. :try_end_b6} :catch_d1
    .catch Ljava/security/DigestException; {:try_start_b2 .. :try_end_b6} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b2 .. :try_end_b6} :catch_bf

    .line 100
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "apk":Ljava/io/File;
    .restart local v1    # "signatureBytes":[B
    .restart local v2    # "needsConsistencyCheck":Z
    .restart local v3    # "idsig":Ljava/io/File;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_b6
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/IOException;
    :try_start_b7
    new-instance v5, Landroid/util/apk/SignatureNotFoundException;

    const-string v6, "Failed to obtain signature bytes from .idsig"

    invoke-direct {v5, v6}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    throw v5
    :try_end_bf
    .catch Ljava/io/EOFException; {:try_start_b7 .. :try_end_bf} :catch_d1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bf} :catch_c8
    .catch Ljava/security/DigestException; {:try_start_b7 .. :try_end_bf} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b7 .. :try_end_bf} :catch_bf

    .line 131
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "signatureBytes":[B
    .end local v2    # "needsConsistencyCheck":Z
    .end local v3    # "idsig":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_bf
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to calculate the digest"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_c8
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "Failed to read V4 signature."

    invoke-direct {v1, v2, v0}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "V4 signature is invalid."

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;
    .registers 7
    .param p0, "signingInfos"    # Landroid/os/incremental/V4Signature$SigningInfos;
    .param p1, "v3BlockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 163
    const/4 v0, -0x1

    if-eq p1, v0, :cond_54

    const v0, -0xfac9740

    if-ne p1, v0, :cond_9

    goto :goto_54

    .line 167
    :cond_9
    iget-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 168
    .local v3, "signingInfoBlock":Landroid/os/incremental/V4Signature$SigningInfoBlock;
    iget v4, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    if-ne p1, v4, :cond_38

    .line 170
    :try_start_15
    iget-object v0, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c

    return-object v0

    .line 171
    :catch_1c
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read V4 signature block: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "signingInfoBlock":Landroid/os/incremental/V4Signature$SigningInfoBlock;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 177
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find V4 signature block corresponding to V3 blockId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    return-object v0
.end method

.method public static blacklist verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 12
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "hashingInfo"    # Landroid/os/incremental/V4Signature$HashingInfo;
    .param p2, "signingInfos"    # Landroid/os/incremental/V4Signature$SigningInfos;
    .param p3, "v3BlockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 143
    invoke-static {p2, p3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0

    .line 147
    .local v0, "signingInfo":Landroid/os/incremental/V4Signature$SigningInfo;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2, p1, v0}, Landroid/os/incremental/V4Signature;->getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B

    move-result-object v1

    .line 149
    .local v1, "signedData":[B
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;

    move-result-object v2

    .line 152
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/cert/Certificate;[B>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 153
    .local v3, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget v4, p1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-static {v4}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->convertToContentDigestType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/Certificate;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [B

    invoke-direct {v4, v5, v6, v3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;-><init>([Ljava/security/cert/Certificate;[BLjava/util/Map;)V

    return-object v4
.end method

.method private static blacklist verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;
    .registers 16
    .param p0, "signingInfo"    # Landroid/os/incremental/V4Signature$SigningInfo;
    .param p1, "signedData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/incremental/V4Signature$SigningInfo;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/security/cert/Certificate;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 183
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 187
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    .line 188
    .local v0, "signatureAlgorithmId":I
    iget-object v1, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    .line 189
    .local v1, "signatureBytes":[B
    iget-object v2, p0, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    .line 190
    .local v2, "publicKeyBytes":[B
    iget-object v3, p0, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 192
    .local v3, "encodedCert":[B
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 194
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v5

    .line 195
    .local v5, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 196
    .local v6, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/security/spec/AlgorithmParameterSpec;

    .line 199
    .local v7, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 200
    :try_start_22
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 201
    invoke-virtual {v8, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 202
    .local v8, "publicKey":Ljava/security/PublicKey;
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 203
    .local v9, "sig":Ljava/security/Signature;
    invoke-virtual {v9, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 204
    if-eqz v7, :cond_3b

    .line 205
    invoke-virtual {v9, v7}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    :cond_3b
    invoke-virtual {v9, p1}, Ljava/security/Signature;->update([B)V

    .line 208
    invoke-virtual {v9, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v10
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/SignatureException; {:try_start_22 .. :try_end_42} :catch_a5

    .line 213
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v9    # "sig":Ljava/security/Signature;
    .local v10, "sigVerified":Z
    nop

    .line 214
    if-eqz v10, :cond_8c

    .line 221
    :try_start_45
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8
    :try_end_4b
    .catch Ljava/security/cert/CertificateException; {:try_start_45 .. :try_end_4b} :catch_83

    .line 224
    .local v8, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 228
    :try_start_4c
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_57
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_57} :catch_7a

    .line 232
    .local v9, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 233
    new-instance v11, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v11, v9, v3}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 235
    .end local v9    # "certificate":Ljava/security/cert/X509Certificate;
    .local v11, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v9

    .line 236
    .local v9, "certificatePublicKeyBytes":[B
    invoke-static {v2, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 241
    iget-object v12, p0, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 237
    :cond_72
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Public key mismatch between certificate and signature record"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 230
    .end local v9    # "certificatePublicKeyBytes":[B
    .end local v11    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_7a
    move-exception v9

    .line 231
    .local v9, "e":Ljava/security/cert/CertificateException;
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Failed to decode certificate"

    invoke-direct {v11, v12, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 222
    .end local v8    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    :catch_83
    move-exception v8

    .line 223
    .local v8, "e":Ljava/security/cert/CertificateException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v9, v11, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 215
    .end local v8    # "e":Ljava/security/cert/CertificateException;
    :cond_8c
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " signature did not verify"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    .end local v10    # "sigVerified":Z
    :catch_a5
    move-exception v8

    .line 211
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to verify "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " signature"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 184
    .end local v0    # "signatureAlgorithmId":I
    .end local v1    # "signatureBytes":[B
    .end local v2    # "publicKeyBytes":[B
    .end local v3    # "encodedCert":[B
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    .end local v5    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v6    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v7    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :cond_c5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
