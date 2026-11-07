.class public Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
.super Lcom/android/internal/org/bouncycastle/crypto/RuntimeCryptoException;
.source "DataLengthException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 19
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
