.class public abstract Lcom/android/internal/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# static fields
.field private static final blacklist HASH_SIZE_BYTES:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist enableFsverityForFdNative(I)I
.end method

.method private static native blacklist enableFsverityNative(Ljava/lang/String;)I
.end method

.method public static blacklist generateFsVerityDigest(JLandroid/os/incremental/V4Signature$HashingInfo;)[B
    .registers 6
    .param p0, "fileSize"    # J
    .param p2, "hashingInfo"    # Landroid/os/incremental/V4Signature$HashingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 202
    iget-object v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    if-eqz v0, :cond_61

    iget-object v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_61

    .line 205
    iget-byte v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_46

    .line 210
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    iget-byte v1, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 218
    iget-object v1, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1

    .line 206
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported log2BlockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expect a 32-byte rootHash for SHA256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFsverityDigest(Ljava/lang/String;)[B
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 185
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 186
    .local v0, "result":[B
    invoke-static {p0, v0}, Lcom/android/internal/security/VerityUtils;->measureFsverityNative(Ljava/lang/String;[B)I

    move-result v1

    .line 187
    .local v1, "retval":I
    if-gez v1, :cond_34

    .line 188
    sget v2, Landroid/system/OsConstants;->ENODATA:I

    neg-int v2, v2

    if-eq v1, v2, :cond_32

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to measure fs-verity, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VerityUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_32
    const/4 v2, 0x0

    return-object v2

    .line 193
    :cond_34
    return-object v0
.end method

.method public static blacklist hasFsverity(Ljava/lang/String;)Z
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 82
    invoke-static {p0}, Lcom/android/internal/security/VerityUtils;->statxForFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "retval":I
    const/4 v1, 0x0

    if-gez v0, :cond_2b

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check whether fs-verity is enabled, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VerityUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1

    .line 88
    :cond_2b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    move v1, v2

    :cond_2f
    return v1
.end method

.method public static blacklist isFsVeritySupported()Z
    .registers 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static native blacklist measureFsverityNative(Ljava/lang/String;[B)I
.end method

.method public static blacklist setUpFsverity(I)V
    .registers 5
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/android/internal/security/VerityUtils;->enableFsverityForFdNative(I)I

    move-result v0

    .line 74
    .local v0, "errno":I
    if-nez v0, :cond_7

    .line 78
    return-void

    .line 75
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enable fs-verity on FD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-static {v0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setUpFsverity(Ljava/lang/String;)V
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/android/internal/security/VerityUtils;->enableFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "errno":I
    if-nez v0, :cond_7

    .line 69
    return-void

    .line 66
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enable fs-verity on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-static {v0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist statxForFsverityNative(Ljava/lang/String;)I
.end method

.method public static blacklist toFormattedDigest([B)[B
    .registers 4
    .param p0, "digest"    # [B

    .line 228
    array-length v0, p0

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    const-string v1, "FSVerity"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 232
    array-length v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist verifyPkcs7DetachedSignature([B[BLjava/io/InputStream;)Z
    .registers 12
    .param p0, "signatureBlock"    # [B
    .param p1, "digest"    # [B
    .param p2, "derCertInputStream"    # Ljava/io/InputStream;

    .line 115
    array-length v0, p1

    const/16 v1, 0x20

    const-string v2, "VerityUtils"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    .line 116
    const-string v0, "Only sha256 is currently supported"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v3

    .line 121
    :cond_e
    :try_start_e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    .line 122
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->toFormattedDigest([B)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 125
    .local v0, "signedData":Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->isDetachedSignature()Z

    move-result v1

    if-nez v1, :cond_28

    .line 126
    const-string v1, "Expect only detached siganture"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v3

    .line 129
    :cond_28
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 130
    const-string v1, "Expect no certificate in signature"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v3

    .line 133
    :cond_3d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 134
    const-string v1, "Expect no CRL in signature"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v3

    .line 138
    :cond_51
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 140
    .local v1, "trustedCert":Ljava/security/cert/X509Certificate;
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;-><init>()V

    .line 141
    invoke-virtual {v4, v1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v4

    .line 144
    .local v4, "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 147
    .local v6, "si":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v7

    if-eqz v7, :cond_94

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->size()I

    move-result v7

    if-lez v7, :cond_94

    .line 148
    const-string v5, "Unexpected signed attributes"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v3

    .line 151
    :cond_94
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v7

    if-eqz v7, :cond_aa

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->size()I

    move-result v7

    if-lez v7, :cond_aa

    .line 152
    const-string v5, "Unexpected unsigned attributes"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v3

    .line 155
    :cond_aa
    sget-object v7, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgOID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d5

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported digest algorithm OID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgOID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v3

    .line 159
    :cond_d5
    sget-object v7, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_100

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported encryption algorithm OID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 161
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v3

    .line 165
    :cond_100
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v7
    :try_end_104
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_104} :catch_10b
    .catch Lcom/android/internal/org/bouncycastle/cms/CMSException; {:try_start_e .. :try_end_104} :catch_10b
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_e .. :try_end_104} :catch_10b

    if-eqz v7, :cond_108

    .line 166
    const/4 v2, 0x1

    return v2

    .line 168
    .end local v6    # "si":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    :cond_108
    goto/16 :goto_72

    .line 169
    :cond_10a
    return v3

    .line 170
    .end local v0    # "signedData":Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .end local v1    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    :catch_10b
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error occurred during the PKCS#7 signature verification"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method
