.class public Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceConstraintsException;
.super Ljava/lang/RuntimeException;
.source "CryptoServiceConstraintsException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
