.class Landroid/net/netstats/NetworkStatsDataMigrationUtils$IdentitySetVersion;
.super Ljava/lang/Object;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentitySetVersion"
.end annotation


# static fields
.field static final blacklist VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field static final blacklist VERSION_ADD_METERED:I = 0x4

.field static final blacklist VERSION_ADD_NETWORK_ID:I = 0x3

.field static final blacklist VERSION_ADD_OEM_MANAGED_NETWORK:I = 0x6

.field static final blacklist VERSION_ADD_ROAMING:I = 0x2

.field static final blacklist VERSION_ADD_SUB_ID:I = 0x7

.field static final blacklist VERSION_INIT:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
