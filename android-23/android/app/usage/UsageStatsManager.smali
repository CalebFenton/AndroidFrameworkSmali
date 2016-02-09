.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# static fields
.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_COUNT:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field private static final sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/app/usage/UsageEvents;

    #@2
    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    #@5
    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/usage/IUsageStatsManager;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    #@5
    .line 99
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@7
    .line 97
    return-void
.end method


# virtual methods
.method public isAppInactive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 233
    :catch_0
    move-exception v0

    #@c
    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .locals 13
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 204
    const/4 v1, 0x4

    #@1
    move-object v0, p0

    #@2
    move-wide v2, p1

    #@3
    move-wide/from16 v4, p3

    #@5
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    #@8
    move-result-object v11

    #@9
    .line 205
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 209
    :cond_0
    new-instance v6, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@19
    .line 210
    .local v6, "aggregatedStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@1c
    move-result v10

    #@1d
    .line 211
    .local v10, "statCount":I
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_2

    #@20
    .line 212
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    check-cast v9, Landroid/app/usage/UsageStats;

    #@26
    .line 213
    .local v9, "newStat":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v7

    #@2e
    check-cast v7, Landroid/app/usage/UsageStats;

    #@30
    .line 214
    .local v7, "existingStat":Landroid/app/usage/UsageStats;
    if-nez v7, :cond_1

    #@32
    .line 215
    iget-object v0, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {v6, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 211
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 217
    :cond_1
    invoke-virtual {v7, v9}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    #@3d
    goto :goto_1

    #@3e
    .line 220
    .end local v7    # "existingStat":Landroid/app/usage/UsageStats;
    .end local v9    # "newStat":Landroid/app/usage/UsageStats;
    :cond_2
    return-object v6
.end method

.method public queryConfigurations(IJJ)Ljava/util/List;
    .locals 10
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    .line 159
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-wide v4, p4

    #@b
    .line 158
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v8

    #@f
    .line 160
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v8, :cond_0

    #@11
    .line 161
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 163
    .end local v8    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :catch_0
    move-exception v7

    #@17
    .line 166
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 9
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    #@0
    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    .line 183
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    move-wide v2, p1

    #@9
    move-wide v4, p3

    #@a
    .line 182
    invoke-interface/range {v1 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v7

    #@e
    .line 184
    .local v7, "iter":Landroid/app/usage/UsageEvents;
    if-eqz v7, :cond_0

    #@10
    .line 185
    return-object v7

    #@11
    .line 187
    .end local v7    # "iter":Landroid/app/usage/UsageEvents;
    :catch_0
    move-exception v0

    #@12
    .line 190
    :cond_0
    sget-object v1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    #@14
    return-object v1
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .locals 10
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    .line 134
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-wide v4, p4

    #@b
    .line 133
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v8

    #@f
    .line 135
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    if-eqz v8, :cond_0

    #@11
    .line 136
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 138
    .end local v8    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    :catch_0
    move-exception v7

    #@17
    .line 141
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public setAppInactive(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inactive"    # Z

    #@0
    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 242
    :goto_0
    return-void

    #@a
    .line 245
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    #@2
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/usage/IUsageStatsManager;->whitelistAppTemporarily(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 264
    :goto_0
    return-void

    #@a
    .line 267
    :catch_0
    move-exception v0

    #@b
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
