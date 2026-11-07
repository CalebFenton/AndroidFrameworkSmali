.class public Ljava/lang/InstantiationException;
.super Ljava/lang/ReflectiveOperationException;
.source "InstantiationException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7527c1d8b22a7a76L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
