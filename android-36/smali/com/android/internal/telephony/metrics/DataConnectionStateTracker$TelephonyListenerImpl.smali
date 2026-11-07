.class Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;
.super Landroid/telephony/TelephonyCallback;
.source "DataConnectionStateTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyListenerImpl"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 210
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist logChannelChange(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    const/4 v0, 0x5

    .line 276
    :cond_13
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmChannelCountEnum(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I

    move-result p1

    if-eq p1, v0, :cond_33

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fgetmActiveDataSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;)I

    move-result v1

    if-eq p1, v1, :cond_2e

    const/16 p1, 0x372

    .line 278
    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    .line 281
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fputmChannelCountEnum(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V

    :cond_33
    return-void
.end method


# virtual methods
.method public whitelist onActiveDataSubscriptionIdChanged(I)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$mlogRATChanges(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->-$$Nest$fputmActiveDataSubId(Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;I)V

    return-void
.end method

.method public whitelist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->logChannelChange(Ljava/util/List;)V

    return-void
.end method

.method public whitelist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->notifyDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist register(Landroid/telephony/TelephonyManager;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 217
    :cond_3
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a

    .line 223
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_a
    return-void
.end method
