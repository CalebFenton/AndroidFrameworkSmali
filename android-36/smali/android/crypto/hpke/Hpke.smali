.class public Landroid/crypto/hpke/Hpke;
.super Ljava/lang/Object;
.source "Hpke.java"


# static fields
.field static final blacklist DEFAULT_PSK:[B

.field static final blacklist DEFAULT_PSK_ID:[B

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "ConscryptHpke"


# instance fields
.field private final blacklist provider:Ljava/security/Provider;

.field private final blacklist service:Ljava/security/Provider$Service;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK:[B

    .line 59
    sget-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK:[B

    sput-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK_ID:[B

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .registers 6
    .param p1, "suiteName"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Landroid/crypto/hpke/Hpke;->provider:Ljava/security/Provider;

    .line 66
    invoke-static {p2, p1}, Landroid/crypto/hpke/Hpke;->getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    iput-object v0, p0, Landroid/crypto/hpke/Hpke;->service:Ljava/security/Provider$Service;

    .line 67
    iget-object v0, p0, Landroid/crypto/hpke/Hpke;->service:Ljava/security/Provider$Service;

    if-eqz v0, :cond_10

    .line 70
    return-void

    .line 68
    :cond_10
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such HPKE suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 6
    .param p0, "suiteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 74
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 75
    .local v3, "provider":Ljava/security/Provider;
    invoke-static {v3, p0}, Landroid/crypto/hpke/Hpke;->getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 76
    return-object v3

    .line 74
    .end local v3    # "provider":Ljava/security/Provider;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 79
    :cond_14
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Provider found for HPKE suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Landroid/crypto/hpke/Hpke;
    .registers 3
    .param p0, "suiteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/crypto/hpke/Hpke;

    invoke-static {p0}, Landroid/crypto/hpke/Hpke;->findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/crypto/hpke/Hpke;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/crypto/hpke/Hpke;
    .registers 4
    .param p0, "suiteName"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 153
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 154
    .local v0, "provider":Ljava/security/Provider;
    if-eqz v0, :cond_14

    .line 157
    new-instance v1, Landroid/crypto/hpke/Hpke;

    invoke-direct {v1, p0, v0}, Landroid/crypto/hpke/Hpke;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v1

    .line 155
    :cond_14
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1}, Ljava/security/NoSuchProviderException;-><init>()V

    throw v1

    .line 151
    .end local v0    # "provider":Ljava/security/Provider;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Provider Name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/security/Provider;)Landroid/crypto/hpke/Hpke;
    .registers 4
    .param p0, "suiteName"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_8

    .line 175
    new-instance v0, Landroid/crypto/hpke/Hpke;

    invoke-direct {v0, p0, p1}, Landroid/crypto/hpke/Hpke;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0

    .line 173
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 3
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "suiteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 88
    const-string v0, "ConscryptHpke"

    invoke-virtual {p0, v0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0

    .line 86
    :cond_f
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v0
.end method

.method public static blacklist getSuiteName(Landroid/crypto/hpke/KemParameterSpec;Landroid/crypto/hpke/KdfParameterSpec;Landroid/crypto/hpke/AeadParameterSpec;)Ljava/lang/String;
    .registers 6
    .param p0, "kem"    # Landroid/crypto/hpke/KemParameterSpec;
    .param p1, "kdf"    # Landroid/crypto/hpke/KdfParameterSpec;
    .param p2, "aead"    # Landroid/crypto/hpke/AeadParameterSpec;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/crypto/hpke/KemParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/crypto/hpke/KdfParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/crypto/hpke/AeadParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist findSpi()Landroid/crypto/hpke/HpkeSpi;
    .registers 5

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/crypto/hpke/Hpke;->service:Ljava/security/Provider$Service;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_2d

    .line 97
    .local v0, "instance":Ljava/lang/Object;
    nop

    .line 98
    instance-of v1, v0, Landroid/crypto/hpke/HpkeSpi;

    if-eqz v1, :cond_10

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/crypto/hpke/HpkeSpi;

    return-object v1

    .line 101
    :cond_10
    invoke-static {v0}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->newInstance(Ljava/lang/Object;)Landroid/crypto/hpke/DuckTypedHpkeSpi;

    move-result-object v1

    .line 102
    .local v1, "spi":Landroid/crypto/hpke/DuckTypedHpkeSpi;
    if-eqz v1, :cond_17

    .line 103
    return-object v1

    .line 106
    .end local v1    # "spi":Landroid/crypto/hpke/DuckTypedHpkeSpi;
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Landroid/crypto/hpke/Hpke;->provider:Ljava/security/Provider;

    .line 107
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Provider %s is incorrectly configured"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "instance":Ljava/lang/Object;
    :catch_2d
    move-exception v0

    .line 96
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Initialisation error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getProvider()Ljava/security/Provider;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/crypto/hpke/Hpke;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public blacklist open(Ljava/security/PrivateKey;[BLandroid/crypto/hpke/Message;[B)[B
    .registers 8
    .param p1, "recipientKey"    # Ljava/security/PrivateKey;
    .param p2, "info"    # [B
    .param p3, "message"    # Landroid/crypto/hpke/Message;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/crypto/hpke/Recipient$Builder;

    .line 246
    invoke-virtual {p3}, Landroid/crypto/hpke/Message;->getEncapsulated()[B

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/crypto/hpke/Recipient$Builder;-><init>(Landroid/crypto/hpke/Hpke;[BLjava/security/PrivateKey;)V

    .line 247
    .local v0, "recipientBuilder":Landroid/crypto/hpke/Recipient$Builder;
    if-eqz p2, :cond_e

    .line 248
    invoke-virtual {v0, p2}, Landroid/crypto/hpke/Recipient$Builder;->setApplicationInfo([B)Landroid/crypto/hpke/Recipient$Builder;

    .line 250
    :cond_e
    invoke-virtual {v0}, Landroid/crypto/hpke/Recipient$Builder;->build()Landroid/crypto/hpke/Recipient;

    move-result-object v1

    invoke-virtual {p3}, Landroid/crypto/hpke/Message;->getCiphertext()[B

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Landroid/crypto/hpke/Recipient;->open([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist seal(Ljava/security/PublicKey;[B[B[B)Landroid/crypto/hpke/Message;
    .registers 10
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "plaintext"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 218
    new-instance v0, Landroid/crypto/hpke/Sender$Builder;

    invoke-direct {v0, p0, p1}, Landroid/crypto/hpke/Sender$Builder;-><init>(Landroid/crypto/hpke/Hpke;Ljava/security/PublicKey;)V

    .line 219
    .local v0, "senderBuilder":Landroid/crypto/hpke/Sender$Builder;
    if-eqz p2, :cond_a

    .line 220
    invoke-virtual {v0, p2}, Landroid/crypto/hpke/Sender$Builder;->setApplicationInfo([B)Landroid/crypto/hpke/Sender$Builder;

    .line 222
    :cond_a
    invoke-virtual {v0}, Landroid/crypto/hpke/Sender$Builder;->build()Landroid/crypto/hpke/Sender;

    move-result-object v1

    .line 223
    .local v1, "sender":Landroid/crypto/hpke/Sender;
    invoke-virtual {v1}, Landroid/crypto/hpke/Sender;->getEncapsulated()[B

    move-result-object v2

    .line 224
    .local v2, "encapsulated":[B
    invoke-virtual {v1, p3, p4}, Landroid/crypto/hpke/Sender;->seal([B[B)[B

    move-result-object v3

    .line 225
    .local v3, "ciphertext":[B
    new-instance v4, Landroid/crypto/hpke/Message;

    invoke-direct {v4, v2, v3}, Landroid/crypto/hpke/Message;-><init>([B[B)V

    return-object v4
.end method
