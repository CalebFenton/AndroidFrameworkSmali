.class public Lcom/android/org/conscrypt/HpkeContextSender;
.super Lcom/android/org/conscrypt/HpkeContext;
.source "HpkeContextSender.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/HpkeSpi;)V
    .registers 2
    .param p1, "spi"    # Lcom/android/org/conscrypt/HpkeSpi;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/HpkeContext;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    .line 38
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeContextSender;
    .registers 3
    .param p0, "suite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextSender;

    invoke-static {p0}, Lcom/android/org/conscrypt/HpkeContextSender;->findSpi(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextSender;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeContextSender;
    .registers 4
    .param p0, "suite"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextSender;

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/HpkeContextSender;->findSpi(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextSender;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeContextSender;
    .registers 4
    .param p0, "suite"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextSender;

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/HpkeContextSender;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextSender;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getEncapsulated()[B
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0}, Lcom/android/org/conscrypt/HpkeSpi;->getEncapsulated()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Ljava/security/PublicKey;[B)V
    .registers 9
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    sget-object v4, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v5, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    invoke-interface/range {v0 .. v5}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    .line 113
    return-void
.end method

.method public blacklist init(Ljava/security/PublicKey;[BLjava/security/PrivateKey;)V
    .registers 10
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "senderKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 129
    if-eqz p3, :cond_f

    .line 133
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    sget-object v4, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v5, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "senderKey":Ljava/security/PrivateKey;
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v3, "senderKey":Ljava/security/PrivateKey;
    invoke-interface/range {v0 .. v5}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    .line 135
    return-void

    .line 130
    .end local v1    # "recipientKey":Ljava/security/PublicKey;
    .end local v2    # "info":[B
    .end local v3    # "senderKey":Ljava/security/PrivateKey;
    .restart local p1    # "recipientKey":Ljava/security/PublicKey;
    .restart local p2    # "info":[B
    .restart local p3    # "senderKey":Ljava/security/PrivateKey;
    :cond_f
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .restart local v1    # "recipientKey":Ljava/security/PublicKey;
    .restart local v2    # "info":[B
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Sender private key is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist init(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .registers 12
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

    .line 172
    if-eqz p3, :cond_d

    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "senderKey":Ljava/security/PrivateKey;
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v3, "senderKey":Ljava/security/PrivateKey;
    .local v4, "psk":[B
    .local v5, "psk_id":[B
    invoke-interface/range {v0 .. v5}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    .line 177
    return-void

    .line 173
    .end local v1    # "recipientKey":Ljava/security/PublicKey;
    .end local v2    # "info":[B
    .end local v3    # "senderKey":Ljava/security/PrivateKey;
    .end local v4    # "psk":[B
    .end local v5    # "psk_id":[B
    .restart local p1    # "recipientKey":Ljava/security/PublicKey;
    .restart local p2    # "info":[B
    .restart local p3    # "senderKey":Ljava/security/PrivateKey;
    .restart local p4    # "psk":[B
    .restart local p5    # "psk_id":[B
    :cond_d
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .restart local v1    # "recipientKey":Ljava/security/PublicKey;
    .restart local v2    # "info":[B
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Sender private key is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist init(Ljava/security/PublicKey;[B[B[B)V
    .registers 11
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "psk"    # [B
    .param p4, "psk_id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "psk":[B
    .end local p4    # "psk_id":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v4, "psk":[B
    .local v5, "psk_id":[B
    invoke-interface/range {v0 .. v5}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    .line 153
    return-void
.end method

.method public blacklist initForTesting(Ljava/security/PublicKey;[B[B)V
    .registers 11
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "sKe"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 193
    if-eqz p3, :cond_10

    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    sget-object v4, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v5, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "sKe":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v6, "sKe":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V

    .line 198
    return-void

    .line 194
    .end local v1    # "recipientKey":Ljava/security/PublicKey;
    .end local v2    # "info":[B
    .end local v6    # "sKe":[B
    .restart local p1    # "recipientKey":Ljava/security/PublicKey;
    .restart local p2    # "info":[B
    .restart local p3    # "sKe":[B
    :cond_10
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .restart local v1    # "recipientKey":Ljava/security/PublicKey;
    .restart local v2    # "info":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null seed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist seal([B[B)[B
    .registers 4
    .param p1, "plaintext"    # [B
    .param p2, "aad"    # [B

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextSender;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineSeal([B[B)[B

    move-result-object v0

    return-object v0
.end method
