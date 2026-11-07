.class public Lcom/android/internal/telephony/uicc/UiccPort;
.super Ljava/lang/Object;
.source "UiccPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z = true

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "UiccPort"

.field private static blacklist sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field protected blacklist mCardId:Ljava/lang/String;

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccid:Ljava/lang/String;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOpenChannelRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneId:I

.field private blacklist mPhysicalSlotIndex:I

.field private blacklist mPortIdx:I

.field private blacklist mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccPort;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccPort;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .registers 9

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    .line 71
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 72
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    .line 73
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    .line 74
    const-string p4, "cleanup"

    invoke-virtual {v0, p4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/internal/telephony/uicc/UiccPort;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V

    return-void
.end method

.method private blacklist cleanupOpenLogicalChannelRecordsIfNeeded()V
    .registers 6

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 460
    :cond_5
    monitor-enter v0

    .line 461
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 463
    iget-object v3, v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget-object v3, v3, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 464
    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    goto :goto_c

    :catchall_3a
    move-exception p0

    goto :goto_43

    .line 466
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 467
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_3a

    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 371
    const-string p0, "UiccPort"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 375
    const-string p0, "UiccPort"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    const-string v1, "Disposing Port"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_17

    .line 106
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->dispose()V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1f

    :cond_17
    :goto_17
    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 109
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->cleanupOpenLogicalChannelRecordsIfNeeded()V

    return-void

    .line 109
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 379
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 380
    const-string p2, "UiccPort:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPortIdx="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCi="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIccid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalSlotIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhysicalSlotIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter p2

    .line 388
    :try_start_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOpenChannelRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    monitor-exit p2
    :try_end_9b
    .catchall {:try_start_84 .. :try_end_9b} :catchall_a8

    .line 390
    const-string p2, "mUiccProfile"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_a7

    .line 392
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_a7
    return-void

    :catchall_a8
    move-exception p0

    .line 389
    :try_start_a9
    monitor-exit p2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    const-string v0, "UiccPort finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 117
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_16

    .line 118
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->cleanupOpenLogicalChannelRecordsIfNeeded()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_d

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    throw v0
.end method

.method public blacklist getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 162
    monitor-exit v0

    return-object p0

    .line 164
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 196
    monitor-exit v0

    return-object p0

    .line 198
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 176
    monitor-exit v0

    return-object p0

    .line 178
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 363
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_e

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNumApplications()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_9

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOpenLogicalChannelRecord(I)Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    .line 439
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    if-eqz v2, :cond_9

    iget v2, v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    if-ne v2, p1, :cond_9

    .line 441
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    goto :goto_24

    .line 444
    :cond_21
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1f

    throw p0
.end method

.method public blacklist getOperatorBrandOverride()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_9

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 322
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    return p0
.end method

.method public blacklist getPortIdx()I
    .registers 1

    .line 326
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    return p0
.end method

.method public blacklist getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object p0
.end method

.method public blacklist getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_13

    .line 148
    :cond_f
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object p0

    .line 150
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_d

    throw p0
.end method

.method public blacklist iccCloseLogicalChannel(ILandroid/os/Message;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    .line 241
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(IZLandroid/os/Message;)V

    return-void

    .line 243
    :cond_9
    const-string p1, "iccCloseLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_f

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 289
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 291
    :cond_f
    const-string p1, "iccExchangeSimIO Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_8

    .line 227
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 229
    :cond_8
    const-string p1, "iccOpenLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_f

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 274
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 276
    :cond_f
    const-string p1, "iccTransmitApduBasicChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_14

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 257
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void

    .line 260
    :cond_14
    const-string p1, "iccTransmitApduLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 134
    monitor-exit v0

    return p0

    .line 136
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist onLogicalChannelClosed(I)V
    .registers 5

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getOpenLogicalChannelRecord(I)Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_3a

    .line 425
    :try_start_9
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    if-eqz v1, :cond_3a

    iget-object v1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_3a

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogicalChannelClosed: stop monitoring client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 427
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget-object v1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 428
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 429
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_3c

    .line 431
    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_38

    throw p0
.end method

.method public blacklist onLogicalChannelOpened(Lcom/android/internal/telephony/IccLogicalChannelRequest;)V
    .registers 5

    .line 403
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;-><init>(Lcom/android/internal/telephony/uicc/UiccPort;Lcom/android/internal/telephony/IccLogicalChannelRequest;)V

    .line 405
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_2c

    .line 406
    :try_start_8
    iget-object p1, p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 407
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_29

    .line 409
    :try_start_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogicalChannelOpened: monitoring client "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_28} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_28} :catch_2c

    return-void

    :catchall_29
    move-exception p1

    .line 408
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 411
    :catch_2c
    const-string p1, "IccOpenLogicChannel client has died, clean up manually"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->binderDied()V

    return-void
.end method

.method public blacklist resetAppWithAid(Ljava/lang/String;Z)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_f

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 214
    monitor-exit v0

    return p0

    .line 216
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_8

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 304
    :cond_8
    const-string p1, "sendEnvelopeWithStatus Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_9

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .registers 15

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 85
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    .line 86
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    .line 87
    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhysicalSlotIndex:I

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-nez v0, :cond_3d

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    sget-object v9, Lcom/android/internal/telephony/uicc/UiccPort;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    goto :goto_41

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_43

    :cond_3d
    move-object v5, p3

    .line 93
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 95
    :goto_41
    monitor-exit v1

    return-void

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_3a

    throw p0
.end method
