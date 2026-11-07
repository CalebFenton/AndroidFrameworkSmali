.class public final Lcom/android/org/conscrypt/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 36
    if-eqz p0, :cond_a

    .line 38
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 43
    goto :goto_a

    .line 41
    :catch_6
    move-exception v0

    goto :goto_a

    .line 39
    :catch_8
    move-exception v0

    .line 40
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 45
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 51
    if-eqz p0, :cond_7

    .line 53
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 56
    goto :goto_7

    .line 54
    :catch_6
    move-exception v0

    .line 58
    :cond_7
    :goto_7
    return-void
.end method

.method public static blacklist throwInterruptedIoException()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 66
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
