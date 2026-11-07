.class public final Landroid/net/http/ConnectionMigrationOptions$Builder;
.super Ljava/lang/Object;
.source "ConnectionMigrationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/ConnectionMigrationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowNonDefaultNetworkUsage:I

.field private blacklist mAllowServerMigration:Ljava/lang/Boolean;

.field private blacklist mEnableDefaultNetworkMigration:I

.field private blacklist mEnablePathDegradationMigration:I

.field private blacklist mIdleConnectionMigrationPeriod:Ljava/time/Duration;

.field private blacklist mMaxPathDegradingNonDefaultMigrationsCount:Ljava/lang/Integer;

.field private blacklist mMaxTimeOnNonDefaultNetwork:Ljava/time/Duration;

.field private blacklist mMaxWriteErrorNonDefaultNetworkMigrationsCount:Ljava/lang/Integer;

.field private blacklist mMigrateIdleConnections:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowNonDefaultNetworkUsage(Landroid/net/http/ConnectionMigrationOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowServerMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableDefaultNetworkMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkMigration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnablePathDegradationMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionMigrationPeriod(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriod:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxPathDegradingNonDefaultMigrationsCount(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mMaxPathDegradingNonDefaultMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxTimeOnNonDefaultNetwork(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetwork:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWriteErrorNonDefaultNetworkMigrationsCount(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mMaxWriteErrorNonDefaultNetworkMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMigrateIdleConnections(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/http/ConnectionMigrationOptions;
    .registers 2

    .line 192
    new-instance v0, Landroid/net/http/ConnectionMigrationOptions;

    invoke-direct {v0, p0}, Landroid/net/http/ConnectionMigrationOptions;-><init>(Landroid/net/http/ConnectionMigrationOptions$Builder;)V

    return-object v0
.end method

.method public whitelist setAllowNonDefaultNetworkUsage(I)Landroid/net/http/ConnectionMigrationOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 182
    iput p1, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:I

    .line 183
    return-object p0
.end method

.method public whitelist setDefaultNetworkMigration(I)Landroid/net/http/ConnectionMigrationOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 146
    iput p1, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkMigration:I

    .line 147
    return-object p0
.end method

.method public whitelist setPathDegradationMigration(I)Landroid/net/http/ConnectionMigrationOptions$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 162
    iput p1, p0, Landroid/net/http/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:I

    .line 163
    return-object p0
.end method
