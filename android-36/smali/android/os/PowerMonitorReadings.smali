.class public final Landroid/os/PowerMonitorReadings;
.super Ljava/lang/Object;
.source "PowerMonitorReadings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerMonitorReadings$PowerMonitorGranularity;
    }
.end annotation


# static fields
.field public static final whitelist ENERGY_UNAVAILABLE:I = -0x1

.field public static final blacklist GRANULARITY_FINE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist GRANULARITY_UNSPECIFIED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyUws:[J

.field private final blacklist mGranularity:I

.field private final blacklist mPowerMonitors:[Landroid/os/PowerMonitor;

.field private final blacklist mTimestampsMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;-><init>()V

    .line 77
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    .line 76
    return-void
.end method

.method public constructor blacklist <init>([Landroid/os/PowerMonitor;[J[JI)V
    .registers 5
    .param p1, "powerMonitors"    # [Landroid/os/PowerMonitor;
    .param p2, "energyUws"    # [J
    .param p3, "timestampsMs"    # [J
    .param p4, "granularity"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 87
    iput-object p2, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    .line 88
    iput-object p3, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    .line 89
    iput p4, p0, Landroid/os/PowerMonitorReadings;->mGranularity:I

    .line 90
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/os/PowerMonitor;)I
    .registers 2
    .param p0, "pm"    # Landroid/os/PowerMonitor;

    .line 77
    iget v0, p0, Landroid/os/PowerMonitor;->index:I

    return v0
.end method


# virtual methods
.method public whitelist getConsumedEnergy(Landroid/os/PowerMonitor;)J
    .registers 5
    .param p1, "powerMonitor"    # Landroid/os/PowerMonitor;

    .line 99
    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 100
    .local v0, "offset":I
    if-ltz v0, :cond_f

    .line 101
    iget-object v1, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide v1, v1, v0

    return-wide v1

    .line 103
    :cond_f
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public blacklist getGranularity()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 129
    iget v0, p0, Landroid/os/PowerMonitorReadings;->mGranularity:I

    return v0
.end method

.method public whitelist getTimestampMillis(Landroid/os/PowerMonitor;)J
    .registers 5
    .param p1, "powerMonitor"    # Landroid/os/PowerMonitor;

    .line 112
    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 113
    .local v0, "offset":I
    if-ltz v0, :cond_f

    .line 114
    iget-object v1, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide v1, v1, v0

    return-wide v1

    .line 116
    :cond_f
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " monitors: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 137
    if-eqz v1, :cond_17

    .line 138
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_17
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/PowerMonitor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 144
    .end local v1    # "i":I
    :cond_47
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
