.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInsideSecureHardware:Z

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mOrigin:I

.field private final greylist-max-o mPurposes:I

.field private final blacklist mRemainingUsageCount:I

.field private final blacklist mSecurityLevel:I

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mTrustedUserPresenceRequired:Z

.field private final blacklist mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final greylist-max-o mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V
    .registers 40
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "insideSecureHardware"    # Z
    .param p3, "origin"    # I
    .param p4, "keySize"    # I
    .param p5, "keyValidityStart"    # Ljava/util/Date;
    .param p6, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p7, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p8, "purposes"    # I
    .param p9, "encryptionPaddings"    # [Ljava/lang/String;
    .param p10, "signaturePaddings"    # [Ljava/lang/String;
    .param p11, "digests"    # [Ljava/lang/String;
    .param p12, "blockModes"    # [Ljava/lang/String;
    .param p13, "userAuthenticationRequired"    # Z
    .param p14, "userAuthenticationValidityDurationSeconds"    # I
    .param p15, "userAuthenticationType"    # I
    .param p16, "userAuthenticationRequirementEnforcedBySecureHardware"    # Z
    .param p17, "userAuthenticationValidWhileOnBody"    # Z
    .param p18, "unlockedDeviceRequired"    # Z
    .param p19, "trustedUserPresenceRequired"    # Z
    .param p20, "invalidatedByBiometricEnrollment"    # Z
    .param p21, "userConfirmationRequired"    # Z
    .param p22, "securityLevel"    # I
    .param p23, "remainingUsageCount"    # I

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    .line 119
    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    .line 120
    move/from16 v3, p3

    iput v3, v0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    .line 121
    move/from16 v4, p4

    iput v4, v0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    .line 122
    invoke-static/range {p5 .. p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    .line 123
    invoke-static/range {p6 .. p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 124
    invoke-static/range {p7 .. p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 125
    move/from16 v5, p8

    iput v5, v0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    .line 126
    nop

    .line 127
    invoke-static/range {p9 .. p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    .line 128
    nop

    .line 129
    invoke-static/range {p10 .. p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    .line 130
    invoke-static/range {p11 .. p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    .line 131
    invoke-static/range {p12 .. p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    .line 132
    move/from16 v6, p13

    iput-boolean v6, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    .line 133
    move/from16 v7, p14

    iput v7, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    .line 134
    move/from16 v8, p15

    iput v8, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    .line 135
    move/from16 v9, p16

    iput-boolean v9, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    .line 137
    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    .line 138
    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    .line 139
    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    .line 140
    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    .line 141
    move/from16 v14, p21

    iput-boolean v14, v0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    .line 142
    move/from16 v15, p22

    iput v15, v0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    .line 143
    move/from16 v1, p23

    iput v1, v0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    .line 144
    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOrigin()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return v0
.end method

.method public whitelist getPurposes()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return v0
.end method

.method public whitelist getRemainingUsageCount()I
    .registers 2

    .line 407
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return v0
.end method

.method public whitelist getSecurityLevel()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .registers 2

    .line 346
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .line 330
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public whitelist isInsideSecureHardware()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isTrustedUserPresenceRequired()Z
    .registers 2

    .line 383
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    return v0
.end method

.method public blacklist isUnlockedDeviceRequired()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return v0
.end method
