.class Lcom/android/okhttp/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic blacklist val$sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 181
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 183
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 188
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 186
    :try_start_14
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 188
    :goto_1b
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 189
    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 170
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 175
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 173
    :try_start_14
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 175
    :goto_1b
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 176
    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 157
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 p1, 0x1

    .line 162
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception p1

    goto :goto_1b

    :catch_13
    move-exception p1

    .line 160
    :try_start_14
    iget-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 162
    :goto_1b
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 163
    throw p1
.end method
