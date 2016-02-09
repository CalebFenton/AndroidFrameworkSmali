.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1347
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/content/ContentResolver;

    #@d
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    #@f
    .line 1346
    return-void
.end method

.method private getGlobalBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1355
    if-eqz p2, :cond_1

    #@3
    const/4 v0, 0x1

    #@4
    .line 1356
    .local v0, "defInt":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    #@6
    invoke-static {v2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    return v1

    #@e
    .line 1355
    .end local v0    # "defInt":I
    :cond_1
    const/4 v0, 0x0

    #@f
    .restart local v0    # "defInt":I
    goto :goto_0
.end method

.method private getGlobalLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method


# virtual methods
.method public getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    #@0
    .prologue
    .line 1377
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@2
    const-string/jumbo v0, "netstats_dev_bucket_duration"

    #@5
    const-wide/32 v2, 0x36ee80

    #@8
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@b
    move-result-wide v2

    #@c
    .line 1378
    const-string/jumbo v0, "netstats_dev_rotate_age"

    #@f
    const-wide/32 v4, 0x4d3f6400

    #@12
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@15
    move-result-wide v4

    #@16
    .line 1379
    const-string/jumbo v0, "netstats_dev_delete_age"

    #@19
    const-wide v6, 0x1cf7c5800L

    #@1e
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@21
    move-result-wide v6

    #@22
    .line 1377
    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    #@25
    return-object v1
.end method

.method public getDevPersistBytes(J)J
    .locals 3
    .param p1, "def"    # J

    #@0
    .prologue
    .line 1399
    const-string/jumbo v0, "netstats_dev_persist_bytes"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getGlobalAlertBytes(J)J
    .locals 3
    .param p1, "def"    # J

    #@0
    .prologue
    .line 1369
    const-string/jumbo v0, "netstats_global_alert_bytes"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getPollInterval()J
    .locals 4

    #@0
    .prologue
    .line 1361
    const-string/jumbo v0, "netstats_poll_interval"

    #@3
    const-wide/32 v2, 0x1b7740

    #@6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getSampleEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1373
    const-string/jumbo v0, "netstats_sample_enabled"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTimeCacheMaxAge()J
    .locals 4

    #@0
    .prologue
    .line 1365
    const-string/jumbo v0, "netstats_time_cache_max_age"

    #@3
    const-wide/32 v2, 0x5265c00

    #@6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    #@0
    .prologue
    .line 1387
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@2
    const-string/jumbo v0, "netstats_uid_bucket_duration"

    #@5
    const-wide/32 v2, 0x6ddd00

    #@8
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@b
    move-result-wide v2

    #@c
    .line 1388
    const-string/jumbo v0, "netstats_uid_rotate_age"

    #@f
    const-wide/32 v4, 0x4d3f6400

    #@12
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@15
    move-result-wide v4

    #@16
    .line 1389
    const-string/jumbo v0, "netstats_uid_delete_age"

    #@19
    const-wide v6, 0x1cf7c5800L

    #@1e
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@21
    move-result-wide v6

    #@22
    .line 1387
    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    #@25
    return-object v1
.end method

.method public getUidPersistBytes(J)J
    .locals 3
    .param p1, "def"    # J

    #@0
    .prologue
    .line 1407
    const-string/jumbo v0, "netstats_uid_persist_bytes"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    #@0
    .prologue
    .line 1393
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@2
    const-string/jumbo v0, "netstats_uid_tag_bucket_duration"

    #@5
    const-wide/32 v2, 0x6ddd00

    #@8
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@b
    move-result-wide v2

    #@c
    .line 1394
    const-string/jumbo v0, "netstats_uid_tag_rotate_age"

    #@f
    const-wide/32 v4, 0x19bfcc00

    #@12
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@15
    move-result-wide v4

    #@16
    .line 1395
    const-string/jumbo v0, "netstats_uid_tag_delete_age"

    #@19
    const-wide/32 v6, 0x4d3f6400

    #@1c
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@1f
    move-result-wide v6

    #@20
    .line 1393
    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    #@23
    return-object v1
.end method

.method public getUidTagPersistBytes(J)J
    .locals 3
    .param p1, "def"    # J

    #@0
    .prologue
    .line 1411
    const-string/jumbo v0, "netstats_uid_tag_persist_bytes"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 1

    #@0
    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getXtPersistBytes(J)J
    .locals 3
    .param p1, "def"    # J

    #@0
    .prologue
    .line 1403
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevPersistBytes(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
