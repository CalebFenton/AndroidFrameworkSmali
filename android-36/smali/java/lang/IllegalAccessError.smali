.class public Ljava/lang/IllegalAccessError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "IllegalAccessError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7cbf00a185fbfc63L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
