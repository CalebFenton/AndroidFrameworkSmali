.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = 0x2bb

.field static final CONSTRAINT_APP_NOT_IDLE:I = 0x40

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x20

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x80

.field static final CONSTRAINT_DEADLINE:I = 0x4

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x100

.field static final CONSTRAINT_IDLE:I = 0x8

.field static final CONSTRAINT_NOT_ROAMING:I = 0x200

.field static final CONSTRAINT_TIMING_DELAY:I = 0x2

.field static final CONSTRAINT_UNMETERED:I = 0x10

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x2

.field public static final OVERRIDE_SOFT:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = 0xb


# instance fields
.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private final numFailures:I

.field public overrideState:I

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V
    .locals 9
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "numFailures"    # I
    .param p7, "earliestRunTimeElapsedMillis"    # J
    .param p9, "latestRunTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    const/4 v5, 0x0

    #@4
    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@6
    .line 116
    const/4 v5, 0x0

    #@7
    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    #@9
    .line 132
    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@b
    .line 133
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@d
    .line 135
    const/4 v4, -0x1

    #@e
    .line 136
    .local v4, "tempSourceUid":I
    const/4 v5, -0x1

    #@f
    if-eq p4, v5, :cond_0

    #@11
    if-eqz p3, :cond_0

    #@13
    .line 138
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v5

    #@17
    const/4 v6, 0x0

    #@18
    invoke-interface {v5, p3, v6, p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v4

    #@1c
    .line 144
    :cond_0
    :goto_0
    const/4 v5, -0x1

    #@1d
    if-ne v4, v5, :cond_9

    #@1f
    .line 145
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    #@21
    .line 146
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@24
    move-result v5

    #@25
    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    #@27
    .line 147
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    #@31
    .line 148
    const/4 v5, 0x0

    #@32
    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    #@34
    .line 156
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    #@36
    if-eqz v5, :cond_a

    #@38
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    const-string/jumbo v6, ":"

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 156
    :goto_2
    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    #@5c
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v6, "*job*/"

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    #@74
    .line 161
    move-wide/from16 v0, p7

    #@76
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@78
    .line 162
    move-wide/from16 v0, p9

    #@7a
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@7c
    .line 163
    iput p6, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@7e
    .line 165
    const/4 v3, 0x0

    #@7f
    .line 166
    .local v3, "requiredConstraints":I
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@82
    move-result v5

    #@83
    const/4 v6, 0x1

    #@84
    if-ne v5, v6, :cond_1

    #@86
    .line 167
    const/16 v3, 0x20

    #@88
    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@8b
    move-result v5

    #@8c
    const/4 v6, 0x2

    #@8d
    if-ne v5, v6, :cond_2

    #@8f
    .line 170
    or-int/lit8 v3, v3, 0x10

    #@91
    .line 172
    :cond_2
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@94
    move-result v5

    #@95
    const/4 v6, 0x3

    #@96
    if-ne v5, v6, :cond_3

    #@98
    .line 173
    or-int/lit16 v3, v3, 0x200

    #@9a
    .line 175
    :cond_3
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    #@9d
    move-result v5

    #@9e
    if-eqz v5, :cond_4

    #@a0
    .line 176
    or-int/lit8 v3, v3, 0x1

    #@a2
    .line 178
    :cond_4
    const-wide/16 v6, 0x0

    #@a4
    cmp-long v5, p7, v6

    #@a6
    if-eqz v5, :cond_5

    #@a8
    .line 179
    or-int/lit8 v3, v3, 0x2

    #@aa
    .line 181
    :cond_5
    const-wide v6, 0x7fffffffffffffffL

    #@af
    cmp-long v5, p9, v6

    #@b1
    if-eqz v5, :cond_6

    #@b3
    .line 182
    or-int/lit8 v3, v3, 0x4

    #@b5
    .line 184
    :cond_6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    #@b8
    move-result v5

    #@b9
    if-eqz v5, :cond_7

    #@bb
    .line 185
    or-int/lit8 v3, v3, 0x8

    #@bd
    .line 187
    :cond_7
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@c0
    move-result-object v5

    #@c1
    if-eqz v5, :cond_8

    #@c3
    .line 188
    or-int/lit16 v3, v3, 0x80

    #@c5
    .line 190
    :cond_8
    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@c7
    .line 131
    return-void

    #@c8
    .line 150
    .end local v3    # "requiredConstraints":I
    :cond_9
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    #@ca
    .line 151
    iput p4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    #@cc
    .line 152
    iput-object p3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    #@ce
    .line 153
    iput-object p5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    #@d0
    goto/16 :goto_1

    #@d2
    .line 158
    :cond_a
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@d9
    move-result-object v5

    #@da
    goto :goto_2

    #@db
    .line 140
    :catch_0
    move-exception v2

    #@dc
    .local v2, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 12
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "sourceTag"    # Ljava/lang/String;
    .param p6, "earliestRunTimeElapsedMillis"    # J
    .param p8, "latestRunTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 210
    const/4 v7, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move/from16 v5, p4

    #@7
    move-object/from16 v6, p5

    #@9
    move-wide/from16 v8, p6

    #@b
    move-wide/from16 v10, p8

    #@d
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    #@10
    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@7
    move-result v3

    #@8
    .line 196
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@f
    move-result v5

    #@10
    .line 197
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    #@17
    move-result v7

    #@18
    .line 198
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@1b
    move-result-wide v8

    #@1c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@1f
    move-result-wide v10

    #@20
    move-object v1, p0

    #@21
    .line 195
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    #@24
    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJI)V
    .locals 12
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I

    #@0
    .prologue
    .line 217
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@5
    move-result v3

    #@6
    .line 218
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@d
    move-result v5

    #@e
    .line 219
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    move-object v1, p0

    #@13
    move/from16 v7, p6

    #@15
    move-wide v8, p2

    #@16
    move-wide/from16 v10, p4

    #@18
    .line 217
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    #@1b
    .line 216
    return-void
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p0, "job"    # Landroid/app/job/JobInfo;
    .param p1, "callingUid"    # I
    .param p2, "sourcePackageName"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v12

    #@4
    .line 234
    .local v12, "elapsedNow":J
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 235
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@d
    move-result-wide v0

    #@e
    add-long v10, v12, v0

    #@10
    .line 236
    .local v10, "latestRunTimeElapsedMillis":J
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@13
    move-result-wide v0

    #@14
    sub-long v8, v10, v0

    #@16
    .line 243
    .local v8, "earliestRunTimeElapsedMillis":J
    :goto_0
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    #@18
    const/4 v7, 0x0

    #@19
    move-object v2, p0

    #@1a
    move v3, p1

    #@1b
    move-object/from16 v4, p2

    #@1d
    move/from16 v5, p3

    #@1f
    move-object/from16 v6, p4

    #@21
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    #@24
    return-object v1

    #@25
    .line 238
    .end local v8    # "earliestRunTimeElapsedMillis":J
    .end local v10    # "latestRunTimeElapsedMillis":J
    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 239
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    #@2e
    move-result-wide v0

    #@2f
    add-long v8, v12, v0

    #@31
    .line 240
    .restart local v8    # "earliestRunTimeElapsedMillis":J
    :goto_1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 241
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    #@3a
    move-result-wide v0

    #@3b
    add-long v10, v12, v0

    #@3d
    .restart local v10    # "latestRunTimeElapsedMillis":J
    goto :goto_0

    #@3e
    .line 239
    .end local v8    # "earliestRunTimeElapsedMillis":J
    .end local v10    # "latestRunTimeElapsedMillis":J
    :cond_1
    const-wide/16 v8, 0x0

    #@40
    .restart local v8    # "earliestRunTimeElapsedMillis":J
    goto :goto_1

    #@41
    .line 241
    :cond_2
    const-wide v10, 0x7fffffffffffffffL

    #@46
    .restart local v10    # "latestRunTimeElapsedMillis":J
    goto :goto_0
.end method

.method private formatRunTime(JJ)Ljava/lang/String;
    .locals 9
    .param p1, "runtime"    # J
    .param p3, "defaultValue"    # J

    #@0
    .prologue
    .line 503
    cmp-long v4, p1, p3

    #@2
    if-nez v4, :cond_0

    #@4
    .line 504
    const-string/jumbo v4, "none"

    #@7
    return-object v4

    #@8
    .line 506
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    .line 507
    .local v0, "elapsedNow":J
    sub-long v2, p1, v0

    #@e
    .line 508
    .local v2, "nextRuntime":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-lez v4, :cond_1

    #@14
    .line 509
    const-wide/16 v4, 0x3e8

    #@16
    div-long v4, v2, v4

    #@18
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 511
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "-"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-wide/16 v6, -0x3e8

    #@2b
    div-long v6, v2, v6

    #@2d
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    return-object v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@7
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@a
    .line 580
    const-string/jumbo v2, " tag="

    #@d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 581
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 582
    const-string/jumbo v2, "Source: uid="

    #@1b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@21
    move-result v2

    #@22
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@25
    .line 583
    const-string/jumbo v2, " user="

    #@28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 584
    const-string/jumbo v2, " pkg="

    #@35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 585
    if-eqz p3, :cond_b

    #@41
    .line 586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    const-string/jumbo v2, "JobInfo:"

    #@47
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 587
    const-string/jumbo v2, "  Service: "

    #@50
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@55
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 588
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@62
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_0

    #@68
    .line 589
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    const-string/jumbo v2, "  PERIODIC: interval="

    #@6e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 590
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@73
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@76
    move-result-wide v2

    #@77
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@7a
    .line 591
    const-string/jumbo v2, " flex="

    #@7d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@82
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@85
    move-result-wide v2

    #@86
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@89
    .line 592
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8c
    .line 594
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@8e
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_1

    #@94
    .line 595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    const-string/jumbo v2, "  PERSISTED"

    #@9a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 597
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@9f
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_2

    #@a5
    .line 598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v2, "  Priority: "

    #@ab
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@b0
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    #@b3
    move-result v2

    #@b4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@b7
    .line 600
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@b9
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    #@bc
    move-result v2

    #@bd
    if-eqz v2, :cond_3

    #@bf
    .line 601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    const-string/jumbo v2, "  Flags: "

    #@c5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    .line 602
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@ca
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    #@cd
    move-result v2

    #@ce
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 604
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    const-string/jumbo v2, "  Requires: charging="

    #@db
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    .line 605
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@e0
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    #@e3
    move-result v2

    #@e4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@e7
    const-string/jumbo v2, " deviceIdle="

    #@ea
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 606
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@ef
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    #@f2
    move-result v2

    #@f3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@f6
    .line 607
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@f8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@fb
    move-result-object v2

    #@fc
    if-eqz v2, :cond_6

    #@fe
    .line 608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101
    const-string/jumbo v2, "  Trigger content URIs:"

    #@104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@107
    .line 609
    const/4 v0, 0x0

    #@108
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@10a
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@10d
    move-result-object v2

    #@10e
    array-length v2, v2

    #@10f
    if-ge v0, v2, :cond_4

    #@111
    .line 610
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@113
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@116
    move-result-object v2

    #@117
    aget-object v1, v2, v0

    #@119
    .line 611
    .local v1, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    const-string/jumbo v2, "    "

    #@11f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 612
    invoke-virtual {v1}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    #@125
    move-result v2

    #@126
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    .line 613
    const/16 v2, 0x20

    #@12f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    #@132
    invoke-virtual {v1}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    #@135
    move-result-object v2

    #@136
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@139
    .line 609
    add-int/lit8 v0, v0, 0x1

    #@13b
    goto :goto_0

    #@13c
    .line 615
    .end local v1    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@13e
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    #@141
    move-result-wide v2

    #@142
    cmp-long v2, v2, v4

    #@144
    if-ltz v2, :cond_5

    #@146
    .line 616
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@149
    const-string/jumbo v2, "  Trigger update delay: "

    #@14c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14f
    .line 617
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@151
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    #@154
    move-result-wide v2

    #@155
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@158
    .line 618
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@15b
    .line 620
    :cond_5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@15d
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    #@160
    move-result-wide v2

    #@161
    cmp-long v2, v2, v4

    #@163
    if-ltz v2, :cond_6

    #@165
    .line 621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    const-string/jumbo v2, "  Trigger max delay: "

    #@16b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    .line 622
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@170
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    #@173
    move-result-wide v2

    #@174
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@177
    .line 623
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@17a
    .line 626
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@17c
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@17f
    move-result v2

    #@180
    if-eqz v2, :cond_7

    #@182
    .line 627
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@185
    const-string/jumbo v2, "  Network type: "

    #@188
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18b
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@18d
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@190
    move-result v2

    #@191
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@194
    .line 629
    :cond_7
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@196
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    #@199
    move-result-wide v2

    #@19a
    cmp-long v2, v2, v4

    #@19c
    if-eqz v2, :cond_8

    #@19e
    .line 630
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    const-string/jumbo v2, "  Minimum latency: "

    #@1a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    .line 631
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1a9
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    #@1ac
    move-result-wide v2

    #@1ad
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1b0
    .line 632
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1b3
    .line 634
    :cond_8
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1b5
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    #@1b8
    move-result-wide v2

    #@1b9
    cmp-long v2, v2, v4

    #@1bb
    if-eqz v2, :cond_9

    #@1bd
    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    const-string/jumbo v2, "  Max execution delay: "

    #@1c3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    .line 636
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1c8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    #@1cb
    move-result-wide v2

    #@1cc
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1cf
    .line 637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1d2
    .line 639
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d5
    const-string/jumbo v2, "  Backoff: policy="

    #@1d8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1db
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1dd
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@1e0
    move-result v2

    #@1e1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@1e4
    .line 640
    const-string/jumbo v2, " initial="

    #@1e7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1ec
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@1ef
    move-result-wide v2

    #@1f0
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1f3
    .line 641
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1f6
    .line 642
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1f8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    #@1fb
    move-result v2

    #@1fc
    if-eqz v2, :cond_a

    #@1fe
    .line 643
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@201
    const-string/jumbo v2, "  Has early constraint"

    #@204
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@207
    .line 645
    :cond_a
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@209
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    #@20c
    move-result v2

    #@20d
    if-eqz v2, :cond_b

    #@20f
    .line 646
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    const-string/jumbo v2, "  Has late constraint"

    #@215
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@218
    .line 649
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    const-string/jumbo v2, "Required constraints:"

    #@21e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    .line 650
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@223
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    #@226
    .line 651
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@229
    .line 652
    if-eqz p3, :cond_c

    #@22b
    .line 653
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    const-string/jumbo v2, "Satisfied constraints:"

    #@231
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    .line 654
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@236
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    #@239
    .line 655
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@23c
    .line 656
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23f
    const-string/jumbo v2, "Unsatisfied constraints:"

    #@242
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@245
    .line 657
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@247
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@249
    not-int v3, v3

    #@24a
    and-int/2addr v2, v3

    #@24b
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    #@24e
    .line 658
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@251
    .line 659
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    #@253
    if-eqz v2, :cond_c

    #@255
    .line 660
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@258
    const-string/jumbo v2, "Doze whitelisted: true"

    #@25b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25e
    .line 663
    :cond_c
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@260
    if-eqz v2, :cond_e

    #@262
    .line 664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@265
    const-string/jumbo v2, "Changed authorities:"

    #@268
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26b
    .line 665
    const/4 v0, 0x0

    #@26c
    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@26e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@271
    move-result v2

    #@272
    if-ge v0, v2, :cond_d

    #@274
    .line 666
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@277
    const-string/jumbo v2, "  "

    #@27a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27d
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@27f
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@282
    move-result-object v2

    #@283
    check-cast v2, Ljava/lang/String;

    #@285
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@288
    .line 665
    add-int/lit8 v0, v0, 0x1

    #@28a
    goto :goto_1

    #@28b
    .line 668
    :cond_d
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@28d
    if-eqz v2, :cond_e

    #@28f
    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@292
    const-string/jumbo v2, "Changed URIs:"

    #@295
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@298
    .line 670
    const/4 v0, 0x0

    #@299
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@29b
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@29e
    move-result v2

    #@29f
    if-ge v0, v2, :cond_e

    #@2a1
    .line 671
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a4
    const-string/jumbo v2, "  "

    #@2a7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2aa
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@2ac
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@2af
    move-result-object v2

    #@2b0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2b3
    .line 670
    add-int/lit8 v0, v0, 0x1

    #@2b5
    goto :goto_2

    #@2b6
    .line 675
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b9
    const-string/jumbo v2, "Earliest run time: "

    #@2bc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bf
    .line 676
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@2c1
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@2c4
    move-result-object v2

    #@2c5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c8
    .line 677
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cb
    const-string/jumbo v2, "Latest run time: "

    #@2ce
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d1
    .line 678
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@2d3
    const-wide v4, 0x7fffffffffffffffL

    #@2d8
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@2db
    move-result-object v2

    #@2dc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2df
    .line 679
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@2e1
    if-eqz v2, :cond_f

    #@2e3
    .line 680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e6
    const-string/jumbo v2, "Num failures: "

    #@2e9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@2ee
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@2f1
    .line 578
    :cond_f
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "constraints"    # I

    #@0
    .prologue
    .line 545
    and-int/lit8 v0, p2, 0x1

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 546
    const-string/jumbo v0, " CHARGING"

    #@7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 548
    :cond_0
    and-int/lit8 v0, p2, 0x2

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 549
    const-string/jumbo v0, " TIMING_DELAY"

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 551
    :cond_1
    and-int/lit8 v0, p2, 0x4

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 552
    const-string/jumbo v0, " DEADLINE"

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 554
    :cond_2
    and-int/lit8 v0, p2, 0x8

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 555
    const-string/jumbo v0, " IDLE"

    #@25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 557
    :cond_3
    and-int/lit8 v0, p2, 0x20

    #@2a
    if-eqz v0, :cond_4

    #@2c
    .line 558
    const-string/jumbo v0, " CONNECTIVITY"

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 560
    :cond_4
    and-int/lit8 v0, p2, 0x10

    #@34
    if-eqz v0, :cond_5

    #@36
    .line 561
    const-string/jumbo v0, " UNMETERED"

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 563
    :cond_5
    and-int/lit16 v0, p2, 0x200

    #@3e
    if-eqz v0, :cond_6

    #@40
    .line 564
    const-string/jumbo v0, " NOT_ROAMING"

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 566
    :cond_6
    and-int/lit8 v0, p2, 0x40

    #@48
    if-eqz v0, :cond_7

    #@4a
    .line 567
    const-string/jumbo v0, " APP_NOT_IDLE"

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 569
    :cond_7
    and-int/lit16 v0, p2, 0x80

    #@52
    if-eqz v0, :cond_8

    #@54
    .line 570
    const-string/jumbo v0, " CONTENT_TRIGGER"

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 572
    :cond_8
    and-int/lit16 v0, p2, 0x100

    #@5c
    if-eqz v0, :cond_9

    #@5e
    .line 573
    const-string/jumbo v0, " DEVICE_NOT_DOZING"

    #@61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 544
    :cond_9
    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    #@0
    .prologue
    .line 366
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@2
    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    return-object v0
.end method

.method public getJobId()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    #@0
    .prologue
    .line 370
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@2
    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@2
    return v0
.end method

.method public getPriority()I
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@2
    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    #@2
    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    #@0
    .prologue
    .line 278
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    #@0
    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    #@5
    move-result-wide v0

    #@6
    .line 355
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@8
    cmp-long v2, v0, v2

    #@a
    if-gez v2, :cond_0

    #@c
    .line 356
    const-wide/32 v2, 0x1d4c0

    #@f
    return-wide v2

    #@10
    .line 358
    :cond_0
    const-wide/16 v2, 0x3e8

    #@12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    #@0
    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    #@5
    move-result-wide v0

    #@6
    .line 347
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@8
    cmp-long v2, v0, v2

    #@a
    if-gez v2, :cond_0

    #@c
    .line 348
    const-wide/16 v2, 0x2710

    #@e
    return-wide v2

    #@f
    .line 350
    :cond_0
    const-wide/16 v2, 0x1f4

    #@11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@14
    move-result-wide v2

    #@15
    return-wide v2
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@2
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 282
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 326
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 314
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 342
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 334
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIdleConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 338
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasNotRoamingConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 322
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 330
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasUnmeteredConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 318
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .locals 2
    .param p1, "constraint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 424
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 463
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    #@3
    const/4 v4, 0x2

    #@4
    if-ne v3, v4, :cond_0

    #@6
    .line 465
    return v2

    #@7
    .line 468
    :cond_0
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@9
    and-int/lit16 v0, v3, 0x2bb

    #@b
    .line 470
    .local v0, "req":I
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@d
    and-int/lit16 v1, v3, 0x2bb

    #@f
    .line 471
    .local v1, "sat":I
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    #@11
    if-ne v3, v2, :cond_1

    #@13
    .line 473
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    #@15
    and-int/lit8 v3, v3, 0xb

    #@17
    or-int/2addr v1, v3

    #@18
    .line 476
    :cond_1
    and-int v3, v1, v0

    #@1a
    if-ne v3, v0, :cond_2

    #@1c
    :goto_0
    return v2

    #@1d
    :cond_2
    const/4 v2, 0x0

    #@1e
    goto :goto_0
.end method

.method public isPersisted()Z
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReady()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 442
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@3
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_2

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_2

    #@f
    .line 443
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@11
    and-int/lit8 v4, v4, 0x4

    #@13
    if-eqz v4, :cond_1

    #@15
    const/4 v0, 0x1

    #@16
    .line 444
    .local v0, "deadlineSatisfied":Z
    :goto_0
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@18
    and-int/lit8 v4, v4, 0x40

    #@1a
    if-eqz v4, :cond_3

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 445
    .local v2, "notIdle":Z
    :goto_1
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@1f
    and-int/lit16 v4, v4, 0x100

    #@21
    if-nez v4, :cond_4

    #@23
    .line 446
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@25
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    #@28
    move-result v4

    #@29
    and-int/lit8 v4, v4, 0x1

    #@2b
    if-eqz v4, :cond_5

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 447
    .local v1, "notDozing":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_0

    #@34
    if-eqz v0, :cond_6

    #@36
    :cond_0
    if-eqz v2, :cond_6

    #@38
    .end local v1    # "notDozing":Z
    :goto_3
    return v1

    #@39
    .line 443
    .end local v0    # "deadlineSatisfied":Z
    .end local v2    # "notIdle":Z
    :cond_1
    const/4 v0, 0x0

    #@3a
    .restart local v0    # "deadlineSatisfied":Z
    goto :goto_0

    #@3b
    .line 442
    .end local v0    # "deadlineSatisfied":Z
    :cond_2
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "deadlineSatisfied":Z
    goto :goto_0

    #@3d
    .line 444
    :cond_3
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "notIdle":Z
    goto :goto_1

    #@3f
    .line 445
    :cond_4
    const/4 v1, 0x1

    #@40
    .restart local v1    # "notDozing":Z
    goto :goto_2

    #@41
    .line 446
    .end local v1    # "notDozing":Z
    :cond_5
    const/4 v1, 0x0

    #@42
    .restart local v1    # "notDozing":Z
    goto :goto_2

    #@43
    :cond_6
    move v1, v3

    #@44
    .line 447
    goto :goto_3
.end method

.method public matches(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 480
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@3
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    #@6
    move-result v1

    #@7
    if-ne v1, p2, :cond_0

    #@9
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@b
    if-ne v1, p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 256
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@2
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@5
    .line 257
    const-string/jumbo v0, "/"

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 258
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@d
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    #@10
    move-result v0

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14
    .line 255
    return-void
.end method

.method setAppNotIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 402
    const/16 v0, 0x40

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setChargingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 374
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 390
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setConstraintSatisfied(IZ)Z
    .locals 5
    .param p1, "constraint"    # I
    .param p2, "state"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 415
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@4
    and-int/2addr v3, p1

    #@5
    if-eqz v3, :cond_0

    #@7
    move v0, v2

    #@8
    .line 416
    .local v0, "old":Z
    :goto_0
    if-ne v0, p2, :cond_1

    #@a
    .line 417
    return v1

    #@b
    .end local v0    # "old":Z
    :cond_0
    move v0, v1

    #@c
    .line 415
    goto :goto_0

    #@d
    .line 419
    .restart local v0    # "old":Z
    :cond_1
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@f
    not-int v4, p1

    #@10
    and-int/2addr v3, v4

    #@11
    if-eqz p2, :cond_2

    #@13
    .end local p1    # "constraint":I
    :goto_1
    or-int v1, v3, p1

    #@15
    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@17
    .line 420
    return v2

    #@18
    .restart local p1    # "constraint":I
    :cond_2
    move p1, v1

    #@19
    .line 419
    goto :goto_1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 406
    const/16 v0, 0x80

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 382
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .locals 1
    .param p1, "state"    # Z
    .param p2, "whitelisted"    # Z

    #@0
    .prologue
    .line 410
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    #@2
    .line 411
    const/16 v0, 0x100

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method setIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 386
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setNotRoamingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 398
    const/16 v0, 0x200

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 378
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method setUnmeteredConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 394
    const/16 v0, 0x10

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public shouldDump(I)Z
    .locals 2
    .param p1, "filterUid"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 428
    const/4 v1, -0x1

    #@2
    if-eq p1, v1, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v1

    #@c
    if-ne v1, p1, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@16
    move-result v1

    #@17
    if-eq v1, p1, :cond_0

    #@19
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 522
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 523
    const-string/jumbo v1, " #"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 524
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    #@18
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@1b
    .line 525
    const-string/jumbo v1, "/"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 526
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@23
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    .line 527
    const/16 v1, 0x20

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 528
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 539
    const/16 v1, 0x20

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 540
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@a
    move-result v3

    #@b
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x3

    #@10
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v3, ".."

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 486
    const-string/jumbo v3, ":["

    #@22
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 486
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@28
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@2b
    move-result-object v3

    #@2c
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 487
    const-string/jumbo v3, ",jId="

    #@33
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 487
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@39
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    #@3c
    move-result v3

    #@3d
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 488
    const-string/jumbo v3, ",u"

    #@44
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 488
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@4b
    move-result v3

    #@4c
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 489
    const-string/jumbo v3, ",suid="

    #@53
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 489
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@5a
    move-result v3

    #@5b
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 490
    const-string/jumbo v3, ",R=("

    #@62
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 490
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@68
    const-wide/16 v6, 0x0

    #@6a
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 491
    const-string/jumbo v3, ","

    #@75
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 491
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@7b
    const-wide v6, 0x7fffffffffffffffL

    #@80
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 491
    const-string/jumbo v3, ")"

    #@8b
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 492
    const-string/jumbo v3, ",N="

    #@92
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 492
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@98
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@9b
    move-result v3

    #@9c
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    .line 492
    const-string/jumbo v3, ",C="

    #@a3
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    .line 492
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@a9
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    #@ac
    move-result v3

    #@ad
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    .line 493
    const-string/jumbo v3, ",I="

    #@b4
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    .line 493
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@ba
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    #@bd
    move-result v3

    #@be
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    .line 494
    const-string/jumbo v3, ",U="

    #@c5
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    .line 494
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@cb
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@ce
    move-result-object v0

    #@cf
    if-eqz v0, :cond_0

    #@d1
    move v0, v1

    #@d2
    .line 485
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    .line 495
    const-string/jumbo v3, ",F="

    #@d9
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    .line 495
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@df
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    .line 495
    const-string/jumbo v3, ",P="

    #@e6
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    .line 495
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@ec
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@ef
    move-result v3

    #@f0
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    .line 496
    const-string/jumbo v3, ",ANI="

    #@f7
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v3

    #@fb
    .line 496
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@fd
    and-int/lit8 v0, v0, 0x40

    #@ff
    if-eqz v0, :cond_1

    #@101
    move v0, v1

    #@102
    .line 485
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    .line 497
    const-string/jumbo v3, ",DND="

    #@109
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v0

    #@10d
    .line 497
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@10f
    and-int/lit16 v3, v3, 0x100

    #@111
    if-eqz v3, :cond_2

    #@113
    .line 485
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    .line 498
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@11a
    move-result v0

    #@11b
    if-eqz v0, :cond_3

    #@11d
    const-string/jumbo v0, "(READY)"

    #@120
    .line 485
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    .line 499
    const-string/jumbo v1, "]"

    #@127
    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v0

    #@12b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v0

    #@12f
    return-object v0

    #@130
    :cond_0
    move v0, v2

    #@131
    .line 494
    goto :goto_0

    #@132
    :cond_1
    move v0, v2

    #@133
    .line 496
    goto :goto_1

    #@134
    :cond_2
    move v1, v2

    #@135
    .line 497
    goto :goto_2

    #@136
    .line 498
    :cond_3
    const-string/jumbo v0, ""

    #@139
    goto :goto_3
.end method
