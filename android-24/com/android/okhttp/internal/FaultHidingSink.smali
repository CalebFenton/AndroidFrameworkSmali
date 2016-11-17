.class Lcom/android/okhttp/internal/FaultHidingSink;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    #@3
    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 39
    :goto_0
    return-void

    #@9
    .line 43
    :catch_0
    move-exception v0

    #@a
    .line 44
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    #@b
    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@d
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    #@10
    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 30
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 29
    :goto_0
    return-void

    #@9
    .line 33
    :catch_0
    move-exception v0

    #@a
    .line 34
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    #@b
    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@d
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    #@10
    goto :goto_0
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 49
    return-void
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 17
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@7
    .line 19
    return-void

    #@8
    .line 22
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/okio/ForwardingSink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 16
    :goto_0
    return-void

    #@c
    .line 23
    :catch_0
    move-exception v0

    #@d
    .line 24
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    #@10
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    #@13
    goto :goto_0
.end method
