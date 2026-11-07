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
        "Ljava/security/PrivilegedExceptionAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 4
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

    .line 603
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 604
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 605
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    if-ne v2, v1, :cond_17

    .line 606
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 608
    :cond_17
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 610
    :try_start_1e
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2a

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 610
    return-object v2

    .line 612
    :catchall_2a
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 613
    throw v2
.end method
