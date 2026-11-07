.class public Landroid/crypto/hpke/AeadParameterSpec;
.super Ljava/security/spec/NamedParameterSpec;
.source "AeadParameterSpec.java"


# static fields
.field public static final blacklist AES_128_GCM:Landroid/crypto/hpke/AeadParameterSpec;

.field public static final blacklist AES_256_GCM:Landroid/crypto/hpke/AeadParameterSpec;

.field public static final blacklist CHACHA20POLY1305:Landroid/crypto/hpke/AeadParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Landroid/crypto/hpke/AeadParameterSpec;

    const-string v1, "AES_128_GCM"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/AeadParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/AeadParameterSpec;->AES_128_GCM:Landroid/crypto/hpke/AeadParameterSpec;

    .line 46
    new-instance v0, Landroid/crypto/hpke/AeadParameterSpec;

    const-string v1, "AES_256_GCM"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/AeadParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/AeadParameterSpec;->AES_256_GCM:Landroid/crypto/hpke/AeadParameterSpec;

    .line 48
    new-instance v0, Landroid/crypto/hpke/AeadParameterSpec;

    const-string v1, "CHACHA20POLY1305"

    invoke-direct {v0, v1}, Landroid/crypto/hpke/AeadParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/crypto/hpke/AeadParameterSpec;->CHACHA20POLY1305:Landroid/crypto/hpke/AeadParameterSpec;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "stdName"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
