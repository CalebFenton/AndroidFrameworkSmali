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
.field private final mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Date;

.field private mFlags:I

.field private mKeySize:I

.field private mKeyType:Ljava/lang/String;

.field private mKeystoreAlias:Ljava/lang/String;

.field private mSerialNumber:Ljava/math/BigInteger;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mStartDate:Ljava/util/Date;

.field private mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 283
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    #@6
    .line 304
    if-nez p1, :cond_0

    #@8
    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "context == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 307
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    #@13
    .line 303
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyPairGeneratorSpec;
    .locals 11

    #@0
    .prologue
    .line 449
    new-instance v0, Landroid/security/KeyPairGeneratorSpec;

    #@2
    iget-object v1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    #@4
    .line 450
    iget-object v2, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    #@6
    .line 451
    iget-object v3, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    #@8
    .line 452
    iget v4, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    #@a
    .line 453
    iget-object v5, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@c
    .line 454
    iget-object v6, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    #@e
    .line 455
    iget-object v7, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    #@10
    .line 456
    iget-object v8, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    #@12
    .line 457
    iget-object v9, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    #@14
    .line 458
    iget v10, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    #@16
    .line 449
    invoke-direct/range {v0 .. v10}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    #@19
    return-object v0
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 364
    if-nez p1, :cond_0

    #@2
    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "spec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 367
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@d
    .line 368
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    if-nez p1, :cond_0

    #@2
    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 320
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    #@d
    .line 321
    return-object p0
.end method

.method public setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    #@0
    .prologue
    .line 437
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    #@6
    .line 438
    return-object p0
.end method

.method public setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 416
    if-nez p1, :cond_0

    #@2
    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "endDate == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 419
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    #@d
    .line 420
    return-object p0
.end method

.method public setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 352
    if-gez p1, :cond_0

    #@2
    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "keySize < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 355
    :cond_0
    iput p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    #@d
    .line 356
    return-object p0
.end method

.method public setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    if-nez p1, :cond_0

    #@2
    .line 333
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "keyType == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 336
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 341
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    #@10
    .line 342
    return-object p0

    #@11
    .line 337
    :catch_0
    move-exception v0

    #@12
    .line 338
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Unsupported key type: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 390
    if-nez p1, :cond_0

    #@2
    .line 391
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "serialNumber == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 393
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    #@d
    .line 394
    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 403
    if-nez p1, :cond_0

    #@2
    .line 404
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "startDate == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 406
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    #@d
    .line 407
    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 377
    if-nez p1, :cond_0

    #@2
    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "subject == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 380
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    #@d
    .line 381
    return-object p0
.end method
