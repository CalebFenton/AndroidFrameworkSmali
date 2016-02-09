.class public abstract Landroid/security/keystore/KeyProperties;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProperties$Purpose;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithm;,
        Landroid/security/keystore/KeyProperties$BlockMode;,
        Landroid/security/keystore/KeyProperties$EncryptionPadding;,
        Landroid/security/keystore/KeyProperties$SignaturePadding;,
        Landroid/security/keystore/KeyProperties$Digest;,
        Landroid/security/keystore/KeyProperties$Origin;
    }
.end annotation


# static fields
.field public static final BLOCK_MODE_CBC:Ljava/lang/String; = "CBC"

.field public static final BLOCK_MODE_CTR:Ljava/lang/String; = "CTR"

.field public static final BLOCK_MODE_ECB:Ljava/lang/String; = "ECB"

.field public static final BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final DIGEST_MD5:Ljava/lang/String; = "MD5"

.field public static final DIGEST_NONE:Ljava/lang/String; = "NONE"

.field public static final DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final ENCRYPTION_PADDING_PKCS7:Ljava/lang/String; = "PKCS7Padding"

.field public static final ENCRYPTION_PADDING_RSA_OAEP:Ljava/lang/String; = "OAEPPadding"

.field public static final ENCRYPTION_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1Padding"

.field public static final KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEY_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final KEY_ALGORITHM_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final KEY_ALGORITHM_HMAC_SHA224:Ljava/lang/String; = "HmacSHA224"

.field public static final KEY_ALGORITHM_HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field public static final KEY_ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final KEY_ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field public static final ORIGIN_GENERATED:I = 0x1

.field public static final ORIGIN_IMPORTED:I = 0x2

.field public static final ORIGIN_UNKNOWN:I = 0x4

.field public static final PURPOSE_DECRYPT:I = 0x2

.field public static final PURPOSE_ENCRYPT:I = 0x1

.field public static final PURPOSE_SIGN:I = 0x4

.field public static final PURPOSE_VERIFY:I = 0x8

.field public static final SIGNATURE_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1"

.field public static final SIGNATURE_PADDING_RSA_PSS:Ljava/lang/String; = "PSS"


# direct methods
.method static synthetic -wrap0(I)[I
    .locals 1
    .param p0, "flags"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetFlags(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getSetBitCount(I)I
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 708
    if-nez p0, :cond_0

    #@3
    .line 709
    return v1

    #@4
    .line 711
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 712
    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_2

    #@7
    .line 713
    and-int/lit8 v1, p0, 0x1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 714
    add-int/lit8 v0, v0, 0x1

    #@d
    .line 716
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 718
    :cond_2
    return v0
.end method

.method private static getSetFlags(I)[I
    .locals 4
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 690
    if-nez p0, :cond_0

    #@2
    .line 691
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    #@4
    return-object v3

    #@5
    .line 693
    :cond_0
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetBitCount(I)I

    #@8
    move-result v3

    #@9
    new-array v1, v3, [I

    #@b
    .line 694
    .local v1, "result":[I
    const/4 v2, 0x0

    #@c
    .line 695
    .local v2, "resultOffset":I
    const/4 v0, 0x1

    #@d
    .line 696
    .local v0, "flag":I
    :goto_0
    if-eqz p0, :cond_2

    #@f
    .line 697
    and-int/lit8 v3, p0, 0x1

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 698
    aput v0, v1, v2

    #@15
    .line 699
    add-int/lit8 v2, v2, 0x1

    #@17
    .line 701
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    #@19
    .line 702
    shl-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 704
    :cond_2
    return-object v1
.end method
