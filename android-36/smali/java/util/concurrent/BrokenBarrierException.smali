.class public Ljava/util/concurrent/BrokenBarrierException;
.super Ljava/lang/Exception;
.source "BrokenBarrierException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x62c610b23d3ca0e4L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
