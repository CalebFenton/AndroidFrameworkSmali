.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;
.super Ljava/security/spec/InvalidKeySpecException;
.source "ExtendedInvalidKeySpecException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 16
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;->cause:Ljava/lang/Throwable;

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
