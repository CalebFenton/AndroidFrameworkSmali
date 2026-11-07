.class final Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivilegedCallableUsingCurrentClassLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o acc:Ljava/security/AccessControlContext;

.field final greylist-max-o ccl:Ljava/lang/ClassLoader;

.field final greylist-max-o task:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 577
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    .line 593
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    .line 595
    return-void
.end method


# virtual methods
.method public whitelist test-api call()Ljava/lang/Object;
    .registers 3
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

    .line 600
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    :try_start_0
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 617
    :catch_c
    move-exception v0

    .line 618
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 623
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;, "Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
