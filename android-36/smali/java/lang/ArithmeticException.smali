.class public Ljava/lang/ArithmeticException;
.super Ljava/lang/RuntimeException;
.source "ArithmeticException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1f509e624af9f007L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method
