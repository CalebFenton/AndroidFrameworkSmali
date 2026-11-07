.class public final Landroid/security/KeyPairGeneratorSpec$Builder;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyPairGeneratorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mEndDate:Ljava/util/Date;

.field private greylist-max-o mKeySize:I

.field private greylist-max-o mKeyType:Ljava/lang/String;

.field private greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private greylist-max-o mSerialNumber:Ljava/math/BigInteger;

.field private greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o mStartDate:Ljava/util/Date;

.field private greylist-max-o mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    .line 305
    if-eqz p1, :cond_b

    .line 308
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    .line 309
    return-void

    .line 306
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/security/KeyPairGeneratorSpec;
    .registers 12

    .line 455
    new-instance v0, Landroid/security/KeyPairGeneratorSpec;

    iget-object v1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget-object v3, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    iget v4, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    iget-object v5, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    iget-object v9, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    return-object v0
.end method

.method public whitelist setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 365
    if-eqz p1, :cond_5

    .line 368
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 369
    return-object p0

    .line 366
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 318
    if-eqz p1, :cond_5

    .line 321
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 322
    return-object p0

    .line 319
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    return-object p0
.end method

.method public whitelist setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "endDate"    # Ljava/util/Date;

    .line 417
    if-eqz p1, :cond_5

    .line 420
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    .line 421
    return-object p0

    .line 418
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "keySize"    # I

    .line 353
    if-ltz p1, :cond_5

    .line 356
    iput p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    .line 357
    return-object p0

    .line 354
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 6
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 333
    if-eqz p1, :cond_23

    .line 337
    :try_start_2
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_9

    .line 340
    nop

    .line 342
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    .line 343
    return-object p0

    .line 338
    :catch_9
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "keyType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 391
    if-eqz p1, :cond_5

    .line 394
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    .line 395
    return-object p0

    .line 392
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .line 404
    if-eqz p1, :cond_5

    .line 407
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    .line 408
    return-object p0

    .line 405
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 378
    if-eqz p1, :cond_5

    .line 381
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 382
    return-object p0

    .line 379
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
