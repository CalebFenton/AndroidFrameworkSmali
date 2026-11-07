.class public Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
.super Ljava/lang/Exception;
.source "PKIXNameConstraintValidatorException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
