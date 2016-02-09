.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final MAX_PROACTIVE_COMMANDS_TO_LOG:I = 0x14

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mCardLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@7
    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@b
    move-result v2

    #@c
    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@10
    .line 101
    new-instance v2, Landroid/os/RegistrantList;

    #@12
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@15
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@17
    .line 105
    new-instance v2, Ljava/util/LinkedList;

    #@19
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@1c
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@1e
    .line 118
    const-string/jumbo v2, "Creating UiccController"

    #@21
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@24
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    #@26
    .line 120
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@28
    .line 121
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    array-length v2, v2

    #@2c
    if-ge v0, v2, :cond_1

    #@2e
    .line 122
    new-instance v1, Ljava/lang/Integer;

    #@30
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    #@33
    .line 123
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@35
    aget-object v2, v2, v0

    #@37
    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3a
    .line 125
    const-string/jumbo v2, "trigger_restart_framework"

    #@3d
    const-string/jumbo v3, "vold.decrypt"

    #@40
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@4c
    aget-object v2, v2, v0

    #@4e
    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@51
    .line 130
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@53
    aget-object v2, v2, v0

    #@55
    const/4 v3, 0x3

    #@56
    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@59
    .line 131
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@5b
    aget-object v2, v2, v0

    #@5d
    const/4 v3, 0x4

    #@5e
    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@61
    .line 121
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@66
    aget-object v2, v2, v0

    #@68
    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6b
    goto :goto_1

    #@6c
    .line 117
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 242
    new-instance v1, Ljava/lang/Integer;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    #@6
    .line 249
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    #@8
    .line 250
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    if-eqz v2, :cond_1

    #@c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    instance-of v2, v2, Ljava/lang/Integer;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 251
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    #@16
    .line 259
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    #@17
    .line 252
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    if-eqz v2, :cond_0

    #@1b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    instance-of v2, v2, Landroid/os/AsyncResult;

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v0, Landroid/os/AsyncResult;

    #@25
    .line 254
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@27
    if-eqz v2, :cond_0

    #@29
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2b
    instance-of v2, v2, Ljava/lang/Integer;

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 255
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@31
    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    #@33
    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    #@0
    .prologue
    .line 136
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 137
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    .line 139
    const-string/jumbo v2, "UiccController.getInstance can\'t be called before make()"

    #@c
    .line 138
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 136
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 141
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method private isValidCardIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 342
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    array-length v1, v1

    #@6
    if-ge p1, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    const-string/jumbo v0, "UiccController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 345
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 108
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 109
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "MSimUiccController.make() should only be called once"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 108
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 112
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    #@15
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    #@18
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    #@1a
    .line 113
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 276
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 277
    const-string/jumbo v1, "UiccController"

    #@8
    const-string/jumbo v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    #@b
    .line 279
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    .line 277
    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 280
    return-void

    #@12
    .line 282
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 283
    const-string/jumbo v1, "UiccController"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "onGetIccCardStatusDone: invalid index : "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 284
    return-void

    #@38
    .line 287
    :cond_1
    :try_start_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3a
    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@3c
    .line 289
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@3e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v2

    #@42
    aget-object v1, v1, v2

    #@44
    if-nez v1, :cond_2

    #@46
    .line 291
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v2

    #@4c
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    #@4e
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    #@50
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@52
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v6

    #@56
    aget-object v5, v5, v6

    #@58
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v6

    #@5c
    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    #@5f
    aput-object v3, v1, v2

    #@61
    .line 297
    :goto_0
    const-string/jumbo v1, "Notifying IccChangedRegistrants"

    #@64
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@67
    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@69
    new-instance v2, Landroid/os/AsyncResult;

    #@6b
    const/4 v3, 0x0

    #@6c
    const/4 v4, 0x0

    #@6d
    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@70
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    monitor-exit p0

    #@74
    .line 275
    return-void

    #@75
    .line 294
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@7a
    move-result v2

    #@7b
    aget-object v1, v1, v2

    #@7d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    #@7f
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@84
    move-result v4

    #@85
    aget-object v3, v3, v4

    #@87
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    goto :goto_0

    #@8b
    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    #@8c
    monitor-exit p0

    #@8d
    throw v1
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 303
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 304
    const-string/jumbo v3, "UiccController"

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Sim REFRESH with exception: "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 305
    return-void

    #@23
    .line 308
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 309
    const-string/jumbo v3, "UiccController"

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "onSimRefresh: invalid index : "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 310
    return-void

    #@48
    .line 313
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4a
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@4c
    .line 314
    .local v2, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string/jumbo v3, "UiccController"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "onSimRefresh: "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 316
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@68
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@6b
    move-result v4

    #@6c
    aget-object v3, v3, v4

    #@6e
    if-nez v3, :cond_2

    #@70
    .line 317
    const-string/jumbo v3, "UiccController"

    #@73
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "onSimRefresh: refresh on null card : "

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 318
    return-void

    #@8b
    .line 321
    :cond_2
    iget v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@8d
    if-eq v3, v7, :cond_3

    #@8f
    .line 322
    const-string/jumbo v3, "UiccController"

    #@92
    new-instance v4, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v5, "Ignoring non reset refresh: "

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 323
    return-void

    #@aa
    .line 326
    :cond_3
    const-string/jumbo v3, "UiccController"

    #@ad
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v5, "Handling refresh reset: "

    #@b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 328
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@c6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@c9
    move-result v4

    #@ca
    aget-object v3, v3, v4

    #@cc
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@ce
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    #@d1
    move-result v0

    #@d2
    .line 329
    .local v0, "changed":Z
    if-eqz v0, :cond_4

    #@d4
    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    #@d6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d9
    move-result-object v3

    #@da
    .line 331
    const v4, 0x1120077

    #@dd
    .line 330
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@e0
    move-result v1

    #@e1
    .line 332
    .local v1, "requirePowerOffOnSimRefreshReset":Z
    if-eqz v1, :cond_5

    #@e3
    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@e5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@e8
    move-result v4

    #@e9
    aget-object v3, v3, v4

    #@eb
    const/4 v4, 0x0

    #@ec
    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@ef
    .line 337
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@f1
    new-instance v4, Landroid/os/AsyncResult;

    #@f3
    invoke-direct {v4, v6, p2, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f6
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f9
    .line 302
    .end local v1    # "requirePowerOffOnSimRefreshReset":Z
    :cond_4
    return-void

    #@fa
    .line 335
    .restart local v1    # "requirePowerOffOnSimRefreshReset":Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@fc
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@ff
    move-result v4

    #@100
    aget-object v3, v3, v4

    #@102
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    #@105
    move-result-object v4

    #@106
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    #@109
    goto :goto_0
.end method


# virtual methods
.method public addCardLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    new-instance v0, Landroid/text/format/Time;

    #@2
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@5
    .line 352
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    #@8
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "%m-%d %H:%M:%S"

    #@12
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@2c
    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@2e
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@31
    move-result v1

    #@32
    const/16 v2, 0x14

    #@34
    if-le v1, v2, :cond_0

    #@36
    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@38
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@3b
    .line 350
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "UiccController: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, " mContext="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, " mInstance="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, " mIccChangedRegistrants: size="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@57
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@5a
    move-result v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 364
    const/4 v0, 0x0

    #@67
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@69
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@6c
    move-result v1

    #@6d
    if-ge v0, v1, :cond_0

    #@6f
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "  mIccChangedRegistrants["

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    const-string/jumbo v2, "]="

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@88
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Landroid/os/Registrant;

    #@8e
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@91
    move-result-object v1

    #@92
    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 364
    add-int/lit8 v0, v0, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 368
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a3
    .line 369
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@a6
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v2, " mUiccCards: size="

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@b4
    array-length v2, v2

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c0
    .line 371
    const/4 v0, 0x0

    #@c1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@c3
    array-length v1, v1

    #@c4
    if-ge v0, v1, :cond_2

    #@c6
    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@c8
    aget-object v1, v1, v0

    #@ca
    if-nez v1, :cond_1

    #@cc
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v2, "  mUiccCards["

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    const-string/jumbo v2, "]=null"

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 371
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@ec
    goto :goto_1

    #@ed
    .line 375
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v2, "  mUiccCards["

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    const-string/jumbo v2, "]="

    #@100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@106
    aget-object v2, v2, v0

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@115
    aget-object v1, v1, v0

    #@117
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@11a
    goto :goto_2

    #@11b
    .line 379
    :cond_2
    const-string/jumbo v1, "mCardLogs: "

    #@11e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@121
    .line 380
    const/4 v0, 0x0

    #@122
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@124
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@127
    move-result v1

    #@128
    if-ge v0, v1, :cond_3

    #@12a
    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v2, "  "

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v2

    #@136
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    #@138
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@13b
    move-result-object v1

    #@13c
    check-cast v1, Ljava/lang/String;

    #@13e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v1

    #@142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v1

    #@146
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149
    .line 380
    add-int/lit8 v0, v0, 0x1

    #@14b
    goto :goto_3

    #@14c
    .line 359
    :cond_3
    return-void
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 176
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    move-result-object v0

    #@8
    .line 177
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@a
    .line 178
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    monitor-exit v2

    #@f
    return-object v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 180
    return-object v1

    #@12
    .line 175
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 165
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    move-result-object v0

    #@8
    .line 166
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@a
    .line 167
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    monitor-exit v2

    #@f
    return-object v1

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 169
    return-object v1

    #@12
    .line 164
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 146
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@b
    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 150
    :cond_0
    const/4 v0, 0x0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 146
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 264
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 265
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@c
    aget-object v0, v1, p1

    #@e
    .line 267
    .local v0, "c":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    #@10
    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@12
    aget-object v1, v1, p1

    #@14
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v1

    #@18
    monitor-exit v2

    #@19
    return-object v1

    #@1a
    .end local v0    # "c":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    monitor-exit v2

    #@1b
    .line 271
    return-object v3

    #@1c
    .line 264
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    #@0
    .prologue
    .line 157
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 157
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 204
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    .line 207
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v2

    #@b
    if-ltz v2, :cond_0

    #@d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v2

    #@11
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@13
    array-length v4, v4

    #@14
    if-lt v2, v4, :cond_1

    #@16
    .line 208
    :cond_0
    const-string/jumbo v2, "UiccController"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Invalid index : "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v5, " received with event "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    iget v5, p1, Landroid/os/Message;->what:I

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    monitor-exit v3

    #@3e
    .line 209
    return-void

    #@3f
    .line 212
    :cond_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v0, Landroid/os/AsyncResult;

    #@43
    .line 213
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    #@45
    packed-switch v2, :pswitch_data_0

    #@48
    .line 235
    const-string/jumbo v2, "UiccController"

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, " Unknown Event "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    iget v5, p1, Landroid/os/Message;->what:I

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    :goto_0
    monitor-exit v3

    #@65
    .line 203
    return-void

    #@66
    .line 215
    :pswitch_0
    :try_start_2
    const-string/jumbo v2, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    #@69
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@6c
    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    #@6e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v4

    #@72
    aget-object v2, v2, v4

    #@74
    const/4 v4, 0x2

    #@75
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@78
    move-result-object v4

    #@79
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    goto :goto_0

    #@7d
    .line 204
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    #@7e
    monitor-exit v3

    #@7f
    throw v2

    #@80
    .line 219
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "index":Ljava/lang/Integer;
    :pswitch_1
    :try_start_3
    const-string/jumbo v2, "Received EVENT_GET_ICC_STATUS_DONE"

    #@83
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@86
    .line 220
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    #@89
    goto :goto_0

    #@8a
    .line 223
    :pswitch_2
    const-string/jumbo v2, "EVENT_RADIO_UNAVAILABLE, dispose card"

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@90
    .line 224
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@95
    move-result v4

    #@96
    aget-object v2, v2, v4

    #@98
    if-eqz v2, :cond_2

    #@9a
    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@9c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9f
    move-result v4

    #@a0
    aget-object v2, v2, v4

    #@a2
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    #@a5
    .line 227
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    #@a7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@aa
    move-result v4

    #@ab
    const/4 v5, 0x0

    #@ac
    aput-object v5, v2, v4

    #@ae
    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@b0
    new-instance v4, Landroid/os/AsyncResult;

    #@b2
    const/4 v5, 0x0

    #@b3
    const/4 v6, 0x0

    #@b4
    invoke-direct {v4, v5, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@b7
    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@ba
    goto :goto_0

    #@bb
    .line 231
    :pswitch_3
    const-string/jumbo v2, "Received EVENT_SIM_REFRESH"

    #@be
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    #@c1
    .line 232
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c4
    goto :goto_0

    #@c5
    .line 213
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 187
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 188
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 189
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 192
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 186
    return-void

    #@12
    .line 187
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 197
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 196
    return-void

    #@a
    .line 197
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
