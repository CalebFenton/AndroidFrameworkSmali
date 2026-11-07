.class public Lcom/android/internal/telephony/TelephonyDevController;
.super Landroid/os/Handler;
.source "TelephonyDevController.java"


# static fields
.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist mModems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mSims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRilHardwareConfig:Landroid/os/Message;

.field private static blacklist sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;->initFromResource()V

    .line 98
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 99
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public static blacklist create()Lcom/android/internal/telephony/TelephonyDevController;
    .registers 3

    .line 58
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-nez v1, :cond_12

    .line 62
    new-instance v1, Lcom/android/internal/telephony/TelephonyDevController;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 63
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    goto :goto_1a

    .line 60
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController already created!?!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_10

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/TelephonyDevController;
    .registers 3

    .line 69
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-eqz v1, :cond_b

    .line 73
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    goto :goto_13

    .line 71
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController not yet created!?!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9

    throw v1
.end method

.method public static blacklist getModemCount()I
    .registers 4

    .line 191
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 194
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    .line 195
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static blacklist handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .registers 5

    .line 165
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2f

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2f

    .line 166
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 167
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 170
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    if-eqz v1, :cond_2b

    .line 172
    iget v2, v1, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v2, :cond_23

    .line 173
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_2b

    :cond_23
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 175
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2e
    return-void

    .line 183
    :cond_2f
    const-string p0, "handleGetHardwareConfigChanged - returned an error."

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist initFromResource()V
    .registers 6

    .line 78
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700d4

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2d

    aget-object v2, p0, v1

    .line 83
    new-instance v3, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    .line 85
    iget v2, v3, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v2, :cond_22

    .line 86
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_2a

    :cond_22
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 88
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 49
    const-string v0, "TDC"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 53
    const-string v0, "TDC"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 108
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getHardwareConfig(Landroid/os/Message;)V

    .line 110
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    if-eqz v0, :cond_14

    .line 111
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 113
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    .line 117
    :cond_14
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist unregisterRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 2

    .line 121
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHardwareConfigChanged(Landroid/os/Handler;)V

    return-void
.end method

.method private static blacklist updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HardwareConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 150
    iget-object v4, v3, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_34

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOrInsert: removing: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_37

    :catchall_32
    move-exception p0

    goto :goto_50

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 156
    :cond_37
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrInsert: inserting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_32

    throw p0
.end method


# virtual methods
.method public blacklist getAllModems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 310
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 312
    const-string v1, "getAllModems: empty list."

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    goto :goto_2d

    :catchall_16
    move-exception v0

    goto :goto_2f

    .line 314
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_2d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/HardwareConfig;

    .line 315
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 319
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-object v0

    .line 320
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_16

    throw v0
.end method

.method public blacklist getAllSims()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 327
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 328
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 330
    const-string v1, "getAllSims: empty list."

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    goto :goto_2d

    :catchall_16
    move-exception v0

    goto :goto_2f

    .line 332
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_2d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/HardwareConfig;

    .line 333
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 337
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-object v0

    .line 338
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_16

    throw v0
.end method

.method public blacklist getAllSimsForModem(I)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 283
    const-string p0, "getAllSimsForModem: no registered sim device?!?"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 284
    monitor-exit v0

    return-object v2

    :catchall_13
    move-exception p0

    goto :goto_7b

    .line 287
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v1

    if-le p1, v1, :cond_3d

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllSimsForModem: out-of-bounds access for modem device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 289
    monitor-exit v0

    return-object v2

    .line 292
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllSimsForModem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object p0

    .line 296
    sget-object p1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_61
    :goto_61
    if-ge v3, v2, :cond_79

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/HardwareConfig;

    .line 297
    iget-object v5, v4, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 298
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 301
    :cond_79
    monitor-exit v0

    return-object v1

    .line 302
    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_13

    throw p0
.end method

.method public blacklist getModem(I)Lcom/android/internal/telephony/HardwareConfig;
    .registers 5

    .line 202
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 203
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 204
    const-string p1, "getModem: no registered modem device?!?"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 205
    monitor-exit p0

    return-object v1

    :catchall_13
    move-exception p1

    goto :goto_5b

    .line 208
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v0

    if-le p1, v0, :cond_3d

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModem: out-of-bounds access for modem device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 210
    monitor-exit p0

    return-object v1

    .line 213
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getModem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit p0

    return-object p1

    .line 215
    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_13

    throw p1
.end method

.method public blacklist getModemForSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .registers 9

    .line 253
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_76

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_76

    .line 259
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v1

    if-le p1, v1, :cond_3f

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemForSim: out-of-bounds access for sim device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 261
    monitor-exit v0

    return-object v2

    :catchall_3d
    move-exception p0

    goto :goto_7d

    .line 264
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemForSim "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getSim(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object p0

    .line 267
    sget-object p1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :cond_5e
    if-ge v3, v1, :cond_74

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/HardwareConfig;

    .line 268
    iget-object v5, v4, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 269
    monitor-exit v0

    return-object v4

    .line 273
    :cond_74
    monitor-exit v0

    return-object v2

    .line 255
    :cond_76
    :goto_76
    const-string p0, "getModemForSim: no registered modem/sim device?!?"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 256
    monitor-exit v0

    return-object v2

    .line 274
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_3d

    throw p0
.end method

.method public blacklist getSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .registers 6

    .line 233
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 235
    const-string p0, "getSim: no registered sim device?!?"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 236
    monitor-exit v0

    return-object v2

    :catchall_13
    move-exception p0

    goto :goto_5b

    .line 239
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v1

    if-le p1, v1, :cond_3d

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSim: out-of-bounds access for sim device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 241
    monitor-exit v0

    return-object v2

    .line 244
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSim: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 245
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit v0

    return-object p0

    .line 246
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_13

    throw p0
.end method

.method public blacklist getSimCount()I
    .registers 4

    .line 222
    sget-object p0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 223
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 225
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    .line 226
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 129
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: Unknown Event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1c
    const-string p0, "handleMessage: received EVENT_HARDWARE_CONFIG_CHANGED"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 132
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 133
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    return-void
.end method
