.class public final Landroid/security/keystore/ParcelableKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "ParcelableKeyGenParameterSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_EC:I = 0x3

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_NONE:I = 0x1

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_RSA:I = 0x2

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/ParcelableKeyGenParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;

    invoke-direct {v0}, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;-><init>()V

    sput-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 42
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "keystoreAlias":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 138
    .local v12, "purposes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "namespace":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "keySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "keySpecType":I
    const/4 v4, 0x0

    .line 143
    .local v4, "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1d

    .line 144
    const/4 v4, 0x0

    goto :goto_42

    .line 145
    :cond_1d
    const/4 v5, 0x2

    if-ne v0, v5, :cond_34

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .local v5, "rsaKeySize":I
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    .line 148
    .local v6, "publicExponent":Ljava/math/BigInteger;
    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-direct {v7, v5, v6}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object v4, v7

    .line 149
    .end local v5    # "rsaKeySize":I
    .end local v6    # "publicExponent":Ljava/math/BigInteger;
    goto :goto_42

    :cond_34
    const/4 v5, 0x3

    if-ne v0, v5, :cond_ec

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "stdName":Ljava/lang/String;
    new-instance v6, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v6, v5}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 152
    .end local v5    # "stdName":Ljava/lang/String;
    nop

    .line 157
    :goto_42
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 158
    .local v5, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    .line 159
    .local v6, "certificateSerialNumber":Ljava/math/BigInteger;
    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 160
    .local v7, "certificateNotBefore":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 161
    .local v8, "certificateNotAfter":Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v9

    .line 162
    .local v9, "keyValidityStartDate":Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v10

    .line 163
    .local v10, "keyValidityForOriginationEnd":Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v11

    .line 164
    .local v11, "keyValidityForConsumptionEnd":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, "digests":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v37

    .line 166
    .local v37, "mgf1Digests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 167
    .local v15, "encryptionPaddings":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "signaturePaddings":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, "blockModes":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 170
    .local v18, "randomizedEncryptionRequired":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 171
    .local v19, "userAuthenticationRequired":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 172
    .local v20, "userAuthenticationValidityDurationSeconds":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 173
    .local v21, "userAuthenticationTypes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 174
    .local v22, "userPresenceRequired":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 175
    .local v23, "attestationChallenge":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 176
    .local v24, "devicePropertiesAttestationIncluded":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    .line 177
    .local v25, "attestationIds":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 178
    .local v26, "uniqueIdIncluded":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    .line 179
    .local v27, "userAuthenticationValidWhileOnBody":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 180
    .local v28, "invalidatedByBiometricEnrollment":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .line 181
    .local v29, "isStrongBoxBacked":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v30

    .line 182
    .local v30, "userConfirmationRequired":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    .line 183
    .local v31, "unlockedDeviceRequired":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v32

    .line 184
    .local v32, "criticalToDeviceEncryption":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 185
    .local v33, "maxUsageCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 186
    .local v34, "attestKeyAlias":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 190
    .local v35, "boundToSecureUserId":J
    move v14, v0

    .end local v0    # "keySpecType":I
    .local v14, "keySpecType":I
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 204
    if-eqz v37, :cond_d8

    invoke-static/range {v37 .. v37}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v38

    goto :goto_dc

    :cond_d8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v38

    :goto_dc
    move-object/from16 v39, v38

    move/from16 v38, v14

    move-object/from16 v14, v39

    .end local v14    # "keySpecType":I
    .local v38, "keySpecType":I
    invoke-direct/range {v0 .. v36}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V

    move-object v14, v4

    move-object v4, v0

    move-object/from16 v0, p0

    .end local v4    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v14, "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object v4, v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 226
    return-void

    .line 153
    .end local v5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .end local v7    # "certificateNotBefore":Ljava/util/Date;
    .end local v8    # "certificateNotAfter":Ljava/util/Date;
    .end local v9    # "keyValidityStartDate":Ljava/util/Date;
    .end local v10    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v11    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v13    # "digests":[Ljava/lang/String;
    .end local v14    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v15    # "encryptionPaddings":[Ljava/lang/String;
    .end local v16    # "signaturePaddings":[Ljava/lang/String;
    .end local v17    # "blockModes":[Ljava/lang/String;
    .end local v18    # "randomizedEncryptionRequired":Z
    .end local v19    # "userAuthenticationRequired":Z
    .end local v20    # "userAuthenticationValidityDurationSeconds":I
    .end local v21    # "userAuthenticationTypes":I
    .end local v22    # "userPresenceRequired":Z
    .end local v23    # "attestationChallenge":[B
    .end local v24    # "devicePropertiesAttestationIncluded":Z
    .end local v25    # "attestationIds":[I
    .end local v26    # "uniqueIdIncluded":Z
    .end local v27    # "userAuthenticationValidWhileOnBody":Z
    .end local v28    # "invalidatedByBiometricEnrollment":Z
    .end local v29    # "isStrongBoxBacked":Z
    .end local v30    # "userConfirmationRequired":Z
    .end local v31    # "unlockedDeviceRequired":Z
    .end local v32    # "criticalToDeviceEncryption":Z
    .end local v33    # "maxUsageCount":I
    .end local v34    # "attestKeyAlias":Ljava/lang/String;
    .end local v35    # "boundToSecureUserId":J
    .end local v37    # "mgf1Digests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "keySpecType":I
    .restart local v0    # "keySpecType":I
    .restart local v4    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_ec
    move/from16 v38, v0

    .end local v0    # "keySpecType":I
    .restart local v38    # "keySpecType":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 154
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Unknown algorithm parameter spec: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keystore/ParcelableKeyGenParameterSpec-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 2
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 48
    return-void
.end method

.method private static greylist-max-o readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 128
    .local v0, "hasDate":Z
    if-eqz v0, :cond_10

    .line 129
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 131
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .registers 4
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "date"    # Ljava/util/Date;

    .line 55
    if-eqz p1, :cond_e

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_12

    .line 59
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 61
    :goto_12
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getSpec()Landroid/security/keystore/KeyGenParameterSpec;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 71
    .local v0, "algoSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v0, :cond_31

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 73
    :cond_31
    instance-of v1, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v1, :cond_4f

    .line 74
    move-object v1, v0

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 75
    .local v1, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 78
    .end local v1    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    goto :goto_62

    :cond_4f
    instance-of v1, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_19e

    .line 79
    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 80
    .local v1, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .end local v1    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    nop

    .line 86
    :goto_62
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 91
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 92
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 93
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c4

    .line 94
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_c7

    .line 96
    :cond_c4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 98
    :goto_c7
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 99
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_e0

    .line 101
    :cond_dd
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    :goto_e0
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 112
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserConfirmationRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUnlockedDeviceRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBoundToSpecificSecureUserId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    return-void

    .line 83
    :cond_19e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 84
    invoke-interface {v0}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unknown algorithm parameter spec: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
