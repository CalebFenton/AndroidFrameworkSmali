.class public Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
.super Lcom/android/internal/org/bouncycastle/crypto/CryptoException;
.source "InvalidCipherTextException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
