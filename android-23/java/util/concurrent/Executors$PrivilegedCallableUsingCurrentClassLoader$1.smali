.class Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .locals 0

    #@0
    .prologue
    .line 485
    .local p1, "this$1":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .line 488
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 489
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@a
    invoke-static {v2}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->-get0(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    #@d
    move-result-object v2

    #@e
    if-ne v2, v0, :cond_0

    #@10
    .line 490
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@12
    invoke-static {v2}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->-get1(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/util/concurrent/Callable;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 492
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@1d
    invoke-static {v2}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->-get0(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@24
    .line 494
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@26
    invoke-static {v2}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->-get1(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/util/concurrent/Callable;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v2

    #@2e
    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@31
    .line 494
    return-object v2

    #@32
    .line 495
    :catchall_0
    move-exception v2

    #@33
    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@36
    .line 495
    throw v2
.end method
