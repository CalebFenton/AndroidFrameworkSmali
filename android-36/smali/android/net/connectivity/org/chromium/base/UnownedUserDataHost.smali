.class public final Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
.super Ljava/lang/Object;
.source "UnownedUserDataHost.java"


# instance fields
.field private final blacklist mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

.field private blacklist mUnownedUserDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "*>;",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$FcMvbfUm_eTn4QQ4HODLnsqaUhU(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->lambda$remove$0(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->retrieveNonNullLooperOrThrow()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;-><init>(Landroid/os/Handler;)V

    .line 166
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 152
    new-instance v0, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    .line 170
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private blacklist checkState()V
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 281
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    .line 282
    return-void
.end method

.method private synthetic blacklist lambda$remove$0(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V
    .registers 2
    .param p1, "value"    # Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    .line 236
    invoke-interface {p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserData;->onDetachedFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    return-void
.end method

.method private static blacklist retrieveNonNullLooperOrThrow()Landroid/os/Looper;
    .registers 2

    .line 146
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 147
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_7

    .line 148
    return-object v0

    .line 147
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 4

    .line 250
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 253
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 257
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<*>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;

    .local v2, "key":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<*>;"
    invoke-virtual {v2, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->detachFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    .end local v2    # "key":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<*>;"
    goto :goto_1d

    .line 260
    :cond_2d
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    .line 261
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    .line 265
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->destroy()V

    .line 266
    return-void
.end method

.method blacklist get(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 205
    .local p1, "key":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->checkState()V

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 208
    .local v0, "valueWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/net/connectivity/org/chromium/base/UnownedUserData;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    .line 209
    :cond_f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    .line 210
    .local v2, "value":Landroid/net/connectivity/org/chromium/base/UnownedUserData;
    if-nez v2, :cond_1b

    .line 212
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->detachFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    .line 213
    return-object v1

    .line 215
    :cond_1b
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    return-object v1
.end method

.method blacklist getMapSize()I
    .registers 2

    .line 270
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->checkState()V

    .line 272
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method blacklist isDestroyed()Z
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method blacklist remove(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    .local p1, "key":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->checkState()V

    .line 227
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 228
    .local v0, "valueWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/net/connectivity/org/chromium/base/UnownedUserData;>;"
    if-nez v0, :cond_e

    return-void

    .line 230
    :cond_e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    .line 235
    .local v1, "value":Landroid/net/connectivity/org/chromium/base/UnownedUserData;
    if-eqz v1, :cond_26

    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/UnownedUserData;->informOnDetachmentFromHost()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 236
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_26
    return-void
.end method

.method blacklist set(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 184
    .local p1, "key":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p2, "newValue":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->checkState()V

    .line 187
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 188
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->get(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    move-result-object v0

    .line 190
    .local v0, "currentValue":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->detachFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    .line 193
    .end local v0    # "currentValue":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    :cond_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->mUnownedUserDataMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method
