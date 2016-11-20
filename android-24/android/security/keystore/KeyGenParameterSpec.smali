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
.field private final mAttestationChallenge:[B

.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUid:I

.field private final mUniqueIdIncluded:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 237
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@2
    const-string/jumbo v1, "CN=fake"

    #@5
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    #@a
    .line 238
    new-instance v0, Ljava/math/BigInteger;

    #@c
    const-string/jumbo v1, "1"

    #@f
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    #@14
    .line 239
    new-instance v0, Ljava/util/Date;

    #@16
    const-wide/16 v2, 0x0

    #@18
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1b
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    #@1d
    .line 240
    new-instance v0, Ljava/util/Date;

    #@1f
    const-wide v2, 0x23d19d43c00L

    #@24
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@27
    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    #@29
    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI[BZZZ)V
    .locals 3
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keySize"    # I
    .param p4, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "certificateSerialNumber"    # Ljava/math/BigInteger;
    .param p7, "certificateNotBefore"    # Ljava/util/Date;
    .param p8, "certificateNotAfter"    # Ljava/util/Date;
    .param p9, "keyValidityStart"    # Ljava/util/Date;
    .param p10, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p11, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p12, "purposes"    # I
    .param p13, "digests"    # [Ljava/lang/String;
    .param p14, "encryptionPaddings"    # [Ljava/lang/String;
    .param p15, "signaturePaddings"    # [Ljava/lang/String;
    .param p16, "blockModes"    # [Ljava/lang/String;
    .param p17, "randomizedEncryptionRequired"    # Z
    .param p18, "userAuthenticationRequired"    # Z
    .param p19, "userAuthenticationValidityDurationSeconds"    # I
    .param p20, "attestationChallenge"    # [B
    .param p21, "uniqueIdIncluded"    # Z
    .param p22, "userAuthenticationValidWhileOnBody"    # Z
    .param p23, "invalidatedByBiometricEnrollment"    # Z

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "keyStoreAlias must not be empty"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 297
    :cond_0
    if-nez p5, :cond_1

    #@14
    .line 298
    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    #@16
    .line 300
    :cond_1
    if-nez p7, :cond_2

    #@18
    .line 301
    sget-object p7, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    #@1a
    .line 303
    :cond_2
    if-nez p8, :cond_3

    #@1c
    .line 304
    sget-object p8, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    #@1e
    .line 306
    :cond_3
    if-nez p6, :cond_4

    #@20
    .line 307
    sget-object p6, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    #@22
    .line 310
    :cond_4
    invoke-virtual {p8, p7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_5

    #@28
    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v2, "certificateNotAfter < certificateNotBefore"

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 314
    :cond_5
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    #@33
    .line 315
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    #@35
    .line 316
    iput p3, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    #@37
    .line 317
    iput-object p4, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@39
    .line 318
    iput-object p5, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@3b
    .line 319
    iput-object p6, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@3d
    .line 320
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@40
    move-result-object v1

    #@41
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    #@43
    .line 321
    invoke-static {p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@46
    move-result-object v1

    #@47
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    #@49
    .line 322
    invoke-static {p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@4c
    move-result-object v1

    #@4d
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    #@4f
    .line 323
    invoke-static {p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@55
    .line 324
    invoke-static {p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@5b
    .line 325
    iput p12, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    #@5d
    .line 326
    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@63
    .line 328
    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 327
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    #@6d
    .line 329
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    #@77
    .line 330
    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    #@81
    .line 331
    move/from16 v0, p17

    #@83
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    #@85
    .line 332
    move/from16 v0, p18

    #@87
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    #@89
    .line 333
    move/from16 v0, p19

    #@8b
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    #@8d
    .line 334
    invoke-static/range {p20 .. p20}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    #@90
    move-result-object v1

    #@91
    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    #@93
    .line 335
    move/from16 v0, p21

    #@95
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    #@97
    .line 336
    move/from16 v0, p22

    #@99
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    #@9b
    .line 337
    move/from16 v0, p23

    #@9d
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    #@9f
    .line 292
    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getAttestationChallenge()[B
    .locals 1

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 513
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
    .line 410
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
    .line 401
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
    .line 392
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Digests not specified"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 465
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
    .line 489
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
    .line 365
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    #@2
    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 428
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
    .line 437
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
    .line 419
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
    .line 346
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    #@2
    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 356
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    #@2
    return v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    #@0
    .prologue
    .line 558
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    #@2
    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 476
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

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    #@0
    .prologue
    .line 624
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    #@2
    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    #@0
    .prologue
    .line 526
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    #@2
    return v0
.end method

.method public isUniqueIdIncluded()Z
    .locals 1

    #@0
    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    #@0
    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    #@0
    .prologue
    .line 611
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    #@2
    return v0
.end method
