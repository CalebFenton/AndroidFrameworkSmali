.class public final Landroid/telephony/UiccAccessRule;
.super Ljava/lang/Object;
.source "UiccAccessRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DELIMITER_CERTIFICATE_HASH_PACKAGE_NAMES:Ljava/lang/String; = ":"

.field private static final blacklist DELIMITER_INDIVIDUAL_PACKAGE_NAMES:Ljava/lang/String; = ","

.field private static final greylist-max-o ENCODING_VERSION:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiccAccessRule"


# instance fields
.field private final greylist-max-o mAccessType:J

.field private final greylist-max-o mCertificateHash:[B

.field private final blacklist mCertificateHashHashCode:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/telephony/UiccAccessRule$1;

    invoke-direct {v0}, Landroid/telephony/UiccAccessRule$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    .line 186
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0}, Landroid/telephony/UiccAccessRule;->getCertificateHashHashCode([B)I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHashHashCode:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    .line 189
    return-void
.end method

.method public constructor whitelist <init>([BLjava/lang/String;J)V
    .registers 6
    .param p1, "certificateHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accessType"    # J

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    .line 179
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0}, Landroid/telephony/UiccAccessRule;->getCertificateHashHashCode([B)I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHashHashCode:I

    .line 180
    iput-object p2, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 181
    iput-wide p3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    .line 182
    return-void
.end method

.method public static greylist-max-o decodeRules([B)[Landroid/telephony/UiccAccessRule;
    .registers 13
    .param p0, "encodedRules"    # [B

    .line 147
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 148
    return-object v0

    .line 150
    :cond_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_4f

    .line 152
    .local v2, "input":Ljava/io/DataInputStream;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 153
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 154
    .local v3, "count":I
    new-array v4, v3, [Landroid/telephony/UiccAccessRule;

    .line 155
    .local v4, "accessRules":[Landroid/telephony/UiccAccessRule;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v3, :cond_3d

    .line 156
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 157
    .local v6, "certificateHashLength":I
    new-array v7, v6, [B

    .line 158
    .local v7, "certificateHash":[B
    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 159
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto :goto_2f

    :cond_2e
    move-object v8, v0

    .line 160
    .local v8, "packageName":Ljava/lang/String;
    :goto_2f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 161
    .local v9, "accessType":J
    new-instance v11, Landroid/telephony/UiccAccessRule;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v11, v4, v5

    .line 155
    .end local v6    # "certificateHashLength":I
    .end local v7    # "certificateHash":[B
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "accessType":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 163
    .end local v5    # "i":I
    :cond_3d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_45

    .line 164
    nop

    .line 165
    :try_start_41
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4f

    .line 164
    return-object v4

    .line 151
    .end local v3    # "count":I
    .end local v4    # "accessRules":[Landroid/telephony/UiccAccessRule;
    :catchall_45
    move-exception v0

    :try_start_46
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v3

    :try_start_4b
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "encodedRules":[B
    :goto_4e
    throw v0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 165
    .end local v2    # "input":Ljava/io/DataInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "encodedRules":[B
    :catch_4f
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ByteArrayInputStream should never lead to an IOException"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist decodeRulesFromCarrierConfig([Ljava/lang/String;)[Landroid/telephony/UiccAccessRule;
    .registers 16
    .param p0, "certs"    # [Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 118
    return-object v0

    .line 120
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "carrierConfigAccessRulesArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_47

    aget-object v5, p0, v4

    .line 122
    .local v5, "cert":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "splitStr":[Ljava/lang/String;
    aget-object v7, v6, v3

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 124
    .local v7, "certificateHash":[B
    array-length v8, v6

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2b

    .line 126
    new-instance v8, Landroid/telephony/UiccAccessRule;

    invoke-direct {v8, v7, v0, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 130
    :cond_2b
    aget-object v8, v6, v11

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "packageNames":[Ljava/lang/String;
    array-length v11, v8

    move v12, v3

    :goto_35
    if-ge v12, v11, :cond_44

    aget-object v13, v8, v12

    .line 132
    .local v13, "packageName":Ljava/lang/String;
    new-instance v14, Landroid/telephony/UiccAccessRule;

    invoke-direct {v14, v7, v13, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v13    # "packageName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    .line 121
    .end local v5    # "cert":Ljava/lang/String;
    .end local v6    # "splitStr":[Ljava/lang/String;
    .end local v7    # "certificateHash":[B
    .end local v8    # "packageNames":[Ljava/lang/String;
    :cond_44
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 137
    :cond_47
    nop

    .line 138
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    return-object v0
.end method

.method public static greylist-max-o encodeRules([Landroid/telephony/UiccAccessRule;)[B
    .registers 10
    .param p0, "accessRules"    # [Landroid/telephony/UiccAccessRule;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .local v1, "output":Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_40

    aget-object v6, p0, v5

    .line 93
    .local v6, "accessRule":Landroid/telephony/UiccAccessRule;
    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    array-length v7, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 95
    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    if-eqz v7, :cond_35

    .line 96
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 97
    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_38

    .line 99
    :cond_35
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 101
    :goto_38
    iget-wide v7, v6, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v1, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 92
    .end local v6    # "accessRule":Landroid/telephony/UiccAccessRule;
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 103
    :cond_40
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_47} :catch_48

    return-object v2

    .line 105
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "output":Ljava/io/DataOutputStream;
    :catch_48
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ByteArrayOutputStream should never lead to an IOException"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .registers 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    .line 369
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 370
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 371
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_d
    move-exception v0

    .line 372
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchAlgorithmException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UiccAccessRule"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCertificateHashHashCode([B)I
    .registers 2
    .param p0, "certHash"    # [B

    .line 305
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public static blacklist getSignatures(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 351
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 353
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-eqz v1, :cond_14

    .line 354
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 355
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 356
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 360
    :cond_14
    if-nez v0, :cond_19

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1d

    :cond_19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1d
    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 311
    return v0

    .line 313
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 317
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 318
    .local v2, "that":Landroid/telephony/UiccAccessRule;
    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    iget-object v4, v2, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 319
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-wide v3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    iget-wide v5, v2, Landroid/telephony/UiccAccessRule;->mAccessType:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 318
    :goto_33
    return v0

    .line 314
    .end local v2    # "that":Landroid/telephony/UiccAccessRule;
    :cond_34
    :goto_34
    return v1
.end method

.method public whitelist getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .registers 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 226
    invoke-static {p1}, Landroid/telephony/UiccAccessRule;->getSignatures(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 233
    .local v2, "sig":Landroid/content/pm/Signature;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, "accessStatus":I
    if-eqz v3, :cond_23

    .line 235
    return v3

    .line 237
    .end local v2    # "sig":Landroid/content/pm/Signature;
    .end local v3    # "accessStatus":I
    :cond_23
    goto :goto_e

    .line 239
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 228
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must use GET_SIGNING_CERTIFICATES when looking up package info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .registers 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 251
    const-string v0, "SHA-256"

    invoke-static {p1, v0}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v0

    .line 253
    .local v0, "certHash256":[B
    invoke-virtual {p0, v0, p2}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 254
    return v2

    .line 259
    :cond_e
    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    array-length v1, v1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_22

    .line 260
    const-string v1, "SHA-1"

    invoke-static {p1, v1}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    .line 261
    .local v1, "certHash":[B
    invoke-virtual {p0, v1, p2}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 262
    return v2

    .line 266
    .end local v1    # "certHash":[B
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCertificateHexString()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasMatchingCertificateHashAndPackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "certHash"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 275
    nop

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0, p2}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z
    .registers 4
    .param p1, "certHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 285
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 285
    :goto_1d
    return v0
.end method

.method public blacklist hasMatchingCertificateHashHashAndPackageName(ILjava/lang/String;)Z
    .registers 4
    .param p1, "certHashHashCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 297
    iget v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHashHashCode:I

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 297
    :goto_17
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 325
    const/4 v0, 0x1

    .line 326
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 327
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 328
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 329
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " access: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 194
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    return-void
.end method
