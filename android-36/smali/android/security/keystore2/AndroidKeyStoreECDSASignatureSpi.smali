.class abstract Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.super Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA512;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA384;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA256;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA224;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA1;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$Ed25519;,
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE;
    }
.end annotation


# static fields
.field private static final blacklist ACCEPTED_SIGNING_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mGroupSizeBits:I

.field private final blacklist mKeymasterDigest:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    nop

    .line 44
    const-string v0, "EC"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    .line 45
    invoke-virtual {v1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "eddsa"

    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->ACCEPTED_SIGNING_SCHEMES:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "keymasterDigest"    # I

    .line 190
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;-><init>()V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 191
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    .line 192
    return-void
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v0, 0x10000002

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method protected final blacklist getAdditionalEntropyAmountForSign()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final blacklist getGroupSizeBits()I
    .registers 3

    .line 252
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 255
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    return v0

    .line 253
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 10
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 196
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->ACCEPTED_SIGNING_SCHEMES:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 202
    const-wide/16 v0, -0x1

    .line 203
    .local v0, "keySizeBits":J
    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    .line 204
    .local v5, "a":Landroid/system/keystore2/Authorization;
    iget-object v6, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v6, v6, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v7, 0x30000003

    if-ne v6, v7, :cond_2a

    .line 205
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v0

    .line 206
    goto :goto_44

    .line 207
    :cond_2a
    iget-object v6, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v6, v6, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v7, 0x1000000a

    if-ne v6, v7, :cond_41

    .line 208
    iget-object v2, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 209
    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v2

    .line 208
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EcCurve;->fromKeymasterCurve(I)I

    move-result v2

    int-to-long v0, v2

    .line 210
    goto :goto_44

    .line 203
    .end local v5    # "a":Landroid/system/keystore2/Authorization;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 214
    :cond_44
    :goto_44
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_77

    .line 216
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_58

    .line 219
    long-to-int v2, v0

    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 221
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 222
    return-void

    .line 217
    :cond_58
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_77
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Size of key not known"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v0    # "keySizeBits":J
    :cond_7f
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->ACCEPTED_SIGNING_SCHEMES:Ljava/util/Set;

    .line 198
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist resetAll()V
    .registers 2

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 227
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 228
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .registers 1

    .line 232
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 233
    return-void
.end method
