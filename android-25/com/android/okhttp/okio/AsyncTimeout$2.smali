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
.field final synthetic this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic val$source:Lcom/android/okhttp/okio/Source;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;
    .param p2, "val$source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

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
    .line 222
    const/4 v1, 0x0

    #@1
    .line 224
    .local v1, "throwOnTimeout":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    #@3
    invoke-interface {v2}, Lcom/android/okhttp/okio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 225
    const/4 v1, 0x1

    #@7
    .line 229
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@9
    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@c
    .line 221
    return-void

    #@d
    .line 226
    :catch_0
    move-exception v0

    #@e
    .line 227
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@10
    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    #@13
    move-result-object v2

    #@14
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@16
    .line 229
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@18
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@1b
    .line 228
    throw v2
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    const/4 v1, 0x0

    #@1
    .line 209
    .local v1, "throwOnTimeout":Z
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    invoke-virtual {v4}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    #@6
    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    #@8
    invoke-interface {v4, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-wide v2

    #@c
    .line 212
    .local v2, "result":J
    const/4 v1, 0x1

    #@d
    .line 217
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@f
    invoke-virtual {v4, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@12
    .line 213
    return-wide v2

    #@13
    .line 214
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    #@14
    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@16
    invoke-virtual {v4, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    #@19
    move-result-object v4

    #@1a
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@1c
    .line 217
    iget-object v5, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@1e
    invoke-virtual {v5, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    #@21
    .line 216
    throw v4
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AsyncTimeout.source("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

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
