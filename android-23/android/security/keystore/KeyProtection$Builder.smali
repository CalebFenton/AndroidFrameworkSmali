.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "purposes"    # I

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 407
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    #@6
    .line 409
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@9
    .line 420
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    #@b
    .line 419
    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyProtection;
    .locals 13

    #@0
    .prologue
    .line 689
    new-instance v0, Landroid/security/keystore/KeyProtection;

    #@2
    .line 690
    iget-object v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    #@4
    .line 691
    iget-object v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@6
    .line 692
    iget-object v3, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@8
    .line 693
    iget v4, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    #@a
    .line 694
    iget-object v5, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    #@c
    .line 695
    iget-object v6, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    #@e
    .line 696
    iget-object v7, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    #@10
    .line 697
    iget-object v8, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    #@12
    .line 698
    iget-boolean v9, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    #@14
    .line 699
    iget-boolean v10, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    #@16
    .line 700
    iget v11, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@18
    .line 689
    const/4 v12, 0x0

    #@19
    invoke-direct/range {v0 .. v12}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZILandroid/security/keystore/KeyProtection;)V

    #@1c
    return-object v0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 553
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    #@6
    .line 554
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 538
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    #@6
    .line 539
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 498
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    #@6
    .line 499
    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 447
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    #@3
    .line 448
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    #@6
    .line 449
    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 475
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@6
    .line 476
    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 461
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@6
    .line 462
    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 432
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    #@6
    .line 433
    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    #@0
    .prologue
    .line 593
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    #@2
    .line 594
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 514
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    #@6
    .line 515
    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    #@0
    .prologue
    .line 633
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    #@2
    .line 634
    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .param p1, "seconds"    # I

    #@0
    .prologue
    .line 675
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "seconds must be -1 or larger"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 678
    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@e
    .line 679
    return-object p0
.end method
