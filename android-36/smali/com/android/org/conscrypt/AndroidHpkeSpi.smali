.class public Lcom/android/org/conscrypt/AndroidHpkeSpi;
.super Ljava/lang/Object;
.source "AndroidHpkeSpi.java"

# interfaces
.implements Landroid/crypto/hpke/HpkeSpi;
.implements Lcom/android/org/conscrypt/HpkeSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/AndroidHpkeSpi$X25519_CHACHA20;,
        Lcom/android/org/conscrypt/AndroidHpkeSpi$X25519_AES_256;,
        Lcom/android/org/conscrypt/AndroidHpkeSpi$X25519_AES_128;
    }
.end annotation


# instance fields
.field private final blacklist delegate:Lcom/android/org/conscrypt/HpkeSpi;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/HpkeSpi;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/org/conscrypt/HpkeSpi;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api engineExport(I[B)[B
    .registers 4
    .param p1, "length"    # I
    .param p2, "context"    # [B

    .line 83
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineExport(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
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

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

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

    .line 68
    return-void
.end method

.method public whitelist test-api engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
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

    .line 46
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

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

    .line 47
    return-void
.end method

.method public blacklist engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .registers 14
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

    .line 53
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "senderKey":Ljava/security/PrivateKey;
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .end local p6    # "sKe":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v3, "senderKey":Ljava/security/PrivateKey;
    .local v4, "psk":[B
    .local v5, "psk_id":[B
    .local v6, "sKe":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V

    .line 54
    return-void
.end method

.method public whitelist test-api engineInitSenderWithSeed(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .registers 14
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

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "recipientKey":Ljava/security/PublicKey;
    .end local p2    # "info":[B
    .end local p3    # "senderKey":Ljava/security/PrivateKey;
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .end local p6    # "sKe":[B
    .local v1, "recipientKey":Ljava/security/PublicKey;
    .local v2, "info":[B
    .local v3, "senderKey":Ljava/security/PrivateKey;
    .local v4, "psk":[B
    .local v5, "psk_id":[B
    .local v6, "sKe":[B
    invoke-interface/range {v0 .. v6}, Lcom/android/org/conscrypt/HpkeSpi;->engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V

    .line 61
    return-void
.end method

.method public whitelist test-api engineOpen([B[B)[B
    .registers 4
    .param p1, "ciphertext"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineOpen([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineSeal([B[B)[B
    .registers 4
    .param p1, "plaintext"    # [B
    .param p2, "aad"    # [B

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineSeal([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncapsulated()[B
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/AndroidHpkeSpi;->delegate:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0}, Lcom/android/org/conscrypt/HpkeSpi;->getEncapsulated()[B

    move-result-object v0

    return-object v0
.end method
