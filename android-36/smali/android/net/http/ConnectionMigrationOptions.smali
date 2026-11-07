.class public Landroid/net/http/ConnectionMigrationOptions;
.super Ljava/lang/Object;
.source "ConnectionMigrationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/ConnectionMigrationOptions$Builder;,
        Landroid/net/http/ConnectionMigrationOptions$Experimental;,
        Landroid/net/http/ConnectionMigrationOptions$MigrationOptionState;
    }
.end annotation


# static fields
.field public static final whitelist MIGRATION_OPTION_DISABLED:I = 0x2

.field public static final whitelist MIGRATION_OPTION_ENABLED:I = 0x1

.field public static final whitelist MIGRATION_OPTION_UNSPECIFIED:I


# instance fields
.field private final blacklist mAllowNonDefaultNetworkUsage:I

.field private final blacklist mAllowServerMigration:Ljava/lang/Boolean;

.field private final blacklist mEnableDefaultNetworkMigration:I

.field private final blacklist mEnablePathDegradationMigration:I

.field private final blacklist mIdleMigrationPeriod:Ljava/time/Duration;

.field private final blacklist mMaxPathDegradingNonDefaultMigrationsCount:Ljava/lang/Integer;

.field private final blacklist mMaxTimeOnNonDefaultNetwork:Ljava/time/Duration;

.field private final blacklist mMaxWriteErrorNonDefaultNetworkMigrationsCount:Ljava/lang/Integer;

.field private final blacklist mMigrateIdleConnections:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/net/http/ConnectionMigrationOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmEnableDefaultNetworkMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:I

    .line 101
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmEnablePathDegradationMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mEnablePathDegradationMigration:I

    .line 102
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmAllowServerMigration(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 103
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMigrateIdleConnections(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 104
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmIdleConnectionMigrationPeriod(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mIdleMigrationPeriod:Ljava/time/Duration;

    .line 105
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmAllowNonDefaultNetworkUsage(Landroid/net/http/ConnectionMigrationOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:I

    .line 106
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxTimeOnNonDefaultNetwork(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mMaxTimeOnNonDefaultNetwork:Ljava/time/Duration;

    .line 107
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxWriteErrorNonDefaultNetworkMigrationsCount(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mMaxWriteErrorNonDefaultNetworkMigrationsCount:Ljava/lang/Integer;

    .line 108
    invoke-static {p1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->-$$Nest$fgetmMaxPathDegradingNonDefaultMigrationsCount(Landroid/net/http/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mMaxPathDegradingNonDefaultMigrationsCount:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public static blacklist builder()Landroid/net/http/ConnectionMigrationOptions$Builder;
    .registers 1

    .line 203
    new-instance v0, Landroid/net/http/ConnectionMigrationOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/ConnectionMigrationOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist getAllowNonDefaultNetworkUsage()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:I

    return v0
.end method

.method public whitelist getDefaultNetworkMigration()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:I

    return v0
.end method

.method public whitelist getPathDegradationMigration()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/net/http/ConnectionMigrationOptions;->mEnablePathDegradationMigration:I

    return v0
.end method
