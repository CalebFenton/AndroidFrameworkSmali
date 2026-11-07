.class public Lcom/android/org/conscrypt/HpkeContextRecipient;
.super Lcom/android/org/conscrypt/HpkeContext;
.source "HpkeContextRecipient.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/HpkeSpi;)V
    .registers 2
    .param p1, "spi"    # Lcom/android/org/conscrypt/HpkeSpi;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/HpkeContext;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    .line 39
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeContextRecipient;
    .registers 3
    .param p0, "suite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextRecipient;

    invoke-static {p0}, Lcom/android/org/conscrypt/HpkeContextRecipient;->findSpi(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextRecipient;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeContextRecipient;
    .registers 4
    .param p0, "suite"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextRecipient;

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/HpkeContextRecipient;->findSpi(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextRecipient;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeContextRecipient;
    .registers 4
    .param p0, "suite"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/android/org/conscrypt/HpkeContextRecipient;

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/HpkeContextRecipient;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/HpkeContextRecipient;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    return-object v0
.end method


# virtual methods
.method public blacklist init([BLjava/security/PrivateKey;[B)V
    .registers 11
    .param p1, "encapsulated"    # [B
    .param p2, "recipientKey"    # Ljava/security/PrivateKey;
    .param p3, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextRecipient;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    sget-object v5, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v6, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .end local p3    # "info":[B
    .local v1, "encapsulated":[B
    .local v2, "recipientKey":Ljava/security/PrivateKey;
    .local v3, "info":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V

    .line 107
    return-void
.end method

.method public blacklist init([BLjava/security/PrivateKey;[BLjava/security/PublicKey;)V
    .registers 12
    .param p1, "encapsulated"    # [B
    .param p2, "recipientKey"    # Ljava/security/PrivateKey;
    .param p3, "info"    # [B
    .param p4, "senderKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 124
    if-eqz p4, :cond_10

    .line 128
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextRecipient;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    sget-object v5, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v6, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .end local p3    # "info":[B
    .end local p4    # "senderKey":Ljava/security/PublicKey;
    .local v1, "encapsulated":[B
    .local v2, "recipientKey":Ljava/security/PrivateKey;
    .local v3, "info":[B
    .local v4, "senderKey":Ljava/security/PublicKey;
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V

    .line 130
    return-void

    .line 125
    .end local v1    # "encapsulated":[B
    .end local v2    # "recipientKey":Ljava/security/PrivateKey;
    .end local v3    # "info":[B
    .end local v4    # "senderKey":Ljava/security/PublicKey;
    .restart local p1    # "encapsulated":[B
    .restart local p2    # "recipientKey":Ljava/security/PrivateKey;
    .restart local p3    # "info":[B
    .restart local p4    # "senderKey":Ljava/security/PublicKey;
    :cond_10
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .restart local v1    # "encapsulated":[B
    .restart local v2    # "recipientKey":Ljava/security/PrivateKey;
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "null sender key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist init([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .registers 14
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

    .line 169
    if-eqz p4, :cond_e

    .line 173
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextRecipient;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .end local p3    # "info":[B
    .end local p4    # "senderKey":Ljava/security/PublicKey;
    .end local p5    # "psk":[B
    .end local p6    # "psk_id":[B
    .local v1, "encapsulated":[B
    .local v2, "recipientKey":Ljava/security/PrivateKey;
    .local v3, "info":[B
    .local v4, "senderKey":Ljava/security/PublicKey;
    .local v5, "psk":[B
    .local v6, "psk_id":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V

    .line 174
    return-void

    .line 170
    .end local v1    # "encapsulated":[B
    .end local v2    # "recipientKey":Ljava/security/PrivateKey;
    .end local v3    # "info":[B
    .end local v4    # "senderKey":Ljava/security/PublicKey;
    .end local v5    # "psk":[B
    .end local v6    # "psk_id":[B
    .restart local p1    # "encapsulated":[B
    .restart local p2    # "recipientKey":Ljava/security/PrivateKey;
    .restart local p3    # "info":[B
    .restart local p4    # "senderKey":Ljava/security/PublicKey;
    .restart local p5    # "psk":[B
    .restart local p6    # "psk_id":[B
    :cond_e
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .restart local v1    # "encapsulated":[B
    .restart local v2    # "recipientKey":Ljava/security/PrivateKey;
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "null sender key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist init([BLjava/security/PrivateKey;[B[B[B)V
    .registers 13
    .param p1, "encapsulated"    # [B
    .param p2, "recipientKey"    # Ljava/security/PrivateKey;
    .param p3, "info"    # [B
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextRecipient;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "encapsulated":[B
    .end local p2    # "recipientKey":Ljava/security/PrivateKey;
    .end local p3    # "info":[B
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .local v1, "encapsulated":[B
    .local v2, "recipientKey":Ljava/security/PrivateKey;
    .local v3, "info":[B
    .local v5, "psk":[B
    .local v6, "psk_id":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V

    .line 149
    return-void
.end method

.method public blacklist open([B[B)[B
    .registers 4
    .param p1, "ciphertext"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContextRecipient;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineOpen([B[B)[B

    move-result-object v0

    return-object v0
.end method
