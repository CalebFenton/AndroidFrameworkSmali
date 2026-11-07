.class public final Lcom/android/org/conscrypt/OpenSSLXDHKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "OpenSSLXDHKeyPairGenerator.java"


# static fields
.field private static final blacklist ALGORITHM:Ljava/lang/String; = "XDH"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    const-string v0, "XDH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    .line 41
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 42
    .local v1, "publicKeyBytes":[B
    new-array v0, v0, [B

    .line 44
    .local v0, "privateKeyBytes":[B
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X25519_keypair([B[B)V

    .line 46
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;-><init>([B)V

    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    invoke-direct {v4, v0}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;-><init>([B)V

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 5
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 52
    const/16 v0, 0xff

    if-ne p1, v0, :cond_5

    .line 55
    return-void

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only X25519 supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No AlgorithmParameterSpec classes are supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
