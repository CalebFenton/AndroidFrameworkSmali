.class public Ljava/net/SocketTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "SocketTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x7ac5a1b5018c9cacL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 47
    return-void
.end method
