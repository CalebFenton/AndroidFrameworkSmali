.class public final Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mCertificateNotAfter:Ljava/util/Date;

.field private mCertificateNotBefore:Ljava/util/Date;

.field private mCertificateSerialNumber:Ljava/math/BigInteger;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeySize:I

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "purposes"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 534
    iput v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    #@6
    .line 547
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    #@9
    .line 549
    iput v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@b
    .line 568
    if-nez p1, :cond_0

    #@d
    .line 569
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "keystoreAlias == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "keystoreAlias must not be empty"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 573
    :cond_1
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    #@27
    .line 574
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    #@29
    .line 567
    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 20

    #@0
    .prologue
    .line 937
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec;

    #@2
    .line 938
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    #@6
    .line 939
    move-object/from16 v0, p0

    #@8
    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    #@a
    .line 940
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@e
    .line 941
    move-object/from16 v0, p0

    #@10
    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@12
    .line 942
    move-object/from16 v0, p0

    #@14
    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@16
    .line 943
    move-object/from16 v0, p0

    #@18
    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    #@1a
    .line 944
    move-object/from16 v0, p0

    #@1c
    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    #@1e
    .line 945
    move-object/from16 v0, p0

    #@20
    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    #@22
    .line 946
    move-object/from16 v0, p0

    #@24
    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@26
    .line 947
    move-object/from16 v0, p0

    #@28
    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@2a
    .line 948
    move-object/from16 v0, p0

    #@2c
    iget v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    #@2e
    .line 949
    move-object/from16 v0, p0

    #@30
    iget-object v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    #@32
    .line 950
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    #@36
    .line 951
    move-object/from16 v0, p0

    #@38
    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    #@3a
    .line 952
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    #@3e
    move-object/from16 v16, v0

    #@40
    .line 953
    move-object/from16 v0, p0

    #@42
    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    #@44
    move/from16 v17, v0

    #@46
    .line 954
    move-object/from16 v0, p0

    #@48
    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    #@4a
    move/from16 v18, v0

    #@4c
    .line 955
    move-object/from16 v0, p0

    #@4e
    iget v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@50
    move/from16 v19, v0

    #@52
    .line 937
    invoke-direct/range {v1 .. v19}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI)V

    #@55
    return-object v1
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 605
    if-nez p1, :cond_0

    #@2
    .line 606
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "spec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 608
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@d
    .line 609
    return-object p0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 801
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    #@6
    .line 802
    return-object p0
.end method

.method public setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 663
    if-nez p1, :cond_0

    #@2
    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "date == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 666
    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    #@11
    .line 667
    return-object p0
.end method

.method public setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 648
    if-nez p1, :cond_0

    #@2
    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "date == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 651
    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    #@11
    .line 652
    return-object p0
.end method

.method public setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 633
    if-nez p1, :cond_0

    #@2
    .line 634
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "serialNumber == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 636
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    #@d
    .line 637
    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 619
    if-nez p1, :cond_0

    #@2
    .line 620
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "subject == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 622
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    #@d
    .line 623
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 746
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    #@6
    .line 747
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 770
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    #@6
    .line 771
    return-object p0
.end method

.method public setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 589
    if-gez p1, :cond_0

    #@2
    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "keySize < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 592
    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    #@d
    .line 593
    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 694
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@3
    .line 695
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    #@6
    .line 696
    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 722
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    #@6
    .line 723
    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 708
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    #@6
    .line 709
    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 679
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    #@6
    .line 680
    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    #@0
    .prologue
    .line 843
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    #@2
    .line 844
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 786
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    #@6
    .line 787
    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    #@0
    .prologue
    .line 883
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    #@2
    .line 884
    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "seconds"    # I

    #@0
    .prologue
    .line 925
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "seconds must be -1 or larger"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 928
    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    #@e
    .line 929
    return-object p0
.end method
