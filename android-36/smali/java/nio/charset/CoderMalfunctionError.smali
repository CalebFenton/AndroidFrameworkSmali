.class public Ljava/nio/charset/CoderMalfunctionError;
.super Ljava/lang/Error;
.source "CoderMalfunctionError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0xffaa36e1bfbb6fdL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
