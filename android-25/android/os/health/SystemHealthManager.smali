.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const-string/jumbo v0, "batterystats"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 50
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@10
    .line 49
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "systemhealth"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/health/SystemHealthManager;

    #@9
    return-object v0
.end method


# virtual methods
.method public takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    #@5
    move-result-object v1

    #@6
    .line 81
    .local v1, "parceler":Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v1}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 82
    .end local v1    # "parceler":Landroid/os/health/HealthStatsParceler;
    :catch_0
    move-exception v0

    #@c
    .line 83
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@e
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .locals 6
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 115
    :try_start_0
    iget-object v5, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    #@5
    move-result-object v3

    #@6
    .line 116
    .local v3, "parcelers":[Landroid/os/health/HealthStatsParceler;
    array-length v5, p1

    #@7
    new-array v4, v5, [Landroid/os/health/HealthStats;

    #@9
    .line 117
    .local v4, "results":[Landroid/os/health/HealthStats;
    array-length v0, p1

    #@a
    .line 118
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 119
    aget-object v5, v3, v2

    #@f
    invoke-virtual {v5}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    #@12
    move-result-object v5

    #@13
    aput-object v5, v4, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 118
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 121
    :cond_0
    return-object v4

    #@19
    .line 122
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "parcelers":[Landroid/os/health/HealthStatsParceler;
    .end local v4    # "results":[Landroid/os/health/HealthStats;
    :catch_0
    move-exception v1

    #@1a
    .line 123
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v5
.end method
