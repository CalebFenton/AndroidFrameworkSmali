.class public abstract Lcom/android/okhttp/internal/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/internal/NamedRunnable;->name:Ljava/lang/String;

    #@9
    .line 25
    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method public final run()V
    .locals 3

    #@0
    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 31
    .local v0, "oldName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/okhttp/internal/NamedRunnable;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@11
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/NamedRunnable;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@1b
    .line 29
    return-void

    #@1c
    .line 34
    :catchall_0
    move-exception v1

    #@1d
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@24
    .line 34
    throw v1
.end method
