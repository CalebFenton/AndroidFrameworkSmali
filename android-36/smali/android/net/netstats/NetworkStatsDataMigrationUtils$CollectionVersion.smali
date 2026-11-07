.class Landroid/net/netstats/NetworkStatsDataMigrationUtils$CollectionVersion;
.super Ljava/lang/Object;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionVersion"
.end annotation


# static fields
.field static final blacklist VERSION_NETWORK_INIT:I = 0x1

.field static final blacklist VERSION_UID_INIT:I = 0x1

.field static final blacklist VERSION_UID_WITH_IDENT:I = 0x2

.field static final blacklist VERSION_UID_WITH_SET:I = 0x4

.field static final blacklist VERSION_UID_WITH_TAG:I = 0x3

.field static final blacklist VERSION_UNIFIED_INIT:I = 0x10


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
