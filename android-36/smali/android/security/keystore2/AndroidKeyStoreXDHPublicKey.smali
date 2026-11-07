.class public Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreXDHPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPublicKey;


# static fields
.field private static final blacklist X25519_KEY_SIZE_BYTES:I = 0x20

.field private static final blacklist X509_PREAMBLE:[B

.field private static final blacklist X509_PREAMBLE_WITH_NULL:[B


# instance fields
.field private final blacklist mEncodedKey:[B

.field private final blacklist mPreambleLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    .line 46
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x30t
        0x2ct
        0x30t
        0x7t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x5t
        0x0t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "iSecurityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p5, "encodedKey"    # [B

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v3, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local p3    # "algorithm":Ljava/lang/String;
    .end local p4    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    .end local p5    # "encodedKey":[B
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v3, "encodedKey":[B
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 62
    iput-object v3, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    .line 63
    iget-object p1, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    if-eqz p1, :cond_2f

    .line 67
    sget-object p1, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    iget-object p2, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-static {p1, p2}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result p1

    sget-object p2, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    iget-object p3, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-static {p2, p3}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result p2

    or-int/2addr p1, p2

    iput p1, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    .line 69
    iget p1, v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    if-eqz p1, :cond_27

    .line 72
    return-void

    .line 70
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key size is not correct size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty encoded key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist matchesPreamble([B[B)I
    .registers 11
    .param p0, "preamble"    # [B
    .param p1, "encoded"    # [B

    .line 75
    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 76
    return v2

    .line 79
    :cond_8
    array-length v5, p0

    const/4 v7, 0x0

    array-length v8, p0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v6, p1

    .end local p0    # "preamble":[B
    .end local p1    # "encoded":[B
    .local v3, "preamble":[B
    .local v6, "encoded":[B
    invoke-static/range {v3 .. v8}, Ljava/util/Arrays;->compare([BII[BII)I

    move-result p0

    if-eqz p0, :cond_15

    .line 80
    return v2

    .line 82
    :cond_15
    array-length p0, v3

    return p0
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "XDH"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 112
    const-string/jumbo v0, "x.509"

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 117
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .registers 8

    .line 87
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;

    .line 88
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-wide v2, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 90
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    const-string v5, "XDH"

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 87
    return-object v0
.end method

.method public whitelist test-api getU()Ljava/math/BigInteger;
    .registers 5

    .line 97
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
