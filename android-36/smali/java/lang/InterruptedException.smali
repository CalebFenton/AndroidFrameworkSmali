.class public Ljava/lang/InterruptedException;
.super Ljava/lang/Exception;
.source "InterruptedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x5cfda8c301deb7f9L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method
