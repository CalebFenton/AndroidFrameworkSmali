.class public Ljava/util/concurrent/CancellationException;
.super Ljava/lang/IllegalStateException;
.source "CancellationException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7fb4af9837b0d7e7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
