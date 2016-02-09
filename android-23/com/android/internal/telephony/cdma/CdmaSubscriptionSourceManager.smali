.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSSM"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field private static final SUBSCRIPTION_ACTIVATED:I = 0x1

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private static sReferenceCount:I

.field private static final sReferenceCountMonitor:Ljava/lang/Object;


# instance fields
.field private mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    #@7
    .line 51
    const/4 v0, 0x0

    #@8
    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    #@a
    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 56
    new-instance v1, Landroid/os/RegistrantList;

    #@7
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@a
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    #@c
    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    #@15
    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@17
    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1c
    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e
    const/4 v2, 0x3

    #@1f
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@22
    .line 67
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    #@25
    move-result v0

    #@26
    .line 68
    .local v0, "subscriptionSource":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "cdmaSSM constructor: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@3d
    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@42
    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@44
    const/4 v2, 0x4

    #@45
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@48
    .line 62
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 166
    const-string/jumbo v2, "subscription_mode"

    #@7
    const/4 v3, 0x1

    #@8
    .line 165
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 167
    .local v0, "subscriptionSource":I
    const-string/jumbo v1, "CdmaSSM"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "subscriptionSource from settings: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 168
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 81
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 82
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@9
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@e
    .line 84
    :cond_0
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 86
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@17
    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1a
    .line 87
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1c
    return-object v0

    #@1d
    .line 80
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method private handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 188
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b
    check-cast v1, [I

    #@d
    const/4 v2, 0x0

    #@e
    aget v0, v1, v2

    #@10
    .line 190
    .local v0, "newSubscriptionSource":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@15
    move-result v1

    #@16
    if-eq v0, v1, :cond_0

    #@18
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Subscription Source Changed : "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, " >> "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@3c
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3e
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@41
    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    #@43
    new-instance v2, Landroid/os/AsyncResult;

    #@45
    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@48
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@4b
    .line 186
    .end local v0    # "newSubscriptionSource":I
    :cond_0
    :goto_0
    return-void

    #@4c
    .line 204
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "Unable to get CDMA Subscription Source, Exception: "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 205
    const-string/jumbo v2, ", result: "

    #@61
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 205
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@67
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->logw(Ljava/lang/String;)V

    #@72
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    const-string/jumbo v0, "CdmaSSM"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 209
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 214
    const-string/jumbo v0, "CdmaSSM"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 213
    return-void
.end method

.method private registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 177
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 175
    return-void
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 95
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 96
    :try_start_0
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    #@e
    .line 97
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    #@10
    if-gtz v0, :cond_0

    #@12
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@14
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    #@17
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@1c
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V

    #@21
    .line 101
    const/4 v0, 0x0

    #@22
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v1

    #@25
    .line 93
    return-void

    #@26
    .line 95
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method public getCdmaSubscriptionSource()I
    .locals 2

    #@0
    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "getcdmasubscriptionSource: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@1d
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 113
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 145
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 111
    :cond_0
    :goto_0
    return-void

    #@a
    .line 117
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "CDMA_SUBSCRIPTION_SOURCE event = "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@23
    .line 118
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    check-cast v1, Landroid/os/AsyncResult;

    #@27
    .line 119
    .local v1, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    #@2a
    goto :goto_0

    #@2b
    .line 123
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    #@34
    goto :goto_0

    #@35
    .line 127
    :pswitch_2
    const-string/jumbo v2, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    #@38
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@3b
    .line 128
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    check-cast v1, Landroid/os/AsyncResult;

    #@3f
    .line 129
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@41
    if-nez v2, :cond_1

    #@43
    .line 130
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@45
    check-cast v2, [I

    #@47
    const/4 v3, 0x0

    #@48
    aget v0, v2, v3

    #@4a
    .line 131
    .local v0, "actStatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "actStatus = "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    #@61
    .line 132
    const/4 v2, 0x1

    #@62
    if-ne v0, v2, :cond_0

    #@64
    .line 135
    const-string/jumbo v2, "CdmaSSM"

    #@67
    const-string/jumbo v3, "get Cdma Subscription Source"

    #@6a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6f
    .line 137
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    #@72
    move-result-object v3

    #@73
    .line 136
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    #@76
    goto :goto_0

    #@77
    .line 140
    .end local v0    # "actStatus":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v3, "EVENT_SUBSCRIPTION_STATUS_CHANGED, Exception:"

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->logw(Ljava/lang/String;)V

    #@90
    goto/16 :goto_0

    #@92
    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
