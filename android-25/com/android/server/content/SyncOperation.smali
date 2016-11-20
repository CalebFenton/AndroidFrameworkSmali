.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final extras:Landroid/os/Bundle;

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field public final sourcePeriodicId:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 55
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 56
    const-string/jumbo v1, "DataSettingsChanged"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 57
    const-string/jumbo v1, "AccountsUpdated"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 58
    const-string/jumbo v1, "ServiceChanged"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 59
    const-string/jumbo v1, "Periodic"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 60
    const-string/jumbo v1, "IsSyncable"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 61
    const-string/jumbo v1, "AutoSync"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 62
    const-string/jumbo v1, "MasterSyncAuto"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 63
    const-string/jumbo v1, "UserStart"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 55
    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@36
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "owningUid"    # I
    .param p4, "owningPackage"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "source"    # I
    .param p7, "provider"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;
    .param p9, "allowParallelSyncs"    # Z

    #@0
    .prologue
    .line 103
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    invoke-direct {v1, p1, p7, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5
    move-object v0, p0

    #@6
    move v2, p3

    #@7
    move-object v3, p4

    #@8
    move v4, p5

    #@9
    move v5, p6

    #@a
    move-object/from16 v6, p8

    #@c
    move/from16 v7, p9

    #@e
    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;Z)V

    #@11
    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    .line 151
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@9
    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@b
    .line 152
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@f
    .line 153
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    #@11
    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@13
    .line 154
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@15
    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@17
    .line 155
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@19
    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@1b
    .line 156
    new-instance v0, Landroid/os/Bundle;

    #@1d
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@1f
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@22
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@24
    .line 157
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@2a
    .line 158
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@2c
    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@2e
    .line 159
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@30
    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@32
    .line 160
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@34
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@36
    .line 161
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@38
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@3a
    .line 162
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@3c
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@3e
    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 14
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "periodMillis"    # J
    .param p4, "flexMillis"    # J

    #@0
    .prologue
    .line 114
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    iget v2, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@4
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@6
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    #@8
    iget v5, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@a
    .line 115
    new-instance v6, Landroid/os/Bundle;

    #@c
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@e
    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@11
    iget-boolean v7, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@13
    iget-boolean v8, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@15
    iget v9, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@17
    move-object v0, p0

    #@18
    move-wide/from16 v10, p2

    #@1a
    move-wide/from16 v12, p4

    #@1c
    .line 114
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    #@1f
    .line 113
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;Z)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z

    #@0
    .prologue
    .line 110
    const-wide/16 v10, 0x0

    #@2
    const-wide/16 v12, 0x0

    #@4
    .line 109
    const/4 v8, 0x0

    #@5
    .line 110
    const/4 v9, -0x1

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move/from16 v2, p2

    #@a
    move-object/from16 v3, p3

    #@c
    move/from16 v4, p4

    #@e
    move/from16 v5, p5

    #@10
    move-object/from16 v6, p6

    #@12
    move/from16 v7, p7

    #@14
    .line 109
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    #@17
    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "isPeriodic"    # Z
    .param p9, "sourcePeriodicId"    # I
    .param p10, "periodMillis"    # J
    .param p12, "flexMillis"    # J

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5
    .line 124
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@7
    .line 125
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@9
    .line 126
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@b
    .line 127
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@d
    .line 128
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@12
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@14
    .line 129
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@16
    .line 130
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@18
    .line 131
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@1a
    .line 132
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@1c
    .line 133
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@1e
    .line 134
    const/4 v0, -0x1

    #@1f
    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@21
    .line 135
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@27
    .line 122
    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 438
    const-string/jumbo v2, "["

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 439
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 440
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "="

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 442
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "]"

    #@37
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 437
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 30
    .param p0, "jobExtras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 249
    const-string/jumbo v28, "SyncManagerJob"

    #@3
    const/16 v29, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, v28

    #@9
    move/from16 v2, v29

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@e
    move-result v28

    #@f
    if-nez v28, :cond_0

    #@11
    .line 250
    const/16 v28, 0x0

    #@13
    return-object v28

    #@14
    .line 253
    :cond_0
    const-string/jumbo v28, "accountName"

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, v28

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v19

    #@1f
    .line 254
    .local v19, "accountName":Ljava/lang/String;
    const-string/jumbo v28, "accountType"

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v28

    #@26
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v20

    #@2a
    .line 255
    .local v20, "accountType":Ljava/lang/String;
    const-string/jumbo v28, "provider"

    #@2d
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, v28

    #@31
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v25

    #@35
    .line 256
    .local v25, "provider":Ljava/lang/String;
    const-string/jumbo v28, "userId"

    #@38
    const v29, 0x7fffffff

    #@3b
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v28

    #@3f
    move/from16 v2, v29

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    #@44
    move-result v27

    #@45
    .line 257
    .local v27, "userId":I
    const-string/jumbo v28, "owningUid"

    #@48
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v28

    #@4c
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@4f
    move-result v6

    #@50
    .line 258
    .local v6, "owningUid":I
    const-string/jumbo v28, "owningPackage"

    #@53
    move-object/from16 v0, p0

    #@55
    move-object/from16 v1, v28

    #@57
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 259
    .local v7, "owningPackage":Ljava/lang/String;
    const-string/jumbo v28, "reason"

    #@5e
    const v29, 0x7fffffff

    #@61
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, v28

    #@65
    move/from16 v2, v29

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    #@6a
    move-result v8

    #@6b
    .line 260
    .local v8, "reason":I
    const-string/jumbo v28, "source"

    #@6e
    const v29, 0x7fffffff

    #@71
    move-object/from16 v0, p0

    #@73
    move-object/from16 v1, v28

    #@75
    move/from16 v2, v29

    #@77
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    #@7a
    move-result v9

    #@7b
    .line 261
    .local v9, "source":I
    const-string/jumbo v28, "allowParallelSyncs"

    #@7e
    const/16 v29, 0x0

    #@80
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, v28

    #@84
    move/from16 v2, v29

    #@86
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@89
    move-result v11

    #@8a
    .line 262
    .local v11, "allowParallelSyncs":Z
    const-string/jumbo v28, "isPeriodic"

    #@8d
    const/16 v29, 0x0

    #@8f
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v28

    #@93
    move/from16 v2, v29

    #@95
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@98
    move-result v12

    #@99
    .line 263
    .local v12, "isPeriodic":Z
    const-string/jumbo v28, "sourcePeriodicId"

    #@9c
    const/16 v29, -0x1

    #@9e
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, v28

    #@a2
    move/from16 v2, v29

    #@a4
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    #@a7
    move-result v13

    #@a8
    .line 264
    .local v13, "initiatedBy":I
    const-string/jumbo v28, "periodMillis"

    #@ab
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v28

    #@af
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    #@b2
    move-result-wide v14

    #@b3
    .line 265
    .local v14, "periodMillis":J
    const-string/jumbo v28, "flexMillis"

    #@b6
    move-object/from16 v0, p0

    #@b8
    move-object/from16 v1, v28

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    #@bd
    move-result-wide v16

    #@be
    .line 266
    .local v16, "flexMillis":J
    new-instance v10, Landroid/os/Bundle;

    #@c0
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@c3
    .line 268
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v28, "syncExtras"

    #@c6
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v28

    #@ca
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    #@cd
    move-result-object v26

    #@ce
    .line 269
    .local v26, "syncExtras":Landroid/os/PersistableBundle;
    if-eqz v26, :cond_1

    #@d0
    .line 270
    move-object/from16 v0, v26

    #@d2
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    #@d5
    .line 273
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    #@d8
    move-result-object v28

    #@d9
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@dc
    move-result-object v23

    #@dd
    .local v23, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@e0
    move-result v28

    #@e1
    if-eqz v28, :cond_3

    #@e3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e6
    move-result-object v22

    #@e7
    check-cast v22, Ljava/lang/String;

    #@e9
    .line 274
    .local v22, "key":Ljava/lang/String;
    if-eqz v22, :cond_2

    #@eb
    const-string/jumbo v28, "ACCOUNT:"

    #@ee
    move-object/from16 v0, v22

    #@f0
    move-object/from16 v1, v28

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f5
    move-result v28

    #@f6
    if-eqz v28, :cond_2

    #@f8
    .line 275
    const/16 v28, 0x8

    #@fa
    move-object/from16 v0, v22

    #@fc
    move/from16 v1, v28

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@101
    move-result-object v24

    #@102
    .line 276
    .local v24, "newKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, v22

    #@106
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    #@109
    move-result-object v21

    #@10a
    .line 277
    .local v21, "accountsBundle":Landroid/os/PersistableBundle;
    new-instance v18, Landroid/accounts/Account;

    #@10c
    const-string/jumbo v28, "accountName"

    #@10f
    move-object/from16 v0, v21

    #@111
    move-object/from16 v1, v28

    #@113
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@116
    move-result-object v28

    #@117
    .line 278
    const-string/jumbo v29, "accountType"

    #@11a
    move-object/from16 v0, v21

    #@11c
    move-object/from16 v1, v29

    #@11e
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@121
    move-result-object v29

    #@122
    .line 277
    move-object/from16 v0, v18

    #@124
    move-object/from16 v1, v28

    #@126
    move-object/from16 v2, v29

    #@128
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12b
    .line 279
    .local v18, "account":Landroid/accounts/Account;
    move-object/from16 v0, v24

    #@12d
    move-object/from16 v1, v18

    #@12f
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@132
    goto :goto_0

    #@133
    .line 283
    .end local v18    # "account":Landroid/accounts/Account;
    .end local v21    # "accountsBundle":Landroid/os/PersistableBundle;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "newKey":Ljava/lang/String;
    :cond_3
    new-instance v18, Landroid/accounts/Account;

    #@135
    invoke-direct/range {v18 .. v20}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@138
    .line 285
    .restart local v18    # "account":Landroid/accounts/Account;
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@13a
    move-object/from16 v0, v18

    #@13c
    move-object/from16 v1, v25

    #@13e
    move/from16 v2, v27

    #@140
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@143
    .line 286
    .local v5, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    new-instance v4, Lcom/android/server/content/SyncOperation;

    #@145
    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    #@148
    .line 288
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v28, "jobId"

    #@14b
    move-object/from16 v0, p0

    #@14d
    move-object/from16 v1, v28

    #@14f
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@152
    move-result v28

    #@153
    move/from16 v0, v28

    #@155
    iput v0, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    #@157
    .line 289
    const-string/jumbo v28, "expectedRuntime"

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v28

    #@15e
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    #@161
    move-result-wide v28

    #@162
    move-wide/from16 v0, v28

    #@164
    iput-wide v0, v4, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    #@166
    .line 290
    const-string/jumbo v28, "retries"

    #@169
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, v28

    #@16d
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@170
    move-result v28

    #@171
    move/from16 v0, v28

    #@173
    iput v0, v4, Lcom/android/server/content/SyncOperation;->retries:I

    #@175
    .line 291
    return-object v4
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 389
    if-ltz p1, :cond_3

    #@3
    .line 390
    if-eqz p0, :cond_2

    #@5
    .line 391
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 392
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@b
    array-length v3, v2

    #@c
    const/4 v4, 0x1

    #@d
    if-ne v3, v4, :cond_0

    #@f
    .line 393
    aget-object v3, v2, v5

    #@11
    return-object v3

    #@12
    .line 395
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 396
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@18
    .line 397
    return-object v1

    #@19
    .line 399
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 401
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 404
    :cond_3
    neg-int v3, p1

    #@24
    add-int/lit8 v0, v3, -0x1

    #@26
    .line 405
    .local v0, "index":I
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@28
    array-length v3, v3

    #@29
    if-lt v0, v3, :cond_4

    #@2b
    .line 406
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    return-object v3

    #@30
    .line 408
    :cond_4
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@32
    aget-object v3, v3, v0

    #@34
    return-object v3
.end method

.method private toKey()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 333
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 334
    const-string/jumbo v1, " account {name="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1e
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 335
    const-string/jumbo v2, ", user="

    #@27
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 336
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2d
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2f
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 337
    const-string/jumbo v2, ", type="

    #@36
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 338
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3c
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3e
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@40
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 339
    const-string/jumbo v2, "}"

    #@47
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 340
    const-string/jumbo v1, " isPeriodic: "

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56
    .line 341
    const-string/jumbo v1, " period: "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@5f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@62
    .line 342
    const-string/jumbo v1, " flex: "

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@6b
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6e
    .line 343
    const-string/jumbo v1, " extras: "

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 344
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@76
    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    #@79
    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    return-object v1
.end method


# virtual methods
.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 14

    #@0
    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 141
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 143
    :cond_0
    new-instance v0, Lcom/android/server/content/SyncOperation;

    #@8
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@a
    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@c
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@e
    iget v4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@10
    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@12
    .line 144
    new-instance v6, Landroid/os/Bundle;

    #@14
    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@16
    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@19
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@1b
    iget v9, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@1d
    .line 145
    iget-wide v10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@1f
    iget-wide v12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@21
    .line 144
    const/4 v8, 0x0

    #@22
    .line 143
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    #@25
    .line 146
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    return-object v0
.end method

.method dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    #@0
    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "JobId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 356
    const-string/jumbo v2, ", "

    #@15
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 357
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1b
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1d
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1f
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 358
    const-string/jumbo v2, " u"

    #@26
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 359
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2e
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 359
    const-string/jumbo v2, " ("

    #@35
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 360
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3b
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3d
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@3f
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 361
    const-string/jumbo v2, ")"

    #@46
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 362
    const-string/jumbo v2, ", "

    #@4d
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 363
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@53
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@55
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 364
    const-string/jumbo v2, ", "

    #@5c
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 365
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@61
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@63
    aget-object v1, v1, v2

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 366
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@6a
    const-string/jumbo v2, "expedited"

    #@6d
    const/4 v3, 0x0

    #@6e
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_0

    #@74
    .line 367
    const-string/jumbo v1, ", EXPEDITED"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 369
    :cond_0
    const-string/jumbo v1, ", reason: "

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 370
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@82
    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 371
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@8b
    if-eqz v1, :cond_1

    #@8d
    .line 372
    const-string/jumbo v1, ", period: "

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    const-string/jumbo v2, ", flexMillis: "

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@a3
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a6
    .line 374
    :cond_1
    if-nez p2, :cond_2

    #@a8
    .line 375
    const-string/jumbo v1, "\n    "

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 376
    const-string/jumbo v1, "owningUid="

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    .line 377
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@b6
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@b9
    .line 378
    const-string/jumbo v1, " owningPackage="

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 379
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    .line 381
    :cond_2
    if-nez p2, :cond_3

    #@c6
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@c8
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@cb
    move-result-object v1

    #@cc
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@cf
    move-result v1

    #@d0
    if-eqz v1, :cond_4

    #@d2
    .line 385
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v1

    #@d6
    return-object v1

    #@d7
    .line 382
    :cond_4
    const-string/jumbo v1, "\n    "

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    .line 383
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@df
    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    #@e2
    goto :goto_0
.end method

.method findPriority()I
    .locals 1

    #@0
    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 324
    const/16 v0, 0x14

    #@8
    return v0

    #@9
    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 326
    const/16 v0, 0xa

    #@11
    return v0

    #@12
    .line 328
    :cond_1
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method ignoreBackoff()Z
    .locals 3

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "ignore_backoff"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 300
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    .line 301
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@8
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@a
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 302
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@16
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 301
    if-eqz v1, :cond_1

    #@1e
    .line 303
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@20
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@22
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 304
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 305
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2e
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@30
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@32
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 301
    :goto_0
    return v1

    #@39
    .line 304
    :cond_0
    const/4 v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 301
    :cond_1
    const/4 v1, 0x0

    #@3c
    goto :goto_0
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .locals 2

    #@0
    .prologue
    .line 319
    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isExpedited()Z
    .locals 3

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "expedited"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isIgnoreSettings()Z
    .locals 3

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "ignore_settings"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isInitialization()Z
    .locals 3

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "initialize"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isManual()Z
    .locals 3

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "force"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isNotAllowedOnMetered()Z
    .locals 3

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "allow_metered"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isReasonPeriodic()Z
    .locals 2

    #@0
    .prologue
    .line 309
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@2
    const/4 v1, -0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 313
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 314
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@e
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@10
    invoke-static {v2, v3, v0}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@13
    move-result v2

    #@14
    .line 313
    if-eqz v2, :cond_1

    #@16
    .line 315
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@18
    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@1a
    cmp-long v2, v2, v4

    #@1c
    if-nez v2, :cond_1

    #@1e
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@20
    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@22
    cmp-long v2, v2, v4

    #@24
    if-nez v2, :cond_0

    #@26
    .line 313
    :goto_0
    return v0

    #@27
    :cond_0
    move v0, v1

    #@28
    .line 315
    goto :goto_0

    #@29
    :cond_1
    move v0, v1

    #@2a
    .line 313
    goto :goto_0
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 456
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [Ljava/lang/Object;

    #@3
    .line 457
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x1

    #@8
    aput-object v1, v0, v2

    #@a
    .line 458
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x2

    #@11
    aput-object v1, v0, v2

    #@13
    .line 459
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@15
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 460
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1e
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@23
    move-result v1

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x3

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 461
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 180
    new-instance v2, Landroid/os/PersistableBundle;

    #@3
    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    #@6
    .line 182
    .local v2, "jobInfoExtras":Landroid/os/PersistableBundle;
    new-instance v5, Landroid/os/PersistableBundle;

    #@8
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    #@b
    .line 183
    .local v5, "syncExtrasBundle":Landroid/os/PersistableBundle;
    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@10
    move-result-object v7

    #@11
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v4

    #@15
    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_8

    #@1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    .line 184
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@23
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    .line 185
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Landroid/accounts/Account;

    #@29
    if-eqz v7, :cond_0

    #@2b
    move-object v0, v6

    #@2c
    .line 186
    check-cast v0, Landroid/accounts/Account;

    #@2e
    .line 187
    .local v0, "account":Landroid/accounts/Account;
    new-instance v1, Landroid/os/PersistableBundle;

    #@30
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    #@33
    .line 188
    .local v1, "accountBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v7, "accountName"

    #@36
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 189
    const-string/jumbo v7, "accountType"

    #@3e
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@40
    invoke-virtual {v1, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v8, "ACCOUNT:"

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v2, v7, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@5a
    goto :goto_0

    #@5b
    .line 193
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountBundle":Landroid/os/PersistableBundle;
    :cond_0
    instance-of v7, v6, Ljava/lang/Long;

    #@5d
    if-eqz v7, :cond_1

    #@5f
    .line 194
    check-cast v6, Ljava/lang/Long;

    #@61
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@64
    move-result-wide v8

    #@65
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    #@68
    goto :goto_0

    #@69
    .line 195
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v6, Ljava/lang/Integer;

    #@6b
    if-eqz v7, :cond_2

    #@6d
    .line 196
    check-cast v6, Ljava/lang/Integer;

    #@6f
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@72
    move-result v7

    #@73
    invoke-virtual {v5, v3, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@76
    goto :goto_0

    #@77
    .line 197
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v7, v6, Ljava/lang/Boolean;

    #@79
    if-eqz v7, :cond_3

    #@7b
    .line 198
    check-cast v6, Ljava/lang/Boolean;

    #@7d
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@80
    move-result v7

    #@81
    invoke-virtual {v5, v3, v7}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@84
    goto :goto_0

    #@85
    .line 199
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v7, v6, Ljava/lang/Float;

    #@87
    if-eqz v7, :cond_4

    #@89
    .line 200
    check-cast v6, Ljava/lang/Float;

    #@8b
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@8e
    move-result v7

    #@8f
    float-to-double v8, v7

    #@90
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    #@93
    goto :goto_0

    #@94
    .line 201
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Ljava/lang/Double;

    #@96
    if-eqz v7, :cond_5

    #@98
    .line 202
    check-cast v6, Ljava/lang/Double;

    #@9a
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    #@9d
    move-result-wide v8

    #@9e
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 203
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v7, v6, Ljava/lang/String;

    #@a5
    if-eqz v7, :cond_6

    #@a7
    .line 204
    check-cast v6, Ljava/lang/String;

    #@a9
    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v3, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 205
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    if-nez v6, :cond_7

    #@b0
    .line 206
    invoke-virtual {v5, v3, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 208
    :cond_7
    const-string/jumbo v7, "SyncManager"

    #@b8
    const-string/jumbo v8, "Unknown extra type."

    #@bb
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    goto/16 :goto_0

    #@c0
    .line 211
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "syncExtras"

    #@c3
    invoke-virtual {v2, v7, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@c6
    .line 213
    const-string/jumbo v7, "SyncManagerJob"

    #@c9
    const/4 v8, 0x1

    #@ca
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@cd
    .line 215
    const-string/jumbo v7, "provider"

    #@d0
    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@d2
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@d4
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d7
    .line 216
    const-string/jumbo v7, "accountName"

    #@da
    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@dc
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@de
    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@e0
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e3
    .line 217
    const-string/jumbo v7, "accountType"

    #@e6
    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e8
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@ea
    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@ec
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ef
    .line 218
    const-string/jumbo v7, "userId"

    #@f2
    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@f4
    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@f6
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@f9
    .line 219
    const-string/jumbo v7, "owningUid"

    #@fc
    iget v8, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@fe
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@101
    .line 220
    const-string/jumbo v7, "owningPackage"

    #@104
    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@106
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@109
    .line 221
    const-string/jumbo v7, "reason"

    #@10c
    iget v8, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@10e
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@111
    .line 222
    const-string/jumbo v7, "source"

    #@114
    iget v8, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@116
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@119
    .line 223
    const-string/jumbo v7, "allowParallelSyncs"

    #@11c
    iget-boolean v8, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@11e
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@121
    .line 224
    const-string/jumbo v7, "jobId"

    #@124
    iget v8, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@126
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@129
    .line 225
    const-string/jumbo v7, "isPeriodic"

    #@12c
    iget-boolean v8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@12e
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@131
    .line 226
    const-string/jumbo v7, "sourcePeriodicId"

    #@134
    iget v8, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@136
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@139
    .line 227
    const-string/jumbo v7, "periodMillis"

    #@13c
    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@13e
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    #@141
    .line 228
    const-string/jumbo v7, "flexMillis"

    #@144
    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@146
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    #@149
    .line 229
    const-string/jumbo v7, "expectedRuntime"

    #@14c
    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    #@14e
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    #@151
    .line 230
    const-string/jumbo v7, "retries"

    #@154
    iget v8, p0, Lcom/android/server/content/SyncOperation;->retries:I

    #@156
    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@159
    .line 231
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 350
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 447
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 450
    const-string/jumbo v1, "/"

    #@17
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 450
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1d
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1f
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@21
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 451
    const-string/jumbo v1, "/"

    #@28
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 451
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2e
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@30
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@32
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@3c
    return-object v0
.end method
