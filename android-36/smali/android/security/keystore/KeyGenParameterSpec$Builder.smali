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
.field private blacklist mAttestKeyAlias:Ljava/lang/String;

.field private greylist-max-o mAttestationChallenge:[B

.field private blacklist mAttestationIds:[I

.field private greylist-max-o mBlockModes:[Ljava/lang/String;

.field private blacklist mBoundToSecureUserId:J

.field private greylist-max-o mCertificateNotAfter:Ljava/util/Date;

.field private greylist-max-o mCertificateNotBefore:Ljava/util/Date;

.field private greylist-max-o mCertificateSerialNumber:Ljava/math/BigInteger;

.field private greylist-max-o mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private blacklist mCriticalToDeviceEncryption:Z

.field private blacklist mDevicePropertiesAttestationIncluded:Z

.field private greylist-max-o mDigests:[Ljava/lang/String;

.field private greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private greylist-max-o mIsStrongBoxBacked:Z

.field private greylist-max-o mKeySize:I

.field private greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private blacklist mMaxUsageCount:I

.field private blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNamespace:I

.field private greylist-max-o mPurposes:I

.field private greylist-max-o mRandomizedEncryptionRequired:Z

.field private greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o mUniqueIdIncluded:Z

.field private greylist-max-o mUnlockedDeviceRequired:Z

.field private greylist-max-o mUserAuthenticationRequired:Z

.field private blacklist mUserAuthenticationType:I

.field private greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private greylist-max-o mUserConfirmationRequired:Z

.field private greylist-max-o mUserPresenceRequired:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 4
    .param p1, "sourceSpec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 1010
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    .line 1012
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 1013
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 1014
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 1015
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 1016
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    .line 1017
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    .line 1018
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 1019
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 1020
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 1021
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 1022
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1023
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 1025
    :cond_59
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1026
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 1028
    :cond_65
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 1029
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 1030
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 1031
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    .line 1032
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    .line 1033
    nop

    .line 1034
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 1035
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationType()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    .line 1036
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    .line 1037
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    .line 1038
    nop

    .line 1039
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 1040
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    .line 1041
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    .line 1042
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 1043
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 1044
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    .line 1045
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserConfirmationRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    .line 1046
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUnlockedDeviceRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    .line 1047
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    .line 1048
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    .line 1049
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    .line 1050
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    .line 1051
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 8
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "purposes"    # I

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    .line 949
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 959
    nop

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 964
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    .line 966
    const/4 v2, 0x0

    iput v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 967
    const/4 v3, 0x2

    iput v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    .line 969
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    .line 970
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    .line 971
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 972
    new-array v4, v2, [I

    iput-object v4, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    .line 973
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    .line 975
    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 976
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    .line 978
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    .line 979
    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    .line 980
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    .line 981
    iput-object v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    .line 982
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    .line 995
    if-eqz p1, :cond_4b

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1000
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 1001
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 1002
    return-void

    .line 998
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keystoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_4b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/KeyGenParameterSpec;
    .registers 41

    .line 1880
    move-object/from16 v0, p0

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec;

    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    iget v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    move/from16 v21, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v22, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    move/from16 v23, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    move/from16 v24, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    move-object/from16 v25, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    move/from16 v26, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    move-object/from16 v27, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    move/from16 v31, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    move/from16 v34, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    move/from16 v35, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    move-object/from16 v37, v1

    move-object/from16 v36, v2

    iget-wide v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v38, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move-object/from16 v2, v36

    move-object/from16 v35, v37

    move-wide/from16 v36, v38

    invoke-direct/range {v1 .. v37}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 1129
    if-eqz p1, :cond_5

    .line 1132
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 1133
    return-object p0

    .line 1130
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttestKeyAlias(Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "attestKeyAlias"    # Ljava/lang/String;

    .line 1850
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    .line 1851
    return-object p0
.end method

.method public whitelist setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "attestationChallenge"    # [B

    .line 1607
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    .line 1608
    return-object p0
.end method

.method public whitelist setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "attestationIds"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1652
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    .line 1653
    return-object p0
.end method

.method public varargs whitelist setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "blockModes"    # [Ljava/lang/String;

    .line 1352
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 1353
    return-object p0
.end method

.method public blacklist setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "secureUserId"    # J

    .line 1871
    iput-wide p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    .line 1872
    return-object p0
.end method

.method public whitelist setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 1187
    if-eqz p1, :cond_9

    .line 1190
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    .line 1191
    return-object p0

    .line 1188
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 1173
    if-eqz p1, :cond_9

    .line 1176
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    .line 1177
    return-object p0

    .line 1174
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 1159
    if-eqz p1, :cond_5

    .line 1162
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 1163
    return-object p0

    .line 1160
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 1143
    if-eqz p1, :cond_5

    .line 1146
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 1147
    return-object p0

    .line 1144
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "critical"    # Z

    .line 1787
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    .line 1788
    return-object p0
.end method

.method public whitelist setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "devicePropertiesAttestationIncluded"    # Z

    .line 1632
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 1633
    return-object p0
.end method

.method public varargs whitelist setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "digests"    # [Ljava/lang/String;

    .line 1270
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 1271
    return-object p0
.end method

.method public varargs whitelist setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 1321
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 1322
    return-object p0
.end method

.method public whitelist setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "invalidateKey"    # Z

    .line 1712
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 1713
    return-object p0
.end method

.method public whitelist setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "isStrongBoxBacked"    # Z

    .line 1721
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    .line 1722
    return-object p0
.end method

.method public whitelist setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "keySize"    # I

    .line 1113
    if-ltz p1, :cond_5

    .line 1116
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 1117
    return-object p0

    .line 1114
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "endDate"    # Ljava/util/Date;

    .line 1218
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 1219
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 1220
    return-object p0
.end method

.method public whitelist setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "endDate"    # Ljava/util/Date;

    .line 1246
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 1247
    return-object p0
.end method

.method public whitelist setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "endDate"    # Ljava/util/Date;

    .line 1232
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 1233
    return-object p0
.end method

.method public whitelist setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1203
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 1204
    return-object p0
.end method

.method public whitelist setMaxUsageCount(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "maxUsageCount"    # I

    .line 1825
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    if-lez p1, :cond_6

    goto :goto_f

    .line 1829
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxUsageCount is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1826
    :cond_f
    :goto_f
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    .line 1827
    return-object p0
.end method

.method public varargs whitelist setMgf1Digests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "mgf1Digests"    # [Ljava/lang/String;

    .line 1297
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 1298
    return-object p0
.end method

.method public whitelist setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "namespace"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1097
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    .line 1098
    return-object p0
.end method

.method public whitelist setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 1394
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    .line 1395
    return-object p0
.end method

.method public varargs whitelist setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 1337
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 1338
    return-object p0
.end method

.method public whitelist setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1074
    invoke-static {p1}, Landroid/security/keystore/KeyProperties;->legacyUidToNamespace(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    .line 1075
    return-object p0
.end method

.method public greylist setUniqueIdIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "uniqueIdIncluded"    # Z

    .line 1665
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    .line 1666
    return-object p0
.end method

.method public whitelist setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "unlockedDeviceRequired"    # Z

    .line 1772
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    .line 1773
    return-object p0
.end method

.method public whitelist setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 5
    .param p1, "timeout"    # I
    .param p2, "type"    # I

    .line 1548
    if-ltz p1, :cond_7

    .line 1551
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 1552
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    .line 1553
    return-object p0

    .line 1549
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be 0 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 1438
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    .line 1439
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "remainsValid"    # Z

    .line 1688
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 1689
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 4
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    const/4 v0, -0x1

    if-lt p1, v0, :cond_12

    .line 1508
    if-ne p1, v0, :cond_c

    .line 1509
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    return-object v0

    .line 1511
    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    return-object v0

    .line 1506
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserConfirmationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 1461
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    .line 1462
    return-object p0
.end method

.method public whitelist setUserPresenceRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 1570
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    .line 1571
    return-object p0
.end method
