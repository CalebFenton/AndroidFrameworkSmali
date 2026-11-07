.class public interface abstract Landroid/crypto/hpke/HpkeSpi;
.super Ljava/lang/Object;
.source "HpkeSpi.java"


# virtual methods
.method public abstract whitelist test-api engineExport(I[B)[B
.end method

.method public abstract whitelist test-api engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineInitSenderWithSeed(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineOpen([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineSeal([B[B)[B
.end method

.method public abstract whitelist test-api getEncapsulated()[B
.end method
