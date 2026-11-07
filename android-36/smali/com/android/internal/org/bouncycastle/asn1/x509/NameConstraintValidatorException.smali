.class public Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
.super Ljava/lang/Exception;
.source "NameConstraintValidatorException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
