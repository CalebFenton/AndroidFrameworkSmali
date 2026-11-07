.class Lsun/nio/ch/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist maxHandlerInvokeCount:I

.field private static final blacklist myGroupAndInvokeCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmyGroupAndInvokeCount()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    nop

    .line 43
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "sun.nio.ch.maxCompletionHandlersOnStack"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    .line 71
    new-instance v0, Lsun/nio/ch/Invoker$1;

    invoke-direct {v0}, Lsun/nio/ch/Invoker$1;-><init>()V

    sput-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist bindToGroup(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 3
    .param p0, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 82
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    new-instance v1, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    invoke-direct {v1, p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static blacklist getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .registers 1

    .line 89
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    return-object v0
.end method

.method static blacklist invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 174
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 175
    .local v0, "invokeDirect":Z
    const/4 v1, 0x0

    .line 176
    .local v1, "identityOkay":Z
    sget-object v2, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 177
    .local v2, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v2, :cond_25

    .line 178
    invoke-virtual {v2}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lsun/nio/ch/Groupable;

    invoke-interface {v4}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v4

    if-ne v3, v4, :cond_1a

    .line 179
    const/4 v1, 0x1

    .line 180
    :cond_1a
    if-eqz v1, :cond_25

    .line 181
    invoke-virtual {v2}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v3

    sget v4, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v3, v4, :cond_25

    .line 184
    const/4 v0, 0x1

    .line 187
    :cond_25
    if-eqz v0, :cond_2b

    .line 188
    invoke-static {v2, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 191
    :cond_2b
    :try_start_2b
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 201
    goto :goto_35

    .line 192
    :catch_2f
    move-exception v3

    .line 195
    .local v3, "ree":Ljava/util/concurrent/RejectedExecutionException;
    if-eqz v1, :cond_36

    .line 196
    invoke-static {v2, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 203
    .end local v3    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    :goto_35
    return-void

    .line 199
    .restart local v3    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    :cond_36
    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static blacklist invoke(Lsun/nio/ch/PendingFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture<",
            "TV;TA;>;)V"
        }
    .end annotation

    .line 297
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    nop

    .line 298
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 299
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_1a

    .line 300
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 303
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    .line 304
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    .line 300
    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 306
    :cond_1a
    return-void
.end method

.method static blacklist invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "myGroupAndInvokeCount"    # Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 159
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->incrementInvokeCount()V

    .line 160
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method static blacklist invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 215
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Lsun/nio/ch/Groupable;

    invoke-interface {v0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v0

    new-instance v1, Lsun/nio/ch/Invoker$2;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/nio/ch/Invoker$2;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_f} :catch_11

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catch_11
    move-exception v0

    .line 225
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static blacklist invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p3, "exc"    # Ljava/lang/Throwable;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 239
    .local p0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    new-instance v0, Lsun/nio/ch/Invoker$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/nio/ch/Invoker$3;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_8} :catch_a

    .line 246
    nop

    .line 247
    return-void

    .line 244
    :catch_a
    move-exception v0

    .line 245
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static blacklist invokeIndirectly(Lsun/nio/ch/PendingFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture<",
            "TV;TA;>;)V"
        }
    .end annotation

    .line 313
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    nop

    .line 314
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 315
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_1a

    .line 316
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    .line 318
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 319
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    .line 320
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    .line 316
    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 322
    :cond_1a
    return-void
.end method

.method static blacklist invokeOnThreadInThreadPool(Lsun/nio/ch/Groupable;Ljava/lang/Runnable;)V
    .registers 7
    .param p0, "channel"    # Lsun/nio/ch/Groupable;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 258
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 259
    .local v0, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    invoke-interface {p0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v1

    .line 260
    .local v1, "targetGroup":Lsun/nio/ch/AsynchronousChannelGroupImpl;
    if-nez v0, :cond_10

    .line 261
    const/4 v2, 0x0

    .local v2, "invokeDirect":Z
    goto :goto_19

    .line 263
    .end local v2    # "invokeDirect":Z
    :cond_10
    invoke-static {v0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->-$$Nest$fgetgroup(Lsun/nio/ch/Invoker$GroupAndInvokeCount;)Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v2

    if-ne v2, v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 266
    .restart local v2    # "invokeDirect":Z
    :goto_19
    if-eqz v2, :cond_1f

    .line 267
    :try_start_1b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 269
    :cond_1f
    invoke-virtual {v1, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_22} :catch_24

    .line 273
    :goto_22
    nop

    .line 274
    return-void

    .line 271
    :catch_24
    move-exception v3

    .line 272
    .local v3, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static blacklist invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p3, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 125
    .local p0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_6

    .line 126
    invoke-interface {p0, p2, p1}, Ljava/nio/channels/CompletionHandler;->completed(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 128
    :cond_6
    invoke-interface {p0, p3, p1}, Ljava/nio/channels/CompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 132
    :goto_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 148
    return-void
.end method

.method static blacklist invokeUnchecked(Lsun/nio/ch/PendingFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture<",
            "TV;TA;>;)V"
        }
    .end annotation

    .line 281
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    nop

    .line 282
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 283
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_17

    .line 284
    nop

    .line 285
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v3

    .line 284
    invoke-static {v0, v1, v2, v3}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 289
    :cond_17
    return-void
.end method

.method static blacklist isBoundToAnyGroup()Z
    .registers 1

    .line 96
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z
    .registers 4
    .param p0, "myGroupAndInvokeCount"    # Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 107
    if-eqz p0, :cond_12

    .line 108
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 109
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v0

    sget v1, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v0, v1, :cond_12

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
