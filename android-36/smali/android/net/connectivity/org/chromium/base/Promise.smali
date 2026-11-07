.class public Landroid/net/connectivity/org/chromium/base/Promise;
.super Ljava/lang/Object;
.source "Promise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/Promise$PromiseState;,
        Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;,
        Landroid/net/connectivity/org/chromium/base/Promise$UnhandledRejectionException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mFulfillCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRejectCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRejectReason:Ljava/lang/Exception;

.field private blacklist mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mState:I

.field private final blacklist mThread:Ljava/lang/Thread;

.field private blacklist mThrowingRejectionHandler:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 22
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mThread:Ljava/lang/Thread;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkThread()V
    .registers 1

    .line 299
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    nop

    .line 300
    return-void
.end method

.method private blacklist exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "onReject":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    nop

    .line 131
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 132
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->postCallbackToLooper(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_15

    .line 133
    :cond_c
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    if-nez v0, :cond_15

    .line 134
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist fulfilled(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/Promise;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 286
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    .line 287
    .local v0, "promise":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 288
    return-object v0
.end method

.method static synthetic blacklist lambda$andFinally$3(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "unused"    # Ljava/lang/Object;

    .line 207
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$then$0(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "reason"    # Ljava/lang/Exception;

    .line 84
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise$UnhandledRejectionException;

    const-string v1, "Promise was rejected without a rejection handler."

    invoke-direct {v0, v1, p0}, Landroid/net/connectivity/org/chromium/base/Promise$UnhandledRejectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic blacklist lambda$then$1(Landroid/net/connectivity/org/chromium/base/Promise;Ljava/util/function/Function;Ljava/lang/Object;)V
    .registers 4
    .param p0, "promise"    # Landroid/net/connectivity/org/chromium/base/Promise;
    .param p1, "function"    # Ljava/util/function/Function;
    .param p2, "result"    # Ljava/lang/Object;

    .line 154
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 158
    goto :goto_c

    .line 155
    :catch_8
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$then$2(Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;Landroid/net/connectivity/org/chromium/base/Promise;Ljava/lang/Object;)V
    .registers 6
    .param p0, "function"    # Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;
    .param p1, "promise"    # Landroid/net/connectivity/org/chromium/base/Promise;
    .param p2, "result"    # Ljava/lang/Object;

    .line 187
    :try_start_0
    invoke-interface {p0, p2}, Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/Promise;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/Promise;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/Promise;->then(Landroid/net/connectivity/org/chromium/base/Callback;Landroid/net/connectivity/org/chromium/base/Callback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 191
    goto :goto_1e

    .line 188
    :catch_1a
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private blacklist postCallbackToLooper(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TS;>;TS;)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TS;>;"
    .local p2, "result":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, p2}, Landroid/net/connectivity/org/chromium/base/Callback;->bind(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public static blacklist rejected()Landroid/net/connectivity/org/chromium/base/Promise;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    .line 294
    .local v0, "promise":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/Promise;->reject()V

    .line 295
    return-object v0
.end method

.method private blacklist thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 120
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mResult:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->postCallbackToLooper(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_14

    .line 121
    :cond_b
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    if-nez v0, :cond_14

    .line 122
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public blacklist andFinally(Ljava/lang/Runnable;)Landroid/net/connectivity/org/chromium/base/Promise;
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    .line 208
    .local v0, "asCallback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<*>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 209
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 210
    return-object p0
.end method

.method public blacklist except(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "onReject":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 115
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 116
    return-void
.end method

.method public blacklist fulfill(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 218
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 219
    nop

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    .line 222
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mResult:Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    .line 225
    .local v1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-direct {p0, v1, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->postCallbackToLooper(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V

    .line 226
    .end local v1    # "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    goto :goto_f

    .line 228
    :cond_1f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    return-void
.end method

.method public blacklist getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 280
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    nop

    .line 281
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isFulfilled()Z
    .registers 3

    .line 258
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 259
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isPending()Z
    .registers 2

    .line 270
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 271
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isRejected()Z
    .registers 3

    .line 264
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 265
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist reject()V
    .registers 2

    .line 253
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    .line 254
    return-void
.end method

.method public blacklist reject(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/Exception;

    .line 239
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 240
    nop

    .line 242
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mState:I

    .line 243
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    .line 245
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    .line 246
    .local v1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0, v1, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->postCallbackToLooper(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V

    .line 247
    .end local v1    # "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    goto :goto_f

    .line 248
    :cond_1f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    return-void
.end method

.method public blacklist then(Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;)Landroid/net/connectivity/org/chromium/base/Promise;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction<",
            "TT;TRT;>;)",
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TRT;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "function":Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;, "Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction<TT;TRT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 176
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    .line 181
    .local v0, "promise":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TRT;>;"
    new-instance v1, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/org/chromium/base/Promise$AsyncFunction;Landroid/net/connectivity/org/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/Promise;->thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 195
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/Promise;->exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 197
    return-object v0
.end method

.method public blacklist then(Ljava/util/function/Function;)Landroid/net/connectivity/org/chromium/base/Promise;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TRT;>;)",
            "Landroid/net/connectivity/org/chromium/base/Promise<",
            "TRT;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TRT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 146
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise;-><init>()V

    .line 151
    .local v0, "promise":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TRT;>;"
    new-instance v1, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;-><init>(Landroid/net/connectivity/org/chromium/base/Promise;Ljava/util/function/Function;)V

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/Promise;->thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 162
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/Promise;->exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 164
    return-object v0
.end method

.method public blacklist then(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 73
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mThrowingRejectionHandler:Z

    if-eqz v0, :cond_b

    .line 74
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 75
    return-void

    .line 78
    :cond_b
    nop

    .line 82
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda3;-><init>()V

    .line 88
    .local v0, "onReject":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/Promise;->then(Landroid/net/connectivity/org/chromium/base/Callback;Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/Promise;->mThrowingRejectionHandler:Z

    .line 90
    return-void
.end method

.method public blacklist then(Landroid/net/connectivity/org/chromium/base/Callback;Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Promise;, "Landroid/net/connectivity/org/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    .local p2, "onReject":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/Promise;->checkThread()V

    .line 103
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->thenInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 104
    invoke-direct {p0, p2}, Landroid/net/connectivity/org/chromium/base/Promise;->exceptInner(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 105
    return-void
.end method
