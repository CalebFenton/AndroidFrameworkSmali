.class Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;
.super Ljava/lang/Thread;
.source "LifetimeAssert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;->setDaemon(Z)V

    .line 85
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;->start()V

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 93
    nop

    :goto_1
    :try_start_1
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    .line 94
    .local v0, "wrapper":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 97
    goto :goto_1

    .line 99
    :cond_16
    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    if-nez v1, :cond_3c

    .line 100
    const-string v1, "Object of type %s was GC\'ed without cleanup. Refer to \"Caused by\" for where object was created."

    iget-object v2, v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mTargetClass:Ljava/lang/Class;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->sTestHook:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;

    if-eqz v2, :cond_34

    .line 107
    sget-object v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->sTestHook:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;

    invoke-interface {v2, v0, v1}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;->onCleaned(Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/String;)V

    goto :goto_47

    .line 109
    :cond_34
    new-instance v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;

    iget-object v3, v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mCreationException:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;
    throw v2

    .line 112
    .end local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;
    :cond_3c
    sget-object v1, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->sTestHook:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;

    if-eqz v1, :cond_47

    .line 113
    sget-object v1, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->sTestHook:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;->onCleaned(Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_46} :catch_49

    goto :goto_48

    .line 112
    :cond_47
    :goto_47
    nop

    .line 117
    .end local v0    # "wrapper":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    :goto_48
    goto :goto_1

    .line 115
    :catch_49
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
