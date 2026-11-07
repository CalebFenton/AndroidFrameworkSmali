.class public Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
.super Ljava/lang/Object;
.source "ConnectionMigrationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

.field private blacklist mAllowServerMigration:Ljava/lang/Boolean;

.field private blacklist mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

.field private blacklist mEnablePathDegradationMigration:Ljava/lang/Boolean;

.field private blacklist mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

.field private blacklist mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

.field private blacklist mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

.field private blacklist mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

.field private blacklist mMigrateIdleConnections:Ljava/lang/Boolean;

.field private blacklist mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowNonDefaultNetworkUsage(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowServerMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableDefaultNetworkConnectionMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnablePathDegradationMigration(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionMigrationPeriodSeconds(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxPathDegradingEagerMigrationsCount(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxTimeOnNonDefaultNetworkSeconds(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWriteErrorEagerMigrationsCount(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMigrateIdleConnections(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryPreHandshakeErrorsOnAlternateNetwork(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowNonDefaultNetworkUsage(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 208
    return-object p0
.end method

.method public blacklist allowServerMigration(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "allowServerMigration"    # Z

    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 159
    return-object p0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;
    .registers 3

    .line 283
    new-instance v0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;-><init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions-IA;)V

    return-object v0
.end method

.method public blacklist enableDefaultNetworkMigration(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "enableDefaultNetworkConnectionMigration"    # Z

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    .line 131
    return-object p0
.end method

.method public blacklist enablePathDegradationMigration(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 147
    return-object p0
.end method

.method public blacklist migrateIdleConnections(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "migrateIdleConnections"    # Z

    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 175
    return-object p0
.end method

.method public blacklist retryPreHandshakeErrorsOnNonDefaultNetwork(Z)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "retryPreHandshakeErrorsOnAlternateNetwork"    # Z

    .line 273
    nop

    .line 274
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 275
    return-object p0
.end method

.method public blacklist setIdleConnectionMigrationPeriodSeconds(J)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 4
    .param p1, "idleConnectionMigrationPeriodSeconds"    # J

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    .line 190
    return-object p0
.end method

.method public blacklist setMaxPathDegradingNonDefaultNetworkMigrationsCount(I)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "maxPathDegradingEagerMigrationsCount"    # I

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 255
    return-object p0
.end method

.method public blacklist setMaxTimeOnNonDefaultNetworkSeconds(J)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 4
    .param p1, "maxTimeOnNonDefaultNetworkSeconds"    # J

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 225
    return-object p0
.end method

.method public blacklist setMaxWriteErrorNonDefaultNetworkMigrationsCount(I)Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;
    .registers 3
    .param p1, "maxWriteErrorEagerMigrationsCount"    # I

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 240
    return-object p0
.end method
