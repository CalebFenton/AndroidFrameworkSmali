.class public Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
.super Lcom/android/internal/org/bouncycastle/operator/OperatorException;
.source "OperatorCreationException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
