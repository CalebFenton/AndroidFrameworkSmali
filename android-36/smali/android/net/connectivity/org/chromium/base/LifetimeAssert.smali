.class public Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
.super Ljava/lang/Object;
.source "LifetimeAssert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;,
        Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;,
        Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;,
        Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;
    }
.end annotation


# static fields
.field static blacklist sTestHook:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$TestHook;


# instance fields
.field private final blacklist mTarget:Ljava/lang/Object;

.field final blacklist mWrapper:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/Object;)V
    .registers 3
    .param p1, "wrapper"    # Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    .param p2, "target"    # Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->mWrapper:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    .line 126
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->mTarget:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public static blacklist assertAllInstancesDestroyedForTesting()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;
        }
    .end annotation

    .line 166
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_5

    .line 167
    return-void

    .line 170
    :cond_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_a
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    .line 173
    .local v2, "ref":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    iget-boolean v3, v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    if-eqz v3, :cond_23

    .line 182
    .end local v2    # "ref":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    goto :goto_12

    .line 174
    .restart local v2    # "ref":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    :cond_23
    const-string v1, "Object of type %s was not destroyed after test completed. Refer to \"Caused by\" for where object was created."

    iget-object v3, v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mTargetClass:Ljava/lang/Class;

    .line 179
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 175
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;

    iget-object v4, v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mCreationException:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v3, v1, v4}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$LifetimeAssertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_45

    .line 184
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "ref":Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 185
    nop

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 184
    :catchall_45
    move-exception v1

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 185
    throw v1

    .line 186
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public static blacklist create(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;

    .line 130
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_6
    new-instance v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;-><init>(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;Z)V

    invoke-direct {v0, v1, p0}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;-><init>(Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/lang/Object;Z)Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "safeToGc"    # Z

    .line 138
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_6
    new-instance v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;-><init>(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;Z)V

    invoke-direct {v0, v1, p0}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;-><init>(Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist resetForTesting()V
    .registers 1

    .line 191
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_5

    .line 192
    return-void

    .line 194
    :cond_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->-$$Nest$sfgetsActiveWrappers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 195
    return-void
.end method

.method public static blacklist setSafeToGc(Landroid/net/connectivity/org/chromium/base/LifetimeAssert;Z)V
    .registers 4
    .param p0, "asserter"    # Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
    .param p1, "value"    # Z

    .line 146
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->mTarget:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->mWrapper:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;

    iput-boolean p1, v1, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    .line 156
    monitor-exit v0

    goto :goto_10

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1

    .line 158
    :cond_10
    :goto_10
    return-void
.end method
