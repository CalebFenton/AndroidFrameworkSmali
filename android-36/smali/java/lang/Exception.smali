.class public Ljava/lang/Exception;
.super Ljava/lang/Throwable;
.source "Exception.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x2f02e0c1e5c4e33cL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 56
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 124
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method
