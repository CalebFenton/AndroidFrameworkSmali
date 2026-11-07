.class public Ljava/util/concurrent/TimeoutException;
.super Ljava/lang/Exception;
.source "TimeoutException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1a6172bddbe4f56aL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method
