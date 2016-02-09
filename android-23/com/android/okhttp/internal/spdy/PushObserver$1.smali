.class final Lcom/android/okhttp/internal/spdy/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    int-to-long v0, p3

    #@1
    invoke-interface {p2, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@4
    .line 89
    const/4 v0, 0x1

    #@5
    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    .line 92
    return-void
.end method
