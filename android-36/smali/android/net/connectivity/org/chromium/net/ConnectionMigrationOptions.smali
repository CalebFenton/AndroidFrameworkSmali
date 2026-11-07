.class public final Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;
.super Ljava/lang/Object;
.source "ConnectionMigrationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;,
        Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Experimental;
    }
.end annotation


# instance fields
.field private final blacklist mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

.field private final blacklist mAllowServerMigration:Ljava/lang/Boolean;

.field private final blacklist mEnableDefaultNetworkMigration:Ljava/lang/Boolean;

.field private final blacklist mEnablePathDegradationMigration:Ljava/lang/Boolean;

.field private final blacklist mIdleMigrationPeriodSeconds:Ljava/lang/Long;

.field private final blacklist mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

.field private final blacklist mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

.field private final blacklist mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

.field private final blacklist mMigrateIdleConnections:Ljava/lang/Boolean;

.field private final blacklist mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmEnableDefaultNetworkConnectionMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:Ljava/lang/Boolean;

    .line 91
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmEnablePathDegradationMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 92
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmAllowServerMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 93
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMigrateIdleConnections(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 94
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmIdleConnectionMigrationPeriodSeconds(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mIdleMigrationPeriodSeconds:Ljava/lang/Long;

    .line 95
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmRetryPreHandshakeErrorsOnAlternateNetwork(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 97
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmAllowNonDefaultNetworkUsage(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 98
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxTimeOnNonDefaultNetworkSeconds(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 99
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxWriteErrorEagerMigrationsCount(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 100
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxPathDegradingEagerMigrationsCount(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;-><init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)V

    return-void
.end method

.method public static blacklist builder()Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 2

    .line 288
    new-instance v0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getAllowNonDefaultNetworkUsage()Ljava/lang/Boolean;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getAllowServerMigration()Ljava/lang/Boolean;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mAllowServerMigration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getEnableDefaultNetworkMigration()Ljava/lang/Boolean;
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getEnablePathDegradationMigration()Ljava/lang/Boolean;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getIdleMigrationPeriodSeconds()Ljava/lang/Long;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mIdleMigrationPeriodSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getMaxPathDegradingEagerMigrationsCount()Ljava/lang/Integer;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getMaxTimeOnNonDefaultNetworkSeconds()Ljava/lang/Long;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getMaxWriteErrorEagerMigrationsCount()Ljava/lang/Integer;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getMigrateIdleConnections()Ljava/lang/Boolean;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mMigrateIdleConnections:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getRetryPreHandshakeErrorsOnAlternateNetwork()Ljava/lang/Boolean;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    return-object v0
.end method
