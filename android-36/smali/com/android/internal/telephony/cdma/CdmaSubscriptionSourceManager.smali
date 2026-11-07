.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field public static final blacklist SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final blacklist SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final blacklist SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static blacklist sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private static blacklist sReferenceCount:I

.field private static final blacklist sReferenceCountMonitor:Ljava/lang/Object;


# instance fields
.field private blacklist mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mCdmaSubscriptionSourceChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static blacklist getDefault(Landroid/content/Context;)I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .registers 7

    .line 85
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-nez v1, :cond_11

    .line 87
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_20

    .line 89
    :cond_11
    :goto_11
    sget p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    .line 90
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_f

    .line 91
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    return-object p0

    .line 90
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_f

    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 216
    const-string p0, "CdmaSSM"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 185
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method


# virtual methods
.method public blacklist dispose(Landroid/os/Handler;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 100
    sget-object p1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 101
    :try_start_8
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    if-gtz v0, :cond_27

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_27

    .line 103
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V

    const/4 p0, 0x0

    .line 106
    sput-object p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 108
    :cond_27
    :goto_27
    monitor-exit p1

    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public greylist-max-r getCdmaSubscriptionSource()I
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getcdmasubscriptionSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method
