.class public Lcom/android/internal/org/bouncycastle/operator/OperatorException;
.super Ljava/lang/Exception;
.source "OperatorException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/OperatorException;->cause:Ljava/lang/Throwable;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/OperatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
