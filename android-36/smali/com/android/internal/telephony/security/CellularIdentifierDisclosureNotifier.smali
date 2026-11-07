.class public Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosureNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;


# instance fields
.field private blacklist mCellularSecurityTransparencyStats:Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;

.field private blacklist mEnabled:Z

.field private final blacklist mEnabledLock:Ljava/lang/Object;

.field private final blacklist mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

.field private blacklist mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

.field private blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private final blacklist mWindowCloseDuration:J

.field private final blacklist mWindowCloseUnit:Ljava/util/concurrent/TimeUnit;

.field private blacklist mWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2XpsKXfGLkUgsvCqjhLionlVqb8(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->lambda$onDisableNotifier$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9h8wXpcrMw0JNGkk4HO0wSonGEA(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->lambda$incrementAndNotify$1(ILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UPok182ozJASCJ3L1lHotmMbs4s(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->lambda$onEnableNotifier$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oi1nmI7fv5ucnkibPVdvK0tAnWE(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->lambda$runLogDisclosure$0(ILandroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafetySource(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSerializedWorkQueue(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowCloseDuration(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindowCloseDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowCloseUnit(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Ljava/util/concurrent/TimeUnit;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindowCloseUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)V
    .registers 10

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;

    invoke-direct {v7}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;-><init>()V

    const-wide/16 v2, 0xf

    move-object v0, p0

    move-object v5, p1

    .line 72
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;)V
    .registers 9

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabledLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabled:Z

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    iput-wide p2, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindowCloseDuration:J

    .line 94
    iput-object p4, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindowCloseUnit:Ljava/util/concurrent/TimeUnit;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    .line 96
    iput-object p5, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    .line 97
    iput-object p6, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 98
    iput-object p7, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mCellularSecurityTransparencyStats:Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;

    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;
    .registers 3

    const-class v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    monitor-enter v0

    .line 208
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->sInstance:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    if-nez v1, :cond_11

    .line 209
    new-instance v1, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;-><init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)V

    sput-object v1, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->sInstance:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 212
    :cond_11
    :goto_11
    sget-object p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->sInstance:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method

.method private blacklist incrementAndNotify(Landroid/content/Context;I)Ljava/lang/Runnable;
    .registers 4

    .line 216
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/content/Context;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$incrementAndNotify$1(ILandroid/content/Context;)V
    .registers 10

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    if-nez v0, :cond_1c

    .line 219
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;I)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1c
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->increment(Landroid/content/Context;Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getDisclosureCount()I

    move-result v4

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emitting notification for subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". New disclosure count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellularIdentifierDisclosureNotifier"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getFirstOpen()Ljava/time/Instant;

    move-result-object v5

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getCurrentEnd()Ljava/time/Instant;

    move-result-object v6

    move v3, p1

    move-object v2, p2

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->setIdentifierDisclosure(Landroid/content/Context;IILjava/time/Instant;Ljava/time/Instant;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisableNotifier$2(Landroid/content/Context;)V
    .registers 4

    .line 245
    const-string v0, "CellularIdentifierDisclosureNotifier"

    const-string v1, "On disable notifier"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->close()V

    goto :goto_11

    .line 249
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->setIdentifierDisclosureIssueEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnableNotifier$3(Landroid/content/Context;)V
    .registers 4

    .line 255
    const-string v0, "CellularIdentifierDisclosureNotifier"

    const-string v1, "On enable notifier"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->setIdentifierDisclosureIssueEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$runLogDisclosure$0(ILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 153
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMnc()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    move-object p1, v0

    .line 161
    :goto_13
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mCellularSecurityTransparencyStats:Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->isEnabled()Z

    move-result p0

    .line 161
    invoke-virtual {v1, p2, v0, p1, p0}, Lcom/android/internal/telephony/metrics/CellularSecurityTransparencyStats;->logIdentifierDisclosure(Landroid/telephony/CellularIdentifierDisclosure;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist logDisclosure(ILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 4

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->runLogDisclosure(ILandroid/telephony/CellularIdentifierDisclosure;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to schedule runLogDisclosure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CellularIdentifierDisclosureNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onDisableNotifier(Landroid/content/Context;)Ljava/lang/Runnable;
    .registers 3

    .line 244
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist onEnableNotifier(Landroid/content/Context;)Ljava/lang/Runnable;
    .registers 3

    .line 254
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist runLogDisclosure(ILandroid/telephony/CellularIdentifierDisclosure;)Ljava/lang/Runnable;
    .registers 4

    .line 151
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/telephony/CellularIdentifierDisclosure;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addDisclosure(Landroid/content/Context;ILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 7

    .line 106
    const-string v0, "CellularIdentifierDisclosureNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier disclosure reported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->logDisclosure(ILandroid/telephony/CellularIdentifierDisclosure;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabled:Z

    if-nez v1, :cond_2b

    .line 112
    const-string p0, "CellularIdentifierDisclosureNotifier"

    const-string p1, "Skipping disclosure because notifier was disabled."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    goto :goto_70

    .line 118
    :cond_2b
    invoke-virtual {p3}, Landroid/telephony/CellularIdentifierDisclosure;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 119
    const-string p0, "CellularIdentifierDisclosureNotifier"

    const-string p1, "Ignoring identifier disclosure associated with an emergency."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v0

    return-void

    .line 124
    :cond_3a
    invoke-virtual {p3}, Landroid/telephony/CellularIdentifierDisclosure;->isBenign()Z

    move-result p3

    if-eqz p3, :cond_49

    .line 125
    const-string p0, "CellularIdentifierDisclosureNotifier"

    const-string p1, "Ignoring identifier disclosure that is claimed to be benign."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_29

    return-void

    .line 134
    :cond_49
    :try_start_49
    iget-object p3, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->incrementAndNotify(Landroid/content/Context;I)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_52
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_49 .. :try_end_52} :catch_53
    .catchall {:try_start_49 .. :try_end_52} :catchall_29

    goto :goto_6e

    :catch_53
    move-exception p0

    .line 136
    :try_start_54
    const-string p1, "CellularIdentifierDisclosureNotifier"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to schedule incrementAndNotify: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_6e
    monitor-exit v0

    return-void

    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_29

    throw p0
.end method

.method public blacklist disable(Landroid/content/Context;)V
    .registers 5

    .line 188
    const-string v0, "CellularIdentifierDisclosureNotifier"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 190
    :try_start_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_17

    .line 192
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->onDisableNotifier(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d .. :try_end_16} :catch_19
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    :catch_19
    move-exception p0

    .line 194
    :try_start_1a
    const-string p1, "CellularIdentifierDisclosureNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule onDisableNotifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_17

    throw p0
.end method

.method public blacklist enable(Landroid/content/Context;)V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    const-string v1, "CellularIdentifierDisclosureNotifier"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_17

    .line 175
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->onEnableNotifier(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d .. :try_end_16} :catch_19
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    :catch_19
    move-exception p0

    .line 177
    :try_start_1a
    const-string p1, "CellularIdentifierDisclosureNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule onEnableNotifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_17

    throw p0
.end method

.method public blacklist getCurrentDisclosureCount(I)I
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    if-eqz p0, :cond_13

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getDisclosureCount()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCurrentEnd(I)Ljava/time/Instant;
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    if-eqz p0, :cond_13

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getCurrentEnd()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getFirstOpen(I)Ljava/time/Instant;
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mWindows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;

    if-eqz p0, :cond_13

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getFirstOpen()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->mEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 202
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
