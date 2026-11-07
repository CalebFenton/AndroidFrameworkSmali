.class public Lcom/android/internal/org/bouncycastle/crypto/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;->cause:Ljava/lang/Throwable;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
