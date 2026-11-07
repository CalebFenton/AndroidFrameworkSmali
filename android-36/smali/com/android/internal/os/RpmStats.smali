.class public final Lcom/android/internal/os/RpmStats;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;,
        Lcom/android/internal/os/RpmStats$PowerStateSubsystem;,
        Lcom/android/internal/os/RpmStats$PowerStateElement;
    }
.end annotation


# instance fields
.field public greylist-max-o mPlatformLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mSubsystemLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateSubsystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public greylist-max-o getAndUpdatePlatformState(Ljava/lang/String;JI)Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J
    .param p4, "count"    # I

    .line 38
    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    .line 39
    .local v0, "e":Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;
    if-nez v0, :cond_15

    .line 40
    new-instance v1, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    invoke-direct {v1}, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;-><init>()V

    move-object v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_15
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mTimeMs:J

    .line 44
    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mCount:I

    .line 45
    return-object v0
.end method

.method public greylist-max-o getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    .line 53
    .local v0, "e":Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    if-nez v0, :cond_15

    .line 54
    new-instance v1, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    invoke-direct {v1}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;-><init>()V

    move-object v0, v1

    .line 55
    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_15
    return-object v0
.end method
