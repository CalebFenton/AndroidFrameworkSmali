.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 228
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@2
    const-string/jumbo v1, "CN=fake"

    #@5
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    #@a
    .line 229
    new-instance v0, Ljava/math/BigInteger;

    #@c
    const-string/jumbo v1, "1"

    #@f
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    #@14
    .line 230
    new-instance v0, Ljava/util/Date;

    #@16
    const-wide/16 v2, 0x0

    #@18
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1b
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    #@1d
    .line 231
    new-instance v0, Ljava/util/Date;

    #@1f
    const-wide v2, 0x23d19d43c00L

    #@24
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@27
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    #@29
    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI)V
    .locals 3
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .param p5, "certificateSerialNumber"    # Ljava/math/BigInteger;
    .param p6, "certificateNotBefore"    # Ljava/util/Date;
    .param p7, "certificateNotAfter"    # Ljava/util/Date;
    .param p8, "keyValidityStart"    # Ljava/util/Date;
    .param p9, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p10, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p11, "purposes"    # I
    .param p12, "digests"    # [Ljava/lang/String;
    .param p13, "encryptionPaddings"    # [Ljava/lang/String;
    .param p14, "signaturePaddings"    # [Ljava/lang/String;
    .param p15, "blockModes"    # [Ljava/lang/String;
    .param p16, "randomizedEncryptionRequired"    # Z
    .param p17, "userAuthenticationRequired"    # Z
    .param p18, "userAuthenticationValidityDurationSeconds"    # I

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "keyStoreAlias must not be empty"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 278
    :cond_0
    if-nez p4, :cond_1

    #@14
    .line 279
    sget-object p4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    #@16
    .line 281
    :cond_1
    if-nez p6, :cond_2

    #@18
    .line 282
    sget-object p6, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    #@1a
    .line 284
    :cond_2
    if-nez p7, :cond_3

    #@1c
    .line 285
    sget-object p7, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    #@1e
    .line 287
    :cond_3
    if-nez p5, :cond_4

    #@20
    .line 288
    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    #@22
    .line 291
    :cond_4
    invoke-virtual {p7, p6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_5

    #@28
    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v2, "certificateNotAfter < certificateNotBefore"

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 295
    :cond_5
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    #@33
    .line 296
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    #@35
    .line 297
    iput-object p3, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@37
    .line 298
    iput-object p4, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@39
    .line 299
    iput-object p5, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@3b
    .line 300
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    #@41
    .line 301
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    #@47
    .line 302
    invoke-static {p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    #@4d
    .line 303
    invoke-static {p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@50
    move-result-object v1

    #@51
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@53
    .line 304
    invoke-static {p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@56
    move-result-object v1

    #@57
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@59
    .line 305
    iput p11, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    #@5b
    .line 306
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@61
    .line 308
    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 307
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    #@6b
    .line 309
    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    #@75
    .line 310
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    #@7f
    .line 311
    move/from16 v0, p16

    #@81
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    #@83
    .line 312
    move/from16 v0, p17

    #@85
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    #@87
    .line 313
    move/from16 v0, p18

    #@89
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    #@8b
    .line 273
    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Digests not specified"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 431
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@f
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    #@0
    .prologue
    .line 331
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    #@2
    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    #@0
    .prologue
    .line 413
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    #@2
    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    #@0
    .prologue
    .line 524
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    #@2
    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    #@0
    .prologue
    .line 492
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    #@2
    return v0
.end method
