.class Lcom/android/internal/org/bouncycastle/jce/provider/ExtCRLException;
.super Ljava/security/cert/CRLException;
.source "ExtCRLException.java"


# instance fields
.field blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 13
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
