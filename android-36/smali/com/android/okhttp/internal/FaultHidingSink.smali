.class Lcom/android/okhttp/internal/FaultHidingSink;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private blacklist hasErrors:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

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

    .line 41
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    goto :goto_10

    .line 43
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    goto :goto_10

    .line 33
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method protected blacklist onException(Ljava/io/IOException;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return-void

    .line 23
    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/okio/ForwardingSink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    return-void
.end method
