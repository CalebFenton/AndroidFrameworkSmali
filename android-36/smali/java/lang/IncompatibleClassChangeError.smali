.class public Ljava/lang/IncompatibleClassChangeError;
.super Ljava/lang/LinkageError;
.source "IncompatibleClassChangeError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x4435802e0e6037c7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
