.class public Landroid/crypto/hpke/KdfParameterSpec;
.super Ljava/security/spec/NamedParameterSpec;
.source "KdfParameterSpec.java"


# static fields
.field public static final blacklist HKDF_SHA256:Landroid/crypto/hpke/KdfParameterSpec;

.field public static final blacklist HKDF_SHA384:Landroid/crypto/hpke/KdfParameterSpec;

.field public static final blacklist HKDF_SHA512:Landroid/crypto/hpke/KdfParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Landroid/crypto/hpke/KdfParameterSpec;

    const-string v1, "HKDF_SHA256"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KdfParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KdfParameterSpec;->HKDF_SHA256:Landroid/crypto/hpke/KdfParameterSpec;

    .line 48
    new-instance v0, Landroid/crypto/hpke/KdfParameterSpec;

    const-string v1, "HKDF_SHA384"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KdfParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KdfParameterSpec;->HKDF_SHA384:Landroid/crypto/hpke/KdfParameterSpec;

    .line 50
    new-instance v0, Landroid/crypto/hpke/KdfParameterSpec;

    const-string v1, "HKDF_SHA512"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/KdfParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/KdfParameterSpec;->HKDF_SHA512:Landroid/crypto/hpke/KdfParameterSpec;

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
