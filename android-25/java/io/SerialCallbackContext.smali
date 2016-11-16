.class final Ljava/io/SerialCallbackContext;
.super Ljava/lang/Object;
.source "SerialCallbackContext.java"


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final obj:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    #@5
    .line 50
    iput-object p2, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    #@7
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    #@d
    .line 48
    return-void
.end method

.method private checkAndSetUsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 65
    new-instance v0, Ljava/io/NotActiveException;

    #@a
    .line 66
    const-string/jumbo v1, "not in readObject invocation or fields already read"

    #@d
    .line 65
    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 68
    :cond_0
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    #@14
    .line 63
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/SerialCallbackContext;->checkAndSetUsed()V

    #@3
    .line 56
    iget-object v0, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    #@5
    return-object v0
.end method

.method public setUsed()V
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    #@3
    .line 71
    return-void
.end method
