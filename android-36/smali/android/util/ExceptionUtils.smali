.class public Landroid/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o appendCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 96
    if-eqz p1, :cond_9

    .line 97
    invoke-static {p0}, Landroid/util/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    :cond_9
    return-object p0
.end method

.method public static greylist-max-o getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ": "

    if-eqz p0, :cond_10

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    move-object p1, v2

    if-eqz v2, :cond_2a

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 52
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 86
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 87
    :cond_c
    return-object p0
.end method

.method public static greylist-max-o maybeUnwrapIOException(Ljava/lang/RuntimeException;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    instance-of v0, p0, Landroid/os/ParcelableException;

    if-eqz v0, :cond_c

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/os/ParcelableException;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 41
    :cond_c
    return-void
.end method

.method public static greylist-max-o propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 76
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 78
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static greylist-max-o propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/RuntimeException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 72
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p0, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 62
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 64
    :cond_10
    :goto_10
    return-void
.end method

.method public static greylist-max-o wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "e"    # Ljava/io/IOException;

    .line 34
    new-instance v0, Landroid/os/ParcelableException;

    invoke-direct {v0, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
