.class public Ljava/lang/NegativeArraySizeException;
.super Ljava/lang/RuntimeException;
.source "NegativeArraySizeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7c58bbe6cc3c8375L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
