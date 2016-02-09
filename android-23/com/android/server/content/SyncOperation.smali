.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final SYNC_TARGET_ADAPTER:I = 0x1

.field public static final SYNC_TARGET_SERVICE:I = 0x2

.field public static final SYNC_TARGET_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public appIdle:Z

.field public backoff:J

.field public delayUntil:J

.field public effectiveRunTime:J

.field private final expedited:Z

.field public extras:Landroid/os/Bundle;

.field public flexTime:J

.field public final key:Ljava/lang/String;

.field public latestRunTime:J

.field public pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

.field public final reason:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 48
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 49
    const-string/jumbo v1, "DataSettingsChanged"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 50
    const-string/jumbo v1, "AccountsUpdated"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 51
    const-string/jumbo v1, "ServiceChanged"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 52
    const-string/jumbo v1, "Periodic"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 53
    const-string/jumbo v1, "IsSyncable"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 54
    const-string/jumbo v1, "AutoSync"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 55
    const-string/jumbo v1, "MasterSyncAuto"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 56
    const-string/jumbo v1, "UserStart"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 48
    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@36
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V
    .locals 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "runTimeFromNow"    # J
    .param p9, "flexTime"    # J
    .param p11, "backoff"    # J
    .param p13, "delayUntil"    # J
    .param p15, "allowParallelSyncs"    # Z

    #@0
    .prologue
    .line 99
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p5

    #@6
    move/from16 v2, p2

    #@8
    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@b
    move-object/from16 v5, p0

    #@d
    move/from16 v7, p3

    #@f
    move/from16 v8, p4

    #@11
    move-object/from16 v9, p6

    #@13
    move-wide/from16 v10, p7

    #@15
    move-wide/from16 v12, p9

    #@17
    move-wide/from16 v14, p11

    #@19
    move-wide/from16 v16, p13

    #@1b
    move/from16 v18, p15

    #@1d
    invoke-direct/range {v5 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    #@20
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V
    .locals 18
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "runTimeFromNow"    # J
    .param p8, "flexTime"    # J
    .param p10, "backoff"    # J
    .param p12, "delayUntil"    # J

    #@0
    .prologue
    .line 107
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    move-object/from16 v0, p1

    #@4
    move/from16 v1, p2

    #@6
    invoke-direct {v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    #@9
    .line 108
    const/16 v16, 0x1

    #@b
    move-object/from16 v3, p0

    #@d
    move/from16 v5, p3

    #@f
    move/from16 v6, p4

    #@11
    move-object/from16 v7, p5

    #@13
    move-wide/from16 v8, p6

    #@15
    move-wide/from16 v10, p8

    #@17
    move-wide/from16 v12, p10

    #@19
    move-wide/from16 v14, p12

    #@1b
    .line 107
    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    #@1e
    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .locals 18
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;
    .param p2, "newRunTimeFromNow"    # J

    #@0
    .prologue
    .line 145
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    move-object/from16 v0, p1

    #@6
    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    #@8
    move-object/from16 v0, p1

    #@a
    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@c
    new-instance v7, Landroid/os/Bundle;

    #@e
    move-object/from16 v0, p1

    #@10
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@12
    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@15
    .line 148
    move-object/from16 v0, p1

    #@17
    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@19
    .line 149
    move-object/from16 v0, p1

    #@1b
    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@1d
    .line 150
    move-object/from16 v0, p1

    #@1f
    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@21
    move/from16 v16, v0

    #@23
    .line 147
    const-wide/16 v10, 0x0

    #@25
    move-object/from16 v3, p0

    #@27
    move-wide/from16 v8, p2

    #@29
    .line 145
    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    #@2c
    .line 144
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "runTimeFromNow"    # J
    .param p7, "flexTime"    # J
    .param p9, "backoff"    # J
    .param p11, "delayUntil"    # J
    .param p13, "allowParallelSyncs"    # Z

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5
    .line 115
    iput p2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@7
    .line 116
    iput p3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@9
    .line 117
    new-instance v4, Landroid/os/Bundle;

    #@b
    invoke-direct {v4, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@e
    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@10
    .line 118
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@12
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncOperation;->cleanBundle(Landroid/os/Bundle;)V

    #@15
    .line 119
    move-wide/from16 v0, p11

    #@17
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@19
    .line 120
    move-wide/from16 v0, p9

    #@1b
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@1d
    .line 121
    move/from16 v0, p13

    #@1f
    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@21
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@24
    move-result-wide v2

    #@25
    .line 125
    .local v2, "now":J
    const-wide/16 v4, 0x0

    #@27
    cmp-long v4, p5, v4

    #@29
    if-gez v4, :cond_1

    #@2b
    .line 126
    const/4 v4, 0x1

    #@2c
    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@2e
    .line 128
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@30
    const-string/jumbo v5, "expedited"

    #@33
    const/4 v6, 0x0

    #@34
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_0

    #@3a
    .line 129
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@3c
    const-string/jumbo v5, "expedited"

    #@3f
    const/4 v6, 0x1

    #@40
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@43
    .line 131
    :cond_0
    iput-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@45
    .line 132
    const-wide/16 v4, 0x0

    #@47
    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@49
    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    #@4c
    .line 140
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@4e
    invoke-static {p1, v4}, Lcom/android/server/content/SyncOperation;->toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@54
    .line 113
    return-void

    #@55
    .line 134
    :cond_1
    const/4 v4, 0x0

    #@56
    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@58
    .line 135
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@5a
    const-string/jumbo v5, "expedited"

    #@5d
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@60
    .line 136
    add-long v4, v2, p5

    #@62
    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@64
    .line 137
    iput-wide p7, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@66
    goto :goto_0
.end method

.method private cleanBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "upload"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@6
    .line 164
    const-string/jumbo v0, "force"

    #@9
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@c
    .line 165
    const-string/jumbo v0, "ignore_settings"

    #@f
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@12
    .line 166
    const-string/jumbo v0, "ignore_backoff"

    #@15
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@18
    .line 167
    const-string/jumbo v0, "do_not_retry"

    #@1b
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@1e
    .line 168
    const-string/jumbo v0, "discard_deletions"

    #@21
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@24
    .line 169
    const-string/jumbo v0, "expedited"

    #@27
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@2a
    .line 170
    const-string/jumbo v0, "deletions_override"

    #@2d
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@30
    .line 171
    const-string/jumbo v0, "allow_metered"

    #@33
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    #@36
    .line 162
    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 316
    const-string/jumbo v2, "["

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 317
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
    .line 318
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
    .line 320
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "]"

    #@37
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 315
    return-void
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 239
    if-ltz p1, :cond_3

    #@3
    .line 240
    if-eqz p0, :cond_2

    #@5
    .line 241
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 242
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@b
    array-length v3, v2

    #@c
    const/4 v4, 0x1

    #@d
    if-ne v3, v4, :cond_0

    #@f
    .line 243
    aget-object v3, v2, v5

    #@11
    return-object v3

    #@12
    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 246
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@18
    .line 247
    return-object v1

    #@19
    .line 249
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 251
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 254
    :cond_3
    neg-int v3, p1

    #@24
    add-int/lit8 v0, v3, -0x1

    #@26
    .line 255
    .local v0, "index":I
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@28
    array-length v3, v3

    #@29
    if-lt v0, v3, :cond_4

    #@2b
    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    return-object v3

    #@30
    .line 258
    :cond_4
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    #@32
    aget-object v3, v3, v0

    #@34
    return-object v3
.end method

.method private removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "extraName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 176
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a
    .line 174
    :cond_0
    return-void
.end method

.method public static toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 290
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 291
    const-string/jumbo v1, "provider: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 292
    const-string/jumbo v1, " account {name="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1e
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 293
    const-string/jumbo v2, ", user="

    #@27
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 294
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2d
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 295
    const-string/jumbo v2, ", type="

    #@34
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 296
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3a
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@3c
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 297
    const-string/jumbo v2, "}"

    #@43
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 310
    :goto_0
    const-string/jumbo v1, " extras: "

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 311
    invoke-static {p1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    #@4f
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    return-object v1

    #@54
    .line 298
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@56
    if-eqz v1, :cond_1

    #@58
    .line 299
    const-string/jumbo v1, "service {package="

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 300
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@61
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    .line 301
    const-string/jumbo v2, " user="

    #@6c
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 302
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@72
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 303
    const-string/jumbo v2, ", class="

    #@79
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    .line 304
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@7f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 305
    const-string/jumbo v2, "}"

    #@8a
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    goto :goto_0

    #@8e
    .line 307
    :cond_1
    const-string/jumbo v1, "SyncManager"

    #@91
    new-instance v2, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v3, "Converting SyncOperaton to key, invalid target: "

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 308
    const-string/jumbo v1, ""

    #@af
    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v1, -0x1

    #@4
    move-object v0, p1

    #@5
    .line 360
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@7
    .line 361
    .local v0, "other":Lcom/android/server/content/SyncOperation;
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@9
    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@b
    if-eq v7, v8, :cond_1

    #@d
    .line 362
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@f
    if-eqz v7, :cond_0

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    move v1, v6

    #@13
    goto :goto_0

    #@14
    .line 364
    :cond_1
    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@16
    iget-wide v10, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@18
    sub-long/2addr v8, v10

    #@19
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@1c
    move-result-wide v4

    #@1d
    .line 366
    .local v4, "thisIntervalStart":J
    iget-wide v8, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@1f
    iget-wide v10, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@21
    sub-long/2addr v8, v10

    #@22
    .line 365
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@25
    move-result-wide v2

    #@26
    .line 367
    .local v2, "otherIntervalStart":J
    cmp-long v7, v4, v2

    #@28
    if-gez v7, :cond_2

    #@2a
    .line 368
    return v1

    #@2b
    .line 369
    :cond_2
    cmp-long v1, v2, v4

    #@2d
    if-gez v1, :cond_3

    #@2f
    .line 370
    return v6

    #@30
    .line 372
    :cond_3
    const/4 v1, 0x0

    #@31
    return v1
.end method

.method public dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@9
    if-eqz v1, :cond_3

    #@b
    .line 208
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@d
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@f
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 209
    const-string/jumbo v2, " u"

    #@18
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 210
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1e
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@20
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 210
    const-string/jumbo v2, " ("

    #@27
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 211
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2d
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2f
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@31
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 212
    const-string/jumbo v2, ")"

    #@38
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 213
    const-string/jumbo v2, ", "

    #@3f
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 214
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@45
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@47
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 215
    const-string/jumbo v2, ", "

    #@4e
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 223
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@53
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@55
    aget-object v1, v1, v2

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 224
    const-string/jumbo v2, ", currentRunTime "

    #@5e
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 225
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@64
    .line 223
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@67
    .line 226
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@69
    if-eqz v1, :cond_1

    #@6b
    .line 227
    const-string/jumbo v1, ", EXPEDITED"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 229
    :cond_1
    const-string/jumbo v1, ", reason: "

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 230
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    #@79
    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 231
    if-nez p2, :cond_2

    #@82
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@84
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@87
    move-result-object v1

    #@88
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_4

    #@8e
    .line 235
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    return-object v1

    #@93
    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@95
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@97
    if-eqz v1, :cond_0

    #@99
    .line 217
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9b
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@9d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    .line 218
    const-string/jumbo v2, " u"

    #@a8
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    .line 219
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@ae
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@b0
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    .line 219
    const-string/jumbo v2, " ("

    #@b7
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    .line 220
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@bd
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@bf
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    .line 220
    const-string/jumbo v2, ")"

    #@ca
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    .line 221
    const-string/jumbo v2, ", "

    #@d1
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    goto/16 :goto_0

    #@d6
    .line 232
    :cond_4
    const-string/jumbo v1, "\n    "

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 233
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@de
    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    #@e1
    goto :goto_1
.end method

.method public ignoreBackoff()Z
    .locals 3

    #@0
    .prologue
    .line 272
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

.method public isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 5
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 186
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    .line 187
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@8
    if-eqz v3, :cond_2

    #@a
    .line 188
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@c
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@e
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@10
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@12
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 189
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1e
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    .line 188
    if-eqz v3, :cond_1

    #@26
    .line 190
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@28
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2a
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2c
    if-ne v3, v4, :cond_1

    #@2e
    .line 191
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 192
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@34
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@36
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@38
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3a
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    .line 188
    :cond_0
    :goto_0
    return v1

    #@41
    :cond_1
    move v1, v2

    #@42
    goto :goto_0

    #@43
    .line 196
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@45
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@47
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@49
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_3

    #@4f
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@51
    if-eqz v3, :cond_4

    #@53
    :cond_3
    :goto_1
    return v2

    #@54
    :cond_4
    move v2, v1

    #@55
    goto :goto_1
.end method

.method public isExpedited()Z
    .locals 1

    #@0
    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    #@2
    return v0
.end method

.method public isIgnoreSettings()Z
    .locals 3

    #@0
    .prologue
    .line 284
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

.method public isInitialization()Z
    .locals 3

    #@0
    .prologue
    .line 264
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

.method public isManual()Z
    .locals 3

    #@0
    .prologue
    .line 280
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

.method public isNotAllowedOnMetered()Z
    .locals 3

    #@0
    .prologue
    .line 276
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

.method public matchesAuthority(Lcom/android/server/content/SyncOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 5
    .param p1, "event"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x0

    #@2
    .line 378
    const/4 v1, 0x4

    #@3
    new-array v0, v1, [Ljava/lang/Object;

    #@5
    .line 379
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x1

    #@a
    aput-object v1, v0, v2

    #@c
    .line 380
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 381
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@17
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 382
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1d
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1f
    aput-object v1, v0, v3

    #@21
    .line 383
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@23
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@25
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2a
    move-result v1

    #@2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v1

    #@2f
    aput-object v1, v0, v4

    #@31
    .line 390
    :goto_0
    return-object v0

    #@32
    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@34
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 385
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3a
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@3c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    aput-object v1, v0, v3

    #@42
    .line 386
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@44
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@46
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    #@49
    move-result v1

    #@4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v1

    #@4e
    aput-object v1, v0, v4

    #@50
    goto :goto_0

    #@51
    .line 388
    :cond_1
    const-string/jumbo v1, "SyncManager"

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "sync op with invalid target: "

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 202
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

.method public updateEffectiveRunTime()V
    .locals 4

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 349
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@8
    .line 348
    :goto_0
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@a
    .line 345
    return-void

    #@b
    .line 350
    :cond_0
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    #@d
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@f
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@12
    move-result-wide v0

    #@13
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@18
    move-result-wide v0

    #@19
    goto :goto_0
.end method

.method public wakeLockName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 324
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 325
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@a
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@15
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 329
    const-string/jumbo v1, "/"

    #@1e
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 329
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@24
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@26
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@28
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 330
    const-string/jumbo v1, "/"

    #@2f
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 330
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@35
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@37
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@39
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@43
    return-object v0

    #@44
    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@46
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@51
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@53
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 333
    const-string/jumbo v1, "/"

    #@5e
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 333
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@64
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@66
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    #@74
    return-object v0

    #@75
    .line 335
    :cond_2
    const-string/jumbo v0, "SyncManager"

    #@78
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v2, "Invalid target getting wakelock name for operation - "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 336
    return-object v3
.end method
