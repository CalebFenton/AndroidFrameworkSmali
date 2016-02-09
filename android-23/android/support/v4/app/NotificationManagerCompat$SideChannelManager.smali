.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    }
.end annotation


# static fields
.field private static final KEY_BINDER:Ljava/lang/String; = "binder"

.field private static final MSG_QUEUE_TASK:I = 0x0

.field private static final MSG_RETRY_LISTENER_QUEUE:I = 0x3

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2


# instance fields
.field private mCachedEnabledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 291
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 290
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@a
    .line 292
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    #@11
    .line 295
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@13
    .line 296
    new-instance v0, Landroid/os/HandlerThread;

    #@15
    const-string/jumbo v1, "NotificationManagerCompat"

    #@18
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1b
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    #@1d
    .line 297
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    #@1f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@22
    .line 298
    new-instance v0, Landroid/os/Handler;

    #@24
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    #@26
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@2d
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@2f
    .line 294
    return-void
.end method

.method private ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
    .locals 4
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@0
    .prologue
    .line 434
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 435
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 437
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@8
    const-string/jumbo v2, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    #@b
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    .line 438
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@16
    invoke-static {}, Landroid/support/v4/app/NotificationManagerCompat;->-get0()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@20
    .line 439
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 440
    const/4 v1, 0x0

    #@25
    iput v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@27
    .line 445
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@29
    return v1

    #@2a
    .line 442
    :cond_1
    const-string/jumbo v1, "NotifManCompat"

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Unable to bind to listener "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 443
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@4b
    goto :goto_0
.end method

.method private ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 1
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@0
    .prologue
    .line 452
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 453
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@9
    .line 454
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    #@c
    .line 456
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    #@f
    .line 451
    return-void
.end method

.method private handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .locals 3
    .param p1, "task"    # Landroid/support/v4/app/NotificationManagerCompat$Task;

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V

    #@3
    .line 331
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@19
    .line 332
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    iget-object v2, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@1b
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 333
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@21
    goto :goto_0

    #@22
    .line 329
    .end local v0    # "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    :cond_0
    return-void
.end method

.method private handleRetryListenerQueue(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 354
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@8
    .line 355
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    #@a
    .line 356
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@d
    .line 353
    :cond_0
    return-void
.end method

.method private handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 338
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@8
    .line 339
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    #@a
    .line 340
    invoke-static {p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    #@10
    .line 341
    const/4 v1, 0x0

    #@11
    iput v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@13
    .line 342
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@16
    .line 337
    :cond_0
    return-void
.end method

.method private handleServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 347
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@8
    .line 348
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    #@a
    .line 349
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@d
    .line 346
    :cond_0
    return-void
.end method

.method private processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 7
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    .line 488
    const-string/jumbo v3, "NotifManCompat"

    #@4
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 489
    const-string/jumbo v3, "NotifManCompat"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Processing component "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, ", "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 490
    iget-object v5, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@28
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    #@2b
    move-result v5

    #@2c
    .line 489
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 490
    const-string/jumbo v5, " queued tasks"

    #@33
    .line 489
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 492
    :cond_0
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@40
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_1

    #@46
    .line 493
    return-void

    #@47
    .line 495
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_2

    #@4d
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    #@4f
    if-nez v3, :cond_5

    #@51
    .line 497
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@54
    .line 498
    return-void

    #@55
    .line 507
    .local v2, "task":Landroid/support/v4/app/NotificationManagerCompat$Task;
    :cond_3
    :try_start_0
    const-string/jumbo v3, "NotifManCompat"

    #@58
    const/4 v4, 0x3

    #@59
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_4

    #@5f
    .line 508
    const-string/jumbo v3, "NotifManCompat"

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "Sending task "

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 510
    :cond_4
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    #@7b
    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationManagerCompat$Task;->send(Landroid/support/v4/app/INotificationSideChannel;)V

    #@7e
    .line 511
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@80
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@83
    .line 502
    .end local v2    # "task":Landroid/support/v4/app/NotificationManagerCompat$Task;
    :cond_5
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@85
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@88
    move-result-object v2

    #@89
    check-cast v2, Landroid/support/v4/app/NotificationManagerCompat$Task;

    #@8b
    .line 503
    .restart local v2    # "task":Landroid/support/v4/app/NotificationManagerCompat$Task;
    if-nez v2, :cond_3

    #@8d
    .line 522
    :cond_6
    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@8f
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    #@92
    move-result v3

    #@93
    if-nez v3, :cond_7

    #@95
    .line 524
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@98
    .line 487
    :cond_7
    return-void

    #@99
    .line 517
    :catch_0
    move-exception v1

    #@9a
    .line 518
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotifManCompat"

    #@9d
    new-instance v4, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v5, "RemoteException communicating with "

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    iget-object v5, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v4

    #@b3
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b6
    goto :goto_0

    #@b7
    .line 512
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@b8
    .line 513
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "NotifManCompat"

    #@bb
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@be
    move-result v3

    #@bf
    if-eqz v3, :cond_6

    #@c1
    .line 514
    const-string/jumbo v3, "NotifManCompat"

    #@c4
    new-instance v4, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v5, "Remote service has died: "

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    iget-object v5, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@d2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v4

    #@da
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    goto :goto_0
.end method

.method private scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 6
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 465
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@5
    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 466
    return-void

    #@c
    .line 468
    :cond_0
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@12
    .line 469
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@14
    const/4 v3, 0x6

    #@15
    if-le v2, v3, :cond_1

    #@17
    .line 470
    const-string/jumbo v2, "NotifManCompat"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Giving up on delivering "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@28
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, " tasks to "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 471
    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@39
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 471
    const-string/jumbo v4, " after "

    #@40
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 471
    iget v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@46
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 471
    const-string/jumbo v4, " retries"

    #@4d
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 472
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    #@5a
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    #@5d
    .line 473
    return-void

    #@5e
    .line 475
    :cond_1
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    #@60
    add-int/lit8 v2, v2, -0x1

    #@62
    const/4 v3, 0x1

    #@63
    shl-int v2, v3, v2

    #@65
    mul-int/lit16 v0, v2, 0x3e8

    #@67
    .line 476
    .local v0, "delayMs":I
    const-string/jumbo v2, "NotifManCompat"

    #@6a
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 477
    const-string/jumbo v2, "NotifManCompat"

    #@73
    new-instance v3, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v4, "Scheduling retry for "

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    const-string/jumbo v4, " ms"

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 479
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@93
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    #@95
    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@98
    move-result-object v1

    #@99
    .line 480
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@9b
    int-to-long v4, v0

    #@9c
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@9f
    .line 464
    return-void
.end method

.method private updateListenerMap()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    .line 383
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v9}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    .line 384
    .local v3, "enabledPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    #@9
    invoke-interface {v3, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v9

    #@d
    if-eqz v9, :cond_0

    #@f
    .line 386
    return-void

    #@10
    .line 388
    :cond_0
    iput-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    #@12
    .line 389
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v9

    #@18
    .line 390
    new-instance v10, Landroid/content/Intent;

    #@1a
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    #@1d
    const-string/jumbo v11, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    #@20
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@23
    move-result-object v10

    #@24
    const/4 v11, 0x4

    #@25
    .line 389
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@28
    move-result-object v8

    #@29
    .line 391
    .local v8, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    #@2b
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@2e
    .line 392
    .local v2, "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v7

    #@32
    .local v7, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v9

    #@36
    if-eqz v9, :cond_3

    #@38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@3e
    .line 393
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@40
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@42
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_1

    #@48
    .line 396
    new-instance v0, Landroid/content/ComponentName;

    #@4a
    .line 397
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4c
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4e
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@50
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@52
    .line 396
    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 398
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@57
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@59
    if-eqz v9, :cond_2

    #@5b
    .line 399
    const-string/jumbo v9, "NotifManCompat"

    #@5e
    new-instance v10, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v11, "Permission present on component "

    #@66
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    .line 400
    const-string/jumbo v11, ", not adding listener record."

    #@71
    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    goto :goto_0

    #@7d
    .line 403
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_0

    #@81
    .line 406
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v1

    #@85
    .local v1, "componentName$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v9

    #@89
    if-eqz v9, :cond_6

    #@8b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Landroid/content/ComponentName;

    #@91
    .line 407
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@93
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@96
    move-result v9

    #@97
    if-nez v9, :cond_4

    #@99
    .line 408
    const-string/jumbo v9, "NotifManCompat"

    #@9c
    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9f
    move-result v9

    #@a0
    if-eqz v9, :cond_5

    #@a2
    .line 409
    const-string/jumbo v9, "NotifManCompat"

    #@a5
    new-instance v10, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v11, "Adding listener record for "

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v10

    #@b9
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 411
    :cond_5
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@be
    new-instance v10, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@c0
    invoke-direct {v10, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Landroid/content/ComponentName;)V

    #@c3
    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    goto :goto_1

    #@c7
    .line 416
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_6
    iget-object v9, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    #@c9
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@cc
    move-result-object v9

    #@cd
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object v5

    #@d1
    .line 417
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;"
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v9

    #@d5
    if-eqz v9, :cond_9

    #@d7
    .line 418
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v4

    #@db
    check-cast v4, Ljava/util/Map$Entry;

    #@dd
    .line 419
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e0
    move-result-object v9

    #@e1
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e4
    move-result v9

    #@e5
    if-nez v9, :cond_7

    #@e7
    .line 420
    const-string/jumbo v9, "NotifManCompat"

    #@ea
    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@ed
    move-result v9

    #@ee
    if-eqz v9, :cond_8

    #@f0
    .line 421
    const-string/jumbo v9, "NotifManCompat"

    #@f3
    new-instance v10, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v11, "Removing listener record for "

    #@fb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@102
    move-result-object v11

    #@103
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v10

    #@107
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v10

    #@10b
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 423
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@111
    move-result-object v9

    #@112
    check-cast v9, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    #@114
    invoke-direct {p0, v9}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    #@117
    .line 424
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    #@11a
    goto :goto_2

    #@11b
    .line 382
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;"
    :cond_9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 326
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 313
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$Task;

    #@c
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    #@f
    .line 314
    return v3

    #@10
    .line 316
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;

    #@14
    .line 317
    .local v0, "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
    iget-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    #@16
    iget-object v2, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    #@18
    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@1b
    .line 318
    return v3

    #@1c
    .line 320
    .end local v0    # "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v1, Landroid/content/ComponentName;

    #@20
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Landroid/content/ComponentName;)V

    #@23
    .line 321
    return v3

    #@24
    .line 323
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v1, Landroid/content/ComponentName;

    #@28
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Landroid/content/ComponentName;)V

    #@2b
    .line 324
    return v3

    #@2c
    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 362
    const-string/jumbo v0, "NotifManCompat"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 363
    const-string/jumbo v0, "NotifManCompat"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Connected to service "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@26
    .line 366
    new-instance v1, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;

    #@28
    invoke-direct {v1, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@2b
    .line 365
    const/4 v2, 0x1

    #@2c
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@33
    .line 361
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 372
    const-string/jumbo v0, "NotifManCompat"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 373
    const-string/jumbo v0, "NotifManCompat"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Disconnected from service "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 375
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@26
    const/4 v1, 0x2

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@2e
    .line 371
    return-void
.end method

.method public queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .locals 2
    .param p1, "task"    # Landroid/support/v4/app/NotificationManagerCompat$Task;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 305
    return-void
.end method
