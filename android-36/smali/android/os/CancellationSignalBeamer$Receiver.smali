.class public Landroid/os/CancellationSignalBeamer$Receiver;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private final blacklist mCancelOnSenderDeath:Z

.field private final blacklist mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "cancelOnSenderDeath"    # Z

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    .line 283
    iput-boolean p1, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mCancelOnSenderDeath:Z

    .line 284
    return-void
.end method

.method private blacklist dead(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 370
    iget-boolean v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mCancelOnSenderDeath:Z

    if-eqz v0, :cond_8

    .line 371
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->cancel(Landroid/os/IBinder;)V

    goto :goto_b

    .line 373
    :cond_8
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    .line 375
    :goto_b
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "who"    # Landroid/os/IBinder;

    .line 379
    invoke-direct {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->dead(Landroid/os/IBinder;)V

    .line 380
    return-void
.end method

.method public blacklist cancel(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 358
    monitor-enter p0

    .line 359
    :try_start_1
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 360
    .local v0, "cs":Landroid/os/CancellationSignal;
    if-eqz v0, :cond_13

    .line 361
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    .line 365
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    .line 366
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 367
    return-void

    .line 363
    :cond_13
    :try_start_13
    monitor-exit p0

    return-void

    .line 365
    .end local v0    # "cs":Landroid/os/CancellationSignal;
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist forget(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 336
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 338
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 340
    :cond_d
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 299
    if-nez p1, :cond_4

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_4
    monitor-enter p0

    .line 303
    :try_start_5
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 304
    .local v0, "cs":Landroid/os/CancellationSignal;
    if-eqz v0, :cond_11

    .line 305
    monitor-exit p0

    return-object v0

    .line 308
    :cond_11
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 309
    .end local v0    # "cs":Landroid/os/CancellationSignal;
    .local v1, "cs":Landroid/os/CancellationSignal;
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_26

    .line 311
    const/4 v0, 0x0

    :try_start_1c
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 314
    goto :goto_24

    .line 312
    :catch_20
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-direct {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->dead(Landroid/os/IBinder;)V

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit p0

    return-object v1

    .line 316
    .end local v1    # "cs":Landroid/os/CancellationSignal;
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw v0
.end method
