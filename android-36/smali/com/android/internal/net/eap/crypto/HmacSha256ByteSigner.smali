.class public Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;
.super Ljava/lang/Object;
.source "HmacSha256ByteSigner.java"

# interfaces
.implements Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;


# static fields
.field private static final blacklist MAC_ALGORITHM_STRING:Ljava/lang/String; = "HmacSHA256"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sInstance:Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;

    invoke-direct {v0}, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;->sInstance:Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;->sInstance:Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;

    return-object v0
.end method


# virtual methods
.method public blacklist signBytes([B[B)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B

    .line 49
    const-string v0, "HmacSHA256"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 50
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 51
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    .line 52
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_13
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
