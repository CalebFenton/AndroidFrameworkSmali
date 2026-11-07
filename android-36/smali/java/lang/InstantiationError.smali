.class public Ljava/lang/InstantiationError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "InstantiationError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x43cde2e81f214894L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 49
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
