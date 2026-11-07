.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final greylist-max-o DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final blacklist DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final blacklist mAttestKeyAlias:Ljava/lang/String;

.field private final greylist-max-o mAttestationChallenge:[B

.field private final blacklist mAttestationIds:[I

.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final blacklist mBoundToSecureUserId:J

.field private final greylist-max-o mCertificateNotAfter:Ljava/util/Date;

.field private final greylist-max-o mCertificateNotBefore:Ljava/util/Date;

.field private final greylist-max-o mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final greylist-max-o mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist mCriticalToDeviceEncryption:Z

.field private final blacklist mDevicePropertiesAttestationIncluded:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final blacklist mMaxUsageCount:I

.field private final blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespace:I

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mUniqueIdIncluded:Z

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 288
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 290
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 292
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 293
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 294
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V
    .registers 53
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
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
    .param p15, "encryptionPaddings"    # [Ljava/lang/String;
    .param p16, "signaturePaddings"    # [Ljava/lang/String;
    .param p17, "blockModes"    # [Ljava/lang/String;
    .param p18, "randomizedEncryptionRequired"    # Z
    .param p19, "userAuthenticationRequired"    # Z
    .param p20, "userAuthenticationValidityDurationSeconds"    # I
    .param p21, "userAuthenticationType"    # I
    .param p22, "userPresenceRequired"    # Z
    .param p23, "attestationChallenge"    # [B
    .param p24, "devicePropertiesAttestationIncluded"    # Z
    .param p25, "attestationIds"    # [I
    .param p26, "uniqueIdIncluded"    # Z
    .param p27, "userAuthenticationValidWhileOnBody"    # Z
    .param p28, "invalidatedByBiometricEnrollment"    # Z
    .param p29, "isStrongBoxBacked"    # Z
    .param p30, "userConfirmationRequired"    # Z
    .param p31, "unlockedDeviceRequired"    # Z
    .param p32, "criticalToDeviceEncryption"    # Z
    .param p33, "maxUsageCount"    # I
    .param p34, "attestKeyAlias"    # Ljava/lang/String;
    .param p35, "boundToSecureUserId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/math/BigInteger;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZIIZ[BZ[IZZZZZZZI",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 376
    .local p14, "mgf1Digests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f1

    .line 381
    if-nez p5, :cond_15

    .line 382
    if-nez p23, :cond_12

    .line 383
    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .local v1, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_17

    .line 385
    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_12
    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_17

    .line 381
    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_15
    move-object/from16 v1, p5

    .line 388
    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :goto_17
    if-nez p7, :cond_1c

    .line 389
    sget-object v2, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .end local p7    # "certificateNotBefore":Ljava/util/Date;
    .local v2, "certificateNotBefore":Ljava/util/Date;
    goto :goto_1e

    .line 388
    .end local v2    # "certificateNotBefore":Ljava/util/Date;
    .restart local p7    # "certificateNotBefore":Ljava/util/Date;
    :cond_1c
    move-object/from16 v2, p7

    .line 391
    .end local p7    # "certificateNotBefore":Ljava/util/Date;
    .restart local v2    # "certificateNotBefore":Ljava/util/Date;
    :goto_1e
    if-nez p8, :cond_23

    .line 392
    sget-object v3, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    .end local p8    # "certificateNotAfter":Ljava/util/Date;
    .local v3, "certificateNotAfter":Ljava/util/Date;
    goto :goto_25

    .line 391
    .end local v3    # "certificateNotAfter":Ljava/util/Date;
    .restart local p8    # "certificateNotAfter":Ljava/util/Date;
    :cond_23
    move-object/from16 v3, p8

    .line 394
    .end local p8    # "certificateNotAfter":Ljava/util/Date;
    .restart local v3    # "certificateNotAfter":Ljava/util/Date;
    :goto_25
    if-nez p6, :cond_2a

    .line 395
    sget-object v4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .end local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .local v4, "certificateSerialNumber":Ljava/math/BigInteger;
    goto :goto_2c

    .line 394
    .end local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    :cond_2a
    move-object/from16 v4, p6

    .line 398
    .end local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    :goto_2c
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 402
    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 403
    move/from16 v6, p2

    iput v6, v0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    .line 404
    move/from16 v7, p3

    iput v7, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 405
    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 406
    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 407
    iput-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 408
    invoke-static {v2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    .line 409
    invoke-static {v3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    .line 410
    invoke-static/range {p9 .. p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    .line 411
    invoke-static/range {p10 .. p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 412
    invoke-static/range {p11 .. p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 413
    move/from16 v9, p12

    iput v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    .line 414
    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 417
    if-eqz p14, :cond_73

    move-object/from16 v10, p14

    goto :goto_77

    :cond_73
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    :goto_77
    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 418
    nop

    .line 419
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 420
    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 421
    invoke-static/range {p17 .. p17}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 422
    move/from16 v10, p18

    iput-boolean v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    .line 423
    move/from16 v11, p19

    iput-boolean v11, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    .line 424
    move/from16 v12, p22

    iput-boolean v12, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    .line 425
    move/from16 v13, p20

    iput v13, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    .line 426
    move/from16 v14, p21

    iput v14, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    .line 427
    invoke-static/range {p23 .. p23}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v15

    iput-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    .line 428
    move/from16 v15, p24

    iput-boolean v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    .line 429
    move-object/from16 p5, v1

    move-object/from16 v1, p25

    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    .line 430
    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    .line 431
    move/from16 v1, p27

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    .line 432
    move/from16 v1, p28

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    .line 433
    move/from16 v1, p29

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    .line 434
    move/from16 v1, p30

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    .line 435
    move/from16 v1, p31

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    .line 436
    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    .line 437
    move/from16 v1, p33

    iput v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    .line 438
    move-object/from16 v1, p34

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    .line 439
    move-object/from16 p7, v2

    move-wide/from16 v1, p35

    .end local v2    # "certificateNotBefore":Ljava/util/Date;
    .restart local p7    # "certificateNotBefore":Ljava/util/Date;
    iput-wide v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    .line 440
    return-void

    .line 399
    .end local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .end local p7    # "certificateNotBefore":Ljava/util/Date;
    .restart local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v2    # "certificateNotBefore":Ljava/util/Date;
    :cond_e7
    move-object/from16 p5, v1

    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local p5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    .end local v2    # "certificateNotBefore":Ljava/util/Date;
    .end local v3    # "certificateNotAfter":Ljava/util/Date;
    .end local v4    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local p6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .restart local p7    # "certificateNotBefore":Ljava/util/Date;
    .restart local p8    # "certificateNotAfter":Ljava/util/Date;
    :cond_f1
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v10, p18

    move/from16 v11, p19

    move/from16 v13, p20

    move/from16 v14, p21

    move/from16 v12, p22

    move/from16 v15, p24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getAttestKeyAlias()Ljava/lang/String;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAttestationChallenge()[B
    .registers 2

    .line 799
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttestationIds()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist getBlockModes()[Ljava/lang/String;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBoundToSpecificSecureUserId()J
    .registers 3

    .line 905
    iget-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getCertificateNotAfter()Ljava/util/Date;
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateNotBefore()Ljava/util/Date;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 520
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .registers 3

    .line 590
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 593
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .line 556
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .registers 2

    .line 926
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    return v0
.end method

.method public whitelist getMgf1Digests()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 626
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 624
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNamespace()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 484
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    return v0
.end method

.method public whitelist getPurposes()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUid()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    :try_start_0
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    invoke-static {v0}, Landroid/security/keystore/KeyProperties;->namespaceToLegacyUid(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 466
    :catch_7
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "getUid called on KeyGenParameterSpec with non legacy keystore namespace."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getUserAuthenticationType()I
    .registers 2

    .line 757
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .line 740
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public blacklist isCriticalToDeviceEncryption()Z
    .registers 2

    .line 915
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDevicePropertiesAttestationIncluded()Z
    .registers 2

    .line 814
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .registers 2

    .line 872
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .registers 2

    .line 638
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .registers 2

    .line 688
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public whitelist isStrongBoxBacked()Z
    .registers 2

    .line 879
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public greylist isUniqueIdIncluded()Z
    .registers 2

    .line 842
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .registers 2

    .line 888
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .registers 2

    .line 859
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .registers 2

    .line 772
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    return v0
.end method
