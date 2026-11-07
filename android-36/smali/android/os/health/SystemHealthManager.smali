.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/SystemHealthManager$PendingUidSnapshots;
    }
.end annotation


# static fields
.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemHealthManager"

.field private static final blacklist TAKE_UID_SNAPSHOT_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final blacklist mHintManager:Landroid/os/IHintManager;

.field private final blacklist mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

.field private final blacklist mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

.field private blacklist mPowerMonitorsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPowerMonitorsLock:Ljava/lang/Object;

.field private final blacklist mPowerStats:Landroid/os/IPowerStatsService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPowerMonitorsLock(Landroid/os/health/SystemHealthManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerMonitorsInfo(Landroid/os/health/SystemHealthManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 552
    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;-><init>()V

    .line 553
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    .line 552
    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 4

    .line 128
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "powerstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/os/IPowerStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerStatsService;

    move-result-object v1

    .line 132
    const-string/jumbo v2, "performance_hint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/os/IHintManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;

    move-result-object v2

    .line 128
    invoke-direct {p0, v0, v1, v2}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;Landroid/os/IHintManager;)V

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;Landroid/os/IHintManager;)V
    .registers 8
    .param p1, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p2, "powerStats"    # Landroid/os/IPowerStatsService;
    .param p3, "hintManager"    # Landroid/os/IHintManager;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;-><init>(Landroid/os/health/SystemHealthManager-IA;)V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    .line 138
    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 139
    iput-object p2, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    .line 140
    iput-object p3, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "data":Landroid/os/IHintManager$HintManagerClientData;
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v1, :cond_2d

    .line 144
    :try_start_1d
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    invoke-interface {v1}, Landroid/os/IHintManager;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_25

    move-object v0, v1

    .line 147
    goto :goto_2d

    .line 145
    :catch_25
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SystemHealthManager"

    const-string v3, "Failed to get hint manager client data"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    .line 150
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 371
    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/SystemHealthManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPowerMonitorReadings$2(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V
    .registers 2
    .param p0, "onResult"    # Landroid/os/OutcomeReceiver;
    .param p1, "error"    # Ljava/lang/IllegalArgumentException;

    .line 572
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSupportedPowerMonitors$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2
    .param p0, "onResult"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Ljava/util/List;

    .line 524
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PowerMonitor;)I
    .registers 2
    .param p0, "pm"    # Landroid/os/PowerMonitor;

    .line 553
    iget v0, p0, Landroid/os/PowerMonitor;->index:I

    return v0
.end method


# virtual methods
.method public whitelist getCpuHeadroom(Landroid/os/CpuHeadroomParams;)F
    .registers 5
    .param p1, "params"    # Landroid/os/CpuHeadroomParams;

    .line 180
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_d6

    .line 184
    if-eqz p1, :cond_af

    .line 185
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v0, v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v0, v0

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget v1, v1, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    if-gt v0, v1, :cond_2d

    goto :goto_4b

    .line 188
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of TIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v2, v2, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4b
    :goto_4b
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_68

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_68

    goto :goto_af

    .line 195
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v2, v2, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expect range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_af
    :goto_af
    :try_start_af
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 206
    if-eqz p1, :cond_b6

    iget-object v1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    goto :goto_bb

    :cond_b6
    new-instance v1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {v1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    .line 205
    :goto_bb
    invoke-interface {v0, v1}, Landroid/os/IHintManager;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v0

    .line 207
    .local v0, "ret":Landroid/hardware/power/CpuHeadroomResult;
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Landroid/hardware/power/CpuHeadroomResult;->getTag()I

    move-result v1

    if-eqz v1, :cond_c8

    goto :goto_cd

    .line 210
    :cond_c8
    invoke-virtual {v0}, Landroid/hardware/power/CpuHeadroomResult;->getGlobalHeadroom()F

    move-result v1
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_cc} :catch_d0

    return v1

    .line 208
    :cond_cd
    :goto_cd
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 211
    .end local v0    # "ret":Landroid/hardware/power/CpuHeadroomResult;
    :catch_d0
    move-exception v0

    .line 212
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 182
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_d6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getCpuHeadroomCalculationWindowRange()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_30

    .line 303
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    return-object v0

    .line 301
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getCpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_1c

    .line 343
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 341
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getGpuHeadroom(Landroid/os/GpuHeadroomParams;)F
    .registers 5
    .param p1, "params"    # Landroid/os/GpuHeadroomParams;

    .line 258
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_9f

    .line 262
    if-eqz p1, :cond_78

    .line 263
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_31

    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_31

    goto :goto_78

    .line 267
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v2, v2, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expect range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_78
    :goto_78
    :try_start_78
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 278
    if-eqz p1, :cond_7f

    iget-object v1, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    goto :goto_84

    :cond_7f
    new-instance v1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {v1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    .line 277
    :goto_84
    invoke-interface {v0, v1}, Landroid/os/IHintManager;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v0

    .line 279
    .local v0, "ret":Landroid/hardware/power/GpuHeadroomResult;
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Landroid/hardware/power/GpuHeadroomResult;->getTag()I

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_96

    .line 282
    :cond_91
    invoke-virtual {v0}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result v1
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_95} :catch_99

    return v1

    .line 280
    :cond_96
    :goto_96
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 283
    .end local v0    # "ret":Landroid/hardware/power/GpuHeadroomResult;
    :catch_99
    move-exception v0

    .line 284
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 260
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_9f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getGpuHeadroomCalculationWindowRange()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_30

    .line 323
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    return-object v0

    .line 321
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getGpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_1c

    .line 361
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 359
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getMaxCpuHeadroomTidsSize()I
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget v0, v0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    return v0

    .line 228
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getPowerMonitorReadings(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PowerMonitorReadings;",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p1, "powerMonitors":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    .local p3, "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v0, :cond_1a

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported power monitor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "error":Ljava/lang/IllegalArgumentException;
    if-eqz p2, :cond_16

    .line 572
    new-instance v1, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, v0}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 574
    :cond_16
    invoke-interface {p3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 576
    :goto_19
    return-void

    .line 579
    .end local v0    # "error":Ljava/lang/IllegalArgumentException;
    :cond_1a
    nop

    .line 580
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/PowerMonitor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/os/PowerMonitor;

    .line 581
    .local v4, "powerMonitorsArray":[Landroid/os/PowerMonitor;
    sget-object v0, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [I

    .line 583
    .local v7, "indices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 584
    aget-object v1, v4, v0

    iget v1, v1, Landroid/os/PowerMonitor;->index:I

    aput v1, v7, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 587
    .end local v0    # "i":I
    :cond_43
    :try_start_43
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v1, Landroid/os/health/SystemHealthManager$2;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_47} :catch_56

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    :try_start_4b
    invoke-direct/range {v1 .. v6}, Landroid/os/health/SystemHealthManager$2;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;[Landroid/os/PowerMonitor;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v7, v1}, Landroid/os/IPowerStatsService;->getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_51} :catch_53

    .line 618
    nop

    .line 619
    return-void

    .line 616
    :catch_53
    move-exception v0

    move-object p2, v0

    goto :goto_5a

    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    :catch_56
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object p2, v0

    .line 617
    .end local p3    # "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "onResult":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/PowerMonitorReadings;Ljava/lang/RuntimeException;>;"
    .local p2, "e":Landroid/os/RemoteException;
    :goto_5a
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist getSupportedPowerMonitors(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;>;)V"
        }
    .end annotation

    .line 512
    .local p2, "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/os/PowerMonitor;>;>;"
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 514
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    goto :goto_18

    .line 515
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    :cond_a
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v1, :cond_17

    .line 516
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    .line 517
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    goto :goto_18

    .line 519
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    :cond_17
    const/4 v1, 0x0

    .line 521
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3d

    .line 522
    if-eqz v1, :cond_2a

    .line 523
    if-eqz p1, :cond_26

    .line 524
    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v1}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 526
    :cond_26
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 528
    :goto_29
    return-void

    .line 531
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v2, Landroid/os/health/SystemHealthManager$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/os/health/SystemHealthManager$1;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Landroid/os/IPowerStatsService;->getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_37

    .line 549
    nop

    .line 550
    return-void

    .line 547
    :catch_37
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 521
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public whitelist takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .registers 2

    .line 412
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .registers 5
    .param p1, "uid"    # I

    .line 388
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->onewayBatteryStatsService()Z

    move-result v0

    if-nez v0, :cond_17

    .line 390
    :try_start_6
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 391
    .local v0, "parceler":Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v0}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 392
    .end local v0    # "parceler":Landroid/os/health/HealthStatsParceler;
    :catch_11
    move-exception v0

    .line 393
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 396
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_17
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshots([I)[Landroid/os/health/HealthStats;

    move-result-object v0

    .line 397
    .local v0, "result":[Landroid/os/health/HealthStats;
    if-eqz v0, :cond_29

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_29

    .line 398
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 400
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .registers 8
    .param p1, "uids"    # [I

    .line 428
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->onewayBatteryStatsService()Z

    move-result v0

    if-nez v0, :cond_24

    .line 430
    :try_start_6
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 431
    .local v0, "parcelers":[Landroid/os/health/HealthStatsParceler;
    array-length v1, p1

    .line 432
    .local v1, "count":I
    new-array v2, v1, [Landroid/os/health/HealthStats;

    .line 433
    .local v2, "results":[Landroid/os/health/HealthStats;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_1d

    .line 434
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1e

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 436
    .end local v3    # "i":I
    :cond_1d
    return-object v2

    .line 437
    .end local v0    # "parcelers":[Landroid/os/health/HealthStatsParceler;
    .end local v1    # "count":I
    .end local v2    # "results":[Landroid/os/health/HealthStats;
    :catch_1e
    move-exception v0

    .line 438
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 443
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_24
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v0

    .line 444
    :try_start_27
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 445
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    .local v1, "resultReceiver":Landroid/os/SynchronousResultReceiver;
    goto :goto_52

    .line 447
    .end local v1    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_36
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 448
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "takeUidSnapshots"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "resultReceiver":Landroid/os/SynchronousResultReceiver;
    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_107

    .line 451
    :try_start_4c
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, v3}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_101
    .catchall {:try_start_4c .. :try_end_51} :catchall_107

    .line 454
    move-object v1, v3

    .line 456
    .end local v3    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v1    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_107

    .line 460
    const-wide/16 v2, 0x2710

    const/4 v0, 0x0

    :try_start_56
    invoke-virtual {v1, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2
    :try_end_5a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_56 .. :try_end_5a} :catch_e4
    .catchall {:try_start_56 .. :try_end_5a} :catchall_e2

    .line 464
    .local v2, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v3

    .line 465
    :try_start_5d
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v4, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v4, v1, :cond_6b

    .line 466
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 467
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    .line 469
    :cond_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_df

    .line 470
    nop

    .line 472
    iget v3, v2, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    packed-switch v3, :pswitch_data_10a

    .line 495
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :pswitch_8d
    new-instance v3, Ljava/lang/SecurityException;

    iget-object v4, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_9c

    .line 488
    iget-object v0, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_9c
    nop

    :goto_9d
    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    :pswitch_a1
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_b0

    .line 492
    iget-object v0, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b1

    :cond_b0
    nop

    :goto_b1
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :pswitch_b5
    array-length v0, p1

    new-array v0, v0, [Landroid/os/health/HealthStats;

    .line 475
    .local v0, "results":[Landroid/os/health/HealthStats;
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_de

    .line 476
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v4, "uid_snapshots"

    const-class v5, Landroid/os/health/HealthStatsParceler;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/health/HealthStatsParceler;

    .line 478
    .local v3, "parcelers":[Landroid/os/health/HealthStatsParceler;
    if-eqz v3, :cond_de

    array-length v4, v3

    array-length v5, p1

    if-ne v4, v5, :cond_de

    .line 479
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d0
    array-length v5, v3

    if-ge v4, v5, :cond_de

    .line 480
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v5

    aput-object v5, v0, v4

    .line 479
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 484
    .end local v3    # "parcelers":[Landroid/os/health/HealthStatsParceler;
    .end local v4    # "i":I
    :cond_de
    return-object v0

    .line 469
    .end local v0    # "results":[Landroid/os/health/HealthStats;
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    .line 464
    .end local v2    # "result":Landroid/os/SynchronousResultReceiver$Result;
    :catchall_e2
    move-exception v2

    goto :goto_eb

    .line 461
    :catch_e4
    move-exception v2

    .line 462
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_e5
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    .end local p0    # "this":Landroid/os/health/SystemHealthManager;
    .end local p1    # "uids":[I
    throw v3
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_e2

    .line 464
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v1    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local p0    # "this":Landroid/os/health/SystemHealthManager;
    .restart local p1    # "uids":[I
    :goto_eb
    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v3

    .line 465
    :try_start_ee
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v4, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v4, v1, :cond_fc

    .line 466
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 467
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    .line 469
    :cond_fc
    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_fe

    .line 470
    throw v2

    .line 469
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v0

    .line 452
    .end local v1    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    .local v3, "resultReceiver":Landroid/os/SynchronousResultReceiver;
    :catch_101
    move-exception v1

    .line 453
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_102
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/health/SystemHealthManager;
    .end local p1    # "uids":[I
    throw v2

    .line 456
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v3    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local p0    # "this":Landroid/os/health/SystemHealthManager;
    .restart local p1    # "uids":[I
    :catchall_107
    move-exception v1

    monitor-exit v0
    :try_end_109
    .catchall {:try_start_102 .. :try_end_109} :catchall_107

    throw v1

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_a1
        :pswitch_8d
    .end packed-switch
.end method
