.class public Ljava/lang/NoSuchMethodError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "NoSuchMethodError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x3441d1cd1ebfc867L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
