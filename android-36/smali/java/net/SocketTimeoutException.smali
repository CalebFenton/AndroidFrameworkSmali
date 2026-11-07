.class public Ljava/net/SocketTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "SocketTimeoutException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7ac5a1b5018c9cacL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
