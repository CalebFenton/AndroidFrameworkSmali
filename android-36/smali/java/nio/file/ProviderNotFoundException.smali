.class public Ljava/nio/file/ProviderNotFoundException;
.super Ljava/lang/RuntimeException;
.source "ProviderNotFoundException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1a17256abd4926a2L


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
    .param p1, "msg"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
