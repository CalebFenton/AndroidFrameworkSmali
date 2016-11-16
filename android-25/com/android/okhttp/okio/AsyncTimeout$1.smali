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
.field final synthetic this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;
    .param p2, "val$sink"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    const/4 v1, 0x0

    #@1
    .line 179
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    #@6
    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    #@8
    invoke-interface {v2}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 182
    const/4 v1, 0x1

    #@c
    .line 186
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@e
    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@11
    .line 177
    return-void

    #@12
    .line 183
    :catch_0
    move-exception v0

    #@13
    .line 184
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@15
    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    #@18
    move-result-object v2

    #@19
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@1b
    .line 186
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@1d
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@20
    .line 185
    throw v2
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    const/4 v1, 0x0

    #@1
    .line 166
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    #@6
    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    #@8
    invoke-interface {v2}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 169
    const/4 v1, 0x1

    #@c
    .line 173
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@e
    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@11
    .line 164
    return-void

    #@12
    .line 170
    :catch_0
    move-exception v0

    #@13
    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@15
    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    #@18
    move-result-object v2

    #@19
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@1b
    .line 173
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@1d
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@20
    .line 172
    throw v2
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AsyncTimeout.sink("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    const/4 v1, 0x0

    #@1
    .line 153
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    #@6
    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    #@8
    invoke-interface {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 156
    const/4 v1, 0x1

    #@c
    .line 160
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@e
    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@11
    .line 151
    return-void

    #@12
    .line 157
    :catch_0
    move-exception v0

    #@13
    .line 158
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@15
    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    #@18
    move-result-object v2

    #@19
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@1b
    .line 160
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@1d
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@20
    .line 159
    throw v2
.end method
