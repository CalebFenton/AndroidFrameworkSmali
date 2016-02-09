.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ContainerEncryptionParams$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 370
    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    #@5
    .line 369
    sput-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@a
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    .line 332
    .local v0, "encParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@11
    move-result-object v1

    #@12
    .line 333
    .local v1, "encParamsEncoded":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljavax/crypto/SecretKey;

    #@18
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@1a
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@20
    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v2

    #@24
    .line 337
    .local v2, "macParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@27
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljavax/crypto/SecretKey;

    #@2d
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@2f
    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@35
    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@38
    move-result-wide v4

    #@39
    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@3b
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3e
    move-result-wide v4

    #@3f
    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@41
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@44
    move-result-wide v4

    #@45
    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@47
    .line 346
    packed-switch v0, :pswitch_data_0

    #@4a
    .line 351
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Unknown parameter type "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@63
    throw v3

    #@64
    .line 348
    :pswitch_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    #@66
    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@69
    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@6b
    .line 355
    packed-switch v2, :pswitch_data_1

    #@6e
    .line 360
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@70
    new-instance v4, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v5, "Unknown parameter type "

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@87
    throw v3

    #@88
    .line 357
    :pswitch_1
    iput-object v6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@8a
    .line 364
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@8c
    if-nez v3, :cond_0

    #@8e
    .line 365
    new-instance v3, Ljava/lang/NullPointerException;

    #@90
    const-string/jumbo v4, "encryptionKey == null"

    #@93
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@96
    throw v3

    #@97
    .line 329
    :cond_0
    return-void

    #@98
    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    #@9e
    .line 355
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 14
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    const-wide/16 v8, -0x1

    #@2
    const-wide/16 v10, -0x1

    #@4
    .line 92
    const-wide/16 v12, -0x1

    #@6
    .line 91
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object/from16 v2, p2

    #@e
    move-object/from16 v3, p3

    #@10
    invoke-direct/range {v0 .. v13}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    #@13
    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .locals 2
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .param p4, "macAlgorithm"    # Ljava/lang/String;
    .param p5, "macSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "macKey"    # Ljavax/crypto/SecretKey;
    .param p7, "macTag"    # [B
    .param p8, "authenticatedDataStart"    # J
    .param p10, "encryptedDataStart"    # J
    .param p12, "dataEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "algorithm == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 122
    :cond_0
    if-nez p2, :cond_1

    #@14
    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v1, "encryptionSpec == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 124
    :cond_1
    if-nez p3, :cond_2

    #@1f
    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    #@21
    const-string/jumbo v1, "encryptionKey == null"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 128
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_3

    #@2e
    .line 129
    if-nez p6, :cond_3

    #@30
    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    #@32
    const-string/jumbo v1, "macKey == null"

    #@35
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 134
    :cond_3
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    #@3b
    if-nez v0, :cond_4

    #@3d
    .line 135
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@3f
    .line 136
    const-string/jumbo v1, "Unknown parameter spec class; must be IvParameters"

    #@42
    .line 135
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 139
    :cond_4
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@48
    .line 140
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    #@4a
    .end local p2    # "encryptionSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@4c
    .line 141
    iput-object p3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@4e
    .line 143
    iput-object p4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@50
    .line 144
    iput-object p5, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@52
    .line 145
    iput-object p6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@54
    .line 146
    iput-object p7, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@56
    .line 148
    iput-wide p8, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@58
    .line 149
    iput-wide p10, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@5a
    .line 150
    iput-wide p12, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@5c
    .line 119
    return-void
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .locals 5
    .param p0, "key1"    # Ljavax/crypto/SecretKey;
    .param p1, "key2"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 238
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 239
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 241
    .local v1, "otherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_1

    #@b
    .line 242
    if-eq v0, v1, :cond_0

    #@d
    .line 243
    return v4

    #@e
    .line 246
    :cond_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@11
    move-result-object v2

    #@12
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@15
    move-result-object v3

    #@16
    if-eq v2, v3, :cond_3

    #@18
    .line 247
    return v4

    #@19
    .line 250
    :cond_1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2

    #@23
    .line 251
    return v4

    #@24
    .line 254
    :cond_2
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@27
    move-result-object v2

    #@28
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_3

    #@32
    .line 255
    return v4

    #@33
    .line 259
    :cond_3
    const/4 v2, 0x1

    #@34
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 200
    if-ne p0, p1, :cond_0

    #@4
    .line 201
    return v7

    #@5
    .line 204
    :cond_0
    instance-of v1, p1, Landroid/content/pm/ContainerEncryptionParams;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 205
    return v6

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 208
    check-cast v0, Landroid/content/pm/ContainerEncryptionParams;

    #@d
    .line 211
    .local v0, "other":Landroid/content/pm/ContainerEncryptionParams;
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@f
    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-nez v1, :cond_2

    #@15
    .line 212
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@17
    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 214
    :cond_2
    return v6

    #@1e
    .line 213
    :cond_3
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@20
    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@22
    cmp-long v1, v2, v4

    #@24
    if-nez v1, :cond_2

    #@26
    .line 218
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@28
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_5

    #@30
    .line 219
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@32
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_5

    #@3a
    .line 224
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@3c
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@3e
    invoke-static {v1, v2}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_6

    #@44
    .line 225
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@46
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@48
    invoke-static {v1, v2}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_6

    #@4e
    .line 229
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@50
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@53
    move-result-object v1

    #@54
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@56
    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_4

    #@60
    .line 230
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@62
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@64
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_4

    #@6a
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@6c
    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@6e
    if-eq v1, v2, :cond_7

    #@70
    .line 231
    :cond_4
    return v6

    #@71
    .line 220
    :cond_5
    return v6

    #@72
    .line 226
    :cond_6
    return v6

    #@73
    .line 234
    :cond_7
    return v7
.end method

.method public getAuthenticatedDataStart()J
    .locals 2

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@2
    return-wide v0
.end method

.method public getDataEnd()J
    .locals 2

    #@0
    .prologue
    .line 190
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@2
    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .locals 2

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@2
    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@2
    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getMacTag()[B
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v1, v1, 0x5

    #@8
    add-int/lit8 v0, v1, 0x3

    #@a
    .line 267
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@c
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@13
    move-result v1

    #@14
    mul-int/lit8 v1, v1, 0x7

    #@16
    add-int/2addr v0, v1

    #@17
    .line 268
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@1c
    move-result v1

    #@1d
    mul-int/lit8 v1, v1, 0xb

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 269
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v1

    #@26
    mul-int/lit8 v1, v1, 0xd

    #@28
    add-int/2addr v0, v1

    #@29
    .line 270
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@2e
    move-result v1

    #@2f
    mul-int/lit8 v1, v1, 0x11

    #@31
    add-int/2addr v0, v1

    #@32
    .line 271
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@34
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@37
    move-result v1

    #@38
    mul-int/lit8 v1, v1, 0x13

    #@3a
    add-int/2addr v0, v1

    #@3b
    .line 272
    int-to-long v2, v0

    #@3c
    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@3e
    const-wide/16 v6, 0x17

    #@40
    mul-long/2addr v4, v6

    #@41
    add-long/2addr v2, v4

    #@42
    long-to-int v0, v2

    #@43
    .line 273
    int-to-long v2, v0

    #@44
    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@46
    const-wide/16 v6, 0x1d

    #@48
    mul-long/2addr v4, v6

    #@49
    add-long/2addr v2, v4

    #@4a
    long-to-int v0, v2

    #@4b
    .line 274
    int-to-long v2, v0

    #@4c
    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@4e
    const-wide/16 v6, 0x1f

    #@50
    mul-long/2addr v4, v6

    #@51
    add-long/2addr v2, v4

    #@52
    long-to-int v0, v2

    #@53
    .line 276
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "ContainerEncryptionParams{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 283
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mEncryptionAlgorithm=\""

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 284
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 285
    const-string/jumbo v1, "\","

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 286
    const-string/jumbo v1, "mEncryptionSpec="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 287
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@21
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 288
    const-string/jumbo v1, "mEncryptionKey="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 289
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 291
    const-string/jumbo v1, "mMacAlgorithm=\""

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 292
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 293
    const-string/jumbo v1, "\","

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 294
    const-string/jumbo v1, "mMacSpec="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 295
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@50
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 296
    const-string/jumbo v1, "mMacKey="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 297
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@5f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 299
    const-string/jumbo v1, ",mAuthenticatedDataStart="

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 300
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@6e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    .line 301
    const-string/jumbo v1, ",mEncryptedDataStart="

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 302
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@79
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7c
    .line 303
    const-string/jumbo v1, ",mDataEnd="

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 304
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@84
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@87
    .line 305
    const/16 v1, 0x7d

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8c
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 312
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 314
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    #@b
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@12
    .line 315
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@17
    .line 317
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 318
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 319
    const/4 v0, 0x0

    #@20
    new-array v0, v0, [B

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@25
    .line 320
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@2a
    .line 322
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2f
    .line 324
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@34
    .line 325
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    #@36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@39
    .line 326
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3e
    .line 311
    return-void
.end method
