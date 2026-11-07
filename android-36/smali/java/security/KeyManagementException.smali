.class public Ljava/security/KeyManagementException;
.super Ljava/security/KeyException;
.source "KeyManagementException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xd26d0adb8d6a627L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/security/KeyException;-><init>()V

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 98
    invoke-direct {p0, p1}, Ljava/security/KeyException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
