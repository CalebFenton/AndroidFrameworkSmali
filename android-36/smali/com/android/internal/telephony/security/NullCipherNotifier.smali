.class public Lcom/android/internal/telephony/security/NullCipherNotifier;
.super Ljava/lang/Object;
.source "NullCipherNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;,
        Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/security/NullCipherNotifier;


# instance fields
.field private final blacklist mActiveSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private final blacklist mEnabledLock:Ljava/lang/Object;

.field private final blacklist mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

.field private blacklist mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

.field private final blacklist mSubscriptionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$4B32554C5Dd59TcPXhufJFri7Jw(Lcom/android/internal/telephony/security/NullCipherNotifier;ZLandroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/NullCipherNotifier;->lambda$scheduleOnEnabled$2(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7hwagOlxHrMTdSxeMalrMGEZ5xA(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/security/NullCipherNotifier;->lambda$setSubscriptionMapping$1(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MWhtKphxkuVH9h809gHrswxBg98(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/security/NullCipherNotifier;->lambda$onSecurityAlgorithmUpdate$0(Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisNullCipher(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->isNullCipher(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSubscriptionState:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mActiveSubscriptions:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabledLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabled:Z

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/NullCipherNotifier;
    .registers 4

    const-class v0, Lcom/android/internal/telephony/security/NullCipherNotifier;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/security/NullCipherNotifier;->sInstance:Lcom/android/internal/telephony/security/NullCipherNotifier;

    if-nez v1, :cond_15

    .line 75
    new-instance v1, Lcom/android/internal/telephony/security/NullCipherNotifier;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)V

    sput-object v1, Lcom/android/internal/telephony/security/NullCipherNotifier;->sInstance:Lcom/android/internal/telephony/security/NullCipherNotifier;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    .line 79
    :cond_15
    :goto_15
    sget-object p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->sInstance:Lcom/android/internal/telephony/security/NullCipherNotifier;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw p0
.end method

.method private static blacklist isNullCipher(I)Z
    .registers 2

    .line 0
    if-eqz p0, :cond_24

    const/16 v0, 0xe

    if-eq p0, v0, :cond_24

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_24

    const/16 v0, 0x29

    if-eq p0, v0, :cond_24

    const/16 v0, 0x37

    if-eq p0, v0, :cond_24

    const/16 v0, 0x56

    if-eq p0, v0, :cond_24

    const/16 v0, 0x72

    if-eq p0, v0, :cond_24

    const/16 v0, 0x43

    if-eq p0, v0, :cond_24

    const/16 v0, 0x44

    if-eq p0, v0, :cond_24

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onSecurityAlgorithmUpdate$0(Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 7

    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/security/NullCipherNotifier;->maybeUpdateSubscriptionMapping(Landroid/content/Context;II)V

    .line 110
    iget-object p2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSubscriptionState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;

    if-nez p2, :cond_20

    .line 112
    new-instance p2, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;-><init>(Lcom/android/internal/telephony/security/NullCipherNotifier-IA;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSubscriptionState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_20
    invoke-static {p2, p4}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->-$$Nest$mupdate(Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;Landroid/telephony/SecurityAlgorithmUpdate;)I

    move-result p2

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->setNullCipherState(Landroid/content/Context;II)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to execute onSecurityAlgorithmUpdate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NullCipherNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$scheduleOnEnabled$2(ZLandroid/content/Context;)V
    .registers 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On enable notifier. Enable value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NullCipherNotifier"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->setNullCipherIssueEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setSubscriptionMapping$1(Landroid/content/Context;II)V
    .registers 5

    .line 141
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/security/NullCipherNotifier;->maybeUpdateSubscriptionMapping(Landroid/content/Context;II)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update subId mapping. phoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string p1, "NullCipherNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist maybeUpdateSubscriptionMapping(Landroid/content/Context;II)V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mActiveSubscriptions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_27

    .line 155
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_19

    goto :goto_27

    .line 160
    :cond_19
    iget-object p3, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSubscriptionState:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->clearNullCipherState(Landroid/content/Context;I)V

    :cond_27
    :goto_27
    return-void
.end method

.method private blacklist scheduleOnEnabled(Landroid/content/Context;Z)V
    .registers 5

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/security/NullCipherNotifier;ZLandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to schedule onEnableNotifier: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NullCipherNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist shouldIgnoreUpdate(Landroid/telephony/SecurityAlgorithmUpdate;)Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Landroid/telephony/SecurityAlgorithmUpdate;->isUnprotectedEmergency()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 217
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SecurityAlgorithmUpdate;->getConnectionEvent()I

    move-result p0

    packed-switch p0, :pswitch_data_12

    :pswitch_f
    const/4 p0, 0x0

    return p0

    :pswitch_11
    return v1

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public blacklist disable(Landroid/content/Context;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    const-string v1, "NullCipherNotifier"

    const-string v2, "disabled"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabled:Z

    .line 187
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/security/NullCipherNotifier;->scheduleOnEnabled(Landroid/content/Context;Z)V

    .line 188
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist enable(Landroid/content/Context;)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    const-string v1, "NullCipherNotifier"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabled:Z

    .line 173
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/security/NullCipherNotifier;->scheduleOnEnabled(Landroid/content/Context;Z)V

    .line 174
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist onSecurityAlgorithmUpdate(Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 13

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security algorithm update: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NullCipherNotifier"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p4}, Lcom/android/internal/telephony/security/NullCipherNotifier;->shouldIgnoreUpdate(Landroid/telephony/SecurityAlgorithmUpdate;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_5b

    .line 101
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    .line 102
    const-string p0, "Ignoring onSecurityAlgorithmUpdate. Notifier is disabled."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_40
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_31 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception v0

    move-object p0, v0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to schedule onSecurityAlgorithmUpdate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return-void
.end method

.method public blacklist setSubscriptionMapping(Landroid/content/Context;II)V
    .registers 7

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->isEnabled()Z

    move-result v0

    const-string v1, "NullCipherNotifier"

    if-nez v0, :cond_d

    .line 135
    const-string v0, "Ignoring setSubscriptionMapping. Notifier is disabled."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier;->mSerializedWorkQueue:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to schedule setSubscriptionMapping: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
