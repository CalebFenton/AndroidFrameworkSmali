.class public Ljava/lang/AbstractMethodError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "AbstractMethodError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x16f593ecb5225d5eL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
