.class public Ljava/lang/RuntimeException;
.super Ljava/lang/Exception;
.source "RuntimeException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x61a0f9b8f5cb7c1bL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 119
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method
