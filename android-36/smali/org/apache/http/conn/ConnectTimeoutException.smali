.class public Lorg/apache/http/conn/ConnectTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "ConnectTimeoutException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x42d84b949dece2f5L


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method
