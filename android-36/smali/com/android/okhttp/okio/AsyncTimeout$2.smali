.class Lcom/android/okhttp/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic blacklist val$source:Lcom/android/okhttp/okio/Source;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V
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

    .line 208
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

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

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    .line 229
    :try_start_f
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    .line 231
    :goto_16
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 232
    throw v0
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 213
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    .line 219
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0, p3}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    .line 217
    :try_start_15
    iget-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 219
    :goto_1c
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 220
    throw p1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
