.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$Callback;,
        Landroid/os/Handler$BlockingRunnable;,
        Landroid/os/Handler$MessengerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field private static greylist-max-o MAIN_THREAD_HANDLER:Landroid/os/Handler; = null

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final greylist-max-o mAsynchronous:Z

.field final greylist mCallback:Landroid/os/Handler$Callback;

.field private final blacklist mIsShared:Z

.field final greylist mLooper:Landroid/os/Looper;

.field greylist mMessenger:Landroid/os/IMessenger;

.field final greylist-max-o mQueue:Landroid/os/MessageQueue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 158
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Handler$Callback;Z)V
    .registers 6
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .param p2, "async"    # Z

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 229
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1b

    .line 234
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 235
    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 236
    iput-boolean p2, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Handler;->mIsShared:Z

    .line 238
    return-void

    .line 230
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create handler inside thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that has not called Looper.prepare()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 178
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "async"    # Z

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    .line 262
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "async"    # Z
    .param p4, "shared"    # Z

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 268
    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 269
    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 270
    iput-boolean p3, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 271
    iput-boolean p4, p0, Landroid/os/Handler;->mIsShared:Z

    .line 272
    return-void
.end method

.method public constructor greylist-max-r <init>(Z)V
    .registers 3
    .param p1, "async"    # Z

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 199
    return-void
.end method

.method public static whitelist createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 4
    .param p0, "looper"    # Landroid/os/Looper;

    .line 288
    if-eqz p0, :cond_a

    .line 289
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 288
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 306
    if-eqz p0, :cond_13

    .line 307
    if-eqz p1, :cond_b

    .line 308
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 307
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 794
    iget-boolean v0, p0, Landroid/os/Handler;->mIsShared:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 795
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument disallowed for shared handler. Consider creating your own Handler instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_f
    :goto_f
    return-object p1
.end method

.method private greylist-max-o enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z
    .registers 6
    .param p1, "queue"    # Landroid/os/MessageQueue;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "uptimeMillis"    # J

    .line 784
    iput-object p0, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 785
    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getUid()I

    move-result v0

    iput v0, p2, Landroid/os/Message;->workSourceUid:I

    .line 787
    iget-boolean v0, p0, Landroid/os/Handler;->mAsynchronous:Z

    if-eqz v0, :cond_10

    .line 788
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 790
    :cond_10
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r getMain()Landroid/os/Handler;
    .registers 2

    .line 315
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    .line 318
    :cond_f
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method private static greylist-max-o getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 981
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 982
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 983
    return-object v0
.end method

.method private static greylist getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "token"    # Ljava/lang/Object;

    .line 988
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 989
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 990
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 991
    return-object v0
.end method

.method private static greylist-max-o handleCallback(Landroid/os/Message;)V
    .registers 2
    .param p0, "message"    # Landroid/os/Message;

    .line 995
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 996
    return-void
.end method

.method public static greylist-max-o mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "handler"    # Landroid/os/Handler;

    .line 324
    if-nez p0, :cond_7

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public whitelist dispatchMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 102
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 103
    invoke-static {p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    goto :goto_18

    .line 105
    :cond_8
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_15

    .line 106
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 107
    return-void

    .line 110
    :cond_15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    :goto_18
    return-void
.end method

.method public final whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_3e

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 939
    :cond_3e
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 941
    :goto_56
    return-void
.end method

.method public final greylist-max-o dumpMine(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_3e

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 951
    :cond_3e
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 953
    :goto_56
    return-void
.end method

.method public final greylist-max-o executeOrSendMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 775
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 776
    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 777
    const/4 v0, 0x1

    return v0

    .line 779
    :cond_d
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method final greylist getIMessenger()Landroid/os/IMessenger;
    .registers 4

    .line 964
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    if-eqz v1, :cond_b

    .line 966
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    return-object v1

    .line 968
    :cond_b
    new-instance v1, Landroid/os/Handler$MessengerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler-IA;)V

    iput-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    .line 969
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    return-object v1

    .line 970
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final whitelist getLooper()Landroid/os/Looper;
    .registers 2

    .line 931
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 354
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 355
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTraceName(Landroid/os/Message;)Ljava/lang/String;
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 330
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    instance-of v0, v0, Landroid/os/TraceNameSupplier;

    if-eqz v0, :cond_f

    .line 331
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    check-cast v0, Landroid/os/TraceNameSupplier;

    invoke-interface {v0}, Landroid/os/TraceNameSupplier;->getTraceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 337
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 339
    :cond_37
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 96
    return-void
.end method

.method public final whitelist hasCallbacks(Ljava/lang/Runnable;)Z
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 924
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist hasEqualMessages(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMessages(I)Z
    .registers 4
    .param p1, "what"    # I

    .line 887
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMessages(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o hasMessagesOrCallbacks()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 898
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public final whitelist obtainMessage()Landroid/os/Message;
    .registers 2

    .line 368
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(I)Landroid/os/Message;
    .registers 3
    .param p1, "what"    # I

    .line 380
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(III)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 409
    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 424
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 394
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist post(Ljava/lang/Runnable;)Z
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 439
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 561
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;J)Z
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    .line 461
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "uptimeMillis"    # J

    .line 488
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final blacklist postDelayed(Ljava/lang/Runnable;IJ)Z
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "what"    # I
    .param p3, "delayMillis"    # J

    .line 516
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 511
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 542
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 625
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 626
    return-void
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 635
    return-void
.end method

.method public final blacklist removeCallbacksAndEqualMessages(Ljava/lang/Object;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 880
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p1}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 881
    return-void
.end method

.method public final whitelist removeCallbacksAndMessages(Ljava/lang/Object;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p1}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 856
    return-void
.end method

.method public final blacklist removeEqualMessages(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 846
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 847
    return-void
.end method

.method public final whitelist removeMessages(I)V
    .registers 4
    .param p1, "what"    # I

    .line 812
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 813
    return-void
.end method

.method public final whitelist removeMessages(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;->disallowNullArgumentIfShared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 822
    return-void
.end method

.method public final greylist-max-o runWithScissors(Ljava/lang/Runnable;J)Z
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 605
    if-eqz p1, :cond_28

    .line 608
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1f

    .line 612
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_15

    .line 613
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 614
    const/4 v0, 0x1

    return v0

    .line 617
    :cond_15
    new-instance v0, Landroid/os/Handler$BlockingRunnable;

    invoke-direct {v0, p1}, Landroid/os/Handler$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 618
    .local v0, "br":Landroid/os/Handler$BlockingRunnable;
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result v1

    return v1

    .line 609
    .end local v0    # "br":Landroid/os/Handler$BlockingRunnable;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "runnable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist sendEmptyMessage(I)Z
    .registers 4
    .param p1, "what"    # I

    .line 659
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final whitelist sendEmptyMessageAtTime(IJ)Z
    .registers 6
    .param p1, "what"    # I
    .param p2, "uptimeMillis"    # J

    .line 688
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 690
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendEmptyMessageDelayed(IJ)Z
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 672
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 673
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 674
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 647
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 755
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 756
    .local v0, "queue":Landroid/os/MessageQueue;
    if-nez v0, :cond_27

    .line 757
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendMessageAtFrontOfQueue() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 759
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Looper"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    const/4 v2, 0x0

    return v2

    .line 762
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_27
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 732
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 733
    .local v0, "queue":Landroid/os/MessageQueue;
    if-nez v0, :cond_27

    .line 734
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 736
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Looper"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    const/4 v2, 0x0

    return v2

    .line 739
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_27
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendMessageDelayed(Landroid/os/Message;J)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 706
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 707
    const-wide/16 p2, 0x0

    .line 709
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    return-object v0
.end method
