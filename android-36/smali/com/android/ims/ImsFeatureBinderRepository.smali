.class public Lcom/android/ims/ImsFeatureBinderRepository;
.super Ljava/lang/Object;
.source "ImsFeatureBinderRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;,
        Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImsFeatureBinderRepo"


# instance fields
.field private final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Landroid/util/LocalLog;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    .line 268
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    .line 271
    const/4 v0, -0x1

    const-string v1, "FeatureConnectionRepository - created"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 272
    return-void
.end method

.method private blacklist getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 416
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    monitor-enter v0

    .line 417
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;-><init>(II)V

    .line 418
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 419
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    .line 420
    .local v1, "mapper":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    if-nez v1, :cond_2a

    .line 421
    new-instance v2, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    invoke-direct {v2, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;-><init>(II)V

    move-object v1, v2

    .line 422
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_2a
    monitor-exit v0

    return-object v1

    .line 425
    .end local v1    # "mapper":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method static synthetic blacklist lambda$getUpdateMapper$0(IILcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;)Z
    .registers 4
    .param p0, "phoneId"    # I
    .param p1, "type"    # I
    .param p2, "c"    # Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    .line 418
    iget v0, p2, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->phoneId:I

    if-ne v0, p0, :cond_a

    iget v0, p2, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->imsFeatureType:I

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist logInfoLineLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "log"    # Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "phoneIdPrefix":Ljava/lang/String;
    const-string v1, "ImsFeatureBinderRepo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    monitor-enter v1

    .line 441
    :try_start_32
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method private blacklist logVerboseLineLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "log"    # Ljava/lang/String;

    .line 429
    const-string v0, "ImsFeatureBinderRepo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 430
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "phoneIdPrefix":Ljava/lang/String;
    const-string v1, "ImsFeatureBinderRepo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    monitor-enter v1

    .line 433
    :try_start_3c
    iget-object v2, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_54

    throw v2
.end method


# virtual methods
.method public blacklist addConnection(IIILcom/android/ims/ImsFeatureContainer;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "newConnection"    # Lcom/android/ims/ImsFeatureContainer;

    .line 347
    if-ltz p3, :cond_46

    const/4 v0, 0x3

    if-ge p3, v0, :cond_46

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnection, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 351
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 352
    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v0

    .line 353
    .local v0, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->updateSubId(I)V

    .line 354
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->addFeatureContainer(Lcom/android/ims/ImsFeatureContainer;)V

    .line 355
    return-void

    .line 348
    .end local v0    # "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 410
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getIfExists(II)Ljava/util/Optional;
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Optional<",
            "Lcom/android/ims/ImsFeatureContainer;",
            ">;"
        }
    .end annotation

    .line 283
    if-ltz p2, :cond_3e

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3e

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v0

    .line 288
    .local v0, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->getFeatureContainer()Lcom/android/ims/ImsFeatureContainer;

    move-result-object v1

    .line 289
    .local v1, "c":Lcom/android/ims/ImsFeatureContainer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIfExists, type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsFeatureBinderRepository;->logVerboseLineLocked(ILjava/lang/String;)V

    .line 291
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 284
    .end local v0    # "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    .end local v1    # "c":Lcom/android/ims/ImsFeatureContainer;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect feature type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyFeatureCapabilitiesChanged(IIJ)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "capabilities"    # J

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapabilitiesChanged, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 400
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    invoke-static {p3, p4}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-direct {p0, p1, v0}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v0

    .line 403
    .local v0, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v0, p3, p4}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->notifyUpdateCapabilities(J)V

    .line 404
    return-void
.end method

.method public blacklist notifyFeatureStateChanged(III)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "state"    # I

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureStateChanged, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    .line 384
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v0

    .line 386
    .local v0, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->notifyStateUpdated(I)V

    .line 387
    return-void
.end method

.method public blacklist registerForConnectionUpdates(IILcom/android/ims/internal/IImsServiceFeatureCallback;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 308
    if-ltz p2, :cond_42

    const/4 v0, 0x3

    if-ge p2, v0, :cond_42

    if-eqz p3, :cond_42

    if-eqz p4, :cond_42

    .line 311
    new-instance v0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    invoke-direct {v0, p3, p4}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;-><init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;Ljava/util/concurrent/Executor;)V

    .line 312
    .local v0, "container":Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForConnectionUpdates, type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-direct {p0, p1, v1}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v1

    .line 315
    .local v1, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v1, v0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->addListener(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    .line 316
    return-void

    .line 309
    .end local v0    # "container":Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;
    .end local v1    # "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One or more invalid arguments have been passed in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeConnection(II)Lcom/android/ims/ImsFeatureContainer;
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 364
    if-ltz p2, :cond_30

    const/4 v0, 0x3

    if-ge p2, v0, :cond_30

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeConnection, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getUpdateMapper(II)Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    move-result-object v0

    .line 370
    .local v0, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v0}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeFeatureContainer()Lcom/android/ims/ImsFeatureContainer;

    move-result-object v1

    return-object v1

    .line 365
    .end local v0    # "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterForConnectionUpdates(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 324
    if-eqz p1, :cond_37

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForConnectionUpdates, callback= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsFeatureBinderRepository;->logInfoLineLocked(ILjava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    monitor-enter v0

    .line 329
    :try_start_1c
    iget-object v1, p0, Lcom/android/ims/ImsFeatureBinderRepository;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    .line 331
    .local v2, "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    invoke-virtual {v2, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->removeListener(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 332
    .end local v2    # "m":Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;
    goto :goto_22

    .line 333
    :cond_32
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_34

    throw v1

    .line 325
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this method does not accept null arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
