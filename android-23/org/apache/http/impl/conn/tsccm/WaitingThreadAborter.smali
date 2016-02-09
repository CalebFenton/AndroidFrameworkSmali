.class public Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private aborted:Z

.field private waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    #@3
    .line 51
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 52
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@9
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    #@c
    .line 48
    :cond_0
    return-void
.end method

.method public setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .param p1, "waitingThread"    # Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@2
    .line 64
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 65
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    #@9
    .line 62
    :cond_0
    return-void
.end method
