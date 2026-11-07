.class public Ljava/io/InterruptedIOException;
.super Ljava/io/IOException;
.source "InterruptedIOException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x37cbedb690cd3f17L


# instance fields
.field public whitelist test-api bytesTransferred:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 65
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 89
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 79
    return-void
.end method
