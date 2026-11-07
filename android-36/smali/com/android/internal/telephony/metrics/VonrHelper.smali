.class public Lcom/android/internal/telephony/metrics/VonrHelper;
.super Ljava/lang/Object;
.source "VonrHelper.java"


# instance fields
.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPhoneVonrState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mVonrRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhoneVonrState(Lcom/android/internal/telephony/metrics/VonrHelper;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mPhoneVonrState:Ljava/util/Map;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mPhoneVonrState:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/metrics/VonrHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/VonrHelper$1;-><init>(Lcom/android/internal/telephony/metrics/VonrHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mVonrRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 51
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VonrHelperThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist getVonrEnabled(I)Z
    .registers 3

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mPhoneVonrState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist updateVonrEnabledState()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VonrHelper;->mVonrRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
