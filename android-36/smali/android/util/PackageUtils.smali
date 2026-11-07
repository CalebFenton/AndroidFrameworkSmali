.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final blacklist HIGH_RAM_BUFFER_SIZE_BYTES:I = 0xf4240

.field private static final blacklist LOW_RAM_BUFFER_SIZE_BYTES:I = 0x3e8


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static greylist-max-o computeSha256Digest([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 156
    .local v0, "sha256DigestBytes":[B
    if-nez v0, :cond_8

    .line 157
    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_10

    .line 161
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :cond_10
    array-length v2, v0

    .line 165
    .local v2, "length":I
    new-array v3, v2, [Ljava/lang/String;

    .line 166
    .local v3, "pieces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_14
    if-ge v4, v2, :cond_21

    .line 167
    aget-byte v5, v0, v4

    invoke-static {v5, v1}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 170
    .end local v4    # "index":I
    :cond_21
    invoke-static {p1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSha256DigestBytes([B)[B
    .registers 3
    .param p0, "data"    # [B

    .line 130
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_f

    .line 134
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 136
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_f
    move-exception v0

    .line 133
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileBuffer"    # [B

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileBuffer"    # [B
    .param p2, "separator"    # Ljava/lang/String;

    .line 237
    invoke-static {p0, p1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 238
    .local v0, "resultBytes":[B
    if-nez p2, :cond_c

    .line 239
    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 242
    :cond_c
    array-length v1, v0

    .line 243
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    .line 244
    .local v2, "pieces":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_10
    if-ge v3, v1, :cond_1e

    .line 245
    aget-byte v4, v0, v3

    const/4 v5, 0x1

    invoke-static {v4, v5}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 247
    .end local v3    # "index":I
    :cond_1e
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileBuffer"    # [B

    .line 198
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 199
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_3a

    .line 203
    nop

    .line 205
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "f":Ljava/io/File;
    :try_start_10
    new-instance v3, Ljava/security/DigestInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_35

    .line 208
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    :goto_1a
    :try_start_1a
    invoke-virtual {v3, p1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2b

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    goto :goto_1a

    .line 209
    :cond_22
    :try_start_22
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_35

    .line 212
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    nop

    .line 214
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 206
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v5

    :try_start_31
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "f":Ljava/io/File;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "fileBuffer":[B
    :goto_34
    throw v4
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35

    .line 209
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v2    # "f":Ljava/io/File;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "fileBuffer":[B
    :catch_35
    move-exception v3

    .line 210
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    return-object v0

    .line 200
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v1

    .line 202
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .line 85
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 86
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_11
    invoke-static {p0, v2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sha256Digests":[Ljava/lang/String;
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "sha256Digests"    # [Ljava/lang/String;

    .line 104
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 105
    aget-object v0, p0, v2

    return-object v0

    .line 109
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    array-length v1, p0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 114
    .local v3, "sha256Digest":Ljava/lang/String;
    :try_start_15
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 117
    goto :goto_1e

    .line 115
    :catch_1d
    move-exception v4

    .line 112
    .end local v3    # "sha256Digest":Ljava/lang/String;
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 119
    :cond_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 2
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .param p1, "separator"    # Ljava/lang/String;

    .line 67
    array-length v0, p0

    .line 68
    .local v0, "signatureCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 69
    .local v1, "digests":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_15

    .line 70
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 72
    .end local v2    # "i":I
    :cond_15
    return-object v1
.end method

.method public static blacklist createLargeFileBuffer()[B
    .registers 2

    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    const/16 v0, 0x3e8

    goto :goto_c

    :cond_9
    const v0, 0xf4240

    .line 183
    .local v0, "bufferSize":I
    :goto_c
    new-array v1, v0, [B

    return-object v1
.end method
