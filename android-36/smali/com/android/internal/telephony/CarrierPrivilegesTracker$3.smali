.class Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;
.super Landroid/os/HandlerThread;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierPrivilegesTracker;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$localLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 397
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;->val$localLock:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected whitelist onLooperPrepared()V
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;->val$localLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;->val$localLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 402
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
