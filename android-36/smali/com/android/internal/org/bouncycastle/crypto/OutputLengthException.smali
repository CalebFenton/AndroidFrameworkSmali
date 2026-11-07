.class public Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;
.super Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
.source "OutputLengthException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
