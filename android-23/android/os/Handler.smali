.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$Callback;,
        Landroid/os/Handler$MessengerImpl;,
        Landroid/os/Handler$BlockingRunnable;
    }
.end annotation


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static final TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final mAsynchronous:Z

.field final mCallback:Landroid/os/Handler$Callback;

.field final mLooper:Landroid/os/Looper;

.field mMessenger:Landroid/os/IMessenger;

.field final mQueue:Landroid/os/MessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    #@5
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    #@4
    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .param p2, "async"    # Z

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@9
    .line 199
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    .line 201
    const-string/jumbo v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    #@12
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 203
    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@18
    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@1a
    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@1c
    .line 204
    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    #@1e
    .line 205
    iput-boolean p2, p0, Landroid/os/Handler;->mAsynchronous:Z

    #@20
    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@4
    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "async"    # Z

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@5
    .line 229
    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@7
    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@9
    .line 230
    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    #@b
    .line 231
    iput-boolean p3, p0, Landroid/os/Handler;->mAsynchronous:Z

    #@d
    .line 227
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "async"    # Z

    #@0
    .prologue
    .line 168
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    #@4
    .line 167
    return-void
.end method

.method private enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z
    .locals 1
    .param p1, "queue"    # Landroid/os/MessageQueue;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "uptimeMillis"    # J

    #@0
    .prologue
    .line 627
    iput-object p0, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2
    .line 628
    iget-boolean v0, p0, Landroid/os/Handler;->mAsynchronous:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 629
    const/4 v0, 0x1

    #@7
    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@a
    .line 631
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private static getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 726
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 727
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@6
    .line 728
    return-object v0
.end method

.method private static getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 732
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 733
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6
    .line 734
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@8
    .line 735
    return-object v0
.end method

.method private static handleCallback(Landroid/os/Message;)V
    .locals 1
    .param p0, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    .line 738
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 94
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    invoke-static {p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    #@7
    .line 93
    :goto_0
    return-void

    #@8
    .line 97
    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 98
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    #@e
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 99
    return-void

    #@15
    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@18
    goto :goto_0
.end method

.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " @ "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@23
    .line 694
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@25
    if-nez v0, :cond_0

    #@27
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, "looper uninitialized"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3e
    .line 692
    :goto_0
    return-void

    #@3f
    .line 697
    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@41
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v2, "  "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v0, p1, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@58
    goto :goto_0
.end method

.method final getIMessenger()Landroid/os/IMessenger;
    .locals 3

    #@0
    .prologue
    .line 709
    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    monitor-enter v1

    #@3
    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 711
    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 713
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler$MessengerImpl;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-direct {v0, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler$MessengerImpl;)V

    #@11
    iput-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    #@13
    .line 714
    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    .line 709
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 243
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "0x"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget v1, p1, Landroid/os/Message;->what:I

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 87
    return-void
.end method

.method public final hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final hasMessages(I)Z
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 665
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 267
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 295
    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 310
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 281
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 326
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 418
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    #@0
    .prologue
    .line 349
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "uptimeMillis"    # J

    #@0
    .prologue
    .line 374
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 398
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@6
    .line 481
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    .line 491
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    #@5
    .line 656
    return-void
.end method

.method public final removeMessages(I)V
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 638
    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 647
    return-void
.end method

.method public final runWithScissors(Ljava/lang/Runnable;J)Z
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    #@0
    .prologue
    .line 462
    if-nez p1, :cond_0

    #@2
    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "runnable must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 465
    :cond_0
    const-wide/16 v2, 0x0

    #@d
    cmp-long v1, p2, v2

    #@f
    if-gez v1, :cond_1

    #@11
    .line 466
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "timeout must be non-negative"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 469
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 470
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@25
    .line 471
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 474
    :cond_2
    new-instance v0, Landroid/os/Handler$BlockingRunnable;

    #@29
    invoke-direct {v0, p1}, Landroid/os/Handler$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    #@2c
    .line 475
    .local v0, "br":Landroid/os/Handler$BlockingRunnable;
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method public final sendEmptyMessage(I)Z
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 519
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "uptimeMillis"    # J

    #@0
    .prologue
    .line 548
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 549
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 550
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 533
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 534
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 507
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 616
    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    .line 617
    .local v1, "queue":Landroid/os/MessageQueue;
    if-nez v1, :cond_0

    #@4
    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    const-string/jumbo v3, " sendMessageAtTime() called with no mQueue"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 618
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    .line 620
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Looper"

    #@20
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 621
    const/4 v2, 0x0

    #@28
    return v2

    #@29
    .line 623
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-wide/16 v2, 0x0

    #@2b
    invoke-direct {p0, v1, p1, v2, v3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    #@2e
    move-result v2

    #@2f
    return v2
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    #@0
    .prologue
    .line 593
    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    #@2
    .line 594
    .local v1, "queue":Landroid/os/MessageQueue;
    if-nez v1, :cond_0

    #@4
    .line 595
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    const-string/jumbo v3, " sendMessageAtTime() called with no mQueue"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 595
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    .line 597
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Looper"

    #@20
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 598
    const/4 v2, 0x0

    #@28
    return v2

    #@29
    .line 600
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    #@2c
    move-result v2

    #@2d
    return v2
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 567
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 568
    const-wide/16 p2, 0x0

    #@8
    .line 570
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    add-long/2addr v0, p2

    #@d
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Handler ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ") {"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 704
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@22
    move-result v1

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 705
    const-string/jumbo v1, "}"

    #@2e
    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
