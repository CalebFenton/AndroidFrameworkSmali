.class public Ljava/security/InvalidKeyException;
.super Ljava/security/KeyException;
.source "InvalidKeyException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x4f15114bc2a9d3c8L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/security/KeyException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 88
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method
