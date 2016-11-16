.class public Ljava/io/InterruptedIOException;
.super Ljava/io/IOException;
.source "InterruptedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x37cbedb690cd3f17L


# instance fields
.field public bytesTransferred:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    #@6
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    #@6
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    #@6
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    #@6
    .line 78
    return-void
.end method
