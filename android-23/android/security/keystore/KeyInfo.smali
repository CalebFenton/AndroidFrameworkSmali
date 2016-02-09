.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInsideSecureHardware:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOrigin:I

.field private final mPurposes:I

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZ)V
    .locals 2
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
    .param p15, "userAuthenticationRequirementEnforcedBySecureHardware"    # Z

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    #@5
    .line 104
    iput-boolean p2, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    #@7
    .line 105
    iput p3, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    #@9
    .line 106
    iput p4, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    #@b
    .line 107
    invoke-static {p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    #@11
    .line 108
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@17
    .line 109
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@1d
    .line 110
    iput p8, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    #@1f
    .line 112
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 111
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    #@29
    .line 114
    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 113
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    #@33
    .line 115
    invoke-static {p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    #@3d
    .line 116
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    #@47
    .line 117
    iput-boolean p13, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    #@49
    .line 118
    move/from16 v0, p14

    #@4b
    iput v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    #@4d
    .line 119
    move/from16 v0, p15

    #@4f
    iput-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    #@51
    .line 102
    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

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
    .line 150
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    #@2
    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

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
    .line 180
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

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
    .line 160
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

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
    .line 127
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    #@2
    return v0
.end method

.method public getPurposes()I
    .locals 1

    #@0
    .prologue
    .line 190
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    #@2
    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

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
    .line 269
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    #@2
    return v0
.end method

.method public isInsideSecureHardware()Z
    .locals 1

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    #@0
    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 1

    #@0
    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    #@2
    return v0
.end method
