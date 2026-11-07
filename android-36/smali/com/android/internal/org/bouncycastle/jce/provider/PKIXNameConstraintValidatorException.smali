.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
.super Ljava/lang/Exception;
.source "PKIXNameConstraintValidatorException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;->cause:Ljava/lang/Throwable;

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
