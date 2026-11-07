.class public Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;
.super Ljava/lang/Object;
.source "DataConnectionStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;
    }
.end annotation


# static fields
.field private static final blacklist sDataConnectionStateTracker:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActiveDataSubId:I

.field private blacklist mChannelCountEnum:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mLastPreciseDataConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSubId:I

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mTelephonyListener:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveDataSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelCountEnum(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mChannelCountEnum:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActiveDataSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelCountEnum(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mChannelCountEnum:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogRATChanges(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->logRATChanges(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterTelephonyListener(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->registerTelephonyListener(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterTelephonyListener(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->unregisterTelephonyListener()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->sDataConnectionStateTracker:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mLastPreciseDataConnectionState:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mChannelCountEnum:I

    .line 59
    new-instance v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$1;-><init>(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static blacklist getActiveDataSubId()I
    .registers 2

    .line 171
    sget-object v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->sDataConnectionStateTracker:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    iget v0, v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    return v0
.end method

.method public static declared-synchronized blacklist getInstance(I)Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;
    .registers 4

    const-class v0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->sDataConnectionStateTracker:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    if-eqz v2, :cond_f

    .line 94
    monitor-exit v0

    return-object v2

    .line 97
    :cond_f
    :try_start_f
    new-instance v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;-><init>()V

    .line 98
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_19

    .line 99
    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private blacklist logRATChanges(I)V
    .registers 7

    .line 183
    iget v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubId:I

    if-ne v0, p1, :cond_44

    iget v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    if-eq v0, p1, :cond_44

    .line 184
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getCurrentDataRat()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    .line 186
    :goto_18
    sget-object v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->sDataConnectionStateTracker:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 188
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    .line 189
    iget v3, v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubId:I

    iget v4, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mActiveDataSubId:I

    if-ne v3, v4, :cond_41

    .line 190
    iget-object v2, v2, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getCurrentDataRat()I

    move-result v2

    if-eq p1, v2, :cond_41

    const/16 v2, 0x356

    .line 194
    invoke-static {v2, p1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_44
    return-void
.end method

.method private blacklist registerTelephonyListener(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_24

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_24

    .line 146
    new-instance v1, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;-><init>(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mTelephonyListener:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;

    .line 147
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->register(Landroid/telephony/TelephonyManager;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist unregisterTelephonyListener()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mTelephonyListener:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;

    if-eqz v0, :cond_a

    .line 153
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->unregister()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mTelephonyListener:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;

    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist getDataState(I)I
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mLastPreciseDataConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 136
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mLastPreciseDataConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result p0

    return p0
.end method

.method public blacklist notifyDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 5

    .line 160
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mLastPreciseDataConnectionState:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 167
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist start(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubId:I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->registerTelephonyListener(I)V

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_22

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 111
    invoke-virtual {p1, v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_22
    return-void
.end method

.method public blacklist stop()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 120
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_18

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 124
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 126
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->unregisterTelephonyListener()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->mLastPreciseDataConnectionState:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
