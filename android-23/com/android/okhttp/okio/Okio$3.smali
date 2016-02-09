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
    .line 205
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
    .line 207
    new-instance v0, Ljava/net/SocketTimeoutException;

    #@2
    const-string/jumbo v1, "timeout"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    #@8
    .line 208
    .local v0, "ioe":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    #@a
    .line 209
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d
    .line 211
    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 5

    #@0
    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 214
    :goto_0
    return-void

    #@6
    .line 217
    :catch_0
    move-exception v0

    #@7
    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->-get0()Ljava/util/logging/Logger;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Failed to close timed out socket "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    goto :goto_0
.end method
