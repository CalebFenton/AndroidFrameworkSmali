.class public abstract Landroid/security/keystore/KeyProperties;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProperties$Namespace;,
        Landroid/security/keystore/KeyProperties$EcCurve;,
        Landroid/security/keystore/KeyProperties$SecurityLevel;,
        Landroid/security/keystore/KeyProperties$SecurityLevelEnum;,
        Landroid/security/keystore/KeyProperties$Origin;,
        Landroid/security/keystore/KeyProperties$OriginEnum;,
        Landroid/security/keystore/KeyProperties$Digest;,
        Landroid/security/keystore/KeyProperties$DigestEnum;,
        Landroid/security/keystore/KeyProperties$SignaturePadding;,
        Landroid/security/keystore/KeyProperties$SignaturePaddingEnum;,
        Landroid/security/keystore/KeyProperties$EncryptionPadding;,
        Landroid/security/keystore/KeyProperties$EncryptionPaddingEnum;,
        Landroid/security/keystore/KeyProperties$BlockMode;,
        Landroid/security/keystore/KeyProperties$BlockModeEnum;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithm;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithmEnum;,
        Landroid/security/keystore/KeyProperties$Purpose;,
        Landroid/security/keystore/KeyProperties$PurposeEnum;,
        Landroid/security/keystore/KeyProperties$AuthEnum;
    }
.end annotation


# static fields
.field public static final whitelist AUTH_BIOMETRIC_STRONG:I = 0x2

.field public static final whitelist AUTH_DEVICE_CREDENTIAL:I = 0x1

.field public static final whitelist BLOCK_MODE_CBC:Ljava/lang/String; = "CBC"

.field public static final whitelist BLOCK_MODE_CTR:Ljava/lang/String; = "CTR"

.field public static final whitelist BLOCK_MODE_ECB:Ljava/lang/String; = "ECB"

.field public static final whitelist BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final whitelist DIGEST_MD5:Ljava/lang/String; = "MD5"

.field public static final whitelist DIGEST_NONE:Ljava/lang/String; = "NONE"

.field public static final whitelist DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final whitelist DIGEST_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final whitelist DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final whitelist DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final whitelist DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final whitelist ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final whitelist ENCRYPTION_PADDING_PKCS7:Ljava/lang/String; = "PKCS7Padding"

.field public static final whitelist ENCRYPTION_PADDING_RSA_OAEP:Ljava/lang/String; = "OAEPPadding"

.field public static final whitelist ENCRYPTION_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1Padding"

.field public static final whitelist KEY_ALGORITHM_3DES:Ljava/lang/String; = "DESede"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final whitelist KEY_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final whitelist KEY_ALGORITHM_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final whitelist KEY_ALGORITHM_HMAC_SHA224:Ljava/lang/String; = "HmacSHA224"

.field public static final whitelist KEY_ALGORITHM_HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field public static final whitelist KEY_ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final whitelist KEY_ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final whitelist KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field public static final blacklist KEY_ALGORITHM_XDH:Ljava/lang/String; = "XDH"

.field public static final whitelist NAMESPACE_APPLICATION:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_LOCKSETTINGS:I = 0x67

.field public static final whitelist NAMESPACE_WIFI:I = 0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ORIGIN_GENERATED:I = 0x1

.field public static final whitelist ORIGIN_IMPORTED:I = 0x2

.field public static final whitelist ORIGIN_SECURELY_IMPORTED:I = 0x8

.field public static final whitelist ORIGIN_UNKNOWN:I = 0x4

.field public static final whitelist PURPOSE_AGREE_KEY:I = 0x40

.field public static final whitelist PURPOSE_ATTEST_KEY:I = 0x80

.field public static final whitelist PURPOSE_DECRYPT:I = 0x2

.field public static final whitelist PURPOSE_ENCRYPT:I = 0x1

.field public static final whitelist PURPOSE_SIGN:I = 0x4

.field public static final whitelist PURPOSE_VERIFY:I = 0x8

.field public static final whitelist PURPOSE_WRAP_KEY:I = 0x20

.field public static final whitelist SECURITY_LEVEL_SOFTWARE:I = 0x0

.field public static final whitelist SECURITY_LEVEL_STRONGBOX:I = 0x2

.field public static final whitelist SECURITY_LEVEL_TRUSTED_ENVIRONMENT:I = 0x1

.field public static final whitelist SECURITY_LEVEL_UNKNOWN:I = -0x2

.field public static final whitelist SECURITY_LEVEL_UNKNOWN_SECURE:I = -0x1

.field public static final whitelist SIGNATURE_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1"

.field public static final whitelist SIGNATURE_PADDING_RSA_PSS:Ljava/lang/String; = "PSS"

.field public static final blacklist UID_SELF:I = -0x1

.field public static final whitelist UNRESTRICTED_USAGE_COUNT:I = -0x1


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetSetFlags(I)[I
    .registers 1

    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetFlags(I)[I

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getSetBitCount(I)I
    .registers 3
    .param p0, "value"    # I

    .line 829
    if-nez p0, :cond_4

    .line 830
    const/4 v0, 0x0

    return v0

    .line 832
    :cond_4
    const/4 v0, 0x0

    .line 833
    .local v0, "result":I
    :goto_5
    if-eqz p0, :cond_10

    .line 834
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_d

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 837
    :cond_d
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 839
    :cond_10
    return v0
.end method

.method private static greylist-max-o getSetFlags(I)[I
    .registers 5
    .param p0, "flags"    # I

    .line 811
    if-nez p0, :cond_5

    .line 812
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 814
    :cond_5
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetBitCount(I)I

    move-result v0

    new-array v0, v0, [I

    .line 815
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 816
    .local v1, "resultOffset":I
    const/4 v2, 0x1

    .line 817
    .local v2, "flag":I
    :goto_d
    if-eqz p0, :cond_1c

    .line 818
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_17

    .line 819
    aput v2, v0, v1

    .line 820
    add-int/lit8 v1, v1, 0x1

    .line 822
    :cond_17
    ushr-int/lit8 p0, p0, 0x1

    .line 823
    shl-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 825
    :cond_1c
    return-object v0
.end method

.method public static blacklist legacyUidToNamespace(I)I
    .registers 4
    .param p0, "uid"    # I

    .line 1035
    sparse-switch p0, :sswitch_data_22

    .line 1041
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No namespace corresponding to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :sswitch_1c
    const/16 v0, 0x66

    return v0

    .line 1037
    :sswitch_1f
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x3f2 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist namespaceToLegacyUid(I)I
    .registers 4
    .param p0, "namespace"    # I

    .line 1019
    sparse-switch p0, :sswitch_data_22

    .line 1025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UID corresponding to namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :sswitch_1c
    const/16 v0, 0x3f2

    return v0

    .line 1021
    :sswitch_1f
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x66 -> :sswitch_1c
    .end sparse-switch
.end method
