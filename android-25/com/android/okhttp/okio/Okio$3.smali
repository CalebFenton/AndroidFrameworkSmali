.class final Lcom/android/okhttp/okio/Okio$3;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "val$socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@2
    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/net/SocketTimeoutException;

    #@2
    const-string/jumbo v1, "timeout"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    #@8
    .line 213
    .local v0, "ioe":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    #@a
    .line 214
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d
    .line 216
    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 6

    #@0
    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 219
    :goto_0
    return-void

    #@6
    .line 224
    :catch_0
    move-exception v0

    #@7
    .line 225
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->-wrap0(Ljava/lang/AssertionError;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 228
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->-get0()Ljava/util/logging/Logger;

    #@10
    move-result-object v2

    #@11
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Failed to close timed out socket "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    goto :goto_0

    #@2d
    .line 230
    :cond_0
    throw v0

    #@2e
    .line 222
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v1

    #@2f
    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->-get0()Ljava/util/logging/Logger;

    #@32
    move-result-object v2

    #@33
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Failed to close timed out socket "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    iget-object v5, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    goto :goto_0
.end method
