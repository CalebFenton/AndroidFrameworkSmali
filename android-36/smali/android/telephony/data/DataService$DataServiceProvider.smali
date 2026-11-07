.class public abstract Landroid/telephony/data/DataService$DataServiceProvider;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DataServiceProvider"
.end annotation


# instance fields
.field private final blacklist mApnUnthrottledCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDataCallListChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/data/DataService;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/data/DataService;
    .param p2, "slotIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    .line 154
    iput p2, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    .line 155
    return-void
.end method

.method static synthetic blacklist lambda$requestNetworkValidation$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultCodeCallback"    # Ljava/util/function/Consumer;

    .line 424
    nop

    .line 425
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method private blacklist registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 380
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 368
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 386
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 374
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 376
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public blacklist cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6
    .param p1, "cid"    # I
    .param p2, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 350
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    .line 354
    return-void
.end method

.method public abstract whitelist test-api close()V
.end method

.method public whitelist deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .registers 5
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 258
    if-eqz p3, :cond_6

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 261
    :cond_6
    return-void
.end method

.method public final whitelist getSlotIndex()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final whitelist notifyApnUnthrottled(Ljava/lang/String;)V
    .registers 10
    .param p1, "apn"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 452
    .local v2, "callback":Landroid/telephony/data/IDataServiceCallback;
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Ljava/lang/String;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 455
    .end local v2    # "callback":Landroid/telephony/data/IDataServiceCallback;
    goto :goto_9

    .line 456
    :cond_2d
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final whitelist notifyDataCallListChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 437
    .local v2, "callback":Landroid/telephony/data/IDataServiceCallback;
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$DataCallListChangedIndication;-><init>(Ljava/util/List;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 439
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 440
    .end local v2    # "callback":Landroid/telephony/data/IDataServiceCallback;
    goto :goto_9

    .line 441
    :cond_2d
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final whitelist notifyDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 10
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;

    .line 465
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 466
    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    .line 467
    .local v2, "callback":Landroid/telephony/data/IDataServiceCallback;
    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    new-instance v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v5, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Landroid/telephony/data/DataProfile;Landroid/telephony/data/IDataServiceCallback;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 470
    .end local v2    # "callback":Landroid/telephony/data/IDataServiceCallback;
    goto :goto_9

    .line 471
    :cond_2d
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 363
    const/4 v0, 0x1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 365
    return-void
.end method

.method public whitelist requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p3, "resultCodeCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNetworkValidation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/telephony/data/DataService$DataServiceProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public whitelist setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 5
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 291
    .local p1, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    if-eqz p3, :cond_6

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    .line 294
    :cond_6
    return-void
.end method

.method public whitelist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 5
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 273
    if-eqz p3, :cond_6

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    .line 277
    :cond_6
    return-void
.end method

.method public whitelist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 20
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "pduSessionId"    # I
    .param p8, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p9, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p10, "matchAllRuleAllowed"    # Z
    .param p11, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    .line 240
    return-void
.end method

.method public whitelist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .registers 10
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 186
    if-eqz p7, :cond_7

    .line 187
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 190
    :cond_7
    return-void
.end method

.method public blacklist startHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6
    .param p1, "cid"    # I
    .param p2, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 319
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    .line 323
    return-void
.end method
