.class public Lcom/android/internal/telephony/TelephonyDevController;
.super Landroid/os/Handler;
.source "TelephonyDevController.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_HARDWARE_CONFIG_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TDC"

.field private static final mLock:Ljava/lang/Object;

.field private static mModems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mSims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sRilHardwareConfig:Landroid/os/Message;

.field private static sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@7
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@e
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@15
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;->initFromResource()V

    #@6
    .line 102
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    #@b
    .line 103
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    #@10
    .line 99
    return-void
.end method

.method public static create()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    #@0
    .prologue
    .line 63
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 64
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "TelephonyDevController already created!?!"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 63
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 67
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/TelephonyDevController;

    #@15
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    #@18
    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    #@1a
    .line 68
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    #@0
    .prologue
    .line 73
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 74
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "TelephonyDevController not yet created!?!"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 73
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method public static getModemCount()I
    .locals 4

    #@0
    .prologue
    .line 194
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 195
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 196
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getModemCount: "

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 197
    return v0

    #@22
    .line 194
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method private static handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p0, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 168
    iget-object v3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2
    if-nez v3, :cond_2

    #@4
    iget-object v3, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 169
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a
    check-cast v1, Ljava/util/List;

    #@c
    .line 170
    .local v1, "hwcfg":Ljava/util/List;
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v3

    #@11
    if-ge v2, v3, :cond_3

    #@13
    .line 171
    const/4 v0, 0x0

    #@14
    .line 173
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    #@1a
    .line 174
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v0, :cond_0

    #@1c
    .line 175
    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 176
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@22
    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    #@25
    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 177
    :cond_1
    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@2a
    const/4 v4, 0x1

    #@2b
    if-ne v3, v4, :cond_0

    #@2d
    .line 178
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@2f
    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    #@32
    goto :goto_1

    #@33
    .line 186
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "hwcfg":Ljava/util/List;
    .end local v2    # "i":I
    :cond_2
    const-string/jumbo v3, "handleGetHardwareConfigChanged - returned an error."

    #@36
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    #@39
    .line 167
    :cond_3
    return-void
.end method

.method private initFromResource()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v3

    #@5
    .line 84
    .local v3, "resource":Landroid/content/res/Resources;
    const v5, 0x107003a

    #@8
    .line 83
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 85
    .local v2, "hwStrings":[Ljava/lang/String;
    if-eqz v2, :cond_2

    #@e
    .line 86
    array-length v5, v2

    #@f
    :goto_0
    if-ge v4, v5, :cond_2

    #@11
    aget-object v1, v2, v4

    #@13
    .line 87
    .local v1, "hwString":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    #@15
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    #@18
    .line 88
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v0, :cond_0

    #@1a
    .line 89
    iget v6, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 90
    sget-object v6, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@20
    invoke-static {v0, v6}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    #@23
    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 91
    :cond_1
    iget v6, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@28
    const/4 v7, 0x1

    #@29
    if-ne v6, v7, :cond_0

    #@2b
    .line 92
    sget-object v6, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@2d
    invoke-static {v0, v6}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    #@30
    goto :goto_1

    #@31
    .line 81
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "hwString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "TDC"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 54
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "TDC"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 58
    return-void
.end method

.method public static registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 112
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    #@3
    invoke-interface {p0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getHardwareConfig(Landroid/os/Message;)V

    #@6
    .line 114
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 115
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    #@c
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v0, Landroid/os/AsyncResult;

    #@10
    .line 116
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@12
    if-nez v1, :cond_0

    #@14
    .line 117
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    #@17
    .line 121
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-interface {p0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1d
    .line 110
    return-void
.end method

.method public static unregisterRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    #@2
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHardwareConfigChanged(Landroid/os/Handler;)V

    #@5
    .line 124
    return-void
.end method

.method private static updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "hw"    # Lcom/android/internal/telephony/HardwareConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HardwareConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 152
    .local v2, "size":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@a
    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    #@10
    .line 154
    .local v1, "item":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v3, v1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@12
    iget-object v5, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@14
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "updateOrInsert: removing: "

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@31
    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 159
    .end local v1    # "item":Lcom/android/internal/telephony/HardwareConfig;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "updateOrInsert: inserting: "

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@4e
    .line 160
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    monitor-exit v4

    #@52
    .line 147
    return-void

    #@53
    .line 150
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3
.end method


# virtual methods
.method public getAllModems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 312
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 313
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 314
    .local v2, "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 315
    const-string/jumbo v3, "getAllModems: empty list."

    #@13
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v4

    #@17
    .line 322
    return-object v2

    #@18
    .line 317
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@1a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "modem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    #@2a
    .line 318
    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 312
    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "modem$iterator":Ljava/util/Iterator;
    .end local v2    # "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public getAllSims()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 330
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 331
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 332
    .local v2, "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 333
    const-string/jumbo v3, "getAllSims: empty list."

    #@13
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v4

    #@17
    .line 340
    return-object v2

    #@18
    .line 335
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@1a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "sim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    #@2a
    .line 336
    .local v0, "sim":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 330
    .end local v0    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "sim$iterator":Ljava/util/Iterator;
    .end local v2    # "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public getAllSimsForModem(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "modemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 284
    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 285
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 286
    const-string/jumbo v4, "getAllSimsForModem: no registered sim device?!?"

    #@f
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v5

    #@13
    .line 287
    return-object v7

    #@14
    .line 290
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    #@17
    move-result v4

    #@18
    if-le p1, v4, :cond_1

    #@1a
    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "getAllSimsForModem: out-of-bounds access for modem device "

    #@22
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v6, " max: "

    #@2d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    #@34
    move-result v6

    #@35
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v5

    #@41
    .line 292
    return-object v7

    #@42
    .line 295
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "getAllSimsForModem "

    #@4a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@59
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 298
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    #@61
    move-result-object v0

    #@62
    .line 299
    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@64
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v3

    #@68
    .local v3, "sim$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_3

    #@6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Lcom/android/internal/telephony/HardwareConfig;

    #@74
    .line 300
    .local v2, "sim":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v4, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    #@76
    iget-object v6, v0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@78
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_2

    #@7e
    .line 301
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 284
    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .end local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    .end local v3    # "sim$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@83
    monitor-exit v5

    #@84
    throw v4

    #@85
    .restart local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .restart local v3    # "sim$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v5

    #@86
    .line 304
    return-object v1
.end method

.method public getModem(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 205
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 206
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 207
    const-string/jumbo v0, "getModem: no registered modem device?!?"

    #@f
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 208
    return-object v3

    #@14
    .line 211
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    #@17
    move-result v0

    #@18
    if-le p1, v0, :cond_1

    #@1a
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "getModem: out-of-bounds access for modem device "

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v2, " max: "

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    #@34
    move-result v2

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 213
    return-object v3

    #@42
    .line 216
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "getModem: "

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@59
    .line 217
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit v1

    #@62
    return-object v0

    #@63
    .line 205
    :catchall_0
    move-exception v0

    #@64
    monitor-exit v1

    #@65
    throw v0
.end method

.method public getModemForSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 7
    .param p1, "simIndex"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 256
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 257
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 258
    :cond_0
    const-string/jumbo v3, "getModemForSim: no registered modem/sim device?!?"

    #@17
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v4

    #@1b
    .line 259
    return-object v6

    #@1c
    .line 262
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    #@1f
    move-result v3

    #@20
    if-le p1, v3, :cond_2

    #@22
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "getModemForSim: out-of-bounds access for sim device "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v5, " max: "

    #@35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    #@3c
    move-result v5

    #@3d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    monitor-exit v4

    #@49
    .line 264
    return-object v6

    #@4a
    .line 267
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "getModemForSim "

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@61
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getSim(I)Lcom/android/internal/telephony/HardwareConfig;

    #@64
    move-result-object v2

    #@65
    .line 270
    .local v2, "sim":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    #@67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v1

    #@6b
    .local v1, "modem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_4

    #@71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    #@77
    .line 271
    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v3, v0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@79
    iget-object v5, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_3

    #@81
    monitor-exit v4

    #@82
    .line 272
    return-object v0

    #@83
    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    :cond_4
    monitor-exit v4

    #@84
    .line 276
    return-object v6

    #@85
    .line 256
    .end local v1    # "modem$iterator":Ljava/util/Iterator;
    .end local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    :catchall_0
    move-exception v3

    #@86
    monitor-exit v4

    #@87
    throw v3
.end method

.method public getSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 236
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 237
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 238
    const-string/jumbo v0, "getSim: no registered sim device?!?"

    #@f
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 239
    return-object v3

    #@14
    .line 242
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    #@17
    move-result v0

    #@18
    if-le p1, v0, :cond_1

    #@1a
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "getSim: out-of-bounds access for sim device "

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v2, " max: "

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    #@34
    move-result v2

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 244
    return-object v3

    #@42
    .line 247
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "getSim: "

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@59
    .line 248
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit v1

    #@62
    return-object v0

    #@63
    .line 236
    :catchall_0
    move-exception v0

    #@64
    monitor-exit v1

    #@65
    throw v0
.end method

.method public getSimCount()I
    .locals 4

    #@0
    .prologue
    .line 225
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 226
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 227
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getSimCount: "

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 228
    return v0

    #@22
    .line 225
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "handleMessage: Unknown Event "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p1, Landroid/os/Message;->what:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    #@1e
    .line 131
    :goto_0
    return-void

    #@1f
    .line 135
    :pswitch_0
    const-string/jumbo v1, "handleMessage: received EVENT_HARDWARE_CONFIG_CHANGED"

    #@22
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    #@25
    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v0, Landroid/os/AsyncResult;

    #@29
    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    #@2c
    goto :goto_0

    #@2d
    .line 133
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
