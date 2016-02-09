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
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    new-instance v0, Landroid/os/MessageQueue;

    #@5
    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    #@8
    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@a
    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@10
    .line 186
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    #@0
    .prologue
    .line 113
    const-class v0, Landroid/os/Looper;

    #@2
    monitor-enter v0

    #@3
    .line 114
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 113
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static loop()V
    .locals 11

    #@0
    .prologue
    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v3

    #@4
    .line 124
    .local v3, "me":Landroid/os/Looper;
    if-nez v3, :cond_0

    #@6
    .line 125
    new-instance v8, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v9, "No Looper; Looper.prepare() wasn\'t called on this thread."

    #@b
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v8

    #@f
    .line 127
    :cond_0
    iget-object v5, v3, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@11
    .line 131
    .local v5, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 135
    .local v0, "ident":J
    :goto_0
    invoke-virtual {v5}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    #@1b
    move-result-object v4

    #@1c
    .line 136
    .local v4, "msg":Landroid/os/Message;
    if-nez v4, :cond_1

    #@1e
    .line 138
    return-void

    #@1f
    .line 142
    :cond_1
    iget-object v2, v3, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    #@21
    .line 143
    .local v2, "logging":Landroid/util/Printer;
    if-eqz v2, :cond_2

    #@23
    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v9, ">>>>> Dispatching to "

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    iget-object v9, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@31
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    const-string/jumbo v9, " "

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    .line 145
    iget-object v9, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@3e
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    .line 145
    const-string/jumbo v9, ": "

    #@45
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v8

    #@49
    .line 145
    iget v9, v4, Landroid/os/Message;->what:I

    #@4b
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-interface {v2, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@56
    .line 148
    :cond_2
    iget-object v8, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@58
    invoke-virtual {v8, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    #@5b
    .line 150
    if-eqz v2, :cond_3

    #@5d
    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v9, "<<<<< Finished to "

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    iget-object v9, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    const-string/jumbo v9, " "

    #@72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    iget-object v9, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    invoke-interface {v2, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@83
    .line 156
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@86
    move-result-wide v6

    #@87
    .line 157
    .local v6, "newIdent":J
    cmp-long v8, v0, v6

    #@89
    if-eqz v8, :cond_4

    #@8b
    .line 158
    const-string/jumbo v8, "Looper"

    #@8e
    new-instance v9, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v10, "Thread identity changed from 0x"

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    .line 159
    const-string/jumbo v10, " to 0x"

    #@a5
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    .line 160
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@ac
    move-result-object v10

    #@ad
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    .line 160
    const-string/jumbo v10, " while dispatching to "

    #@b4
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 161
    iget-object v10, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    #@ba
    invoke-virtual {v10}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c1
    move-result-object v10

    #@c2
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v9

    #@c6
    .line 161
    const-string/jumbo v10, " "

    #@c9
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v9

    #@cd
    .line 162
    iget-object v10, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@cf
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    .line 162
    const-string/jumbo v10, " what="

    #@d6
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    .line 162
    iget v10, v4, Landroid/os/Message;->what:I

    #@dc
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v9

    #@e4
    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 165
    :cond_4
    invoke-virtual {v4}, Landroid/os/Message;->recycleUnchecked()V

    #@ea
    goto/16 :goto_0
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 174
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
    .line 183
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
    .line 83
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    #@4
    .line 82
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    #@0
    .prologue
    .line 87
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "Only one Looper may be created per thread"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 90
    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    #@13
    new-instance v1, Landroid/os/Looper;

    #@15
    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1b
    .line 86
    return-void
.end method

.method public static prepareMainLooper()V
    .locals 3

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    #@4
    .line 101
    const-class v1, Landroid/os/Looper;

    #@6
    monitor-enter v1

    #@7
    .line 102
    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 103
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
    .line 101
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 105
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
    .line 99
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
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
    .line 273
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
    .line 271
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    #@0
    .prologue
    .line 195
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
    .line 228
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    #@6
    .line 227
    return-void
.end method

.method public quitSafely()V
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    #@6
    .line 243
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 208
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    #@2
    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 278
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
    .line 279
    const-string/jumbo v1, ") {"

    #@2a
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 279
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 279
    const-string/jumbo v1, "}"

    #@3d
    .line 278
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
