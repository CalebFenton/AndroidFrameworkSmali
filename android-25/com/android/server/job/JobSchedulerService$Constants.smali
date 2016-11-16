.class final Lcom/android/server/job/JobSchedulerService$Constants;
.super Landroid/database/ContentObserver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_BG_CRITICAL_JOB_COUNT:I = 0x1

.field private static final DEFAULT_BG_LOW_JOB_COUNT:I = 0x1

.field private static final DEFAULT_BG_MODERATE_JOB_COUNT:I = 0x4

.field private static final DEFAULT_BG_NORMAL_JOB_COUNT:I = 0x6

.field private static final DEFAULT_FG_JOB_COUNT:I = 0x4

.field private static final DEFAULT_HEAVY_USE_FACTOR:F = 0.9f

.field private static final DEFAULT_MIN_CHARGING_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONNECTIVITY_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONTENT_COUNT:I = 0x1

.field private static final DEFAULT_MIN_IDLE_COUNT:I = 0x1

.field private static final DEFAULT_MIN_READY_JOBS_COUNT:I = 0x1

.field private static final DEFAULT_MODERATE_USE_FACTOR:F = 0.5f

.field private static final KEY_BG_CRITICAL_JOB_COUNT:Ljava/lang/String; = "bg_critical_job_count"

.field private static final KEY_BG_LOW_JOB_COUNT:Ljava/lang/String; = "bg_low_job_count"

.field private static final KEY_BG_MODERATE_JOB_COUNT:Ljava/lang/String; = "bg_moderate_job_count"

.field private static final KEY_BG_NORMAL_JOB_COUNT:Ljava/lang/String; = "bg_normal_job_count"

.field private static final KEY_FG_JOB_COUNT:Ljava/lang/String; = "fg_job_count"

.field private static final KEY_HEAVY_USE_FACTOR:Ljava/lang/String; = "heavy_use_factor"

.field private static final KEY_MIN_CHARGING_COUNT:Ljava/lang/String; = "min_charging_count"

.field private static final KEY_MIN_CONNECTIVITY_COUNT:Ljava/lang/String; = "min_connectivity_count"

.field private static final KEY_MIN_CONTENT_COUNT:Ljava/lang/String; = "min_content_count"

.field private static final KEY_MIN_IDLE_COUNT:Ljava/lang/String; = "min_idle_count"

.field private static final KEY_MIN_READY_JOBS_COUNT:Ljava/lang/String; = "min_ready_jobs_count"

.field private static final KEY_MODERATE_USE_FACTOR:Ljava/lang/String; = "moderate_use_factor"


# instance fields
.field BG_CRITICAL_JOB_COUNT:I

.field BG_LOW_JOB_COUNT:I

.field BG_MODERATE_JOB_COUNT:I

.field BG_NORMAL_JOB_COUNT:I

.field FG_JOB_COUNT:I

.field HEAVY_USE_FACTOR:F

.field MIN_CHARGING_COUNT:I

.field MIN_CONNECTIVITY_COUNT:I

.field MIN_CONTENT_COUNT:I

.field MIN_IDLE_COUNT:I

.field MIN_READY_JOBS_COUNT:I

.field MODERATE_USE_FACTOR:F

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x1

    #@2
    .line 286
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4
    .line 287
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    .line 227
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    #@9
    .line 232
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    #@b
    .line 237
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    #@d
    .line 242
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    #@f
    .line 249
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    #@11
    .line 253
    const v0, 0x3f666666    # 0.9f

    #@14
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    #@16
    .line 257
    const/high16 v0, 0x3f000000    # 0.5f

    #@18
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    #@1a
    .line 261
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@1c
    .line 266
    const/4 v0, 0x6

    #@1d
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@1f
    .line 271
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@21
    .line 276
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@23
    .line 281
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    #@25
    .line 284
    new-instance v0, Landroid/util/KeyValueListParser;

    #@27
    const/16 v1, 0x2c

    #@29
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@2c
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@2e
    .line 286
    return-void
.end method

.method private updateConstants()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    .line 303
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@9
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@b
    .line 306
    const-string/jumbo v4, "alarm_manager_constants"

    #@e
    .line 305
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 313
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@17
    const-string/jumbo v3, "min_idle_count"

    #@1a
    .line 314
    const/4 v4, 0x1

    #@1b
    .line 313
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    #@21
    .line 315
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@23
    const-string/jumbo v3, "min_charging_count"

    #@26
    .line 316
    const/4 v4, 0x1

    #@27
    .line 315
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    #@2d
    .line 317
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@2f
    const-string/jumbo v3, "min_connectivity_count"

    #@32
    .line 318
    const/4 v4, 0x1

    #@33
    .line 317
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@36
    move-result v1

    #@37
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    #@39
    .line 319
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@3b
    const-string/jumbo v3, "min_content_count"

    #@3e
    .line 320
    const/4 v4, 0x1

    #@3f
    .line 319
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@42
    move-result v1

    #@43
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    #@45
    .line 321
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@47
    const-string/jumbo v3, "min_ready_jobs_count"

    #@4a
    .line 322
    const/4 v4, 0x1

    #@4b
    .line 321
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@4e
    move-result v1

    #@4f
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    #@51
    .line 323
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@53
    const-string/jumbo v3, "heavy_use_factor"

    #@56
    .line 324
    const v4, 0x3f666666    # 0.9f

    #@59
    .line 323
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@5c
    move-result v1

    #@5d
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    #@5f
    .line 325
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@61
    const-string/jumbo v3, "moderate_use_factor"

    #@64
    .line 326
    const/high16 v4, 0x3f000000    # 0.5f

    #@66
    .line 325
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@69
    move-result v1

    #@6a
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    #@6c
    .line 327
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@6e
    const-string/jumbo v3, "fg_job_count"

    #@71
    .line 328
    const/4 v4, 0x4

    #@72
    .line 327
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@75
    move-result v1

    #@76
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@78
    .line 329
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@7a
    const-string/jumbo v3, "bg_normal_job_count"

    #@7d
    .line 330
    const/4 v4, 0x6

    #@7e
    .line 329
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@81
    move-result v1

    #@82
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@84
    .line 331
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@86
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@88
    add-int/2addr v1, v3

    #@89
    if-le v1, v5, :cond_0

    #@8b
    .line 332
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@8d
    rsub-int/lit8 v1, v1, 0x10

    #@8f
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@91
    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@93
    const-string/jumbo v3, "bg_moderate_job_count"

    #@96
    .line 335
    const/4 v4, 0x4

    #@97
    .line 334
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@9d
    .line 336
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@9f
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@a1
    add-int/2addr v1, v3

    #@a2
    if-le v1, v5, :cond_1

    #@a4
    .line 337
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@a6
    rsub-int/lit8 v1, v1, 0x10

    #@a8
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@aa
    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@ac
    const-string/jumbo v3, "bg_low_job_count"

    #@af
    .line 340
    const/4 v4, 0x1

    #@b0
    .line 339
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@b3
    move-result v1

    #@b4
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@b6
    .line 341
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@b8
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@ba
    add-int/2addr v1, v3

    #@bb
    if-le v1, v5, :cond_2

    #@bd
    .line 342
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@bf
    rsub-int/lit8 v1, v1, 0x10

    #@c1
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@c3
    .line 344
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@c5
    const-string/jumbo v3, "bg_critical_job_count"

    #@c8
    .line 345
    const/4 v4, 0x1

    #@c9
    .line 344
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    #@cc
    move-result v1

    #@cd
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    #@cf
    .line 346
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@d1
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    #@d3
    add-int/2addr v1, v3

    #@d4
    if-le v1, v5, :cond_3

    #@d6
    .line 347
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@d8
    rsub-int/lit8 v1, v1, 0x10

    #@da
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@dc
    :cond_3
    monitor-exit v2

    #@dd
    .line 302
    return-void

    #@de
    .line 307
    :catch_0
    move-exception v0

    #@df
    .line 310
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v1, "JobSchedulerService"

    #@e2
    const-string/jumbo v3, "Bad device idle settings"

    #@e5
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e8
    goto/16 :goto_0

    #@ea
    .line 303
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    #@eb
    monitor-exit v2

    #@ec
    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 353
    const-string/jumbo v0, "  Settings:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 355
    const-string/jumbo v0, "    "

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    const-string/jumbo v0, "min_idle_count"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    const-string/jumbo v0, "="

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 356
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 358
    const-string/jumbo v0, "    "

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "min_charging_count"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "="

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 359
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    #@34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 361
    const-string/jumbo v0, "    "

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    const-string/jumbo v0, "min_connectivity_count"

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "="

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 362
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@51
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@54
    .line 364
    const-string/jumbo v0, "    "

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v0, "min_content_count"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string/jumbo v0, "="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 365
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@6b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 367
    const-string/jumbo v0, "    "

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v0, "min_ready_jobs_count"

    #@77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v0, "="

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 368
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    #@82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@88
    .line 370
    const-string/jumbo v0, "    "

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    const-string/jumbo v0, "heavy_use_factor"

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    const-string/jumbo v0, "="

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 371
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@9f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@a2
    .line 373
    const-string/jumbo v0, "    "

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v0, "moderate_use_factor"

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    const-string/jumbo v0, "="

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 374
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    #@b6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@b9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@bc
    .line 376
    const-string/jumbo v0, "    "

    #@bf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    const-string/jumbo v0, "fg_job_count"

    #@c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    const-string/jumbo v0, "="

    #@cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    .line 377
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@d6
    .line 379
    const-string/jumbo v0, "    "

    #@d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    const-string/jumbo v0, "bg_normal_job_count"

    #@df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    const-string/jumbo v0, "="

    #@e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    .line 380
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@ea
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ed
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@f0
    .line 382
    const-string/jumbo v0, "    "

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "bg_moderate_job_count"

    #@f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    const-string/jumbo v0, "="

    #@ff
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    .line 383
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@10a
    .line 385
    const-string/jumbo v0, "    "

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@110
    const-string/jumbo v0, "bg_low_job_count"

    #@113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    const-string/jumbo v0, "="

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    .line 386
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@11e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@121
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@124
    .line 388
    const-string/jumbo v0, "    "

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    const-string/jumbo v0, "bg_critical_job_count"

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    const-string/jumbo v0, "="

    #@133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 389
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    #@138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@13b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@13e
    .line 352
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConstants()V

    #@3
    .line 298
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 292
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@4
    .line 293
    const-string/jumbo v1, "job_scheduler_constants"

    #@7
    .line 292
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    .line 293
    const/4 v2, 0x0

    #@c
    .line 292
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@f
    .line 294
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConstants()V

    #@12
    .line 290
    return-void
.end method
