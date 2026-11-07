.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
.super Ljava/lang/Exception;
.source "OCSPException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;->cause:Ljava/lang/Throwable;

    .line 25
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
