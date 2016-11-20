.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field final mQueue:Landroid/os/MessageQueue;

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@7
    .line 54
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    new-instance v0, Landroid/os/MessageQueue;

    #@5
    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    #@8
    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@a
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@10
    .line 197
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    #@0
    .prologue
    .line 114
    const-class v0, Landroid/os/Looper;

    #@2
    monitor-enter v0

    #@3
    .line 115
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 114
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static loop()V
    .locals 16

    #@0
    .prologue
    const-wide/16 v14, 0x0

    #@2
    .line 124
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v3

    #@6
    .line 125
    .local v3, "me":Landroid/os/Looper;
    if-nez v3, :cond_0

    #@8
    .line 126
    new-instance v10, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v11, "No Looper; Looper.prepare() wasn\'t called on this thread."

    #@d
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v10

    #@11
    .line 128
    :cond_0
    iget-object v5, v3, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@13
    .line 132
    .local v5, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v0

    #@1a
    .line 136
    .local v0, "ident":J
    :goto_0
    invoke-virtual {v5}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    #@1d
    move-result-object v4

    #@1e
    .line 137
    .local v4, "msg":Landroid/os/Message;
    if-nez v4, :cond_1

    #@20
    .line 139
    return-void

    #@21
    .line 143
    :cond_1
    iget-object v2, v3, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    #@23
    .line 144
    .local v2, "logging":Landroid/util/Printer;
    if-eqz v2, :cond_2

    #@25
    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v11, ">>>>> Dispatching to "

    #@2d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    iget-object v11, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@33
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v10

    #@37
    const-string/jumbo v11, " "

    #@3a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v10

    #@3e
    .line 146
    iget-object v11, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@40
    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    .line 146
    const-string/jumbo v11, ": "

    #@47
    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    .line 146
    iget v11, v4, Landroid/os/Message;->what:I

    #@4d
    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    invoke-interface {v2, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@58
    .line 149
    :cond_2
    iget-wide v8, v3, Landroid/os/Looper;->mTraceTag:J

    #@5a
    .line 150
    .local v8, "traceTag":J
    cmp-long v10, v8, v14

    #@5c
    if-eqz v10, :cond_3

    #@5e
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@61
    move-result v10

    #@62
    if-eqz v10, :cond_3

    #@64
    .line 151
    iget-object v10, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@66
    invoke-virtual {v10, v4}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@6d
    .line 154
    :cond_3
    :try_start_0
    iget-object v10, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6f
    invoke-virtual {v10, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    .line 156
    cmp-long v10, v8, v14

    #@74
    if-eqz v10, :cond_4

    #@76
    .line 157
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@79
    .line 161
    :cond_4
    if-eqz v2, :cond_5

    #@7b
    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v11, "<<<<< Finished to "

    #@83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    iget-object v11, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    const-string/jumbo v11, " "

    #@90
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v10

    #@94
    iget-object v11, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@96
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    invoke-interface {v2, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a1
    .line 167
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a4
    move-result-wide v6

    #@a5
    .line 168
    .local v6, "newIdent":J
    cmp-long v10, v0, v6

    #@a7
    if-eqz v10, :cond_6

    #@a9
    .line 169
    const-string/jumbo v10, "Looper"

    #@ac
    new-instance v11, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v12, "Thread identity changed from 0x"

    #@b4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v11

    #@b8
    .line 170
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@bb
    move-result-object v12

    #@bc
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v11

    #@c0
    .line 170
    const-string/jumbo v12, " to 0x"

    #@c3
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v11

    #@c7
    .line 171
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@ca
    move-result-object v12

    #@cb
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v11

    #@cf
    .line 171
    const-string/jumbo v12, " while dispatching to "

    #@d2
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    .line 172
    iget-object v12, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@d8
    invoke-virtual {v12}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    #@db
    move-result-object v12

    #@dc
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@df
    move-result-object v12

    #@e0
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v11

    #@e4
    .line 172
    const-string/jumbo v12, " "

    #@e7
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v11

    #@eb
    .line 173
    iget-object v12, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@ed
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v11

    #@f1
    .line 173
    const-string/jumbo v12, " what="

    #@f4
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v11

    #@f8
    .line 173
    iget v12, v4, Landroid/os/Message;->what:I

    #@fa
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@105
    .line 176
    :cond_6
    invoke-virtual {v4}, Landroid/os/Message;->recycleUnchecked()V

    #@108
    goto/16 :goto_0

    #@10a
    .line 155
    .end local v6    # "newIdent":J
    :catchall_0
    move-exception v10

    #@10b
    .line 156
    cmp-long v11, v8, v14

    #@10d
    if-eqz v11, :cond_7

    #@10f
    .line 157
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@112
    .line 155
    :cond_7
    throw v10
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 185
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Looper;

    #@8
    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@6
    return-object v0
.end method

.method public static prepare()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    #@4
    .line 83
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    #@0
    .prologue
    .line 88
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "Only one Looper may be created per thread"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 91
    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@13
    new-instance v1, Landroid/os/Looper;

    #@15
    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1b
    .line 87
    return-void
.end method

.method public static prepareMainLooper()V
    .locals 3

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    #@4
    .line 102
    const-class v1, Landroid/os/Looper;

    #@6
    monitor-enter v1

    #@7
    .line 103
    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v2, "The main Looper has already been prepared."

    #@10
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 102
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 100
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@18
    .line 289
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "  "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, p1, v1}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@31
    .line 287
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    #@0
    .prologue
    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public quit()V
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    #@6
    .line 243
    return-void
.end method

.method public quitSafely()V
    .locals 2

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    #@6
    .line 259
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 219
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    #@2
    .line 218
    return-void
.end method

.method public setTraceTag(J)V
    .locals 1
    .param p1, "traceTag"    # J

    #@0
    .prologue
    .line 224
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    #@2
    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Looper ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@e
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ", tid "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 295
    const-string/jumbo v1, ") {"

    #@2a
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 295
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 295
    const-string/jumbo v1, "}"

    #@3d
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method
