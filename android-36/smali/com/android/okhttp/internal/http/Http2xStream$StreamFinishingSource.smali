.class Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http2xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http2xStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http2xStream;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    .line 290
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->access$000(Lcom/android/okhttp/internal/http/Http2xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    .line 295
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSource;->close()V

    return-void
.end method
