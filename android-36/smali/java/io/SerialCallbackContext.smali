.class final Ljava/io/SerialCallbackContext;
.super Ljava/lang/Object;
.source "SerialCallbackContext.java"


# instance fields
.field private final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field private final greylist-max-o obj:Ljava/lang/Object;

.field private greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    .line 52
    return-void
.end method


# virtual methods
.method public greylist-max-o check()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_36

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_d

    goto :goto_36

    .line 65
    :cond_d
    new-instance v0, Ljava/io/NotActiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_36
    :goto_36
    return-void
.end method

.method public greylist-max-o checkAndSetUsed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    .line 76
    return-void

    .line 72
    :cond_c
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in readObject invocation or fields already read"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDesc()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 60
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public greylist-max-o getObj()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/io/SerialCallbackContext;->checkAndSetUsed()V

    .line 56
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o setUsed()V
    .registers 2

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    .line 80
    return-void
.end method
