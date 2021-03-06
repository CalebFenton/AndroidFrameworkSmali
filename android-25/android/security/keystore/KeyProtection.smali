.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZ)V
    .locals 1
    .param p1, "keyValidityStart"    # Ljava/util/Date;
    .param p2, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p3, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p4, "purposes"    # I
    .param p5, "encryptionPaddings"    # [Ljava/lang/String;
    .param p6, "signaturePaddings"    # [Ljava/lang/String;
    .param p7, "digests"    # [Ljava/lang/String;
    .param p8, "blockModes"    # [Ljava/lang/String;
    .param p9, "randomizedEncryptionRequired"    # Z
    .param p10, "userAuthenticationRequired"    # Z
    .param p11, "userAuthenticationValidityDurationSeconds"    # I
    .param p12, "userAuthenticationValidWhileOnBody"    # Z
    .param p13, "invalidatedByBiometricEnrollment"    # Z

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 243
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    #@9
    .line 244
    invoke-static {p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@f
    .line 245
    invoke-static {p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@15
    .line 246
    iput p4, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    #@17
    .line 248
    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 247
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    #@21
    .line 250
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 249
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    #@2b
    .line 251
    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    #@31
    .line 252
    invoke-static {p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    #@3b
    .line 253
    iput-boolean p9, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    #@3d
    .line 254
    iput-boolean p10, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    #@3f
    .line 255
    iput p11, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    #@41
    .line 256
    iput-boolean p12, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    #@43
    .line 257
    iput-boolean p13, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    #@45
    .line 242
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZLandroid/security/keystore/KeyProtection;)V
    .locals 0
    .param p1, "keyValidityStart"    # Ljava/util/Date;
    .param p2, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p3, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p4, "purposes"    # I
    .param p5, "encryptionPaddings"    # [Ljava/lang/String;
    .param p6, "signaturePaddings"    # [Ljava/lang/String;
    .param p7, "digests"    # [Ljava/lang/String;
    .param p8, "blockModes"    # [Ljava/lang/String;
    .param p9, "randomizedEncryptionRequired"    # Z
    .param p10, "userAuthenticationRequired"    # Z
    .param p11, "userAuthenticationValidityDurationSeconds"    # I
    .param p12, "userAuthenticationValidWhileOnBody"    # Z
    .param p13, "invalidatedByBiometricEnrollment"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p13}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZ)V

    #@3
    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Digests not specified"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 339
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

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
    .line 309
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

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
    .line 287
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

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
    .line 267
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    #@2
    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

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
    .line 406
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    #@2
    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

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
    .line 435
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    #@2
    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    #@0
    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    #@0
    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    #@2
    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    #@0
    .prologue
    .line 422
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    #@2
    return v0
.end method
