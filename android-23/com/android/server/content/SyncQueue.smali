.class public Lcom/android/server/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p3, "syncAdapters"    # Landroid/content/SyncAdaptersCache;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@9
    .line 55
    iput-object p1, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    #@b
    .line 56
    iput-object p2, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@d
    .line 57
    iput-object p3, p0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@f
    .line 54
    return-void
.end method

.method private add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .locals 10
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "pop"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@0
    .prologue
    .line 124
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@2
    .line 125
    .local v4, "operationKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@a
    .line 127
    .local v1, "existingOperation":Lcom/android/server/content/SyncOperation;
    if-eqz v1, :cond_1

    #@c
    .line 128
    const/4 v0, 0x0

    #@d
    .line 129
    .local v0, "changed":Z
    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncOperation;->compareTo(Ljava/lang/Object;)I

    #@10
    move-result v5

    #@11
    if-gtz v5, :cond_0

    #@13
    .line 131
    iget-wide v6, v1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@15
    iget-wide v8, p1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@17
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@1a
    move-result-wide v2

    #@1b
    .line 133
    .local v2, "newRunTime":J
    iput-wide v2, v1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@1d
    .line 135
    iget-wide v6, p1, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@1f
    iput-wide v6, v1, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@21
    .line 136
    const/4 v0, 0x1

    #@22
    .line 138
    .end local v2    # "newRunTime":J
    :cond_0
    return v0

    #@23
    .line 141
    .end local v0    # "changed":Z
    :cond_1
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@25
    .line 144
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@27
    if-nez v5, :cond_3

    #@29
    .line 145
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2b
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine;->insertIntoPending(Lcom/android/server/content/SyncOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@2e
    move-result-object p2

    #@2f
    .line 146
    if-nez p2, :cond_2

    #@31
    .line 147
    new-instance v5, Ljava/lang/IllegalStateException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "error adding pending sync operation "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v5

    #@4b
    .line 150
    :cond_2
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@4d
    .line 153
    :cond_3
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@4f
    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 154
    const/4 v5, 0x1

    #@53
    return v5
.end method


# virtual methods
.method public add(Lcom/android/server/content/SyncOperation;)Z
    .locals 1
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public addPendingOperations(I)V
    .locals 24
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 61
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v22

    #@c
    .local v22, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_7

    #@12
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v21

    #@16
    check-cast v21, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@18
    .line 62
    .local v21, "op":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    move-object/from16 v0, v21

    #@1a
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    move-object/from16 v20, v0

    #@1e
    .line 63
    .local v20, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, v20

    #@20
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@22
    move/from16 v0, p1

    #@24
    if-ne v4, v0, :cond_0

    #@26
    .line 65
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2a
    move-object/from16 v0, v20

    #@2c
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@2f
    move-result-object v2

    #@30
    .line 67
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v20

    #@32
    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@34
    if-eqz v4, :cond_4

    #@36
    .line 68
    move-object/from16 v0, p0

    #@38
    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@3a
    .line 69
    move-object/from16 v0, v20

    #@3c
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3e
    move-object/from16 v0, v20

    #@40
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@42
    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@44
    invoke-static {v5, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@47
    move-result-object v5

    #@48
    move-object/from16 v0, v20

    #@4a
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@4c
    .line 68
    invoke-virtual {v4, v5, v6}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@4f
    move-result-object v23

    #@50
    .line 70
    .local v23, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v23, :cond_1

    #@52
    .line 71
    const-string/jumbo v4, "SyncManager"

    #@55
    const/4 v5, 0x2

    #@56
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 72
    const-string/jumbo v4, "SyncManager"

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Missing sync adapter info for authority "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    move-object/from16 v0, v21

    #@6d
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_0

    #@7b
    .line 76
    :cond_1
    new-instance v3, Lcom/android/server/content/SyncOperation;

    #@7d
    .line 77
    move-object/from16 v0, v20

    #@7f
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@81
    move-object/from16 v0, v20

    #@83
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@85
    move-object/from16 v0, v21

    #@87
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    #@89
    move-object/from16 v0, v21

    #@8b
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    #@8d
    move-object/from16 v0, v20

    #@8f
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@91
    .line 78
    move-object/from16 v0, v21

    #@93
    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    #@95
    .line 79
    move-object/from16 v0, v21

    #@97
    iget-boolean v10, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    #@99
    if-eqz v10, :cond_2

    #@9b
    const/4 v10, -0x1

    #@9c
    :goto_1
    int-to-long v10, v10

    #@9d
    .line 80
    const-wide/16 v12, 0x0

    #@9f
    .line 81
    if-eqz v2, :cond_3

    #@a1
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a3
    check-cast v14, Ljava/lang/Long;

    #@a5
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    #@a8
    move-result-wide v14

    #@a9
    .line 82
    :goto_2
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@ad
    move-object/from16 v16, v0

    #@af
    move-object/from16 v0, v16

    #@b1
    move-object/from16 v1, v20

    #@b3
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@b6
    move-result-wide v16

    #@b7
    .line 83
    move-object/from16 v0, v23

    #@b9
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@bb
    move-object/from16 v18, v0

    #@bd
    check-cast v18, Landroid/content/SyncAdapterType;

    #@bf
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    #@c2
    move-result v18

    #@c3
    .line 76
    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    #@c6
    .line 84
    .local v3, "operationToAdd":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v21

    #@c8
    iput-object v0, v3, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@ca
    .line 85
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, v21

    #@ce
    invoke-direct {v0, v3, v1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@d1
    goto/16 :goto_0

    #@d3
    .line 79
    .end local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    :cond_2
    const/4 v10, 0x0

    #@d4
    goto :goto_1

    #@d5
    .line 81
    :cond_3
    const-wide/16 v14, 0x0

    #@d7
    goto :goto_2

    #@d8
    .line 86
    .end local v23    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_4
    move-object/from16 v0, v20

    #@da
    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@dc
    if-eqz v4, :cond_0

    #@de
    .line 88
    :try_start_0
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    #@e2
    move-object/from16 v0, v20

    #@e4
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@e6
    const/4 v6, 0x0

    #@e7
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@ea
    .line 95
    new-instance v3, Lcom/android/server/content/SyncOperation;

    #@ec
    .line 96
    move-object/from16 v0, v20

    #@ee
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@f0
    move-object/from16 v0, v20

    #@f2
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@f4
    move-object/from16 v0, v21

    #@f6
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    #@f8
    move-object/from16 v0, v21

    #@fa
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    #@fc
    .line 97
    move-object/from16 v0, v21

    #@fe
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    #@100
    .line 98
    move-object/from16 v0, v21

    #@102
    iget-boolean v9, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    #@104
    if-eqz v9, :cond_5

    #@106
    const/4 v9, -0x1

    #@107
    :goto_3
    int-to-long v9, v9

    #@108
    .line 99
    const-wide/16 v11, 0x0

    #@10a
    .line 100
    if-eqz v2, :cond_6

    #@10c
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@10e
    check-cast v13, Ljava/lang/Long;

    #@110
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@113
    move-result-wide v13

    #@114
    .line 101
    :goto_4
    move-object/from16 v0, p0

    #@116
    iget-object v15, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@118
    move-object/from16 v0, v20

    #@11a
    invoke-virtual {v15, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@11d
    move-result-wide v15

    #@11e
    .line 95
    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    #@121
    .line 102
    .restart local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v21

    #@123
    iput-object v0, v3, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@125
    .line 103
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v21

    #@129
    invoke-direct {v0, v3, v1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@12c
    goto/16 :goto_0

    #@12e
    .line 89
    .end local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    :catch_0
    move-exception v19

    #@12f
    .line 90
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SyncManager"

    #@132
    const/4 v5, 0x2

    #@133
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@136
    move-result v4

    #@137
    if-eqz v4, :cond_0

    #@139
    .line 91
    const-string/jumbo v4, "SyncManager"

    #@13c
    new-instance v5, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v6, "Missing sync service for authority "

    #@144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v5

    #@148
    move-object/from16 v0, v21

    #@14a
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v5

    #@150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v5

    #@154
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@157
    goto/16 :goto_0

    #@159
    .line 98
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/4 v9, 0x0

    #@15a
    goto :goto_3

    #@15b
    .line 100
    :cond_6
    const-wide/16 v13, 0x0

    #@15d
    goto :goto_4

    #@15e
    .line 60
    .end local v2    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v20    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v21    # "op":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_7
    return-void
.end method

.method public clearBackoffs()V
    .locals 4

    #@0
    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "op$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@16
    .line 194
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    const-wide/16 v2, 0x0

    #@18
    iput-wide v2, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@1a
    .line 195
    invoke-virtual {v0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    #@1d
    goto :goto_0

    #@1e
    .line 192
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 259
    .local v0, "now":J
    const-string/jumbo v4, "SyncQueue: "

    #@7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v4

    #@b
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@d
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@10
    move-result v5

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    const-string/jumbo v5, " operation(s)\n"

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 260
    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v3

    #@25
    .local v3, "operation$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Lcom/android/server/content/SyncOperation;

    #@31
    .line 261
    .local v2, "operation":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v4, "  "

    #@34
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 262
    iget-wide v4, v2, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@39
    cmp-long v4, v4, v0

    #@3b
    if-gtz v4, :cond_0

    #@3d
    .line 263
    const-string/jumbo v4, "READY"

    #@40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 267
    :goto_1
    const-string/jumbo v4, " - "

    #@46
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 268
    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4b
    const/4 v5, 0x0

    #@4c
    invoke-virtual {v2, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, "\n"

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 265
    :cond_0
    iget-wide v4, v2, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@5d
    sub-long/2addr v4, v0

    #@5e
    const-wide/16 v6, 0x3e8

    #@60
    div-long/2addr v4, v6

    #@61
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    goto :goto_1

    #@69
    .line 257
    .end local v2    # "operation":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method public getOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 4
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "backoff"    # J

    #@0
    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@16
    .line 203
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@18
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 204
    iput-wide p2, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@20
    .line 205
    invoke-virtual {v0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    #@23
    goto :goto_0

    #@24
    .line 199
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method public onDelayUntilTimeChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 4
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    #@0
    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@16
    .line 213
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@18
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 214
    iput-wide p2, v0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@20
    .line 215
    invoke-virtual {v0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    #@23
    goto :goto_0

    #@24
    .line 210
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method public remove(Lcom/android/server/content/SyncOperation;)V
    .locals 6
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 174
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    .line 175
    .local v1, "isLoggable":Z
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@a
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@c
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/content/SyncOperation;

    #@12
    .line 176
    .local v2, "operationToRemove":Lcom/android/server/content/SyncOperation;
    if-eqz v1, :cond_0

    #@14
    .line 177
    const-string/jumbo v3, "SyncManager"

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Attempting to remove: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 179
    :cond_0
    if-nez v2, :cond_2

    #@32
    .line 180
    if-eqz v1, :cond_1

    #@34
    .line 181
    const-string/jumbo v3, "SyncManager"

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Could not find: "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 183
    :cond_1
    return-void

    #@51
    .line 185
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@53
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@55
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@58
    move-result v3

    #@59
    if-nez v3, :cond_3

    #@5b
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "unable to find pending row for "

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    .line 187
    .local v0, "errorMessage":Ljava/lang/String;
    const-string/jumbo v3, "SyncManager"

    #@72
    new-instance v4, Ljava/lang/IllegalStateException;

    #@74
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@77
    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    .line 173
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 230
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    .line 231
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_2

    #@10
    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map$Entry;

    #@16
    .line 233
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lcom/android/server/content/SyncOperation;

    #@1c
    .line 234
    .local v4, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1e
    .line 235
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 238
    if-eqz p2, :cond_1

    #@26
    .line 240
    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@28
    .line 242
    const/4 v6, 0x0

    #@29
    .line 239
    invoke-static {v5, p2, v6}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 245
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@32
    .line 246
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@34
    iget-object v6, v4, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@36
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_0

    #@3c
    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "unable to find pending row for "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 248
    .local v2, "errorMessage":Ljava/lang/String;
    const-string/jumbo v5, "SyncManager"

    #@53
    new-instance v6, Ljava/lang/IllegalStateException;

    #@55
    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@58
    invoke-static {v5, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0

    #@5c
    .line 229
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;"
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v4    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 159
    .local v2, "opsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 160
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1d
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1f
    if-ne v3, p1, :cond_0

    #@21
    .line 161
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 164
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@35
    .line 165
    .restart local v0    # "op":Lcom/android/server/content/SyncOperation;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    #@38
    goto :goto_1

    #@39
    .line 157
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method
