.class public Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;
.super Landroid/os/Handler;
.source "SimPhonebookRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;
    }
.end annotation


# static fields
.field static final blacklist ENABLE_INFLATE_WITH_EMPTY_RECORDS:Z = true


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/AdnCapacity;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mIsUpdateDone:Z

.field private blacklist mPhoneId:I

.field private blacklist mReadLock:Ljava/lang/Object;

.field private final blacklist mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2bCGQiMcp1cfMiux8vCd8-R6gHo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 8

    .line 564
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getRecordId()I

    move-result v2

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x6f3a

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$YZl5kIYd_OEAyDk6kqnz-mEa3_Y(Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nRP_VE1rhMA6RbyzHorbe96tNzg(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 9

    .line 613
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x6f3a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .registers 7

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    const-string v0, "SimPhonebookRecordCache"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mPhoneId:I

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mContext:Landroid/content/Context;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 111
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x6

    .line 112
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 113
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .registers 5

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the added or changed ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecId(I)V

    .line 589
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist deleteSimPbRecord(I)V
    .registers 10

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the deleted ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 599
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist fillCache()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 192
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_e
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_13

    :catchall_c
    move-exception p0

    goto :goto_15

    .line 194
    :catch_e
    :try_start_e
    const-string v1, "Interrupted Exception in queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 196
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_c

    throw p0
.end method

.method private blacklist fillCacheWithoutWaiting()V
    .registers 4

    .line 200
    const-string v0, "Start to queryAdnRecord"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookRecords(Landroid/os/Message;)V

    return-void

    .line 204
    :cond_1a
    const-string v0, "The loading is ongoing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getSimPhonebookCapacity()V
    .registers 3

    .line 180
    const-string v0, "Start to getSimPhonebookCapacity"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookCapacity(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    if-nez p1, :cond_f

    .line 437
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    .line 439
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_44

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    .line 442
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    goto :goto_3e

    .line 445
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    goto :goto_3e

    .line 449
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 450
    const-string p1, "ADN capacity is invalid"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 452
    :goto_3e
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 455
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 456
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 457
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 458
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    goto :goto_7c

    .line 459
    :cond_5d
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    goto :goto_7c

    .line 462
    :cond_6c
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result p1

    if-nez p1, :cond_7c

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    .line 466
    :cond_7c
    :goto_7c
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    return-void
.end method

.method private blacklist handlePhonebookChanged()V
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    return-void

    .line 430
    :cond_c
    const-string v0, "Do nothing in the midst of multiple update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5f

    .line 484
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isOk()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 485
    const-string v0, "Partial data is received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    return-void

    .line 487
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 488
    const-string v0, "The whole loading process is finished"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void

    .line 495
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isRetryNeeded()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_56

    .line 496
    const-string p1, "Start to retry as aborted"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    return-void

    .line 499
    :cond_56
    const-string p1, "Error happened"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void

    .line 505
    :cond_5f
    const-string p1, "No records there"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void
.end method

.method private blacklist handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 550
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-nez v0, :cond_10

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v1, 0x4f30

    if-eq p1, v1, :cond_13

    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_13

    :cond_10
    const/4 p1, 0x1

    if-ne v0, p1, :cond_19

    .line 554
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    :cond_19
    return-void

    .line 558
    :cond_1a
    const-string p1, "IccRefreshResponse received is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V
    .registers 7

    .line 512
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    const/4 v1, 0x1

    .line 513
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 514
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_53

    .line 515
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetmyRecordId(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)I

    move-result v1

    .line 516
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetadnRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v2

    .line 517
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v3, 0x0

    aget p1, p1, v3

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "my record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_44

    if-ne v1, p1, :cond_3c

    goto :goto_44

    .line 526
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "The record ID for update doesn\'t match"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    .line 520
    :cond_44
    :goto_44
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 521
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_51

    .line 523
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->deleteSimPbRecord(I)V

    :goto_51
    const/4 p1, 0x0

    goto :goto_5d

    .line 530
    :cond_53
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Update adn record failed"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 533
    :goto_5d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->responseResult(Ljava/lang/Exception;)V

    goto :goto_73

    .line 537
    :cond_6e
    const-string p1, "this update request isn\'t found"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 539
    :goto_73
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 11

    .line 472
    const-string v0, "inflateWithEmptyRecords"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_2e

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    move v3, v0

    .line 474
    :goto_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v0

    if-gt v3, v0, :cond_2e

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2e
    return-void
.end method

.method private blacklist invalidateSimPbCache()V
    .registers 3

    .line 609
    const-string v0, "invalidateSimPbCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 612
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method private blacklist isAdnCapacityInvalid()Z
    .registers 2

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 621
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 627
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyAdnLoadingWaiters()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 264
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    :catchall_d
    move-exception p0

    .line 264
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method private blacklist notifyAndClearWaiters()V
    .registers 8

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_a
    :goto_a
    if-ge v3, v2, :cond_2b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/Message;

    if-eqz v4, :cond_a

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 159
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    .line 160
    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 161
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :catchall_29
    move-exception p0

    goto :goto_32

    .line 164
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_29

    throw p0
.end method

.method private blacklist populateAdnRecords(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 564
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;-><init>()V

    .line 571
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 572
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    :cond_28
    return-void
.end method

.method private blacklist reset()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    return-void
.end method

.method private blacklist responseToWaitersWithErrorOrSuccess(Z)V
    .registers 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseToWaitersWithErrorOrSuccess success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_25

    .line 417
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    goto :goto_28

    .line 419
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendResponsesToWaitersWithError()V

    .line 422
    :goto_28
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 148
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 150
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private blacklist sendGettingPhonebookRecordsRetry(I)V
    .registers 4

    const/4 p1, 0x7

    .line 577
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 578
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 582
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist sendResponsesToWaitersWithError()V
    .registers 7

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/Message;

    .line 173
    const-string v5, "Query adn record failed"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_f

    :catchall_1f
    move-exception p0

    goto :goto_28

    .line 175
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 176
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1f

    throw p0
.end method

.method private blacklist tryFireUpdatePendingList()V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    :cond_14
    return-void
.end method

.method private blacklist updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V
    .registers 5

    .line 334
    const-string v0, "update Sim phonebook"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetphonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v1

    const/4 v2, 0x5

    .line 336
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 335
    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 6

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update sim contact for record ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    move v0, p1

    .line 309
    :goto_1a
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;-><init>()V

    .line 310
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setRecordId(I)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAlphaTag(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setEmails([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAdditionalNumbers([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->build()Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;-><init>(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    .line 317
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    .line 322
    :cond_5a
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 323
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_82

    if-eqz p1, :cond_7e

    goto :goto_82

    .line 330
    :cond_7e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    return-void

    .line 324
    :cond_82
    :goto_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "It is pending on update as  mIsRecordLoading = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsInRetry = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " pending size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 326
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mIsInitialized = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist dispose()V
    .registers 2

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->reset()V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookChanged(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    return-object p0
.end method

.method public blacklist getAdnRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_f6

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    return-void

    .line 396
    :pswitch_1d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PHONEBOOK_RECORDS_RETRY cnt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge p1, v0, :cond_44

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    add-int/lit8 p1, p1, 0x1

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    return-void

    .line 403
    :cond_44
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void

    .line 387
    :pswitch_48
    const-string v0, "EVENT_SIM_REFRESH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 388
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 389
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5d

    .line 390
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    .line 392
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM refresh Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void

    .line 382
    :pswitch_74
    const-string v0, "EVENT_UPDATE_PHONEBOOK_RECORD_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 383
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V

    return-void

    .line 359
    :pswitch_81
    const-string v0, "EVENT_GET_PHONEBOOK_CAPACITY_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 360
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_98

    .line 361
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_98

    .line 362
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    return-void

    .line 365
    :cond_98
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-nez p1, :cond_a8

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 368
    :cond_a8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    return-void

    .line 348
    :pswitch_ac
    const-string v0, "EVENT_GET_PHONEBOOK_RECORDS_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 349
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_ce

    .line 350
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_ce

    .line 351
    const-string p1, "Failed to gain phonebook records"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 353
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_ce

    .line 354
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    :cond_ce
    return-void

    .line 372
    :pswitch_cf
    const-string v0, "EVENT_PHONEBOOK_RECORDS_RECEIVED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 373
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 374
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_e4

    .line 375
    const-string v0, "Unexpected exception happened"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 379
    :cond_e4
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V

    return-void

    .line 344
    :pswitch_ec
    const-string p1, "EVENT_PHONEBOOK_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookChanged()V

    return-void

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_cf
        :pswitch_ac
        :pswitch_81
        :pswitch_74
        :pswitch_48
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->getInstance()Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->getCapabilities()Ljava/util/Set;

    move-result-object v0

    const-string v1, "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1b

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isLoading()Z
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist requestLoadAllPbRecords(Landroid/os/Message;)V
    .registers 5

    if-nez p1, :cond_13

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    .line 210
    const-string p1, "Try to enforce flushing cache"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    return-void

    .line 215
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_16
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_9b

    :cond_2d
    :goto_2d
    const/4 v2, 0x1

    if-gt p1, v2, :cond_69

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_69

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_69

    if-eqz v1, :cond_43

    goto :goto_69

    .line 229
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_2b

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_65

    .line 231
    const-string p1, "ADN cache has already filled in"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_65

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    .line 237
    :cond_65
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCache()V

    return-void

    .line 224
    :cond_69
    :goto_69
    :try_start_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add to the pending list as pending size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is retrying = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " IsInitialized = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :goto_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_69 .. :try_end_9c} :catchall_2b

    throw p0
.end method

.method public blacklist updateSimPbAdnByRecordId(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 6

    if-nez p2, :cond_8

    .line 270
    const-string p1, "There is an invalid new Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 275
    const-string p1, "There is an invalid old Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_1a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 8

    if-nez p2, :cond_8

    .line 283
    const-string p1, "There is an invalid new Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v0, -0x1

    if-eqz p1, :cond_32

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 291
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 292
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    move-result p1

    goto :goto_33

    :cond_32
    move p1, v0

    :goto_33
    if-ne p1, v0, :cond_51

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 298
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 299
    const-string p1, "SIM Phonebook record is full"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method
