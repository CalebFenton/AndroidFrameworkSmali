.class public Lcom/android/org/conscrypt/HpkeImpl;
.super Ljava/lang/Object;
.source "HpkeImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/HpkeSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/HpkeImpl$X25519_CHACHA20;,
        Lcom/android/org/conscrypt/HpkeImpl$X25519_AES_256;,
        Lcom/android/org/conscrypt/HpkeImpl$X25519_AES_128;
    }
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

.field private blacklist encapsulated:[B

.field private final blacklist hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/HpkeSuite;)V
    .registers 3
    .param p1, "hpkeSuite"    # Lcom/android/org/conscrypt/HpkeSuite;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    .line 47
    iput-object p1, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    .line 48
    return-void
.end method

.method private blacklist checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V
    .registers 6
    .param p1, "senderKey"    # Ljava/security/Key;
    .param p2, "psk"    # [B
    .param p3, "psk_id"    # [B

    .line 114
    if-nez p1, :cond_17

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    array-length v0, p2

    if-gtz v0, :cond_f

    array-length v0, p3

    if-gtz v0, :cond_f

    .line 123
    return-void

    .line 121
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PSK authentication not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Asymmetric authentication not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkInitialised()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    if-eqz v0, :cond_5

    .line 158
    return-void

    .line 156
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkIsRecipient()V
    .registers 3

    .line 174
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkInitialised()V

    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    if-nez v0, :cond_8

    .line 178
    return-void

    .line 176
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkIsSender()V
    .registers 3

    .line 167
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkInitialised()V

    .line 168
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    if-eqz v0, :cond_8

    .line 171
    return-void

    .line 169
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotInitialised()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    if-nez v0, :cond_5

    .line 164
    return-void

    .line 162
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist engineExport(I[B)[B
    .registers 8
    .param p1, "length"    # I
    .param p2, "exporterContext"    # [B

    .line 134
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkInitialised()V

    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite;->getKdf()Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->maxExportLength()J

    move-result-wide v0

    .line 136
    .local v0, "maxLength":J
    if-ltz p1, :cond_1b

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1b

    .line 140
    iget-object v2, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {v2, p2, p1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_export(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[BI)[B

    move-result-object v2

    return-object v2

    .line 137
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Export length must be between 0 and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .registers 10
    .param p1, "encapsulated"    # [B
    .param p2, "recipientKey"    # Ljava/security/PrivateKey;
    .param p3, "info"    # [B
    .param p4, "senderKey"    # Ljava/security/PublicKey;
    .param p5, "psk"    # [B
    .param p6, "psk_id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkNotInitialised()V

    .line 95
    invoke-direct {p0, p4, p5, p6}, Lcom/android/org/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    .line 96
    const-string v0, "null encapsulated data"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    array-length v0, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/HpkeSuite;->getKem()Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getEncapsulatedLength()I

    move-result v1

    if-ne v0, v1, :cond_55

    .line 101
    if-eqz p2, :cond_4d

    .line 103
    instance-of v0, p2, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-eqz v0, :cond_30

    .line 107
    move-object v0, p2

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v0

    .line 109
    .local v0, "recipientKeyBytes":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    invoke-static {v1, v0, p1, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_recipient(Lcom/android/org/conscrypt/HpkeSuite;[B[B[B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object v1, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    .line 111
    return-void

    .line 104
    .end local v0    # "recipientKeyBytes":[B
    :cond_30
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported recipient key class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4d
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "null recipient key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_55
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encapsulated length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .registers 9
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "senderKey"    # Ljava/security/PrivateKey;
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkNotInitialised()V

    .line 54
    invoke-direct {p0, p3, p4, p5}, Lcom/android/org/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    .line 55
    if-eqz p1, :cond_45

    .line 57
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-eqz v0, :cond_28

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v0

    .line 63
    .local v0, "recipientKeyBytes":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    invoke-static {v1, v0, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender(Lcom/android/org/conscrypt/HpkeSuite;[B[B)[Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object v2, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    .line 66
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    .line 67
    return-void

    .line 58
    .end local v0    # "recipientKeyBytes":[B
    .end local v1    # "result":[Ljava/lang/Object;
    :cond_28
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported recipient key class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_45
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "null recipient key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .registers 10
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "senderKey"    # Ljava/security/PrivateKey;
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .param p6, "sKe"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkNotInitialised()V

    .line 74
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-direct {p0, p3, p4, p5}, Lcom/android/org/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    .line 76
    if-eqz p1, :cond_48

    .line 78
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-eqz v0, :cond_2b

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v0

    .line 84
    .local v0, "recipientKeyBytes":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/HpkeImpl;->hpkeSuite:Lcom/android/org/conscrypt/HpkeSuite;

    .line 85
    invoke-static {v1, v0, p2, p6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender_with_seed_for_testing(Lcom/android/org/conscrypt/HpkeSuite;[B[B[B)[Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object v2, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    .line 88
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    .line 89
    return-void

    .line 79
    .end local v0    # "recipientKeyBytes":[B
    .end local v1    # "result":[Ljava/lang/Object;
    :cond_2b
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported recipient key class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_48
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "null recipient key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist engineOpen([B[B)[B
    .registers 6
    .param p1, "ciphertext"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkIsRecipient()V

    .line 146
    const-string v0, "null ciphertext"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    :try_start_8
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_open(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B

    move-result-object v0
    :try_end_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 149
    :catch_f
    move-exception v0

    .line 150
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Lcom/android/org/conscrypt/HpkeDecryptException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/HpkeDecryptException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist engineSeal([B[B)[B
    .registers 4
    .param p1, "plaintext"    # [B
    .param p2, "aad"    # [B

    .line 127
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkIsSender()V

    .line 128
    const-string v0, "null plaintext"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_seal(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncapsulated()[B
    .registers 2

    .line 182
    invoke-direct {p0}, Lcom/android/org/conscrypt/HpkeImpl;->checkIsSender()V

    .line 183
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeImpl;->encapsulated:[B

    return-object v0
.end method
