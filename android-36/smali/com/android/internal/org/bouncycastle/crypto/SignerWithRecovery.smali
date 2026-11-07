.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/SignerWithRecovery;
.super Ljava/lang/Object;
.source "SignerWithRecovery.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Signer;


# virtual methods
.method public abstract blacklist getRecoveredMessage()[B
.end method

.method public abstract blacklist hasFullMessage()Z
.end method

.method public abstract blacklist updateWithRecoveredMessage([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
