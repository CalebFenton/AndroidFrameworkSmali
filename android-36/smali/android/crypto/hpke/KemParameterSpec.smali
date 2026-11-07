.class public Landroid/crypto/hpke/KemParameterSpec;
.super Ljava/security/spec/NamedParameterSpec;
.source "KemParameterSpec.java"


# static fields
.field public static final blacklist DHKEM_P256_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

.field public static final blacklist DHKEM_P384_HKDF_SHA384:Landroid/crypto/hpke/KemParameterSpec;

.field public static final blacklist DHKEM_P521_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

.field public static final blacklist DHKEM_X25519_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

.field public static final blacklist DHKEM_X448_HKDF_SHA512:Landroid/crypto/hpke/KemParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Landroid/crypto/hpke/KemParameterSpec;

    const-string v1, "DHKEM_P256_HKDF_SHA256"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KemParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KemParameterSpec;->DHKEM_P256_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

    .line 49
    new-instance v0, Landroid/crypto/hpke/KemParameterSpec;

    const-string v1, "DHKEM_P384_HKDF_SHA384"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KemParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KemParameterSpec;->DHKEM_P384_HKDF_SHA384:Landroid/crypto/hpke/KemParameterSpec;

    .line 52
    new-instance v0, Landroid/crypto/hpke/KemParameterSpec;

    const-string v1, "DHKEM_P521_HKDF_SHA256"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KemParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KemParameterSpec;->DHKEM_P521_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

    .line 55
    new-instance v0, Landroid/crypto/hpke/KemParameterSpec;

    const-string v1, "DHKEM_X25519_HKDF_SHA256"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KemParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KemParameterSpec;->DHKEM_X25519_HKDF_SHA256:Landroid/crypto/hpke/KemParameterSpec;

    .line 58
    new-instance v0, Landroid/crypto/hpke/KemParameterSpec;

    const-string v1, "DHKEM_X448_HKDF_SHA512"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KemParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KemParameterSpec;->DHKEM_X448_HKDF_SHA512:Landroid/crypto/hpke/KemParameterSpec;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "stdName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
