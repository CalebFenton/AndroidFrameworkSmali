.class public Ljava/lang/IllegalAccessException;
.super Ljava/lang/ReflectiveOperationException;
.source "IllegalAccessException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x5bd42871f9297b32L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 67
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method
