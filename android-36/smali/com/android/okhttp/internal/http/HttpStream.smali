.class public interface abstract Lcom/android/okhttp/internal/http/HttpStream;
.super Ljava/lang/Object;
.source "HttpStream.java"


# static fields
.field public static final greylist-max-o DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract greylist-max-o cancel()V
.end method

.method public abstract greylist-max-o createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o finishRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
.end method

.method public abstract greylist-max-o writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
