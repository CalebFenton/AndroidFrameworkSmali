.class public Landroid/uwb/RangingManager;
.super Landroid/uwb/IUwbRangingCallbacks$Stub;
.source "RangingManager.java"


# static fields
.field private static blacklist sNextSessionId:I


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mRangingSessionTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Landroid/uwb/SessionHandle;",
            "Landroid/uwb/RangingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x1

    sput v0, Landroid/uwb/RangingManager;->sNextSessionId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/uwb/IUwbAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 42
    invoke-direct {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uwb.RangingManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    .line 43
    iput-object p1, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 44
    return-void
.end method

.method private static blacklist convertToReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 569
    packed-switch p0, :pswitch_data_1e

    .line 602
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 598
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 580
    :pswitch_8
    const/16 v0, 0xf

    return v0

    .line 595
    :pswitch_b
    const/16 v0, 0xe

    return v0

    .line 592
    :pswitch_e
    const/16 v0, 0x9

    return v0

    .line 589
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 586
    :pswitch_13
    const/4 v0, 0x7

    return v0

    .line 583
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 577
    :pswitch_17
    const/4 v0, 0x6

    return v0

    .line 574
    :pswitch_19
    const/4 v0, 0x5

    return v0

    .line 571
    :pswitch_1b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist hasSession(Landroid/uwb/SessionHandle;)Z
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 102
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$openSession$0(Landroid/uwb/RangingSession;)V
    .registers 1
    .param p0, "session"    # Landroid/uwb/RangingSession;

    .line 96
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->close()V

    return-void
.end method


# virtual methods
.method public blacklist onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 273
    monitor-enter p0

    .line 274
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 275
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeAddFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit p0

    return-void

    .line 280
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 281
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onControleeAddFailed(ILandroid/os/PersistableBundle;)V

    .line 282
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 258
    monitor-enter p0

    .line 259
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 260
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeAdded - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit p0

    return-void

    .line 265
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 266
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onControleeAdded(Landroid/os/PersistableBundle;)V

    .line 267
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 304
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeRemoveFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit p0

    return-void

    .line 309
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 310
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V

    .line 311
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 312
    return-void

    .line 311
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 287
    monitor-enter p0

    .line 288
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 289
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeRemoved - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit p0

    return-void

    .line 294
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 295
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onControleeRemoved(Landroid/os/PersistableBundle;)V

    .line 296
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 297
    return-void

    .line 296
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;

    .line 449
    monitor-enter p0

    .line 450
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 451
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceiveFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit p0

    return-void

    .line 456
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 457
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 458
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 459
    return-void

    .line 458
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B

    .line 434
    monitor-enter p0

    .line 435
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 436
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit p0

    return-void

    .line 441
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 442
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 443
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 444
    return-void

    .line 443
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;

    .line 389
    monitor-enter p0

    .line 390
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 391
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSendFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    monitor-exit p0

    return-void

    .line 396
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 397
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 398
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 399
    return-void

    .line 398
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 375
    monitor-enter p0

    .line 376
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 377
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSent - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    monitor-exit p0

    return-void

    .line 381
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 382
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    .line 383
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 384
    return-void

    .line 383
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataTransferPhaseConfigFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 419
    monitor-enter p0

    .line 420
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 421
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataTransferPhaseConfigFailed - received unknown SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit p0

    return-void

    .line 426
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 427
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onDataTransferPhaseConfigFailed(ILandroid/os/PersistableBundle;)V

    .line 428
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 429
    return-void

    .line 428
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onDataTransferPhaseConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 404
    monitor-enter p0

    .line 405
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 406
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataTransferPhaseConfigured - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit p0

    return-void

    .line 411
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 412
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onDataTransferPhaseConfigured(Landroid/os/PersistableBundle;)V

    .line 413
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onHybridSessionControleeConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 524
    monitor-enter p0

    .line 525
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 526
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControleeConfigurationFailed - receivedunexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    monitor-exit p0

    return-void

    .line 531
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 532
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onHybridSessionControleeConfigurationFailed(ILandroid/os/PersistableBundle;)V

    .line 533
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 534
    return-void

    .line 533
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onHybridSessionControleeConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 509
    monitor-enter p0

    .line 510
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 511
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControleeConfigured - received unexpectedSessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    monitor-exit p0

    return-void

    .line 516
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 517
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onHybridSessionControleeConfigured(Landroid/os/PersistableBundle;)V

    .line 518
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 519
    return-void

    .line 518
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onHybridSessionControllerConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 494
    monitor-enter p0

    .line 495
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 496
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControllerConfigurationFailed - receivedunexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    monitor-exit p0

    return-void

    .line 501
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 502
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onHybridSessionControllerConfigurationFailed(ILandroid/os/PersistableBundle;)V

    .line 503
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 504
    return-void

    .line 503
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onHybridSessionControllerConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 479
    monitor-enter p0

    .line 480
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 481
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControllerConfigured - received unexpectedSessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit p0

    return-void

    .line 486
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 487
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onHybridSessionControllerConfigured(Landroid/os/PersistableBundle;)V

    .line 488
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 489
    return-void

    .line 488
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 229
    monitor-enter p0

    .line 230
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 231
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingClosed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit p0

    return-void

    .line 236
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 237
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingClosed(ILandroid/os/PersistableBundle;)V

    .line 238
    iget-object v1, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public blacklist onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 124
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingOpenedFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 131
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingOpenFailed(ILandroid/os/PersistableBundle;)V

    .line 132
    iget-object v1, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    nop

    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public blacklist onRangingOpened(Landroid/uwb/SessionHandle;)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 109
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingOpened - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit p0

    return-void

    .line 114
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 115
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0}, Landroid/uwb/RangingSession;->onRangingOpened()V

    .line 116
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 331
    monitor-enter p0

    .line 332
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 333
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingPauseFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit p0

    return-void

    .line 338
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 339
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onRangingPauseFailed(ILandroid/os/PersistableBundle;)V

    .line 340
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 318
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingPaused - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit p0

    return-void

    .line 323
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 324
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingPaused(Landroid/os/PersistableBundle;)V

    .line 325
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 156
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingReconfigureFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit p0

    return-void

    .line 161
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 162
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingReconfigureFailed(ILandroid/os/PersistableBundle;)V

    .line 163
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public blacklist onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 140
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingReconfigured - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit p0

    return-void

    .line 146
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 147
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingReconfigured(Landroid/os/PersistableBundle;)V

    .line 148
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "result"    # Landroid/uwb/RangingReport;

    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 246
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResult - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    monitor-exit p0

    return-void

    .line 251
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 252
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingResult(Landroid/uwb/RangingReport;)V

    .line 253
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 360
    monitor-enter p0

    .line 361
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 362
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResumeFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit p0

    return-void

    .line 367
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 368
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onRangingResumeFailed(ILandroid/os/PersistableBundle;)V

    .line 369
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 345
    monitor-enter p0

    .line 346
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 347
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResumed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit p0

    return-void

    .line 352
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 353
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingResumed(Landroid/os/PersistableBundle;)V

    .line 354
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 355
    return-void

    .line 354
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingRoundsUpdateDtTagStatus(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 554
    monitor-enter p0

    .line 555
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 556
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingRoundsUpdateDtTagStatus - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit p0

    return-void

    .line 561
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 562
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingRoundsUpdateDtTagStatus(Landroid/os/PersistableBundle;)V

    .line 563
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 564
    return-void

    .line 563
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 186
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStartFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    monitor-exit p0

    return-void

    .line 191
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 192
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStartFailed(ILandroid/os/PersistableBundle;)V

    .line 193
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 194
    return-void

    .line 193
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public blacklist onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 171
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStarted - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit p0

    return-void

    .line 176
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 177
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingStarted(Landroid/os/PersistableBundle;)V

    .line 178
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 216
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStopFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-exit p0

    return-void

    .line 221
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 222
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStopFailed(ILandroid/os/PersistableBundle;)V

    .line 223
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public blacklist onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 199
    monitor-enter p0

    .line 200
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 201
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStopped - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit p0

    return-void

    .line 206
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 207
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStopped(ILandroid/os/PersistableBundle;)V

    .line 208
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public blacklist onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 539
    monitor-enter p0

    .line 540
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 541
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    monitor-exit p0

    return-void

    .line 546
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 547
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onServiceConnected(Landroid/os/PersistableBundle;)V

    .line 548
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 549
    return-void

    .line 548
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 464
    monitor-enter p0

    .line 465
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 466
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDiscovered - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit p0

    return-void

    .line 471
    :cond_21
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 472
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onServiceDiscovered(Landroid/os/PersistableBundle;)V

    .line 473
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 474
    return-void

    .line 473
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist openSession(Landroid/content/AttributionSource;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 15
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p5, "chipId"    # Ljava/lang/String;

    .line 66
    if-eqz p5, :cond_2c

    .line 68
    :try_start_2
    iget-object v0, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getChipIds()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 75
    .end local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2c

    .line 70
    .restart local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSession - received invalid chipId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/uwb/RangingManager;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p5    # "chipId":Ljava/lang/String;
    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_28

    .line 73
    .end local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/uwb/RangingManager;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .restart local p5    # "chipId":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    monitor-enter p0

    .line 79
    :try_start_2d
    new-instance v0, Landroid/uwb/SessionHandle;

    sget v1, Landroid/uwb/RangingManager;->sNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/uwb/RangingManager;->sNextSessionId:I

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/uwb/SessionHandle;-><init>(ILandroid/content/AttributionSource;I)V

    move-object v5, v0

    .line 81
    .local v5, "sessionHandle":Landroid/uwb/SessionHandle;
    new-instance v3, Landroid/uwb/RangingSession;

    iget-object v6, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_9a

    move-object v4, p3

    move-object v8, p5

    move-object v7, v5

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p5    # "chipId":Ljava/lang/String;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callbacks":Landroid/uwb/RangingSession$Callback;
    .local v7, "sessionHandle":Landroid/uwb/SessionHandle;
    .local v8, "chipId":Ljava/lang/String;
    :try_start_45
    invoke-direct/range {v3 .. v8}, Landroid/uwb/RangingSession;-><init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_92

    move-object v5, v7

    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "sessionHandle":Landroid/uwb/SessionHandle;
    .local v5, "sessionHandle":Landroid/uwb/SessionHandle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    move-object p5, v3

    .line 83
    .local p5, "session":Landroid/uwb/RangingSession;
    :try_start_4a
    iget-object v0, p0, Landroid/uwb/RangingManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSession - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v5, p5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_8c

    .line 86
    :try_start_67
    iget-object v3, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_69} :catch_82
    .catchall {:try_start_67 .. :try_end_69} :catchall_8c

    move-object v6, p0

    move-object v4, p1

    move-object v7, p2

    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    .local v7, "params":Landroid/os/PersistableBundle;
    :try_start_6c
    invoke-interface/range {v3 .. v8}, Landroid/uwb/IUwbAdapter;->openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_7f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a2

    .line 93
    nop

    .line 95
    :try_start_70
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 96
    .local p1, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance p2, Landroid/uwb/RangingManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p5}, Landroid/uwb/RangingManager$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/RangingSession;)V

    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 97
    monitor-exit p0

    return-object p1

    .line 91
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_7f
    move-exception v0

    move-object p1, v0

    goto :goto_87

    .end local v4    # "attributionSource":Landroid/content/AttributionSource;
    .end local v7    # "params":Landroid/os/PersistableBundle;
    .local p1, "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    :catch_82
    move-exception v0

    move-object v6, p0

    move-object v4, p1

    move-object v7, p2

    move-object p1, v0

    .line 92
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .restart local v4    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v7    # "params":Landroid/os/PersistableBundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_87
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    .end local v4    # "attributionSource":Landroid/content/AttributionSource;
    .end local v7    # "params":Landroid/os/PersistableBundle;
    .end local v8    # "chipId":Ljava/lang/String;
    .end local p0    # "this":Landroid/uwb/RangingManager;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    throw p2

    .line 98
    .end local v5    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p5    # "session":Landroid/uwb/RangingSession;
    .restart local v8    # "chipId":Ljava/lang/String;
    .restart local p0    # "this":Landroid/uwb/RangingManager;
    .local p1, "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    :catchall_8c
    move-exception v0

    move-object v6, p0

    move-object v4, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .restart local v4    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v7    # "params":Landroid/os/PersistableBundle;
    goto :goto_a0

    .end local v7    # "params":Landroid/os/PersistableBundle;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callbacks":Landroid/uwb/RangingSession$Callback;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    :catchall_92
    move-exception v0

    move-object v6, p0

    move-object v7, p2

    move-object p3, v4

    move-object p4, v5

    move-object v4, p1

    move-object p1, v0

    .end local v5    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    .restart local v7    # "params":Landroid/os/PersistableBundle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    goto :goto_a0

    .end local v4    # "attributionSource":Landroid/content/AttributionSource;
    .end local v7    # "params":Landroid/os/PersistableBundle;
    .end local v8    # "chipId":Ljava/lang/String;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    .local p5, "chipId":Ljava/lang/String;
    :catchall_9a
    move-exception v0

    move-object v6, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p5

    move-object p1, v0

    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .end local p5    # "chipId":Ljava/lang/String;
    .restart local v4    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v7    # "params":Landroid/os/PersistableBundle;
    .restart local v8    # "chipId":Ljava/lang/String;
    :goto_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_70 .. :try_end_a1} :catchall_a2

    throw p1

    :catchall_a2
    move-exception v0

    move-object p1, v0

    goto :goto_a0
.end method
